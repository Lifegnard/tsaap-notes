<%@ page import="org.tsaap.questions.TextBlock" %>
<g:set var="question" value="${note.question}"/>
<div class="question">

        <p><strong>${question.title}</strong></p>
        <g:each var="block" in="${question.blockList}">
            <p>
                <g:if test="${block instanceof TextBlock}">
                    ${block.text}
                </g:if>
                <g:else>
                    <g:render template="/questions/${question.questionType.name()}AnswerBlock" model="[block: block]"/>
                </g:else>
            </p>
        </g:each>
    <g:link action="startLiveSession" controller="notes" params="[liveSessId:liveSession?.id,noteId:note.id]"
            class="btn btn-primary btn-xs">Start</g:link>
</div>
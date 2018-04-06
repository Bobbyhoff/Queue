<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>signup</title>
</head>

<body>
<a href="#edit-queue" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>

<div id="edit-queue" class="content scaffold-edit" role="main">
    <h1>signup</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.queue}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.queue}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form controller="signup" action="register" method="POST">
        <div class="container">
            <div class="row">
                <div class="col-md-6">

                    <fieldset class="form">
                        <div class="form-group">
                            <label for="username">Email address</label>
                            <input type="email" class="form-control" id="username" name="username" aria-describedby="emailHelp"
                                   placeholder="Enter email">
                            <small id="emailHelp"
                                   class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>

                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                        </div>

                    </fieldset>

                </div>
            </div>
        </div>

        <fieldset class="buttons">
            <input class="save" type="submit" value="${message(code: 'default.button.signup.label', default: 'Sign Up')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
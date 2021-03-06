<%@ include file="/WEB-INF/fragments/person-profile.jspf" %>

<hr />

<form action="/user/profile" method="POST" class="form-horizontal">

    <div class="control-group">
        <label class="control-label" for="gitHubId">GitHub ID</label>
        <div class="controls">
            <input id="gitHubId" name="gitHubId" type="text" placeholder="ID" value="${person.gitHubId}" class=" input-medium" maxlength="40" />
        </div>
    </div>

    <div class="row">

        <div class="span6">
            <h3>You're a member</h3>
            <h4>Community tribes</h4>
            <c:forEach var="tribe" items="${memberOfSocial}">
                <label class="checkbox">
                    <input type="checkbox" name="tribe" value="${tribe.id}" checked="true" /> <img src="${tribe.profileImageUrl}" alt="Profile image" class="profileImageSmall" /> ${tribe.name}
                </label>
            </c:forEach>

            <h4>Tech tribes</h4>
            <c:forEach var="tribe" items="${memberOfTech}">
                <label class="checkbox">
                    <input type="checkbox" name="tribe" value="${tribe.id}" checked="true" /> <img src="${tribe.profileImageUrl}" alt="Profile image" class="profileImageSmall" /> ${tribe.name}
                </label>
            </c:forEach>

            <h4>Business tribes</h4>
            <c:forEach var="tribe" items="${memberOfBusiness}">
                <label class="checkbox">
                    <input type="checkbox" name="tribe" value="${tribe.id}" checked="true" /> <img src="${tribe.profileImageUrl}" alt="Profile image" class="profileImageSmall" /> ${tribe.name}
                </label>
            </c:forEach>
        </div>

        <div class="span6">
            <h3>You're not a member</h3>

            <h4>Tech tribes</h4>
            <c:forEach var="tribe" items="${notMemberOfTech}">
                <label class="checkbox">
                    <input type="checkbox" name="tribe" value="${tribe.id}" /> <img src="${tribe.profileImageUrl}" alt="Profile image" class="profileImageSmall" /> ${tribe.name}
                </label>
            </c:forEach>

            <h4>Business tribes</h4>
            <p>
                If you work for or help a business tribe, they will need to add you ... just ask the tribal leader to sign-in with the tribe's Twitter ID to manage its profile.
            </p>
        </div>

    </div>

    <p>
        <input type="submit" class="btn" value="Update" />
    </p>
</form>
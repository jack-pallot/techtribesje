<div class="sectionHeading">Badges</div>
<p>
    Badges are awarded to people or tribes based upon their activity.
</p>

<hr />

<c:forEach var="badge" items="${badges}">
    <a name="${badge.id}"></a>
    <div class="row" style="margin-bottom: 64px;">
        <div class="span2">
            <techtribesje:badge id="${badge.id}" />
        </div>
        <div class="span8">
            <h4>${badge.name} <span class="badge">${fn:length(awardedBadges[badge])}</span></h4>
            <p>
                ${badge.description}
            </p>
            <p>
                <c:forEach var="awardedBadge" items="${awardedBadges[badge]}">
                    <a href="<techtribesje:goto contentSource="${awardedBadge.contentSource}" />"><img src="${awardedBadge.contentSource.profileImageUrl}" alt="${awardedBadge.contentSource.name}" class="profileImageSmall" title="${awardedBadge.contentSource.name}" style="margin-bottom: 4px;" /></a>
                </c:forEach>
            </p>
        </div>
    </div>
</c:forEach>

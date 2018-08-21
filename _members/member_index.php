---
title: members
layout: default
permalink: /members/index.html
---
<!-- Main -->
<div id="main-wrapper">
	<div class="container">
		<div class="row">
			<div class="12u">
				<!-- Current Members -->
				<section>
					{% for member_id in site.members[0].members %}
						{% include member.html id=member_id %}
					{% endfor %}
				</section>
			</div>
		</div>
	</div>
</div>

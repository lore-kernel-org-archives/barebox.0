Delivery-date: Wed, 14 Oct 2026 17:10:00 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xH0cC-00DXX6-32
	for lore@lore.pengutronix.de;
	Wed, 14 Oct 2026 17:10:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6C0D9201B6D
	for <lore@pengutronix.de>; Wed, 14 Oct 2026 17:10:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MuHLnFq9;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LGQuCqg2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791990600; a=rsa-sha256;
	cv=pass;
	b=biDnSoypqTiQEGbjFsDRsy2+mxdQQPNiWIgGgSPOEoVlYy5+u0gBeJC8WbPJXlW7p70GOy
	vc3ceCfFVM8gtFCqww6VQpdwfmcXYQmGAYOk2qPuJQT1eCDwUGzIGo843TK/rutBxu3lOY
	5EYXXC4LlSeIE/P9b4MgJtRDupizqtv+xtjigBeA0singsWw8bkHsv+tz1bPZqXXc+Ldti
	Sj4gCxv9a0e8cjZkMrsSq1Nba5QuwK4R1ni6NPAis7o8AQQeZLgDGX4c1xw9QhZNkpPpZ7
	nO39t7s/XngO2HTQNK2KoEpNZ3JQvtuhu7fbUzDRATZMGfd5sRXxVJHbfn4M2w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MuHLnFq9;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LGQuCqg2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791990600;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MuNJHOuzWkAyEuoq1fOnsZ3vSAvDQ1ZD98auzDd9X+s=;
	b=C4TFLdFAfdPOaSBfXHXoFkMbrOseo/E/m0uFcYIqfTp71gipfYZiRWtogBnIXYpp5clpm4
	i1hVAqomfPIw76tjcYvT7FJEhwA2hhM4T1w2d4Di3J+KI2aOdLgJDsbWjFz4wmcf/BrlQq
	NImTB2dKNxBsU9av641lJY07FkUsppCgh+qXhvuJI8v2g3tPjeaK+TNBoJEhJ/4lLYhc8g
	eSqdNQ+4ZGZWqohX/rzwKi4INHjJ+Xci2Lab7NiXDbNB4PQMZdHjFb6X3eUQ4W0vehjC/M
	BoCp4DT44DgBEXZcxCzM5/X88NMKwXthCghUdXcZI+mmXFnT/fOkpelSTLJZTA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MuNJHOuzWkAyEuoq1fOnsZ3vSAvDQ1ZD98auzDd9X+s=; b=MuHLnFq9CB/0O77noTDOymyXSY
	+ah1VW3d+NHtFOKunpqheej1nl6jCVG26kXoOhwtvSaFJNb3GiUcFRr8yhEOBB1PqR4yBWiX2SgRM
	iAZWIEpqEFQ8g5xe+O/MX5ouw2H9k4kcraM5yJJBOy+pcsmGMBkuXFPfink0v8QE0FdKdxKs3RXIZ
	RUTHRrZx3RJgy6NgWl4UioZ28pUaY6lP2FM9pzhHfOz6QIQfUfz3FSgWLod04UpsQYJnleL9llN96
	6bkGwXU5lzwZWfZfFfxZD7oGbgRr1QlS3QLEsSvOjlMtrhqRTp6LzM7DG3h1840Fh3wD9U9fXRhVH
	0nWGuljQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH0br-0000000FoCv-1HaN;
	Wed, 14 Oct 2026 15:09:39 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH0bo-0000000FoBQ-0P9B
	for barebox@lists.infradead.org;
	Wed, 14 Oct 2026 15:09:38 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7904F2019D1;
	Wed, 14 Oct 2026 17:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791990572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MuNJHOuzWkAyEuoq1fOnsZ3vSAvDQ1ZD98auzDd9X+s=;
	b=LGQuCqg21AomAwf7TgmmOmy6w+mG5SoKdzroSt9dVZKR2o75t16vGxpfjFLIAjdZ7Jd8CT
	TLjNj+PXrBkhum5LxaAV2j431eKqWaKloUBYEA1dzHKEEu97V+YZ3k1IajiEYgcP+lL2Dh
	IVCMwS3X8AN19yWLf/yfrAQeITeGgKGKTF90PElxOE93T1od7RgTZirYxQkEZMwA5vKCJ3
	3ucUFxqr/LeADzy9MFq/wHwBHSMtGMgd0df9wIRiYUu2RTXKqOr+HYgIDaCIHpmYewhZoz
	I2SWWWwimEm0BhsxlO7KI85D2ZGCoIMz61rzoQkFWyOdYlxvRJ+C//mAFy1aRQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791990572; a=rsa-sha256;
	cv=none;
	b=IsZrhBs99af2kzm6fPZ/Oa4NwhizAZk5WkIFqHDZ9AuwV8QAzhb+D8wBIIUKfMbm7M3EBR
	PUbG5UzGBh56IyM50mOEdSLlea1HUkc7UgCKsWpI3ng5IYKuZBZCqBRFminslJ2CVuKDA0
	+/kKwSc1kunHI1utTgv7J2VEgHNGUVxeOQu6JwmXMJrQqHdP9syUn5JTfUUXMAUzbwuRby
	VZD18xwSx3AxOYqFvQUC9MVlGxefBWUphrt/rlyPYRQ5VGr5/bH21Bh1H7LM1raK7eJoEl
	hWct+2Mzhr6KwRFqTuTFICZgXshxyTuM39+uYBMP3johukU/ltiqnJMEgfTCdg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=s.kerkmann@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791990572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MuNJHOuzWkAyEuoq1fOnsZ3vSAvDQ1ZD98auzDd9X+s=;
	b=UB9ZFDpJYew9pMjh5hfu2JR5F39W2lgLECVaVhjat8fVOUnEki036NUDjAU5b5nro0IRXk
	leiQaUPl8d0J3GmjfCUkHxzJHxxp8aNoUwT0X+OAzYCca6xqShym7uNA5jSax2dgDrPK8d
	q875ocVoUoorcOZbaZAWo9ZFT7RrYa3vk3ebYxHPLMCyL7rMM9uXGUJMrYFq3cR4DE1pbv
	WleiwwAX9y+KB/PG3Q9LJi2cahxywasIM6JCEYEcIMcjVe1Sr1o9J3hYUw5S33UCpExzCP
	94pbIe5z12gg2qtFDNVcI9avk+SxnFnNhReyyef1tBV7U5CUPtNFhbywTtvfuA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 62DDB741A62;
	Wed, 14 Oct 2026 17:09:32 +0200 (CEST)
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 14 Oct 2026 17:09:22 +0200
Subject: [PATCH 1/2] of: overlay: of_overlay_fix_path: allow symbols
 without __overlay__
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261014-fix-overlay-v1-1-cfd44746d985@pengutronix.de>
References: <20261014-fix-overlay-v1-0-cfd44746d985@pengutronix.de>
In-Reply-To: <20261014-fix-overlay-v1-0-cfd44746d985@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_080936_293159_4F6D55AF 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  An overlay with a label entry in the `__symbols__` table without
    a matching fragment that contains an `__overlay__` is not an error. This
   matches the behavior of the dtc libfdt implementation[1]. This edge case was
    triggered by: 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 6C0D9201B6D
X-Stat-Signature: hb1gqy7jzkm37bnyocpg8tb89dnhiunn

An overlay with a label entry in the `__symbols__` table without a
matching fragment that contains an `__overlay__` is not an error. This
matches the behavior of the dtc libfdt implementation[1].

This edge case was triggered by:

1. Enabling CONFIG_OF_OVERLAY_LIVE this adds a `__symbols__` table to
   device trees compiled by barebox.

2. Passing the barebox devicetree via TF-A to OP-TEE that adds overlay
   fragments to the barebox device tree.

3. Enabling CONFIG_OPTEE_APPLY_OVERLAY and applying the same DT again as
   a DT overlay. The DT in this case was expanded by OP-TEE with overlay
   fragments (and still contains the __symbol__ table with entries that
   do not reference the OP-TEE fragments).

[1]: 5c715a4 ("fdtoverlay: Ignore symbols in overlays which don't apply to the target tree")

Fixes: 6553d2c2a5e3 ("of: overlay: avoid potential null pointer exception")
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/of/overlay.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 4ce45513ea..410c6d3565 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -110,13 +110,13 @@ static char *of_overlay_fix_path(struct device_node *root,
 			break;
 	}
 	if (!fragment) {
-		pr_info("could not find __overlay__ node\n");
+		pr_debug("could not find __overlay__ node for %s\n", path);
 		return NULL;
 	}
 
 	target = find_target(root, fragment, false);
 	if (!target)
-		return NULL;
+		return ERR_PTR(-EINVAL);
 
 	prefix = of_get_child_by_name(fragment, "__overlay__")->full_name;
 	path_tail = path + strlen(prefix);
@@ -152,8 +152,10 @@ static int of_overlay_apply_symbols(struct device_node *root,
 
 		old_path = of_property_get_value(prop);
 		new_path = of_overlay_fix_path(root, overlay, old_path);
+		if (IS_ERR(new_path))
+			return PTR_ERR(new_path);
 		if (!new_path)
-			return -EINVAL;
+			continue;
 
 		pr_debug("add symbol %s with new path %s\n",
 			 prop->name, new_path);

-- 
2.47.3




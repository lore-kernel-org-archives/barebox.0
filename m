Delivery-date: Mon, 10 Feb 2025 13:18:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thSk7-000axH-2u
	for lore@lore.pengutronix.de;
	Mon, 10 Feb 2025 13:18:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thSk6-0000sG-Ny
	for lore@pengutronix.de; Mon, 10 Feb 2025 13:18:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0B2duUyG6G+qBfw+lr51KJ7G+BVy+J84UuddRyNJRZs=; b=QQAcfOh3te8DXIWskfmDNN7RIM
	D0Yc/gfuWPOMAztbbENVrgaIn1WFzdgHyIpUIJ+SgRP3JTCJR7FavdI6H2np7VbBrds5aYMA6SCkj
	ue1BlNO4j2tWftcspW4kC3Cvv2Avm6BcOxd6Id6dfDoaKjUr2BFyg6gIm2sxFf1ot/U/T+t3ung9a
	C3sMlKkPgk6L0eDWpjMW8DMTluaJQkw5M1yThiPF7lMm7J1m6ybtCcM9t1Os5LsfXfGcrbKo9ZjLR
	jGJypRTF19Q6b3sM2QB1nGaJxl6CHEjvIsczynT6gsUaBrru7UNVu8BkFboXxz/ycY8PCuEg+OZXL
	98TLmKFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thSjQ-0000000HN8p-2KtK;
	Mon, 10 Feb 2025 12:17:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thSjG-0000000HMrh-1ByI
	for barebox@lists.infradead.org;
	Mon, 10 Feb 2025 12:17:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1thSjC-0000bz-Dp; Mon, 10 Feb 2025 13:17:30 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1thSjC-000F5D-0n;
	Mon, 10 Feb 2025 13:17:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1thSjC-001ZuY-0V;
	Mon, 10 Feb 2025 13:17:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Feb 2025 13:17:26 +0100
Message-Id: <20250210121726.376306-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_041734_325435_0892C5BA 
X-CRM114-Status: GOOD (  10.68  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] SECURITY.md: add security policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We prefer coordinated vulnerability disclosures, so users can be provided
patch instructions for security issues alongside the vulnerabilities report.

Github handles a top-level SECURITY.md file specially and shows it in
the security tab. Unlike other documentation, this can't be written
in reST, so write it in markdown and adopt this convention.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 SECURITY.md | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 SECURITY.md

diff --git a/SECURITY.md b/SECURITY.md
new file mode 100644
index 000000000000..476ab3186e04
--- /dev/null
+++ b/SECURITY.md
@@ -0,0 +1,14 @@
+# Security Policy
+
+## Supported Versions
+
+The barebox project does not, at the moment, maintain any longer term
+support branches.
+Please update to new [barebox releases](https://github.com/barebox/barebox/releases)
+as they become available.
+Compatibility with old kernels is maintained over barebox releases.
+
+## Reporting a Vulnerability
+
+Please report security vulnerabilities to security@barebox.org.
+We will work with the reporter to create a fix and to coordinate the disclosure.
-- 
2.39.5




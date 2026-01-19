Delivery-date: Mon, 19 Jan 2026 12:11:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnAq-0030O0-17
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 12:11:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnAp-00089A-Ce
	for lore@pengutronix.de; Mon, 19 Jan 2026 12:11:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D7MqqV1pLPgbThgqtvQO+B4bEBXEiSwoEV0wi9OJPEE=; b=JGE/XtOlHTgf+f9o9B/b4CucQ5
	RM5TEouDqUeImOXqV42TwDkGwLW22AL5Q46bBI3Dnyy7GFBnKjOoxaZ6ZaatI5JeuW3CSKMQvWjq7
	qDJMiNIv6P2rkckPfRHd25lWsYWEuw8uIHj+OdOojYOHKrzumSfxYWDSAStUQ25UAPqdOH0RL8h4X
	EHLsHb5RTiQiyb1FA+xkUcPSQT/ccEPOPEXeCeWi5W0iIsa1iVaE0tfNkSBiAX3sAd/g1G1+axrKW
	NRvPtKrpv/ootWtt2FYzRMiIhj8d6ahyBTOUfgX7+N92I9yEje6mKV8wMeIa/E2C4LqG7STHoDMO6
	6Sg7jBDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnA4-00000001rh9-0afc;
	Mon, 19 Jan 2026 11:11:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnA1-00000001rgD-25at
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 11:11:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vhn9w-0007uY-LJ; Mon, 19 Jan 2026 12:11:00 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 19 Jan 2026 12:10:57 +0100
Message-ID: <20260119111058.3120441-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_031105_542484_8148DAE6 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] gitignore: ignore Labgrid --lg-log's console_main
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Calling pytest with --lg-log generates a console_main with the log
output, which leads often to false positives for me when searching
strings with ripgrep.

Add the file to .gitignore to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .gitignore | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/.gitignore b/.gitignore
index 1b335c330091..2d5b9602a5cc 100644
--- a/.gitignore
+++ b/.gitignore
@@ -116,3 +116,6 @@ coverage_html/
 # Disk images (used for testing)
 /*.raw
 /*.qcow2
+
+# Labgrid default console log file
+/console_main
-- 
2.47.3




Delivery-date: Tue, 07 Jan 2025 12:10:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7TY-000I9j-1f
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 12:10:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7TU-0005cu-OB
	for lore@pengutronix.de; Tue, 07 Jan 2025 12:10:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EGFc4s7hvt8drtEKerTOGgX1aN8ujV9540I4W7iclGU=; b=ldzgAt0S8HBYdnC6LDlWOtYPqo
	JBs9U6Bwx0I6viP996F7fIGNx4HvYse/qFklNFWSJj7KYcOdb2UMRdGUAYmFZXz5rE9LNUlahG5QL
	J0DpR7U3xTQEMjlUh0VlRH3OAPPh9tgkWTA5OnPqPp0j3uohL0Ayt6Z1qEQC4Md0wLptWpEN80N1R
	dQPcY1/CJscrssPyhNll4hSkXH5hR2Qnsef0tM8jB7xggQgwdNKZmxlDgBiC+T2tG6xCE1fRPB31e
	hbA4SSJJeQF+6HyD94+aqRl5qXwDlhdBHFnsORqzuVjAw8vzvwddxbeavwljE0QZMzgmfMF761Szc
	qlHVbfyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7Sa-00000004Uw0-0sOK;
	Tue, 07 Jan 2025 11:09:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7Rl-00000004Uml-1vY8
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 11:08:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV7Rh-0005BR-Ve; Tue, 07 Jan 2025 12:08:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV7Rh-007Kpb-03;
	Tue, 07 Jan 2025 12:08:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV7Rh-00CvWE-2F;
	Tue, 07 Jan 2025 12:08:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 12:08:25 +0100
Message-Id: <20250107110825.3081026-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_030829_493054_E29B2DED 
X-CRM114-Status: GOOD (  12.12  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] startup: fix infinite loop falling into menu without /env/menu/mainmenu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If MENUFILE (/env/menu/mainmenu) doesn't exist, an infinite loop will
keep executing this non-existent file.

If this happens, let's exit the infinite loop and hang barebox instead.

Previously we dropped to a shell in this situation, but this was changed
as menu-only boots should not be circumventable and drop to a shell due
to errors.

Fixes: 96852a962d0c ("startup: don't fallback to shell from menu")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/startup.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 723d4f1ecc3b..3debb6668be7 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -344,10 +344,15 @@ static int run_init(void)
 		run_shell();
 	}
 
-	while (1)
+	do {
+		/*
+		 * Let's run the command once at least, so an error
+		 * message is printed if the file doesn't exist
+		 */
 		run_command(MENUFILE);
+	} while (stat(MENUFILE, &s) == 0);
 
-	unreachable();
+	hang();
 }
 
 typedef void (*ctor_fn_t)(void);
-- 
2.39.5




Delivery-date: Tue, 28 Oct 2025 16:45:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDlt7-00CjOH-2r
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 16:45:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDlt7-0005kW-Bs
	for lore@pengutronix.de; Tue, 28 Oct 2025 16:45:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DsEj8E8cvqTqWIsOFudEbMA6/CWVcV+XmDN3ZCgSZHc=; b=fe0Vv48Ymhsm45IjURA7YIxer8
	c2vDTmm9XrXVHIm8FbBGX/B/7rhav5T5PH0sBKvNyS4673rBCFjXU2ele/0zqt2n6Ngrhjkn+Sy4X
	jh16coPfv/zJeGLrkAAc97aCLQwEVhmhoThZpYVIp4X6SYxfo6kziN972hPJVKBZQ84E57P1j0YQ/
	1HNDE91MjpO0VqfTx4L79nL6+tjB8Y5V2rN4FjXDbFlrhTf0SW920qaJhdCcrZ5Nn/DITSxjIQzZZ
	X9V/JMidqHUSKORbV7DoH0L4BaBOgA2aHwJei8g2JjOud2elZux6B7LLkA0oOwVqiyKTax5lOgDn6
	9cSogR8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDlse-0000000GDZR-33tp;
	Tue, 28 Oct 2025 15:45:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDlsa-0000000GDYm-1p8K
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 15:45:01 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vDlsY-0005eC-SV; Tue, 28 Oct 2025 16:44:58 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 28 Oct 2025 16:43:24 +0100
Message-ID: <20251028154453.2990491-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_084500_496125_541CEBFC 
X-CRM114-Status: GOOD (  11.75  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] startup: check for console before showing menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If there is no input available or possible due to policy settings, it
does not make sense to show a menu and ask for input.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
v2:
Remove CONSOLE_DISABLE_INPUT from check
 common/startup.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 8d36ffceb4..4313435f05 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -45,6 +45,7 @@
 #include <pbl/handoff-data.h>
 #include <libfile.h>
 #include <fuzz.h>
+#include <security/config.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -361,14 +362,15 @@ static int run_init(void)
 		run_shell();
 	}
 
-	do {
-		/*
-		 * Let's run the command once at least, so an error
-		 * message is printed if the file doesn't exist
-		 */
-		run_command(MENUFILE);
-	} while (stat(MENUFILE, &s) == 0);
-
+	if(IS_ALLOWED(SCONFIG_CONSOLE_INPUT)) {
+		do {
+			/*
+			* Let's run the command once at least, so an error
+			* message is printed if the file doesn't exist
+			*/
+			run_command(MENUFILE);
+		} while (stat(MENUFILE, &s) == 0);
+	}
 	hang();
 }
 
-- 
2.47.3




Delivery-date: Tue, 28 Oct 2025 13:19:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDifM-00CgLp-2S
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 13:19:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDifM-0002B7-7N
	for lore@pengutronix.de; Tue, 28 Oct 2025 13:19:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qrgJvb+Snul2wv0QtXnSws3ZufVuYzMGyYBvQTYlqqM=; b=Cxwt92Lgi6PkMVbuBeLhwOCNXA
	N7LY0YjNR6op26J8MRxb9qwWcgGTTqb96Aq+78K2NLjS/lkTAah2Q9vnoSj4ywFwdr9aCcVe/fk47
	lEAnfgXNkxOratqfMv4Lx5ZFlYKsY8vy7r/b5wHiBGmOUkOpV1qagyRxTncwkS68xgN1gLDSSyIWH
	/lYbXdywpJEDl29BvnHtMapInBadzb6GBJzFwjISD1M6AKQwWv2554Jev4Eihii36VuhSYwQSpJaY
	30zVwWJGoXef1zYaxRWbA9j7fONbHTf78o574ESbwWO8BBodxUgvyYRBfI1NUyskLJoBQ1r7wU17O
	2YTbpzQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDiel-0000000FuPE-38os;
	Tue, 28 Oct 2025 12:18:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDiej-0000000FuNu-3C8u
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 12:18:31 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vDieg-0001zX-RL; Tue, 28 Oct 2025 13:18:26 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 28 Oct 2025 13:18:18 +0100
Message-ID: <20251028121820.1242298-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_051829_802206_42B4F805 
X-CRM114-Status: GOOD (  11.51  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] startup: check for console before showing menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If there is no input available or possible due to policy settings, it
does not make sense to show a menu and ask for input.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 common/startup.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 8d36ffceb4..3bc2609006 100644
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
+	if(!IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT) && IS_ALLOWED(SCONFIG_CONSOLE_INPUT)) {
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




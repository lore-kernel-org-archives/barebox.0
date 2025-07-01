Delivery-date: Tue, 01 Jul 2025 12:06:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWXsN-00CvKp-0F
	for lore@lore.pengutronix.de;
	Tue, 01 Jul 2025 12:06:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWXsM-0007ch-GB
	for lore@pengutronix.de; Tue, 01 Jul 2025 12:06:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HNwQtqUPWdUvBHDdhYZVJQ6Q0y3LBaXGq7u9QYLBjIg=; b=RwWRlDrqqJmpa0u9dm94dKlchm
	uifcWyNpbSaXHP5Mcs2Y4MRFw14naRuKDhD70nCXf384NbLD/HRUX7CIpWcOFysMZaGlVkHiQZDfD
	2Rnjz8MGf56riuBbE+Mh+JJkRCmPXnjcqWTSk4LrAzfViIPkN1IvFsag0tBEBrUQyB5EbdQzXf24d
	SZBjoULWJ8W46cbVCMadnzN28Tocu3o5WT4Bh4V3SEM9UFToUe7EHjcP2STy1xWOkxO8TtDKbwQw5
	i9tesIeQf2KwaNGI3u8fs6bHYA0t6ByC0B0IhaCWifihKlOpEpiNGExI2Z6lGI+NG+U95PTYSv1FV
	18hE97BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWXsB-00000004gif-2M6T;
	Tue, 01 Jul 2025 10:05:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWWjW-00000004UIB-1K7f
	for barebox@lists.infradead.org;
	Tue, 01 Jul 2025 08:52:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWWjU-0007yz-Rb; Tue, 01 Jul 2025 10:52:52 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWWjU-006F2l-26;
	Tue, 01 Jul 2025 10:52:52 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWWjU-000cXB-0A;
	Tue, 01 Jul 2025 10:52:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Jul 2025 10:52:50 +0200
Message-Id: <20250701085251.148111-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250701085251.148111-1-a.fatoum@pengutronix.de>
References: <20250701085251.148111-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_015254_492957_0C6F8837 
X-CRM114-Status: GOOD (  15.21  )
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
Subject: [PATCH 2/3] poller: add option to detect delayed poller activation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have checks that see if pollers run too long, but none to see
if poller run too late, because scheduling was disabled for a too long
period of time. Add an option that does this to aid with debugging.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/poller.c | 33 ++++++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/common/poller.c b/common/poller.c
index 83f7205e5d57..18bd9c80f4b3 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -10,6 +10,7 @@
 #include <malloc.h>
 #include <module.h>
 #include <param.h>
+#include <linux/ktime.h>
 #include <poller.h>
 #include <clock.h>
 #include <linux/ktime.h>
@@ -188,19 +189,46 @@ static void poller_info(void)
 	}
 }
 
+static struct poller_async blocking_poller;
+
+static void blocking_poller_cb(void *priv)
+{
+	ktime_t diff = ktime_get() - blocking_poller.end;
+
+	if (diff < 0) {
+		pr_err("Poller watchdog activated %lluns too early!\n", diff);
+	} else if (diff > SECOND) {
+		pr_warn("Poller watchdog activated %llums too late!\n",
+			ktime_to_ms(diff));
+	}
+
+	poller_call_async(&blocking_poller, SECOND, blocking_poller_cb, NULL);
+}
+
+static void poller_blocking_time(void)
+{
+	if (blocking_poller.active)
+		return;
+
+	poller_async_register(&blocking_poller, "poller-monitor");
+	printf("Poller registered to monitor blocking time\n");
+	poller_call_async(&blocking_poller, SECOND, blocking_poller_cb, NULL);
+}
+
 BAREBOX_CMD_HELP_START(poller)
 BAREBOX_CMD_HELP_TEXT("print info about registered pollers")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-i", "Print information about registered pollers")
 BAREBOX_CMD_HELP_OPT ("-t", "measure how many pollers we run in 1s")
+BAREBOX_CMD_HELP_OPT ("-b", "warn if poller was blocked from running for more than 1 second")
 BAREBOX_CMD_HELP_END
 
 static int do_poller(int argc, char *argv[])
 {
 	int opt;
 
-	while ((opt = getopt(argc, argv, "it")) > 0) {
+	while ((opt = getopt(argc, argv, "itb")) > 0) {
 		switch (opt) {
 		case 'i':
 			poller_info();
@@ -208,6 +236,9 @@ static int do_poller(int argc, char *argv[])
 		case 't':
 			poller_time();
 			return 0;
+		case 'b':
+			poller_blocking_time();
+			return 0;
 		}
 	}
 
-- 
2.39.5




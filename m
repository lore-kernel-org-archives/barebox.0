Delivery-date: Mon, 01 Jul 2024 09:15:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBGB-000QFK-1O
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:15:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBGA-0005Mz-Ru
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:15:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tn0GOYYLaszjmcyd+F2BPi6z0P5vUu79c/aWNvsooiM=; b=UUm/P0TMW0OnUoEtwVb1o3EZp+
	TaiSB3DjaqJpiYt8ZrNxE249Rev1KQvkemXTw9KPM0gqSFqm38oghjx5A3WjIl10mSNKqKVV3hj8n
	2aPj4pJF5R4qWEQg1/5JUdlTYK42JBtcX+gRaJgMIFxpPB6fotnqHobJhYZvaWt0n3gdhy+k9RpVj
	ibzanu8hEhpPR9YXJOaLLqlkzrp+oTRF7JAJRTh6NX8uOJPDUXpP5ppKXjpfdVoVXuiK8MUk+CU4b
	5oGUtuLXUBVgh2gJ2GJB4pYgjE30oYLpO8nXVucBPYfArS+TncrMpbq6X0R99yncJ46wuC4SEnJpC
	QT7D0CHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBFd-00000001zaN-3RJk;
	Mon, 01 Jul 2024 07:15:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBFa-00000001zY2-206D
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:15:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBFY-0005He-Q3; Mon, 01 Jul 2024 09:14:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBFY-006JcQ-DE; Mon, 01 Jul 2024 09:14:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBFY-000a4S-12;
	Mon, 01 Jul 2024 09:14:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:14:55 +0200
Message-Id: <20240701071455.138644-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_001458_603839_07C80996 
X-CRM114-Status: GOOD (  12.84  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] bbu: command: update via TFTP if no image given
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Booting barebox over TFTP is a common operation that even has a default
boot target: `boot bnet`.

Once, a chainloaded barebox was tested to work, it may need to be
persisted, which needs a cumbersome:

  barebox_update /mnt/tftp/${global.user}-barebox-${global.hostname}

Make this more straight-forward by interpreting barebox_update called
without any non-option argument to mean just that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/barebox-update.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index 4b23433e84f2..59db315e5650 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -6,6 +6,7 @@
 #include <common.h>
 #include <command.h>
 #include <libfile.h>
+#include <globalvar.h>
 #include <getopt.h>
 #include <malloc.h>
 #include <errno.h>
@@ -20,6 +21,7 @@ static void print_handlers_list(void)
 
 static int do_barebox_update(int argc, char *argv[])
 {
+	char pathbuf[PATH_MAX];
 	int opt, ret, repair = 0;
 	struct bbu_data data = {};
 	struct bbu_handler *handler;
@@ -82,14 +84,17 @@ static int do_barebox_update(int argc, char *argv[])
 
 	if (argc - optind > 0) {
 		data.imagefile = argv[optind];
+	} else if (!repair) {
+		snprintf(pathbuf, sizeof(pathbuf), "/mnt/tftp/%s-barebox-%s",
+			 globalvar_get("user"), globalvar_get("hostname"));
+		data.imagefile = pathbuf;
+	}
 
+	if (data.imagefile) {
 		image = read_file(data.imagefile, &data.len);
 		if (!image)
 			return -errno;
 		data.image = image;
-	} else {
-		if (!repair)
-			return COMMAND_ERROR_USAGE;
 	}
 
 	ret = barebox_update(&data, handler);
-- 
2.39.2




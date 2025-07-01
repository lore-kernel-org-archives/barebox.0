Delivery-date: Tue, 01 Jul 2025 12:06:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWXsM-00CvKe-2l
	for lore@lore.pengutronix.de;
	Tue, 01 Jul 2025 12:06:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWXsM-0007cg-9y
	for lore@pengutronix.de; Tue, 01 Jul 2025 12:06:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d44tREUpVV5asF4SbSQLmwEpXHfwo1KCQnevHYuNiuM=; b=qxLlAMo2cUWmUKVE04CdKdGC86
	xrHcxoHlxjxPfpG+s/hesPwzW/O46tK0++2fnXHzaWyLveliGiHC+RRbRDjGI1Wmmwtm6XqI5p0UE
	phENQvIB+u65C+IPdmzlo/B1D0WqeWMtfGS4a78P3Z5bBEHH05ltrGoIZV6Nllo8B3B6wt5VjaVOe
	QcVgMv+gGQi09s3E5CLzKDmdfTdyjFTFp8Dfrpasj5Ewl9Y4eMfkRyVXB7wTF8E8jStdzOz7ghlU1
	KFWZh/lgBAgRaYBTYCDVdFxZ3nqd8VOuxbH8WRDRR1r/G/g7Oqry2TMGTq134cqeoUFwJ/usWWpNY
	LlxVBBpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWXsA-00000004ghT-0fVI;
	Tue, 01 Jul 2025 10:05:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWWjW-00000004UII-1Kq4
	for barebox@lists.infradead.org;
	Tue, 01 Jul 2025 08:52:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWWjU-0007z1-Ug; Tue, 01 Jul 2025 10:52:52 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWWjU-006F2o-2G;
	Tue, 01 Jul 2025 10:52:52 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWWjU-000cXB-0I;
	Tue, 01 Jul 2025 10:52:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Jul 2025 10:52:51 +0200
Message-Id: <20250701085251.148111-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250701085251.148111-1-a.fatoum@pengutronix.de>
References: <20250701085251.148111-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_015254_429103_308DC288 
X-CRM114-Status: GOOD (  12.86  )
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
Subject: [PATCH 3/3] menu: schedule pollers/workqueues while waiting for menu item selection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Pollers are already run during the menu, because getchar() will poll the
console driver every 100us and 100us happens to be the time at which
is_timeout starts scheduling. Workqueus can only be run outside command
context however, so running menutree (e.g., because shell was exited)
will not process any fastboot packets in the workqueue.

Fix this by releasing the slice for the duration of readkey. We do a
similar thing in the readline command as well.
Unlike the readline command, menutree can execute arbitrary scripts as
a result of the user input, so we restrict the slice only to the console
and rescheduling parts.

Reported-by: Bastian Krause <bst@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/menu.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/menu.c b/common/menu.c
index 128043c225df..c985f2987751 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -9,6 +9,7 @@
 #include <init.h>
 #include <menu.h>
 #include <malloc.h>
+#include <slice.h>
 #include <xfuncs.h>
 #include <errno.h>
 #include <readkey.h>
@@ -290,10 +291,14 @@ int menu_show(struct menu *m)
 		struct menu_entry *old_selected = m->selected;
 		int repaint = 0;
 
-		if (m->auto_select >= 0)
+		if (m->auto_select >= 0) {
 			ch = BB_KEY_RETURN;
-		else
+		} else {
+			/* Ensure workqueues can run during menu, e.g. for fastboot */
+			command_slice_release();
 			ch = read_key();
+			command_slice_acquire();
+		}
 
 		m->auto_select = -1;
 
-- 
2.39.5




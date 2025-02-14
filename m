Delivery-date: Fri, 14 Feb 2025 11:49:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGT-002Ehf-16
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:49:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGS-00050s-5D
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:49:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t7vnVAqKj81ZMB7FO4YAH+16iZ2a1s/r9uta7irOjog=; b=vDGN9+lAZljHu8ou9h9pkwW/y6
	uCzwJI6f42OL1YD4k7XR6+U7IJO8GfaTc/2/CksB78g5wAMihIFYcCUWx4cVpFYbrSWhdWjMi+eF9
	gBsBt3cg4EyBRehvVSR18+77gJgROstxbSxRS9I+QzDZ3mvrxFQT5EB43fygtyv/l29T1gyJyiFP4
	rSljXrs+JgAGNU/SEwkXwGcmjx6ilr2VuCiSeanlzKySl5utQqtGKVKY3oO4mq1UPrc8nVKm0s+YX
	4XE6AXljGXVW/ShmwmhJzmjUryFPJT26wvfWbVegg2Omh5l8tM23BKy/HVNb8NCHcHtEHWAVPylfs
	zQKInWvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1titFz-0000000EYKc-1rI8;
	Fri, 14 Feb 2025 10:49:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titF8-0000000EYEQ-0wbC
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:48:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-0004Ul-UP; Fri, 14 Feb 2025 11:48:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-000u3Z-2K;
	Fri, 14 Feb 2025 11:48:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-00CVIo-21;
	Fri, 14 Feb 2025 11:48:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 11:48:13 +0100
Message-Id: <20250214104817.2975052-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
References: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_024822_262957_5F739299 
X-CRM114-Status: UNSURE (   9.72  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] blspec: don't clobber bootm.image on boot attempt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootm_data_init_defaults() initialized the defaults from global
variables and thus the blspec code cleared the global variables.

This roundabout way can be confusing to users as a failing bootloader
spec boot would clobber these variables.

Let's improve upon this by just ignoring the variables explicitly
instead of clobbering them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 8a7f996e78d2..1cbadf8963af 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -81,12 +81,8 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 		.dryrun = dryrun,
 	};
 
-	globalvar_set("bootm.image", "");
-	globalvar_set("bootm.oftree", "");
-	globalvar_set("bootm.initrd", "");
-
 	bootm_data_init_defaults(&data);
-
+	data.os_file = data.oftree_file = data.initrd_file = NULL;
 	data.verbose = max(verbose, data.verbose);
 
 	devicetree = blspec_entry_var_get(entry, "devicetree");
-- 
2.39.5




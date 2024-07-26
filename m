Delivery-date: Fri, 26 Jul 2024 13:26:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sXJ65-00385Q-1i
	for lore@lore.pengutronix.de;
	Fri, 26 Jul 2024 13:26:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sXJ64-0002Xi-P3
	for lore@pengutronix.de; Fri, 26 Jul 2024 13:26:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S9FIiiF0PVQRcppjl3qqfE3fEHCRITFhh+TKWx/KR9E=; b=WKjPjQhhClzN42yue9WU0D358z
	pFT9DFanNB95lXBbrvjLpmcMnuWFl/ggtqbbRSZe7ug5znaw6vMW/nkQe5b2QvzJvIItwFhJQsyyq
	mWDRpJbrxY6TizUCWBrXUu7amFlnnV3ogBV9qvPeBosCXT2Kij8JKVhQTx0ap/+NbzXu3Dxpdfngi
	1+InYx3AlDop40PdlqHn+SWPxc+EolMzd2KgBITlAxhN0hMLFB74BNS7EPSaMzo+41Q0ouNv6KS5V
	gCiSGYUkWHIRLvUGDjva17lRQMjnDef2JXlTqWFRe8Csdh2XQoHObL8vf45oBt0DMC0g4mL0h72M1
	PpQJCLUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXJ5M-00000003huC-4AZu;
	Fri, 26 Jul 2024 11:26:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXJ5H-00000003htU-2zxu
	for barebox@lists.infradead.org;
	Fri, 26 Jul 2024 11:26:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sXJ5E-0002Jv-3f; Fri, 26 Jul 2024 13:26:00 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sXJ5D-002KDx-Fj; Fri, 26 Jul 2024 13:25:59 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sXJ5D-00EtDE-1F;
	Fri, 26 Jul 2024 13:25:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Sven=20P=C3=BCschel?= <s.pueschel@pengutronix.de>,
	Casey Reeves <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 Jul 2024 13:25:56 +0200
Message-Id: <20240726112556.3548806-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_042603_777888_838D36CF 
X-CRM114-Status: GOOD (  15.64  )
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
Subject: [PATCH] env: suggest global/nv command when calling setenv on non-existent parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike regular environment variables, device parameters have to be
explicitly created before they are used:

  global.linux.bootargs.memsize="mem=3072M"
  Cannot set parameter global.linux.bootargs.memsize: No such device

The common remedy is to remove the first dot to call the global command
instead that will create the device parameter and then set it:

  global linux.bootargs.memsize="mem=3072M"

This is a common source of confusion and new users trip over it so
often, that we should do something about it.

Initially I wanted the setting of linux.bootargs.* linux.mtdparts.*
and linux.blkdevparts.* to automatically create the variable.
This is easier said than done though and would need a rework of existing
code as well as violation of the current layering.

Instead, we take the easy way out and just suggest the user that the
user create the variable in question if it's not there yet:

  Parameter not found. Did you mean to create it with: global linux.bootargs.memsize='mem=3072M' ?

While at it, we also replace strerror() with %pe.

Reported-by: Sven Püschel <s.pueschel@pengutronix.de>
Reported-by: Casey Reeves <contact@xogium.me>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/env.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/common/env.c b/common/env.c
index c231bc8b1d7a..1e57e09e9de7 100644
--- a/common/env.c
+++ b/common/env.c
@@ -255,11 +255,19 @@ int setenv(const char *_name, const char *value)
 	char *name = strdup(_name);
 	int ret = 0;
 	struct list_head *list;
+	const char *dot;
 
-	if (strchr(name, '.')) {
+	dot = strchr(name, '.');
+	if (dot) {
 		ret = dev_setenv(name, value);
-		if (ret)
-			eprintf("Cannot set parameter %s: %s\n", name, strerror(-ret));
+		if (IS_ENABLED(CONFIG_LONGHELP) && ret == -ENODEV &&
+		    (strstarts(name, "nv.") || strstarts(name, "global."))) {
+			eprintf("Parameter not found. Did you mean to create it with: %.*s %s='%s' ?\n",
+				(int)(dot - name), name, dot + 1, value);
+		} else if (ret) {
+			eprintf("Cannot set parameter %s: %pe\n", name, ERR_PTR(ret));
+		}
+
 		goto out;
 	}
 
-- 
2.39.2




Delivery-date: Fri, 20 Mar 2026 14:58:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3aMi-0032he-2W
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 14:58:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3aMi-00068b-7n
	for lore@pengutronix.de; Fri, 20 Mar 2026 14:58:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ldvKWFORtgdYcyky68vjqNCULxen8qEGp1rgiVioNRY=; b=dRpQGXQCyvAiTdAjG/6BYufPOz
	reuX2WTmdYGGyRE/4/mkyT+ug0l7sx5ge8j1u69gS/OX6CalaQx0KNNBWBIuW66YI5q7IyD+3wt8H
	xnB8lP3rfyLXaFIvVNMuPRFqSg4km379EOVir7m4bvYTWiIZWPE/+M6nec+Qk2IRBlH/sv/fSCr55
	+R6/wJKtB3GLyRwz2+qBsmwqlmyuM0K3eG1pc4pFmOZ+GdTcup7DGgkD+tWSjRIHhAm15bTvTHiXg
	d+qGL4sPjn+uSuEDVrjhF8V5V9XjrZ0sTl6+9D62U64iEJj4eZ66+DbeCdJdFAX8fc4iGmidfTN1z
	E3Tbfjhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3aMH-0000000CtrI-0mrf;
	Fri, 20 Mar 2026 13:57:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3aME-0000000Ctqt-3wu4
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 13:57:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3aMD-00060U-FQ; Fri, 20 Mar 2026 14:57:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3aMD-001Fal-0s;
	Fri, 20 Mar 2026 14:57:45 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3aMD-0000000FCyF-0Y4V;
	Fri, 20 Mar 2026 14:57:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 20 Mar 2026 14:57:44 +0100
Message-ID: <20260320135744.3624480-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_065746_980434_93E2A2D7 
X-CRM114-Status: UNSURE (   8.58  )
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
Subject: [PATCH] tee: drivers: rksecure: improve logging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a pr_fmt string to give error messages more context. Also we have
"invoke func failed with" message three times in the code, make them
unique.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/tee/optee/rksecure.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/tee/optee/rksecure.c b/drivers/tee/optee/rksecure.c
index e16f5c0882..06179d7841 100644
--- a/drivers/tee/optee/rksecure.c
+++ b/drivers/tee/optee/rksecure.c
@@ -3,6 +3,8 @@
  * Copyright (C) Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
  */
 
+#define pr_fmt(fmt) "rk-secure: " fmt
+
 #include <linux/tee_drv.h>
 #include <linux/uuid.h>
 #include <linux/array_size.h>
@@ -86,7 +88,8 @@ int rk_secure_boot_get_info(struct rk_secure_boot_info *out)
 	if (res)
 		goto out;
 	if (inv_arg.ret) {
-		pr_err("invoke func failed with 0x%08x\n", inv_arg.ret);
+		pr_err("invoke func PTA_RK_SECURE_BOOT_GET_INFO failed with 0x%08x\n",
+		        inv_arg.ret);
 		res = -EIO;
 	}
 
@@ -147,7 +150,8 @@ int rk_secure_boot_burn_hash(const u8 *hash, u32 key_size_bits)
 	if (res)
 		goto out;
 	if (inv_arg.ret) {
-		pr_err("invoke func failed with 0x%08x\n", inv_arg.ret);
+		pr_err("invoke func PTA_RK_SECURE_BOOT_BURN_HASH failed with 0x%08x\n",
+		        inv_arg.ret);
 		res = -EIO;
 	}
 
@@ -184,7 +188,8 @@ int rk_secure_boot_lockdown_device(void)
 	if (res)
 		goto close_session;
 	if (inv_arg.ret) {
-		pr_err("invoke func failed with 0x%08x\n", inv_arg.ret);
+		pr_err("invoke func PTA_RK_SECURE_BOOT_LOCKDOWN_DEVICE failed with 0x%08x\n",
+		        inv_arg.ret);
 		res = -EIO;
 	}
 
-- 
2.47.3




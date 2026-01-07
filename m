Delivery-date: Wed, 07 Jan 2026 13:59:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdT7y-002FqY-15
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 13:59:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdT7x-0004HS-NE
	for lore@pengutronix.de; Wed, 07 Jan 2026 13:59:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BypEZ3mHLcfcZhDgU4xkPrgdUY3UlbcjthFx+6fs4Fs=; b=SoFiLz4743GGMF7FwtQBMQqWHn
	f1/GKzh1SnK8Xzq/OzoujHtXAcWPbKrkQoH0xw7diBFT/GrtYhqF5r8GjAzZqNey7MSfNTT2DcYX3
	u9MYSAro88HWqIZTf05F1gMEBO/T0nlqtPTt9KVLLbFIbT87Y1rI1sR/1udv+KvFTNaSZHVfiCIsM
	xF8Z4JXHiEYaNPrseo1zwAIA4zCerfR/6K4TY7nkq41MJjV7EJiJY5d95UyR4UYm/H/yGkjWlFVTi
	yhjL6fMZ6Wb08OY9rlccS/GVBFeXOVYelJND4LeH6bBJoU8Je6EQyvk/9Go3bMNtKVUbX+KNDQCJL
	/fCN+/XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdT7a-0000000Ewhm-20QA;
	Wed, 07 Jan 2026 12:58:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdT7X-0000000Ewga-3H2p
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 12:58:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT7W-000471-21; Wed, 07 Jan 2026 13:58:38 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT7V-009VqV-2o;
	Wed, 07 Jan 2026 13:58:37 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT7W-0000000GYwq-1vzE;
	Wed, 07 Jan 2026 13:58:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jan 2026 13:58:36 +0100
Message-ID: <20260107125837.3947578-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_045839_820433_3562C187 
X-CRM114-Status: UNSURE (   9.35  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] tee: drivers: rksecure: move header to soc/rockchip/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have a directory for rockchip related headers, so move from
the top level to there.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I don't mind if it's just absorbed/squashed into the original commits.
---
 commands/rksecure.c                                      | 2 +-
 drivers/tee/optee/rksecure.c                             | 2 +-
 include/{rk_secure_boot.h => soc/rockchip/secure_boot.h} | 6 +++---
 3 files changed, 5 insertions(+), 5 deletions(-)
 rename include/{rk_secure_boot.h => soc/rockchip/secure_boot.h} (78%)

diff --git a/commands/rksecure.c b/commands/rksecure.c
index 81b4f1a62860..d761cac152ce 100644
--- a/commands/rksecure.c
+++ b/commands/rksecure.c
@@ -9,7 +9,7 @@
 #include <libfile.h>
 #include <linux/kstrtox.h>
 
-#include <rk_secure_boot.h>
+#include <soc/rockchip/secure_boot.h>
 
 static int rksecure_write_hash_hex(const char *hex, u32 key_size_bits)
 {
diff --git a/drivers/tee/optee/rksecure.c b/drivers/tee/optee/rksecure.c
index 3a5cb0cb7be1..408547dab322 100644
--- a/drivers/tee/optee/rksecure.c
+++ b/drivers/tee/optee/rksecure.c
@@ -8,7 +8,7 @@
 #include <linux/array_size.h>
 #include <uapi/linux/tee.h>
 
-#include <rk_secure_boot.h>
+#include <soc/rockchip/secure_boot.h>
 
 #include "optee_private.h"
 #include "pta_rk_secure_boot.h"
diff --git a/include/rk_secure_boot.h b/include/soc/rockchip/secure_boot.h
similarity index 78%
rename from include/rk_secure_boot.h
rename to include/soc/rockchip/secure_boot.h
index 6e247aa7eef3..128d60633359 100644
--- a/include/rk_secure_boot.h
+++ b/include/soc/rockchip/secure_boot.h
@@ -3,8 +3,8 @@
  * Copyright (C) 2025 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
  */
 
-#ifndef __RK_SECURE_BOOT_H
-#define __RK_SECURE_BOOT_H
+#ifndef __SOC_ROCKCHIP_SECURE_BOOT_H
+#define __SOC_ROCKCHIP_SECURE_BOOT_H
 
 #include <linux/types.h>
 
@@ -18,4 +18,4 @@ int rk_secure_boot_get_info(struct rk_secure_boot_info *info);
 int rk_secure_boot_burn_hash(const u8 *hash, u32 key_size_bits);
 int rk_secure_boot_lockdown_device(void);
 
-#endif /* __RK_SECURE_BOOT_H */
+#endif /* __SOC_ROCKCHIP_SECURE_BOOT_H */
-- 
2.47.3




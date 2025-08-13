Delivery-date: Wed, 13 Aug 2025 16:51:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCon-000Ch7-09
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 16:51:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCok-0006sT-83
	for lore@pengutronix.de; Wed, 13 Aug 2025 16:51:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R573JJ+kkFoW0x6Db+/WQfCcHwsQf51xgZNVNQOOqzs=; b=JZ/J3wF4dIvSECj+LqHby06WxP
	56UpyJ1vVAwYrD8C97xkf+ZuD8VWC8ku6xCpxA+Jkr1BdSNPIdIh4UyVNWwvOc0/f5ZaWYNtTtd2a
	B4pUo2I2TyIjM1ONeiNuqlOxD0ckw5ZeBzMl6BN0OEvDUm5JM95zoBVmByccUaetZRyvdg1+msP/Y
	U5FdHdPspLhzReljTGPtjoyBvQSKxnxI75uXar260TnNXxiYL79rpawRaQGSsOKLC5QaCs7mRVjyv
	fiYwQSIjOt2rUy/FTWoW6DXsD+7D2NRn3FFekBqkq6GjMhmzGoKoYMeGDDt3J2c1lUCuXP8a6CT+J
	cYPQFP5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCo1-0000000DxvY-0z6D;
	Wed, 13 Aug 2025 14:50:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYE-0000000DvKF-2fsm
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 14:34:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umCYD-0003xl-Ar; Wed, 13 Aug 2025 16:34:01 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 13 Aug 2025 16:33:40 +0200
Message-Id: <20250813143345.3758653-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250813143345.3758653-1-a.fatoum@barebox.org>
References: <20250813143345.3758653-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_073402_671954_10B8BA2D 
X-CRM114-Status: GOOD (  10.80  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/13] tee: enable structured I/O in devinfo handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make it easier to consume the devinfo output without directly
printing it to the console, switch over the handler to use structured
I/O.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - no change
---
 drivers/tee/tee_core.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index a4bb9af46933..151f8eb70e00 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -10,6 +10,7 @@
 #include <linux/tee_drv.h>
 #include <linux/uaccess.h>
 #include <linux/printk.h>
+#include <structio.h>
 #include "tee_private.h"
 
 #define TEE_NUM_DEVICES	32
@@ -500,14 +501,18 @@ static void tee_devinfo(struct device *dev)
 		break;
 	}
 
-	printf("Implementation ID: %d%s%s%s\n", vers.impl_id,
-	       impl ? " ( " : "", impl, impl ? ")" : "");
-	if (!dev->parent)
-		return;
+	if (structio_active()) {
+		stprintf("impl.id", "%d", vers.impl_id);
+		if (impl)
+			stprintf("impl.name", "%s", impl);
+	} else {
+		printf("Implementation ID: %d%s%s%s\n", vers.impl_id,
+		       impl ? " ( " : "", impl, impl ? ")" : "");
+	}
 
 	rev = dev_get_param(dev->parent, "revision");
 	if (rev)
-		printf("Revision: %s\n", rev);
+		stprintf_prefix("impl.rev", "Revision: ", "%s", rev);
 }
 
 /**
-- 
2.39.5




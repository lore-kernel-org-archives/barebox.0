Delivery-date: Mon, 11 Aug 2025 14:30:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfu-009Kp7-1J
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfW-0006cO-ED
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8RDNv2fORLB1fy7IUBO0FemE33OpGAfeM18LS+Yc8Zg=; b=JzK4SwQDIv6C0xS4DK9jzeAq3H
	aFG9gy0M+ZeBP3LxpDtO1+6ZmylBe5c/Zogb4v05yuD6b8m6mTO7x1NCneCfvO7UEFtW0KeZ15S7y
	NDTqeoWouYkk75jq3IOWywaPRx5pz6HkyxFw87BVVqHW4puZatn27PfOrr3X8KrjXxdZVeiM69Y6o
	clCYsfDLUDqurEb900YvoruViYwIwL//UxGj6aztEZTdb5xsl2rSkn98LskbhCBdmpix5hpn0ZSla
	LBWvT+DjMcjDQwEszcuArxgR4FY5HRqmSMMPDNMwLas6b8KiTla0HITcpyBhcfiT94ZgmjY5+J0M8
	FeLkOq+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRe9-00000007eJb-22b1;
	Mon, 11 Aug 2025 12:29:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdn-00000007di3-1JkM
	for barebox@bombadil.infradead.org;
	Mon, 11 Aug 2025 12:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8RDNv2fORLB1fy7IUBO0FemE33OpGAfeM18LS+Yc8Zg=; b=Jyub4n0PNzMwvI63Wtud40dxnL
	p9Dnw9MmmxWho+ZJGXldFhiY5x6smQuEXTT19ZJvgrA0w8GTDNVoSYvoUbMExKDB25ocXYarcz/Vt
	NpkJggIXrHnga2zVqQCBXn5PefZElgdJIToFZQQLL+dgdJl3d0XPU518QY/9JxvM0V2EMoQQIqB1z
	PBytLiWaJkVCuM4lqTWKzM0G5lhGCJmlkkto0sOnh/gA/8HWVf0nWPbEV+KmMBMYcg6ky75sJYo7/
	mEjusIrhGRytdjIaT+Cj6WsEczvdNUvK9DvviVh+hxFb+zL2A4uLe822IvcsnFGFUTxAX4cLVsl0L
	J36BneJg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdj-0000000FPTi-17xe
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdg-0004WP-9z; Mon, 11 Aug 2025 14:28:32 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:04 +0200
Message-Id: <20250811122824.1667791-25-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_132835_429504_7075E2CE 
X-CRM114-Status: GOOD (  10.07  )
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
Subject: [PATCH 24/44] tee: enable structured I/O in devinfo handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make it easier to consume the devinfo output without directly
printing it to the console, switch over the handler to use structured
I/O.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
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




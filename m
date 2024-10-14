Delivery-date: Mon, 14 Oct 2024 15:28:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L7J-004GvN-0u
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:28:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L7I-0002cg-HT
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:28:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IkIRYrlGbtVWbfCnjm0n+w4w5sUh6pT3qrjlUvxygtw=; b=Hibi5XAv5ILmiiTn1kiExgkbrh
	mTh0wKphVXfYv7uHf60dQV6/fviQSvWq+JJ+4TF0M6RLdfhAug3fWG0SrG7dfNpuoDaw6yibIh20n
	jSKPdPvb6FU0H8NiYhCbjJEu+ecTbZvjrepvJO0D2boeIP1+P/1JXY0MhVHN/VCqAxFgDGqLf318z
	O4fiMymir0CJW7bgL1lLlvhIemQ9W9azP8xm34PgRf4HDcwV9/qLYn6rpOZ8Ilf08CeyWAozWpGuJ
	Nqx/a1Kb7ceYePMahv25/WS8sRtpc1V85J44QftrpaKmP6NJ8JIM0lMg2AohOPam/Gbxyz8vrjx8y
	0T+NrDDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L6k-00000005Gll-0u6g;
	Mon, 14 Oct 2024 13:27:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JPv-00000004xfl-37Lc
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:39:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-0000gY-Bv; Mon, 14 Oct 2024 13:39:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPt-001mRx-Ub; Mon, 14 Oct 2024 13:39:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPt-00BrES-2m;
	Mon, 14 Oct 2024 13:39:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:39:03 +0200
Message-Id: <20241014113912.2826190-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
References: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_043915_906726_56EF6030 
X-CRM114-Status: UNSURE (   8.85  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 04/13] net: dsa: realtek: fix CONFIG_SANDBOX build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A number of errors due to missing headers pop up when compiling
this driver under sandbox. Fix them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/realtek-dsa/realtek-mdio.c | 1 +
 drivers/net/realtek-dsa/rtl8365mb.c    | 2 ++
 drivers/net/realtek-dsa/rtl8366rb.c    | 1 +
 3 files changed, 4 insertions(+)

diff --git a/drivers/net/realtek-dsa/realtek-mdio.c b/drivers/net/realtek-dsa/realtek-mdio.c
index 4fc2295b1b5f..d4c3fbba526f 100644
--- a/drivers/net/realtek-dsa/realtek-mdio.c
+++ b/drivers/net/realtek-dsa/realtek-mdio.c
@@ -21,6 +21,7 @@
 
 #include <of_device.h>
 #include <linux/regmap.h>
+#include <linux/slab.h>
 #include <clock.h>
 #include <linux/gpio/consumer.h>
 #include <linux/printk.h>
diff --git a/drivers/net/realtek-dsa/rtl8365mb.c b/drivers/net/realtek-dsa/rtl8365mb.c
index 588998235827..5b5b7cb97682 100644
--- a/drivers/net/realtek-dsa/rtl8365mb.c
+++ b/drivers/net/realtek-dsa/rtl8365mb.c
@@ -90,12 +90,14 @@
  * one of the simpler chips.
  */
 
+#include <linux/kernel.h>
 #include <linux/bitfield.h>
 #include <linux/bitops.h>
 #include <linux/mutex.h>
 #include <linux/spinlock.h>
 #include <linux/printk.h>
 #include <linux/export.h>
+#include <linux/math.h>
 #include <linux/regmap.h>
 #include <net.h>
 #include <linux/if_bridge.h>
diff --git a/drivers/net/realtek-dsa/rtl8366rb.c b/drivers/net/realtek-dsa/rtl8366rb.c
index 35028d319ecd..052a7e2b3a73 100644
--- a/drivers/net/realtek-dsa/rtl8366rb.c
+++ b/drivers/net/realtek-dsa/rtl8366rb.c
@@ -13,6 +13,7 @@
  */
 
 #include <linux/bitops.h>
+#include <linux/kernel.h>
 #include <net.h>
 #include <linux/if_bridge.h>
 #include <linux/printk.h>
-- 
2.39.5




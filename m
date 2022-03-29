Delivery-date: Tue, 29 Mar 2022 10:55:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ7dV-00A0x0-Hw
	for lore@lore.pengutronix.de; Tue, 29 Mar 2022 10:55:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ7dX-0003Uk-BW
	for lore@pengutronix.de; Tue, 29 Mar 2022 10:55:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TbL7yEPd+gVnUZmJdMLHM5132eWGFyuw0TAGqM18JL8=; b=bDPFP+Z1UXllWX
	JC9KQWCfuaYh0kC3QQFmABUITqIdjWWcVtmW6x0n/zaQ50C9oJIHZNBlzHrehZzz/2RyFEjaLWfd+
	3Vdq+s+QGixFu4WVXa9vJs2+f3wU2FBPjds/gYmRepe7xXfDRUtyW0s9pUaaSItwVh45x+n4lR81M
	JnO5cRH70JUsF1vkIWprwp4HFRq0Fq7K8w+RlNgtqGplFeGB9xc/mNHodYvCeb9NccU6/KhbZvmeT
	ZVlOJ17PG/nUZNfNJspTI010KP7NR841IYPZmFFx1StdZ+BXE5qPARc9CXIxRDGloh1P9MV6WxuHF
	3VJvc1HtI9V58Ewn88yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ7bu-00BWa7-68; Tue, 29 Mar 2022 08:53:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ7aH-00BVrl-GK
 for barebox@lists.infradead.org; Tue, 29 Mar 2022 08:52:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZ7aD-0002tO-Po; Tue, 29 Mar 2022 10:52:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nZ7aA-003kpU-6k; Tue, 29 Mar 2022 10:52:08 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nZ7aC-00BfCo-3J; Tue, 29 Mar 2022 10:52:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 29 Mar 2022 10:52:07 +0200
Message-Id: <20220329085207.2779958-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_015213_614554_A5875839 
X-CRM114-Status: GOOD (  16.82  )
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
Cc: Andrej Picej <andrej.picej@norik.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] gpio: allocate dynamic gpio numbers top down
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For GPIO controllers with dynamic GPIO number bases a free base
is searched for bottom up. This means that GPIO controllers with
fixed GPIO numbers must be registered before any controller with
dynamic GPIO number base is registered, because otherwise the
GPIO controllers with fixed GPIO numbers find their range occupied
and can't be registered anymore.

The probe order normally makes sure the SoC internal GPIO controllers
with fixed numbers are registered first. With deep probe enabled
we can't rely on the probe order anymore, so we need another solution.

With this patch a free GPIO number range is searched for top down
intead of bottom up, so as long as we have enough space in the
ARCH_NR_GPIOS range the SoC internal GPIO controllers find their
base unoccupied. GPIO controllers with dynamic GPIO numbers will
change their numbers with this patch, but code shouldn't rely on
these numbers anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index f709d11f75..c9b33bcd6c 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -414,22 +414,19 @@ free_array:
 }
 EXPORT_SYMBOL(gpio_array_to_id);
 
-static int gpiochip_find_base(int start, int ngpio)
+static int gpiochip_find_base(int ngpio)
 {
 	int i;
 	int spare = 0;
 	int base = -ENOSPC;
 
-	if (start < 0)
-		start = 0;
-
-	for (i = start; i < ARCH_NR_GPIOS; i++) {
+	for (i = ARCH_NR_GPIOS - 1; i >= 0; i--) {
 		struct gpio_chip *chip = gpio_desc[i].chip;
 
 		if (!chip) {
 			spare++;
 			if (spare == ngpio) {
-				base = i + 1 - ngpio;
+				base = i;
 				break;
 			}
 		} else {
@@ -614,14 +611,17 @@ int gpiochip_add(struct gpio_chip *chip)
 {
 	int base, i;
 
-	base = gpiochip_find_base(chip->base, chip->ngpio);
-	if (base < 0)
-		return base;
-
-	if (chip->base >= 0 && chip->base != base)
-		return -EBUSY;
+	if (chip->base >= 0) {
+		for (i = 0; i < chip->ngpio; i++) {
+			if (gpio_desc[chip->base + i].chip)
+				return -EBUSY;
+		}
+	} else {
+		chip->base = gpiochip_find_base(chip->ngpio);
+		if (chip->base < 0)
+			return -ENOSPC;
+	}
 
-	chip->base = base;
 
 	list_add_tail(&chip->list, &chip_list);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


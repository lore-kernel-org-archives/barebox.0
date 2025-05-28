Delivery-date: Wed, 28 May 2025 14:19:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl3-001BXQ-2l
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:19:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl3-0000bv-6Q
	for lore@pengutronix.de; Wed, 28 May 2025 14:19:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nyjsThr0S+jMAKjCBwZ7xvYU3mmJbAybgmqJK5h5VhY=; b=ks0+nNjI8HBk7aUJ7CAlYsiXtd
	WszZByByfY3j5QOnG7nn/T9sYAR9ecKKP92Xe/HVyB0cH3RFWlRESzJuDgpYNFIpkyrDFK783jdYq
	cQ/waPkncCK3aMeb0kgcGT+jxVibrui2RevuzAtkL6AzHQx71ODxHx+QDxovkkZmB/ag3W/KpFXsi
	GlnYmXdufCjo6MohWp0MXkohvxypMBM8ozDssUlJrqpw0sQQDnHVb50GwVWFuSuRyyhFZsEDmu/EG
	kKPyZ3Cc1wwyVhYVyAJeGH62WPDI4bXRgUarqVu++PRCfXVk9s1M4rt9ujyoVTc8Z7jwFGdULazms
	S3lNpjOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFkj-0000000D5RA-44vb;
	Wed, 28 May 2025 12:19:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEY1-0000000Cvyt-48Tv
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 11:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=nyjsThr0S+jMAKjCBwZ7xvYU3mmJbAybgmqJK5h5VhY=; b=dMGqVxZk8QIWn4pdTrWWlAB7jy
	xtQdSpQ0ibUBmTymZG0KKq6RoUM0zuuTvg8u4XOeflyIUdJiwr0mucJ9efO3vBHwExXlbAarmDkaP
	c2IXVGVZHdh5rCUIHLcYR6WMv1kw60L6q2yLyliOeB6aN/MOIHB/vwOQYrxfwSVPGCJE9agkNN9EM
	ddffs09mxI1GczVY5Fi0YJ8Y8k3ekWIWhKSLiKA2H43PKHmIdL1h5LoGD0NdAj3kqvHM5jQ16aaJH
	uKy3QDRhiyLkuTzbCqImbocHh1WiD40rf1nV3JHQ390llwCpQQeSSQ3RhtHbIBcJ04lVo9VfkyhNW
	+QxJ215A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEXy-0000000DXG0-1ZhN
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:02:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-0001pM-KS
	for barebox@lists.infradead.org; Wed, 28 May 2025 13:01:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-000Zh5-1H
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 13:01:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-00DuY0-0y
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 13:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 28 May 2025 12:50:41 +0200
Message-Id: <20250528105046.3270397-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
References: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_120210_679850_CCC4640B 
X-CRM114-Status: GOOD (  12.79  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/10] bootm: booti: make device tree optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In case the user supplied a /dev/null device tree with a follow-up
commit, we want to pass a long a NULL pointer to the booted kernel and
skip all device tree and initrd related work.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/lib64/armlinux.c |  2 +-
 arch/riscv/lib/bootm.c    |  2 +-
 common/booti.c            | 14 ++++++++------
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 13721a71236b..74922cecd9ba 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -11,7 +11,7 @@
 static int do_bootm_linux(struct image_data *data)
 {
 	void *image;
-	phys_addr_t devicetree;
+	phys_addr_t devicetree = 0;
 	int ret;
 
 	image = booti_load_image(data, &devicetree);
diff --git a/arch/riscv/lib/bootm.c b/arch/riscv/lib/bootm.c
index 23ce3873b151..08791458f824 100644
--- a/arch/riscv/lib/bootm.c
+++ b/arch/riscv/lib/bootm.c
@@ -8,7 +8,7 @@
 static int do_bootm_linux(struct image_data *data)
 {
 	void (*fn)(unsigned long a0, unsigned long dtb, unsigned long a2);
-	phys_addr_t devicetree;
+	phys_addr_t devicetree = 0;
 	long hartid = riscv_hartid();
 	int ret;
 
diff --git a/common/booti.c b/common/booti.c
index 40611b8f7228..2d4cb3598737 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -66,6 +66,12 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 		unsigned long devicetree;
 		const struct resource *initrd_res;
 
+		fdt = bootm_get_devicetree(data);
+		if (IS_ERR(fdt))
+			return fdt;
+		if (!fdt)
+			goto out;
+
 		initrd_res = bootm_load_initrd(data, image_end);
 		if (IS_ERR(initrd_res)) {
 			return ERR_CAST(initrd_res);
@@ -76,12 +82,7 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 
 		devicetree = image_end;
 
-		fdt = bootm_get_devicetree(data);
-		if (IS_ERR(fdt))
-			return fdt;
-
 		ret = bootm_load_devicetree(data, fdt, devicetree);
-
 		free(fdt);
 
 		if (ret)
@@ -90,8 +91,9 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 		*oftree = devicetree;
 	}
 
+out:
 	printf("Loaded kernel to 0x%08lx", kernel);
-	if (oftree)
+	if (oftree && *oftree)
 		printf(", devicetree at %pa", oftree);
 	printf("\n");
 
-- 
2.39.5




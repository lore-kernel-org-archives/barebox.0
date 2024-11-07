Delivery-date: Thu, 07 Nov 2024 15:06:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t939M-005wkV-0E
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 15:06:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t939M-0006Xm-69
	for lore@pengutronix.de; Thu, 07 Nov 2024 15:06:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iQFswSSFAQ6Td6dZh0b4bKgGLmeDHdEWxTHfC7e9Nzs=; b=z5ie73LIA4JnOJXsnrs6cKLCS0
	NPLHc6AYwzztdFfpESjPclOzaX4mOsNM7TvXLITbEo9do/CykS2jDUyLxd2MPJjRMLxBhyP0KdyqI
	AbO0oSpzX4vqHe17vNnCRe/cOOQWf4h4q8NEe6c6kINWSiEEsOQff5HwdhRwWnrXATZcTWlw+0jgl
	iQp5yT3bzVEoYtmyq3UUa9SK6GdD+I70/LJ/UOzqC84xOHqH2jumn3tqNY7Q7e9nOWsb5lAKqOrE8
	ey/pGmKkAWZhyXr7ev4oV2JQNzMWt2jG+VEw2MPCu2E7MNaMAbiMg0kGeVC3stLIt0eAFOSyax9HC
	J7vro9YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t938u-00000007E7w-3vA9;
	Thu, 07 Nov 2024 14:05:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t935p-00000007Dc4-1cFU
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 14:02:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935g-0005tg-65; Thu, 07 Nov 2024 15:02:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935f-002T9L-2b;
	Thu, 07 Nov 2024 15:02:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935f-00EWBz-2M;
	Thu, 07 Nov 2024 15:02:27 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 07 Nov 2024 15:02:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241107-fix-sha256-assembly-v2-7-5fdb418f7f54@pengutronix.de>
References: <20241107-fix-sha256-assembly-v2-0-5fdb418f7f54@pengutronix.de>
In-Reply-To: <20241107-fix-sha256-assembly-v2-0-5fdb418f7f54@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_060237_433000_04BD3528 
X-CRM114-Status: UNSURE (   7.57  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 7/7] test: arm: rpi: run tests against
 multi_v5_v6_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

MACH_RPI Boards (Raspberry Pi 1, Zero and Zero W) all use the
BroadcomBCM2835 SoC which is ARMv6. Thus test against the correct
defconfig.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml                             | 4 ++++
 ...multi_v7_defconfig.yaml => qemu-raspi0@multi_v5_v6_defconfig.yaml} | 0
 ...lti_v7_defconfig.yaml => qemu-raspi1ap@multi_v5_v6_defconfig.yaml} | 0
 3 files changed, 4 insertions(+)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 7d51a4d84d3a8d81ee4fc86fc42750a8d2cd1bff..5cf726854b6ecf0dc09627888751ae953d82e73d 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -15,6 +15,10 @@ jobs:
       matrix:
 
         include:
+          - ARCH: arm
+            lgenv: 'test/arm/*@multi_v5_v6_defconfig.yaml'
+            defconfig: multi_v5_v6_defconfig
+
           - ARCH: arm
             lgenv: 'test/arm/*@multi_v7_defconfig.yaml'
             defconfig: multi_v7_defconfig
diff --git a/test/arm/qemu-raspi0@multi_v7_defconfig.yaml b/test/arm/qemu-raspi0@multi_v5_v6_defconfig.yaml
similarity index 100%
rename from test/arm/qemu-raspi0@multi_v7_defconfig.yaml
rename to test/arm/qemu-raspi0@multi_v5_v6_defconfig.yaml
diff --git a/test/arm/qemu-raspi1ap@multi_v7_defconfig.yaml b/test/arm/qemu-raspi1ap@multi_v5_v6_defconfig.yaml
similarity index 100%
rename from test/arm/qemu-raspi1ap@multi_v7_defconfig.yaml
rename to test/arm/qemu-raspi1ap@multi_v5_v6_defconfig.yaml

-- 
2.39.5




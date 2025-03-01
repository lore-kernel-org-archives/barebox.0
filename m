Delivery-date: Sat, 01 Mar 2025 17:37:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1toPqD-008YlC-2f
	for lore@lore.pengutronix.de;
	Sat, 01 Mar 2025 17:37:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1toPqC-0005F6-J0
	for lore@pengutronix.de; Sat, 01 Mar 2025 17:37:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CIJkUCV9TsmhQkTTsw6zSl2M2NgYMmXhfHDjYnW3CYU=; b=pSsJCPCLI3tj/k55bqsrOE2C06
	F848D5Or1nS+JugVxX0xYRqmll3bwoP9VVVaiao49ZVa/gmnrmnDH0h88jTGMNiQf3p4PFMBs/G0K
	ieBmYwCQtE5B/I5tnzb200tnnySJF5c1yJg2mpVEn7hmQHM9Rb3VCeiUlT4bRULCahSNCzDqu45Dc
	mBsGqc2HN78pqt5xlUC/nqgAS2yPGv08avLX+GtgzpGMZe6CqUbpqINY/Kijj1nA3TRxyG+b0egkX
	Qig4bdQuTPBhuvLM2mQRezjhmw4JmZ/eqaqLmz6u1058iN60ipx46c+E5WDduW4oUx8Ye1M+erhGV
	U87lnJog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toPpU-0000000EdDk-038T;
	Sat, 01 Mar 2025 16:36:44 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toPpQ-0000000EdCE-3t3m
	for barebox@lists.infradead.org;
	Sat, 01 Mar 2025 16:36:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1740846997;
	bh=EjuNLcUIt4vH7qWAUekp9S0U6n29kX76ixzdBYjSTZs=;
	h=From:To:Subject:Date:From;
	b=QUCPASNzjyecw3V8CrfV7WG5cjML83aRTSupiEmwVxcePsLHYaXGwVHkYj4AK3kF5
	 T4M3vTAnGyGCDe+Du5t+TLP+0dYcjme1MYg0ug8uu6nsMDYddYLbMQd5Vln5oBXjiB
	 OMHIFWlDF1QL/I97r5ZzLUc2Wzb4InEV3xfAj4i6WXkeyt4Mx0Yd86KneCmanlKQAh
	 l50xQC+lDyLu+rxkCMRfQgIowBODzsjfzK35SgC5TLqyOQ+iyzMeiSUBbPlb1CZNHQ
	 uuMf4Z2suJejXrpYwDyLPQvbBP0l12JGYEPzImEg9SMywmt60BH5KUgsPj+QffCqNl
	 DVc/T0+hvVvzw==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 3B185FAD47C; Sat,  1 Mar 2025 17:36:37 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Date: Sat,  1 Mar 2025 17:36:17 +0100
Message-ID: <cover.1740846737.git.uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1648; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=EjuNLcUIt4vH7qWAUekp9S0U6n29kX76ixzdBYjSTZs=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnwzeAqJ87IskQzerLHuv1Pc8yPM5xt6i5AXsqq s9r6ur0Y4SJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ8M3gAAKCRCPgPtYfRL+ ThUbB/92PIksZuc02Ql998QPYKCA976AkkKTv/kBRrli6cFgjEUPqsF5ne8bx1DQJ2KiJNGa2JB pwfbm2F4K1jxfphSuicH81wwrCrTVxACqJvDXWCeN4G7vbPJ+t6RaUILEGE5rWZEFnI9Y93O7ht vyEtMxJ5j2yr8aE1PiaRBFchlsohdZg1c6GJBe3k5OcFnJypgM2oGDFEIa5BAUqciSvZ86mVZ6M A+dlyTnqkMg+Lj2ah+eIvtiyNEK6JftP5Hx0BUa422OuzW/jQ26qNoWWOw+HJg3UPODpD/H8adZ 4P53O2N73LocZzVk3IaZykvmkC4REZYpEGUc4iWDkzqEY5n5
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_083641_107601_DB763454 
X-CRM114-Status: GOOD (  10.83  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] Add support for QNAP's ts-433 4bay NAS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

this is the result of my quick effort to make barebox run on QNAP's
ts-433 4bay NAS. The first 3 patches are IMHO fine to go in. The last
one adds the new machine. As writting in the commit log the NAS boots
with the resulting image, but neither network nor eMMC work.

I also tried adding

	writel(RK_SETBITS(0x50), 0xfdc20140)

in lowlevel.c, but that didn't make a difference. I'm open for other
ideas about what bit is missing.

Best regards
Uwe

Uwe Kleine-König (4):
  Documentation: rockchip: Update versions of DDR init blobs
  arm64: rockchip: Refresh rockchip_v8_defconfig
  arm64: rockchip: Enable rk-usb-loader in rockchip_v8_defconfig
  WIP: arm64: rockchip: Add support for QNAP's ts-433 4bay NAS

 Documentation/boards/rockchip.rst      |  7 ++++---
 arch/arm/boards/Makefile               |  1 +
 arch/arm/boards/qnap-tsx33/.gitignore  |  1 +
 arch/arm/boards/qnap-tsx33/Makefile    |  2 ++
 arch/arm/boards/qnap-tsx33/lowlevel.c  | 27 ++++++++++++++++++++++++++
 arch/arm/configs/rockchip_v8_defconfig |  6 ++----
 arch/arm/dts/Makefile                  |  1 +
 arch/arm/dts/rk3568-qnap-ts433.dts     | 27 ++++++++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig         |  7 +++++++
 images/Makefile.rockchip               |  1 +
 10 files changed, 73 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/boards/qnap-tsx33/.gitignore
 create mode 100644 arch/arm/boards/qnap-tsx33/Makefile
 create mode 100644 arch/arm/boards/qnap-tsx33/lowlevel.c
 create mode 100644 arch/arm/dts/rk3568-qnap-ts433.dts


base-commit: 2afd1a809f1a41f1dd42b95c2bc0ae74853b475b
-- 
2.47.1




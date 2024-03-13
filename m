Delivery-date: Wed, 13 Mar 2024 11:57:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIY-004HSl-1H
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:57:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIX-00015n-Ly
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:57:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MGcxWBM4MXlRpuzOfGnUYzozFQTlwBdN0mhH0UMAzJU=; b=HIL4TYgSai3iJyKroL56DOwVa+
	YIkGxbLXCQR+hjmQP4yXsiUad1C4+ouYBMhfbtN3afyrDZkvS/v8fICnxJxg3qLEviHkDs0IU6oxY
	EODppxEBO+tiiDmCqKaFHpaeqheK62HKtGokQb7Xq5y/yVdrajqjaz3uSCmL4JzOPmE9WP/CozUKf
	uSWHLllDM1/dtVw1A0yrLRwDh0Asmdq4GwWAqZkmc+g5m9e0bM4x25EfphU+xp4w8e84T2l70Du6I
	BiZKVa5eav2yKSoT5MTgDe8Ta6AlgN44lwIHNMxvYue5FBmSnU+BkqHhGJyPkZ23zmilo9xVhFiyO
	6mx2uOTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHu-00000009kTn-49Gc;
	Wed, 13 Mar 2024 10:56:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHi-00000009kKm-1B0y
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:56:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHh-0008PE-1v; Wed, 13 Mar 2024 11:56:33 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-00661F-KH; Wed, 13 Mar 2024 11:56:32 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-004FrF-05;
	Wed, 13 Mar 2024 11:56:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 11:56:24 +0100
Message-Id: <20240313105631.686778-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313105631.686778-1-a.fatoum@pengutronix.de>
References: <20240313105631.686778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035634_557051_7B08B8AD 
X-CRM114-Status: GOOD (  11.48  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/12] hw_random: remove confusing left-overs from kernel help texts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Mentioning Linux in the help text for barebox drivers can be confusing
as there's indeed barebox drivers that prepare stuff for Linux to use.

hw_random drivers don't though and they for use inside barebox, so
adjust the help text accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index 6daff6490693..7662566d7fba 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -12,7 +12,7 @@ config HWRNG_MXC_RNGC
 	tristate "Freescale i.MX RNGC Random Number Generator"
 	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX53 || COMPILE_TEST
 	help
-	  This driver provides kernel-side support for the Random Number
+	  This driver provides barebox support for the Random Number
 	  Generator hardware found on some Freescale i.MX processors.
 
 config HWRNG_STM32
@@ -56,8 +56,8 @@ config HW_RANDOM_OPTEE
 	depends on OPTEE
 	default HW_RANDOM
 	help
-	  This  driver provides support for OP-TEE based Random Number
+	  This driver provides support for OP-TEE based Random Number
 	  Generator on ARM SoCs where hardware entropy sources are not
-	  accessible to normal world (Linux).
+	  accessible to normal world (barebox and e.g. Linux after it).
 
 endif
-- 
2.39.2




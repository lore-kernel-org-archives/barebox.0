Delivery-date: Tue, 07 Mar 2023 10:36:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZTk5-00CAMV-Hl
	for lore@lore.pengutronix.de; Tue, 07 Mar 2023 10:36:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZTk4-0008M4-SZ
	for lore@pengutronix.de; Tue, 07 Mar 2023 10:36:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5BNp4fJqGfyOIAA5YznvHK5fjA90Sv3zTUhWly/EJX0=; b=O9J1k3Xo3EItBsJLsxsvSDSWS+
	k5gBlUJGSzbyxZTHlUMHGaxM2t8FZEmJoWfr+bs+lX5bvvjgNPru611bZw7KZADRhilWVD2nooZfM
	2yRr8uPRfySsEXQ6jW8E058wjADCJNQZp3lhpyMBkwqXuBpXtViNgacM2+fO1PGtm18Z5qJS5q+ix
	TpsPIFCWYdXNcNzYk9Wqrwb4kitSchiSFi9sqYz8preabmar4VF5JlNhmQkbOrwQOsbiPihPzzItA
	i6K6BXSCXg0WC09YeZAGW6DynOzaPhkUFVx/CO0jwhEy8B+MxFmzpfdUjBbfYT6opUHSPBVlt7mU9
	z3HjtRSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZTiU-00GwVn-3h; Tue, 07 Mar 2023 09:34:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZTiM-00GwSo-Kl
	for barebox@lists.infradead.org; Tue, 07 Mar 2023 09:34:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pZTiH-0007tz-UQ; Tue, 07 Mar 2023 10:34:29 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZTiH-002S09-A7; Tue, 07 Mar 2023 10:34:29 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZTiG-006VYD-16; Tue, 07 Mar 2023 10:34:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Mar 2023 10:34:26 +0100
Message-Id: <20230307093426.1551193-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230307093426.1551193-1-a.fatoum@pengutronix.de>
References: <20230307093426.1551193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_013434_721662_3470F25C 
X-CRM114-Status: GOOD (  10.71  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] drivers: drop unneeded CONFIG_CRYPTO_HW guard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CAAM and imx-scc both have their own Kconfig symbols, so
CONFIG_CRYPTO_HW only serves the purpose of hiding a two entry
menu behind it. Let's just get rid of it. This has the added benefit of
being able to use imply on the drivers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/Makefile       | 2 +-
 drivers/crypto/Kconfig | 7 ++-----
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/Makefile b/drivers/Makefile
index be2f736eb188..41a2054db083 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -38,7 +38,7 @@ obj-$(CONFIG_FIRMWARE) += firmware/
 obj-$(CONFIG_FPGA) += fpga/
 obj-$(CONFIG_GENERIC_PHY) += phy/
 obj-$(CONFIG_HAB) += hab/
-obj-$(CONFIG_CRYPTO_HW) += crypto/
+obj-y += crypto/
 obj-$(CONFIG_AIODEV) += aiodev/
 obj-y	+= memory/
 obj-y	+= soc/
diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 6b7966e5c216..594c79127382 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -1,11 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-menuconfig CRYPTO_HW
-	bool "Hardware crypto devices"
-
-if CRYPTO_HW
+menu "Hardware crypto devices"
 
 source "drivers/crypto/caam/Kconfig"
 source "drivers/crypto/imx-scc/Kconfig"
 
-endif
+endmenu
-- 
2.30.2




Delivery-date: Mon, 17 Feb 2025 13:30:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0GF-003Tpf-0Q
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 13:30:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0GD-0000F6-T5
	for lore@pengutronix.de; Mon, 17 Feb 2025 13:30:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Psh8gy3S7gepuf/oSP40PdKVn6xpYATCeLVtBXz1WVk=; b=zxwBuEWwFibtHz
	NHxbIULRLhfEXb7IYOtMUp95DO3ea8DXT1b5X273zbrh/kDE6a9TeV8xKJ9mJuZoKldPg2z+JJsDp
	iQ8BBfVR3jUpRvm/V1sBC2krPeXUejtVv5Pg+ddDVxeHAj9tH/X9CbV/DepLaeORL4e53DObJNnxO
	oLmuJzaCtOTpuiKfgar5+XV5HqzNi69ZAbRGvOABisfQ469FaB4fLI/55yNPC2cMv7mdaq0PRmVua
	7ZWHXB+wuA20MWqp+HK0zt/XICJWr3n40LKWfEa4XAyLVX7AX9vWq1ZFsPN4zClj2IlpIFdNiDHa9
	f++hzyYDlRbZjZvaSDDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk0Fz-00000004SHR-1oTb;
	Mon, 17 Feb 2025 12:29:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjywi-00000004FvQ-3qrV
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 11:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Psh8gy3S7gepuf/oSP40PdKVn6xpYATCeLVtBXz1WVk=; b=XhnscIp4YPKR+g+5zdXD+rUF7n
	yii8wAZ1C+HTIjaoWDDtDHQ1nboGGZXnwKtAwFMO9XFvXEZdjZ+ujo12cYAlQS6YJoZl7hXgMmG7j
	53bK15GGDfmZ30lvR9gzTuL3QmuQBZtBJUdCcxheYmB/QvZdLZXbFUqUEJfsjEgCZwfARVwzdbwxJ
	gpsjw6nsqb3NuJUIq4319UP4KqyEdTakhOWwU2mJtHtpQ15D5c/YFnvQ4jwmYUUMODS/apFMSgMqd
	TfcC5pLGTyPYkEnI9aHiSXBPLDmH3nbqyLxESWFcIco/VF78HzwKupKhD+AttG3AiWbweHUk5x0y4
	SYGFIjKg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjywg-00000001n54-0Vhz
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 11:05:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjywf-0003EH-Ii; Mon, 17 Feb 2025 12:05:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjywf-001OVW-0m;
	Mon, 17 Feb 2025 12:05:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjywf-0077FN-0Q;
	Mon, 17 Feb 2025 12:05:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 Feb 2025 12:05:48 +0100
Message-Id: <20250217110548.1695938-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_110550_347732_32ECDDB7 
X-CRM114-Status: GOOD (  10.97  )
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
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: Fix DRIVER_NET_TI_DAVINCI_MDIO dependency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The davinci-mdio driver was factored out from DRIVER_NET_CPSW which
depends on ARCH_OMAP, so DRIVER_NET_TI_DAVINCI_MDIO should depend
on the same symbol, not ARCH_OMAP3.

Fixes: f703666dd1 ("net: davinci_mdio: separate driver")
Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 0e78579250..5c436a05cc 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -58,7 +58,7 @@ config DRIVER_NET_CPSW
 
 config DRIVER_NET_TI_DAVINCI_MDIO
 	bool "TI Davinci MDIO driver"
-	depends on ARCH_OMAP3 || ARCH_K3 || COMPILE_TEST
+	depends on ARCH_OMAP || ARCH_K3 || COMPILE_TEST
 
 config DRIVER_NET_DAVINCI_EMAC
 	bool "TI Davinci/OMAP EMAC ethernet driver"
-- 
2.39.5




Delivery-date: Fri, 21 Apr 2023 12:08:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppngz-00BPT9-Lv
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 12:08:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppngz-0001Uu-Gm
	for lore@pengutronix.de; Fri, 21 Apr 2023 12:08:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XAc2suvFP/7hmqalRwm+Vx5f9dExiCdvo/8HIN021Ww=; b=zPDLqDlkPi4dWLJakZCY8malM8
	u4xIZ1PCQHgHpdohAozKt4oSvKjHlYnWf/V5ocF2laVBFQEUyJAbkeYaJ/3PDcO4aNoCQcRGAh32F
	Muq0eZWFAtLtGHjiiaGXb/i9DERg9GtjuKQdmgq11cAVKklGaD6myXeegKDPL10lKQJ0ZI321W0CI
	wk898W0JU1r3S3A1HcugC/hXYvOHFr055cjaGiximInBl6B431j48GVV+JKXheamd0yE+sr1nAw+d
	Xdxk1An218hcRlb8z9r8ConKsTtWSci3np7Ul+NOzDbMJKHk+n5DimJwo9dpGiC+fkFAFzlfyKVxZ
	LyJIH6DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfl-00AQ4z-2I;
	Fri, 21 Apr 2023 10:07:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfd-00AQ1X-0w
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 10:07:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfa-00010w-8X; Fri, 21 Apr 2023 12:07:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfZ-00ClhQ-IU; Fri, 21 Apr 2023 12:07:09 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfY-00C2OR-Hu; Fri, 21 Apr 2023 12:07:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 21 Apr 2023 12:06:40 +0200
Message-Id: <20230421100642.2867651-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
References: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_030713_367044_011C0082 
X-CRM114-Status: UNSURE (   9.74  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/5] ARM: stm32mp: defconfig: enable use of DKx USB hubs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The DK1/DK2 boards have an on-board USB-Hub with togglable power supply,
which is connected to the SoC's EHCI. Enable the necessary options to
make it usable. This was tested with the mass storage support (barebox
being host, not gadget), so enable that as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/stm32mp_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index f6c6ca71b15c..df73102ba1c0 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -115,6 +115,9 @@ CONFIG_MTD_SST25L=y
 CONFIG_USB_HOST=y
 CONFIG_USB_DWC2_HOST=y
 CONFIG_USB_DWC2_GADGET=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_ONBOARD_HUB=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
-- 
2.39.2




Delivery-date: Fri, 14 Mar 2025 15:43:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6Fv-00E2im-00
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 15:43:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6Ft-0005Oe-Sk
	for lore@pengutronix.de; Fri, 14 Mar 2025 15:43:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Uk0Ac3/oCHhiIgywqdmn7DUCgEcmxOcS1fONoJVK8Fs=; b=tuiKdnhbqeKR9K1Yg4ypvuYeRe
	C8A784LTgfla9TnrBZb9voOCWC0lJ74mnSuIQJbyq0LO780KDXu70IyoHpUF04AIauohBz+EACy3W
	qt2RGm2MwBePHcKpF3FI6gqMSC5FwqtVM/LQXYXpjqgnpHleKlJC1IqCSqcxADcHLW0GwB7e2iIel
	JZKdghxWDR3pXiCSKjads9cqgHehXTdPPcQVtR1J6kEx5urRB6oxMKu+hcni7XRpBNYWBh2d4QPDl
	Rm2cenuHgoquUHg4squ5gulLxLVk/b1lUvHJKd8GdbCOSvWBp/XKrJ2Cdt2vPcv3xu0zp6JvedT98
	5TfPzAtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6FS-0000000EQxg-350Q;
	Fri, 14 Mar 2025 14:42:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6FP-0000000EQwW-2vvr
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 14:42:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt6FN-0005Jh-4P; Fri, 14 Mar 2025 15:42:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt6FM-005ieV-32;
	Fri, 14 Mar 2025 15:42:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt6FM-00H5xU-2d;
	Fri, 14 Mar 2025 15:42:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 14 Mar 2025 15:42:47 +0100
Message-Id: <20250314144247.4074473-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_074251_733083_74F66B93 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3-r5_defconfig: enable eMMC boot partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Support for eMMC boot partition is needed to boot from eMMCs, enable
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/k3-r5_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/k3-r5_defconfig b/arch/arm/configs/k3-r5_defconfig
index 59b3aa5a6e..df66bdef5a 100644
--- a/arch/arm/configs/k3-r5_defconfig
+++ b/arch/arm/configs/k3-r5_defconfig
@@ -30,6 +30,7 @@ CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_MCI=y
 # CONFIG_MCI_WRITE is not set
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_AM654=y
 # CONFIG_TI_SCI_CLK is not set
 CONFIG_MFD_SYSCON=y
-- 
2.39.5




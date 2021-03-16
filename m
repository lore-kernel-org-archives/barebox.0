Delivery-date: Tue, 16 Mar 2021 10:00:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM5Yi-0002U2-HG
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 10:00:12 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM5Yh-0007f1-Mp
	for lore@pengutronix.de; Tue, 16 Mar 2021 10:00:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=adNYgL9kgp0+MO3MsioFSXmiFx8nbHI38KPGIa3QJwU=; b=mRlyn3QgMRm0/0DAe1sJdnvqC
	eEzJaf7S4HV+tQdjLAEi0fMWoNkAcxfl9KhW5lZV/GQr3eg6XKEZq8jD57uAzax7G9RQXijvUKAxX
	TOru/PMTMBhJjCIGc9dYJDFSYpORmT/lBqK/MZRO5IBI6yaGR4e2cNBEj07cGzuCtXqPpw8eDF7Of
	o1Ehe2uBwU1UQwzqSpO8cBqOk4Z5xnwFneCkDfARQLWw2CLgOJdR0IsoDf4iyk4mbAdd10mpDtWsT
	jS+lEM4he0dUshdjIhHg7W8Z27cQeidBRO7aB3JhjkjLnFkkBAr8pedYySsKRzjB/SwawuySoocnN
	vFl9m+yPA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM5Xm-000BSf-Js; Tue, 16 Mar 2021 08:59:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM5Xe-000BQT-PZ
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 08:59:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM5Xe-0007X1-4s; Tue, 16 Mar 2021 09:59:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM5Xd-00045o-Sb; Tue, 16 Mar 2021 09:59:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Mar 2021 09:59:05 +0100
Message-Id: <20210316085905.15672-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210316085905.15672-1-a.fatoum@pengutronix.de>
References: <20210316085905.15672-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_085908_110600_C3E6E67F 
X-CRM114-Status: GOOD (  10.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: stm32mp: defconfig: enable DWC2 USB OTG controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have had all parts in place to use the OTG port on the STM32MP1
boards for a while now. Enable it in the defconfig. USB EHCI
has a driver, but still needs some glue, however.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/stm32mp_defconfig | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 7b90002f8796..49041b1f48f3 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -93,7 +93,6 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_FASTBOOT=y
-CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_AIODEV=y
 CONFIG_STM32_ADC=y
@@ -106,6 +105,13 @@ CONFIG_REALTEK_PHY=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_STM32=y
+CONFIG_USB_HOST=y
+CONFIG_USB_DWC2_HOST=y
+CONFIG_USB_DWC2_GADGET=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_BACKLIGHT=y
 CONFIG_DRIVER_VIDEO_SIMPLE_PANEL=y
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


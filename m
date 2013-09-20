Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMsas-0007Vu-Nb
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 04:45:27 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B944ADC885A
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2013 06:45:05 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 20 Sep 2013 06:46:17 +0200
Message-Id: <1379652377-20276-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379652377-20276-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130920044518.GB1137@ns203013.ovh.net>
 <1379652377-20276-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] animeo_ip: add bootcount support
To: barebox@lists.infradead.org

when updating to defaultenv-2 we will use it to decide what to boot

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/init.c     | 2 ++
 arch/arm/configs/animeo_ip_defconfig | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 56b8df2..08fef58 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -219,6 +219,8 @@ static int animeo_ip_devices_init(void)
 	animeo_ip_add_device_mci();
 	animeo_ip_add_device_buttons();
 	animeo_ip_add_device_led();
+	add_generic_device("somfy_bootcount", DEVICE_ID_SINGLE, NULL, AT91SAM9260_BASE_GPBR + 2 * 4,
+			4, IORESOURCE_MEM, NULL);
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	/*
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 23e7278..f4463b7 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -68,6 +68,8 @@ CONFIG_UBI=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
+CONFIG_MISC_DEVICES=y
+CONFIG_SOMFY_BOOTCOUNT=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_BICOLOR=y
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

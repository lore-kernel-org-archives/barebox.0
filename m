Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDU9l-00074B-Ep
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:13:50 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 96EA7FF8BCF
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:14:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:58:40 +0200
Message-Id: <1333083528-24289-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330045639.GZ444@game.jcrosoft.org>
References: <20120330045639.GZ444@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/9] at91rm9200ek: add ohci support
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index b2008a4..308c066 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -47,6 +47,10 @@ static int at91rm9200ek_mem_init(void)
 }
 mem_initcall(at91rm9200ek_mem_init);
 
+static struct at91_usbh_data ek_usbh_data = {
+	.ports		= 2,
+};
+
 static int at91rm9200ek_devices_init(void)
 {
 	/*
@@ -58,6 +62,8 @@ static int at91rm9200ek_devices_init(void)
 	at91_add_device_eth(&ether_pdata);
 
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
+	/* USB Host */
+	at91_add_device_usbh_ohci(&ek_usbh_data);
 
 #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

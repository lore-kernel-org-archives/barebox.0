Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail431.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxNiB-0003NK-P9
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 20:11:25 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 21:09:52 +0100
Message-Id: <1358798996-26595-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130121200712.GJ26329@game.jcrosoft.org>
 <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/9] at91: usb: allow to specicfy inverted vbus
To: barebox@lists.infradead.org

add missing vbus to all SoC

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200_devices.c  |    9 +++++++++
 arch/arm/mach-at91/at91sam9260_devices.c |    9 +++++++++
 arch/arm/mach-at91/at91sam9261_devices.c |    9 +++++++++
 arch/arm/mach-at91/at91sam9263_devices.c |    3 ++-
 arch/arm/mach-at91/at91sam9g45_devices.c |    3 ++-
 arch/arm/mach-at91/at91sam9n12_devices.c |    3 ++-
 arch/arm/mach-at91/at91sam9x5_devices.c  |    3 ++-
 arch/arm/mach-at91/include/mach/board.h  |    1 +
 8 files changed, 36 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 4109172..84d4c15 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -37,9 +37,18 @@ void at91_add_device_sdram(u32 size)
 #if defined(CONFIG_USB_OHCI)
 void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 {
+	int i;
+
 	if (!data)
 		return;
 
+	/* Enable VBus control for UHP ports */
+	for (i = 0; i < data->ports; i++) {
+		if (gpio_is_valid(data->vbus_pin[i]))
+			at91_set_gpio_output(data->vbus_pin[i],
+					     data->vbus_pin_active_low[i]);
+	}
+
 	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91RM9200_UHP_BASE,
 			1024 * 1024, IORESOURCE_MEM, data);
 }
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index a893a95..5ee0b11 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -42,9 +42,18 @@ void at91_add_device_sdram(u32 size)
 #if defined(CONFIG_USB_OHCI)
 void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 {
+	int i;
+
 	if (!data)
 		return;
 
+	/* Enable VBus control for UHP ports */
+	for (i = 0; i < data->ports; i++) {
+		if (gpio_is_valid(data->vbus_pin[i]))
+			at91_set_gpio_output(data->vbus_pin[i],
+					     data->vbus_pin_active_low[i]);
+	}
+
 	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9260_UHP_BASE,
 			1024 * 1024, IORESOURCE_MEM, data);
 }
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index becd25f..5241894 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -45,9 +45,18 @@ void at91_add_device_sdram(u32 size)
 #if defined(CONFIG_USB_OHCI)
 void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 {
+	int i;
+
 	if (!data)
 		return;
 
+	/* Enable VBus control for UHP ports */
+	for (i = 0; i < data->ports; i++) {
+		if (gpio_is_valid(data->vbus_pin[i]))
+			at91_set_gpio_output(data->vbus_pin[i],
+					     data->vbus_pin_active_low[i]);
+	}
+
 	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9261_UHP_BASE,
 			1024 * 1024, IORESOURCE_MEM, data);
 }
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index b72cc5a..c5efe9f 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -50,7 +50,8 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 	/* Enable VBus control for UHP ports */
 	for (i = 0; i < data->ports; i++) {
 		if (gpio_is_valid(data->vbus_pin[i]))
-			at91_set_gpio_output(data->vbus_pin[i], 0);
+			at91_set_gpio_output(data->vbus_pin[i],
+					     data->vbus_pin_active_low[i]);
 	}
 
 	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9263_UHP_BASE,
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index d2746da..7d44ee0 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -44,7 +44,8 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 	/* Enable VBus control for UHP ports */
 	for (i = 0; i < data->ports; i++) {
 		if (gpio_is_valid(data->vbus_pin[i]))
-			at91_set_gpio_output(data->vbus_pin[i], 0);
+			at91_set_gpio_output(data->vbus_pin[i],
+					     data->vbus_pin_active_low[i]);
 	}
 
 	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9G45_OHCI_BASE,
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index 3f41f3e..9d6e80f 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -46,7 +46,8 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 	/* Enable VBus control for UHP ports */
 	for (i = 0; i < data->ports; i++) {
 		if (gpio_is_valid(data->vbus_pin[i]))
-			at91_set_gpio_output(data->vbus_pin[i], 0);
+			at91_set_gpio_output(data->vbus_pin[i],
+					     data->vbus_pin_active_low[i]);
 	}
 
 	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9N12_OHCI_BASE,
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index e92fa0d..71057a5 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -45,7 +45,8 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 	/* Enable VBus control for UHP ports */
 	for (i = 0; i < data->ports; i++) {
 		if (gpio_is_valid(data->vbus_pin[i]))
-			at91_set_gpio_output(data->vbus_pin[i], 0);
+			at91_set_gpio_output(data->vbus_pin[i],
+					     data->vbus_pin_active_low[i]);
 	}
 
 	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9X5_OHCI_BASE,
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index b18f1c0..0994770 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -29,6 +29,7 @@
 struct at91_usbh_data {
 	u8		ports;		/* number of ports on root hub */
 	int		vbus_pin[2];	/* port power-control pin */
+	u8	vbus_pin_active_low[2];	/* vbus polarity */
 };
 extern void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

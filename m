Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUDP-0001Gj-JQ
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 12:57:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Dec 2019 13:56:55 +0100
Message-Id: <20191204125659.22506-6-a.fatoum@pengutronix.de>
In-Reply-To: <20191204125659.22506-1-a.fatoum@pengutronix.de>
References: <20191204125659.22506-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/9] PCI: add driver_data member to struct pci_device_id
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux drivers have a driver data member in the struct to associate
variant specific driver data with each device id. Do likewise in
barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/mod_devicetable.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
index d8125214a04a..1fbb3dc5c182 100644
--- a/include/linux/mod_devicetable.h
+++ b/include/linux/mod_devicetable.h
@@ -15,6 +15,7 @@ struct pci_device_id {
 	__u32 vendor, device;		/* Vendor and device ID or PCI_ANY_ID*/
 	__u32 subvendor, subdevice;	/* Subsystem ID's or PCI_ANY_ID */
 	__u32 class, class_mask;	/* (class,subclass,prog-if) triplet */
+	unsigned long driver_data;	/* Data private to the driver */
 };
 
 #define SPI_NAME_SIZE 32
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

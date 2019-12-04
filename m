Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUDK-0001Ah-7f
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 12:57:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Dec 2019 13:56:51 +0100
Message-Id: <20191204125659.22506-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/9] efi: add and use new efi_device_has_guid helper
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We have at least two places where we check if a efidev has a particular
guid and a follow-up commit will introduce a third place.

So lets factor it out into a helper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/efi-block-io.c | 11 ++---------
 drivers/efi/efi-device.c     | 11 ++---------
 include/efi/efi-device.h     | 12 ++++++++++++
 3 files changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 39dbfb0f7ada..30db486876a8 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -131,16 +131,9 @@ static void efi_bio_print_info(struct efi_bio_priv *priv)
 			media->optimal_transfer_length_granularity);
 }
 
-static int is_bio_usbdev(struct efi_device *efidev)
+static bool is_bio_usbdev(struct efi_device *efidev)
 {
-	int i;
-
-	for (i = 0; i < efidev->num_guids; i++) {
-		if (!efi_guidcmp(efidev->guids[i], EFI_USB_IO_PROTOCOL_GUID))
-			return 1;
-	}
-
-	return 0;
+	return efi_device_has_guid(efidev, EFI_USB_IO_PROTOCOL_GUID);
 }
 
 static int efi_bio_probe(struct efi_device *efidev)
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index a1aac2dd31be..ac035dcfacbb 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -386,16 +386,9 @@ static int efi_is_setup_mode(void)
 	return ret != 1;
 }
 
-static int is_bio_usbdev(struct efi_device *efidev)
+static bool is_bio_usbdev(struct efi_device *efidev)
 {
-	int i;
-
-	for (i = 0; i < efidev->num_guids; i++) {
-		if (!efi_guidcmp(efidev->guids[i], EFI_USB_IO_PROTOCOL_GUID))
-			return 1;
-	}
-
-	return 0;
+	return efi_device_has_guid(efidev, EFI_USB_IO_PROTOCOL_GUID);
 }
 
 static struct efi_device *bootdev;
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index 5eaf1f260d56..5ec59a8a2ddd 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -45,4 +45,16 @@ int efi_connect_all(void);
 void efi_register_devices(void);
 struct efi_device *efi_get_bootsource(void);
 
+static inline bool efi_device_has_guid(struct efi_device *efidev, efi_guid_t guid)
+{
+	int i;
+
+	for (i = 0; i < efidev->num_guids; i++) {
+		if (!efi_guidcmp(efidev->guids[i], guid))
+			return true;
+	}
+
+	return false;
+}
+
 #endif /* __EFI_EFI_DEVICE_H */
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

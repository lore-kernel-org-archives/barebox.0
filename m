Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpZdN-0008Uj-OM
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 12:40:47 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed,  6 Sep 2017 14:40:08 +0200
Message-Id: <20170906124008.26582-1-linux@rempel-privat.de>
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
Subject: [PATCH] efi: make sure efi-fs is started in the right order
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Michael Olbrich <m.olbrich@pengutronix.de>

From: Michael Olbrich <m.olbrich@pengutronix.de>

with this parch, EFI System partition will be mounted to /boot
instead of /mnt/diskXX.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 fs/efi.c                 | 2 +-
 include/efi/efi-device.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/efi.c b/fs/efi.c
index 85ff91429..692556b26 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -558,4 +558,4 @@ static struct efi_driver efi_fs_driver = {
         .probe = efi_fs_probe,
 	.guid = EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID,
 };
-device_efi_driver(efi_fs_driver);
+fs_efi_driver(efi_fs_driver);
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index 8f5f1f3f1..15c293bb1 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -33,6 +33,8 @@ static inline struct efi_driver *to_efi_driver(struct driver_d *drv)
 #define device_efi_driver(drv)	\
 	register_driver_macro(device, efi, drv)
 
+#define fs_efi_driver(drv)	\
+	register_driver_macro(fs, efi, drv)
 static inline int efi_driver_register(struct efi_driver *efidrv)
 {
 	efidrv->driver.bus = &efi_bus;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

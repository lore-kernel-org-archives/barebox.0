Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdd2-0007lt-4p
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 07:21:53 +0000
Received: from geraet.fritz.box (i538755FA.versanet.de [83.135.85.250])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 835631C0004
 for <barebox@lists.infradead.org>; Wed, 16 Oct 2019 07:21:45 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 16 Oct 2019 09:21:37 +0200
Message-Id: <20191016072139.2323-3-ahmad@a3f.at>
In-Reply-To: <20191016072139.2323-1-ahmad@a3f.at>
References: <20191016072139.2323-1-ahmad@a3f.at>
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
Subject: [PATCH 3/5] efi: use efi_guidcmp helper where appropriate
To: barebox@lists.infradead.org

We have a helper for it. Let's use it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/efi/efi-device.c | 2 +-
 fs/efivarfs.c            | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 305d337aabf5..68d81caf010b 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -311,7 +311,7 @@ static int efi_bus_match(struct device_d *dev, struct driver_d *drv)
 	int i;
 
 	for (i = 0; i < efidev->num_guids; i++) {
-		if (!memcmp(&efidrv->guid, &efidev->guids[i], sizeof(efi_guid_t))) {
+		if (!efi_guidcmp(efidrv->guid, efidev->guids[i])) {
 			BS->handle_protocol(efidev->handle, &efidev->guids[i],
 					&efidev->protocol);
 			return 0;
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 1e8049362168..9eadda41215c 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -145,7 +145,7 @@ static int efivars_create(struct device_d *dev, const char *pathname, mode_t mod
 	if (ret)
 		return -ENOENT;
 
-	if (memcmp(&vendor, &EFI_BAREBOX_VENDOR_GUID, sizeof(efi_guid_t)))
+	if (efi_guidcmp(vendor, EFI_BAREBOX_VENDOR_GUID))
 		return -EPERM;
 
 	inode = xzalloc(sizeof(*inode));
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmjYx-0008CL-8X
 for barebox@lists.infradead.org; Sat, 11 Mar 2017 16:08:13 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Sat, 11 Mar 2017 17:07:33 +0100
Message-Id: <20170311160733.18473-2-m.olbrich@pengutronix.de>
In-Reply-To: <20170311160733.18473-1-m.olbrich@pengutronix.de>
References: <20170311160733.18473-1-m.olbrich@pengutronix.de>
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
Subject: [PATCH 2/2] efi: only iterate over handles that provide the device
 path protocol
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

All other handled are skipped anyways.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 drivers/efi/efi-device.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index c5fb404cd36b..db3c0afe3361 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -102,7 +102,8 @@ static efi_handle_t *efi_find_parent(efi_handle_t *handle)
 	struct efi_open_protocol_information_entry *entry_buffer;
 	unsigned long entry_count;
 
-	ret = efi_locate_handle(all_handles, NULL, NULL, &handle_count, &handles);
+	ret = efi_locate_handle(by_protocol, &efi_device_path_protocol_guid,
+			NULL, &handle_count, &handles);
 	if (ret)
 		return NULL;
 
@@ -244,7 +245,8 @@ void efi_register_devices(void)
 	struct efi_device **efidevs;
 	int registered;
 
-	ret = efi_locate_handle(all_handles, NULL, NULL, &handle_count, &handles);
+	ret = efi_locate_handle(by_protocol, &efi_device_path_protocol_guid,
+			NULL, &handle_count, &handles);
 	if (ret)
 		return;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

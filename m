Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grgQ2-0003WP-Uo
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 09:56:34 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Feb 2019 10:56:23 +0100
Message-Id: <20190207095625.11582-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 1/3] efi: add prototype and definition for
 set_watchdog_timer
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/efi.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/efi.h b/include/efi.h
index 7cc5fe05fa..218333f824 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -234,7 +234,10 @@ typedef struct {
 	efi_status_t (EFIAPI *exit_boot_services)(efi_handle_t, unsigned long);
 	void *get_next_monotonic_count;
 	efi_status_t (EFIAPI *stall)(unsigned long usecs);
-	void *set_watchdog_timer;
+	efi_status_t (EFIAPI *set_watchdog_timer)(unsigned long timeout,
+						  uint64_t watchdog_code,
+						  unsigned long data_size,
+						  s16 *watchdog_data);
 	efi_status_t(EFIAPI *connect_controller)(efi_handle_t controller_handle,
 			efi_handle_t *driver_image_handle,
 			struct efi_device_path *remaining_device_path,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

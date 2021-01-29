Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5UIH-0004ZK-KK
 for barebox@lists.infradead.org; Fri, 29 Jan 2021 13:58:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 29 Jan 2021 14:58:33 +0100
Message-Id: <20210129135833.5748-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] efi: declare prototype for close_protocol BootService
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Sometimes, drivers need to probe whether the EFI device in front of them
is the actual hardware they expect. If it's not, the driver should call
close_protocol to leave the decision on whether to match this device to
another driver. Use the correct type for close_protocol to facilitate
this.

No functional change, as no in-tree driver makes use of this yet.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/efi.h b/include/efi.h
index 43c05939513d..f6833fde1e75 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -256,7 +256,8 @@ typedef struct {
 	efi_status_t (EFIAPI *open_protocol)(efi_handle_t handle, efi_guid_t *protocol,
 			void ** interface, efi_handle_t agent_handle,
 			efi_handle_t controller_handle, u32 attributes);
-	void *close_protocol;
+	efi_status_t (EFIAPI *close_protocol)(efi_handle_t handle, efi_guid_t *protocol,
+					      efi_handle_t agent, efi_handle_t controller);
 	efi_status_t(EFIAPI *open_protocol_information)(efi_handle_t handle, efi_guid_t *Protocol,
 			struct efi_open_protocol_information_entry **entry_buffer,
 			unsigned long *entry_count);
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

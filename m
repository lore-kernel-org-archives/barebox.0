Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abDko-000254-DC
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 20:52:20 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p54831D4B.dip0.t-ipconnect.de
 [84.131.29.75]) by lynxeye.de (Postfix) with ESMTPA id 04F6D26C2001
 for <barebox@lists.infradead.org>; Wed,  2 Mar 2016 21:51:22 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  2 Mar 2016 21:50:33 +0100
Message-Id: <1456951837-20843-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/5] efi: fix memory leak in error path
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/efi/efi/efi-device.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/efi/efi/efi-device.c b/arch/efi/efi/efi-device.c
index 7db8e48..678a283 100644
--- a/arch/efi/efi/efi-device.c
+++ b/arch/efi/efi/efi-device.c
@@ -168,8 +168,10 @@ static struct efi_device *efi_add_device(efi_handle_t *handle, efi_guid_t **guid
 
 	efiret = BS->open_protocol(handle, &efi_device_path_protocol_guid,
 			&devpath, NULL, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
-	if (EFI_ERROR(efiret))
+	if (EFI_ERROR(efiret)) {
+		free(guidarr);
 		return ERR_PTR(-EINVAL);
+	}
 
 	efidev = xzalloc(sizeof(*efidev));
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

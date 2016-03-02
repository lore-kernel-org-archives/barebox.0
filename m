Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abDko-000256-Cy
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 20:52:19 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p54831D4B.dip0.t-ipconnect.de
 [84.131.29.75]) by lynxeye.de (Postfix) with ESMTPA id F111F26C2003
 for <barebox@lists.infradead.org>; Wed,  2 Mar 2016 21:51:23 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  2 Mar 2016 21:50:35 +0100
Message-Id: <1456951837-20843-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1456951837-20843-1-git-send-email-dev@lynxeye.de>
References: <1456951837-20843-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/5] fs: efi: avoid comparison with uninitialized variable
To: barebox@lists.infradead.org

volume will only be initialized when efi_loaded_image is
set.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 fs/efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/efi.c b/fs/efi.c
index a7adcb9..0f74cda 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -527,7 +527,7 @@ int efi_fs_probe(struct efi_device *efidev)
 		BS->handle_protocol(efi_loaded_image->device_handle,
 				&efi_simple_file_system_protocol_guid, (void*)&volume);
 
-	if (efidev->protocol == volume)
+	if (efi_loaded_image && efidev->protocol == volume)
 		path = xstrdup("/boot");
 	else
 		path = asprintf("/efi%d", index);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

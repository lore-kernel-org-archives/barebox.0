Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIus6-0001DN-6m
 for barebox@lists.infradead.org; Sat, 25 Jul 2015 08:31:56 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Sat, 25 Jul 2015 10:31:24 +0200
Message-Id: <1437813084-24976-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH] fixup! efi: add helper to get the GPT partition UUID for a
 device
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

---

I'm not sure why I didn't notice this before. This is needed to generate
the correct UUID. Otherwise systemd fails to mount the EFI partition.

Michael

 common/efi-devicepath.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/efi-devicepath.c b/common/efi-devicepath.c
index a1cd0952f929..54c2f4e3c54e 100644
--- a/common/efi-devicepath.c
+++ b/common/efi-devicepath.c
@@ -1406,7 +1406,7 @@ char *device_path_to_partuuid(struct efi_device_path *dev_path)
 		if (hd->signature_type != SIGNATURE_TYPE_GUID)
 			continue;
 
-		str = xasprintf("%pU)", (efi_guid_t *)&(hd->signature[0]));
+		str = xasprintf("%pUl", (efi_guid_t *)&(hd->signature[0]));
 		break;
 	}
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

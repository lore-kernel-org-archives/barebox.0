Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XH8Wg-0003R3-DQ
 for barebox@lists.infradead.org; Tue, 12 Aug 2014 09:37:55 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Tue, 12 Aug 2014 11:37:21 +0200
Message-Id: <1407836241-17620-2-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1407836241-17620-1-git-send-email-m.olbrich@pengutronix.de>
References: <1407836241-17620-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 2/2] EFI: handle more boot devices
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

efi_get_boot() fails for partitions that are not supported, so errors must
be ignored to find all supported devices.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---

I'm not sure about this one. We're not doing anythings with the return
value of efi_get_boot(), so this is just some debug output + memory leak.

Also, 100 is rather arbitrary. Maybe EFI has some limit there as well?

Michael

 arch/efi/efi/efi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index 7de8ec8..ceb4479 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -134,9 +134,10 @@ struct efi_boot *efi_get_boot(int num)
 
 static int misc_init(void)
 {
-	efi_get_boot(1);
-	efi_get_boot(2);
-	efi_get_boot(3);
+	int i;
+
+	for (i = 1; i < 100; ++i)
+		efi_get_boot(i);
 
 	return 0;
 }
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

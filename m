Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEE-0002KI-P7
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:27 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:44 +0200
Message-Id: <1437160969-31517-12-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 11/16] efi: use xstrdup_* when appropriate
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/efi/efi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index 6cffac60f54b..07a4d9d0fc57 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -52,7 +52,7 @@ void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size)
 	efi_status_t efiret;
 	void *buf;
 	unsigned long size = 0;
-	s16 *name16 = strdup_char_to_wchar(name);
+	s16 *name16 = xstrdup_char_to_wchar(name);
 
 	efiret = RT->get_variable(name16, vendor, NULL, &size, NULL);
 
@@ -87,7 +87,7 @@ int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
 		     void *buf, unsigned long size)
 {
 	efi_status_t efiret = EFI_SUCCESS;
-	s16 *name16 = strdup_char_to_wchar(name);
+	s16 *name16 = xstrdup_char_to_wchar(name);
 
 	efiret = RT->set_variable(name16, vendor, attributes, size, buf);
 
@@ -146,7 +146,7 @@ struct efi_boot *efi_get_boot(int num)
 
 	ptr += sizeof(u16);
 
-	boot->description = strdup_wchar_to_char(ptr);
+	boot->description = xstrdup_wchar_to_char(ptr);
 
 	ptr += (strlen(boot->description) + 1) * 2;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6v-0006YN-Qk
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:50:09 +0200
Message-Id: <1404809417-21477-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/21] efi: Add more error codes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/efi.h | 41 ++++++++++++++++++++++++++++++++++-------
 1 file changed, 34 insertions(+), 7 deletions(-)

diff --git a/include/efi.h b/include/efi.h
index 570eff7..9911fa1 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -14,13 +14,40 @@
 #include <linux/string.h>
 #include <linux/types.h>
 
-#define EFI_SUCCESS		0
-#define EFI_LOAD_ERROR          ( 1 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_INVALID_PARAMETER	( 2 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_UNSUPPORTED		( 3 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_BAD_BUFFER_SIZE     ( 4 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_BUFFER_TOO_SMALL	( 5 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_NOT_FOUND		(14 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_SUCCESS                             0
+#define EFI_LOAD_ERROR                  ( 1 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_INVALID_PARAMETER           ( 2 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_UNSUPPORTED                 ( 3 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_BAD_BUFFER_SIZE             ( 4 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_BUFFER_TOO_SMALL            ( 5 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_NOT_READY                   ( 6 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_DEVICE_ERROR                ( 7 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_WRITE_PROTECTED             ( 8 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_OUT_OF_RESOURCES            ( 9 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_VOLUME_CORRUPTED            ( 10 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_VOLUME_FULL                 ( 11 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_NO_MEDIA                    ( 12 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_MEDIA_CHANGED               ( 13 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_NOT_FOUND                   ( 14 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_ACCESS_DENIED               ( 15 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_NO_RESPONSE                 ( 16 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_NO_MAPPING                  ( 17 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_TIMEOUT                     ( 18 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_NOT_STARTED                 ( 19 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_ALREADY_STARTED             ( 20 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_ABORTED                     ( 21 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_ICMP_ERROR                  ( 22 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_TFTP_ERROR                  ( 23 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_PROTOCOL_ERROR              ( 24 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_INCOMPATIBLE_VERSION        ( 25 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_SECURITY_VIOLATION          ( 26 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_CRC_ERROR                   ( 27 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_END_OF_MEDIA                ( 28 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_END_OF_FILE                 ( 31 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_INVALID_LANGUAGE            ( 32 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_COMPROMISED_DATA            ( 33 | (1UL << (BITS_PER_LONG-1)))
+
+#define EFI_ERROR(a)	(((signed long) a) < 0)
 
 typedef unsigned long efi_status_t;
 typedef u8 efi_bool_t;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f42.google.com ([209.85.215.42])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWkzR-00075p-EC
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 12:48:42 +0000
Received: by laboe4 with SMTP id oe4so65707633lab.0
 for <barebox@lists.infradead.org>; Tue, 01 Sep 2015 05:48:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  1 Sep 2015 15:48:08 +0300
Message-Id: <1441111688-25418-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1441111688-25418-1-git-send-email-antonynpavlov@gmail.com>
References: <1441111688-25418-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] endian: Always evaluate arguments
To: barebox@lists.infradead.org
Cc: "David S. Miller" <davem@davemloft.net>

From: "David S. Miller" <davem@davemloft.net>

This patch is based on

    commit 3d6f4a20cc287a8980c6186624834cf10a70752b
    Author: David Miller <davem@davemloft.net>
    Date:   Thu Jul 24 23:38:31 2008 -0700

        endian: Always evaluate arguments.

In barebox.git/drivers/usb/core/usb.c,
function usb_parse_config() we have had

    le16_to_cpus(&(dev->config.wTotalLength));

which evaluates to "do { } while (0)" on little endian,
so struct usb_configuration field misuse will never
be discovered on little endian.

Therefore, always evaluate the arguments to nop endian
transformation operations.

Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/linux/byteorder/big_endian.h    | 12 ++++++------
 include/linux/byteorder/little_endian.h | 12 ++++++------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/include/linux/byteorder/big_endian.h b/include/linux/byteorder/big_endian.h
index 09fb188..e560ef6 100644
--- a/include/linux/byteorder/big_endian.h
+++ b/include/linux/byteorder/big_endian.h
@@ -57,12 +57,12 @@
 #define __le32_to_cpus(x) __swab32s((x))
 #define __cpu_to_le16s(x) __swab16s((x))
 #define __le16_to_cpus(x) __swab16s((x))
-#define __cpu_to_be64s(x) do {} while (0)
-#define __be64_to_cpus(x) do {} while (0)
-#define __cpu_to_be32s(x) do {} while (0)
-#define __be32_to_cpus(x) do {} while (0)
-#define __cpu_to_be16s(x) do {} while (0)
-#define __be16_to_cpus(x) do {} while (0)
+#define __cpu_to_be64s(x) do { (void)(x); } while (0)
+#define __be64_to_cpus(x) do { (void)(x); } while (0)
+#define __cpu_to_be32s(x) do { (void)(x); } while (0)
+#define __be32_to_cpus(x) do { (void)(x); } while (0)
+#define __cpu_to_be16s(x) do { (void)(x); } while (0)
+#define __be16_to_cpus(x) do { (void)(x); } while (0)
 
 #include <linux/byteorder/generic.h>
 
diff --git a/include/linux/byteorder/little_endian.h b/include/linux/byteorder/little_endian.h
index 5870a6e..a821b27 100644
--- a/include/linux/byteorder/little_endian.h
+++ b/include/linux/byteorder/little_endian.h
@@ -51,12 +51,12 @@
 #define __be32_to_cpup(x) __swab32p((x))
 #define __cpu_to_be16p(x) __swab16p((x))
 #define __be16_to_cpup(x) __swab16p((x))
-#define __cpu_to_le64s(x) do {} while (0)
-#define __le64_to_cpus(x) do {} while (0)
-#define __cpu_to_le32s(x) do {} while (0)
-#define __le32_to_cpus(x) do {} while (0)
-#define __cpu_to_le16s(x) do {} while (0)
-#define __le16_to_cpus(x) do {} while (0)
+#define __cpu_to_le64s(x) do { (void)(x); } while (0)
+#define __le64_to_cpus(x) do { (void)(x); } while (0)
+#define __cpu_to_le32s(x) do { (void)(x); } while (0)
+#define __le32_to_cpus(x) do { (void)(x); } while (0)
+#define __cpu_to_le16s(x) do { (void)(x); } while (0)
+#define __le16_to_cpus(x) do { (void)(x); } while (0)
 #define __cpu_to_be64s(x) __swab64s((x))
 #define __be64_to_cpus(x) __swab64s((x))
 #define __cpu_to_be32s(x) __swab32s((x))
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

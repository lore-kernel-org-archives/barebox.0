Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZV5b9-0004A7-Ke
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 22:24:44 +0000
Received: by labns7 with SMTP id ns7so21747530lab.0
 for <barebox@lists.infradead.org>; Thu, 27 Aug 2015 15:24:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Aug 2015 01:24:02 +0300
Message-Id: <1440714250-28080-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/9] WIP: make ehci-hcd.c happy on big-endian MIPS
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

import __constant_cpu_to_le16() from linux.git/include/uapi/linux/byteorder/big_endian.h

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/linux/byteorder/big_endian.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/byteorder/big_endian.h b/include/linux/byteorder/big_endian.h
index 09fb188..11cf23e 100644
--- a/include/linux/byteorder/big_endian.h
+++ b/include/linux/byteorder/big_endian.h
@@ -19,7 +19,7 @@
 #define __constant_le64_to_cpu(x) ___swab64((x))
 #define __constant_cpu_to_le32(x) ___swab32((x))
 #define __constant_le32_to_cpu(x) ___swab32((x))
-#define __constant_cpu_to_le16(x) ___swab16((x))
+#define __constant_cpu_to_le16(x) ((__force __le16)___constant_swab16((x)))
 #define __constant_le16_to_cpu(x) ___swab16((x))
 #define __constant_cpu_to_be64(x) ((__u64)(x))
 #define __constant_be64_to_cpu(x) ((__u64)(x))
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

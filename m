Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2ED-0005Rr-Dq
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id b129-v6so3587150pga.13
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:39 -0700
Message-Id: <20180824025243.19479-21-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 20/24] ARM: i.MX: bbu: Use pwrite_full() instead of pwrite()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use pwrite_full() instead of pwrite() to make sure that all of the
data was written to target device. While at it adjust return value of
imx_bbu_write_device() to be zero in case of success.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 59fe6218e..504e359bc 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -30,6 +30,7 @@
 #include <environment.h>
 #include <mach/bbu.h>
 #include <mach/generic.h>
+#include <libfile.h>
 
 #define IMX_INTERNAL_FLAG_ERASE		BIT(30)
 
@@ -116,9 +117,12 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		}
 	}
 
-	ret = pwrite(fd, buf, image_len, offset);
-	if (ret < 0)
+	ret = pwrite_full(fd, buf, image_len, offset);
+	if (ret < 0) {
+		pr_err("writing to %s failed with %s\n", devicefile,
+		       strerror(-ret));
 		goto err_close;
+	}
 
 	imx_bbu_protect(fd, imx_handler, devicefile, offset,
 			image_len, 1);
@@ -126,7 +130,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 err_close:
 	close(fd);
 
-	return ret;
+	return ret < 0 ? ret : 0;
 }
 
 static int __imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

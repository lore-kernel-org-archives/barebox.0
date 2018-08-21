Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07w-0000D3-GE
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:26:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id f1-v6so7961820pgq.12
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:42 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH 18/22] ARM: i.MX: bbu: Adjust error code check for pwrite()
Date: Mon, 20 Aug 2018 23:25:59 -0700
Message-Id: <20180821062603.17393-19-andrew.smirnov@gmail.com>
In-Reply-To: <20180821062603.17393-1-andrew.smirnov@gmail.com>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Pwrite() will return the amount bytes written or negative error code
on success, so we need to do two things with it:

    1. Check it against "image_len" to make sure we actually wrote all
       of the data

    2. Set it to zero in case of success, since that is what code in
       barebox_update() expects to happen

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index d83eb972c..70af5ef84 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -86,6 +86,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		const void *buf, int image_len)
 {
 	int fd, ret, offset = 0;
+	bool partial_write;
 
 	fd = open(devicefile, O_RDWR | O_CREAT);
 	if (fd < 0)
@@ -117,8 +118,14 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	}
 
 	ret = pwrite(fd, buf, image_len, offset);
-	if (ret < 0)
+	partial_write = ret > 0 && ret != image_len;
+	if (ret < 0 || partial_write) {
+		ret = partial_write ? -EIO : ret;
+
+		pr_err("writing to %s failed with %s\n", devicefile,
+		       strerror(-ret));
 		goto err_close;
+	}
 
 	imx_bbu_protect(fd, imx_handler, devicefile, offset,
 			image_len, 1);
@@ -126,7 +133,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
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

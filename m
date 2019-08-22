Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gzF-0005RN-5e
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:54:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2019 08:54:07 +0200
Message-Id: <20190822065408.29279-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190822065408.29279-1-a.fatoum@pengutronix.de>
References: <20190822065408.29279-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] ARM: i.MX: bbu: early exit when partition too small
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far, writing a barebox image exceeding the partition size aborts with
EPERM as truncate isn't implemented:

  ERROR: writing to /dev/flash-boot.barebox failed with Operation
  not permitted
  update failed
  ERROR: fastboot: update barebox: Operation not permitted

This is unfortunate because by the time the truncation fails, erasing
the partition had already occurred. Avoid this by checking prior to the
pwrite_all whether the file to be written is big enough. This is valid
here because barebox update wouldn't be called on a regular file.

While at it, present callers with a more helpful ENOSPC error.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index a563b3bc2906..946a3e9a779b 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -87,6 +87,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		const void *buf, int image_len)
 {
 	int fd, ret, offset = 0;
+	struct stat st;
 
 	fd = open(devicefile, O_RDWR | O_CREAT);
 	if (fd < 0)
@@ -101,6 +102,15 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	if (imx_handler->handler.flags & IMX_BBU_FLAG_KEEP_HEAD)
 		offset += imx_handler->flash_header_offset;
 
+	ret = fstat(fd, &st);
+	if (ret)
+		goto err_close;
+
+	if (image_len > st.st_size) {
+		ret = -ENOSPC;
+		goto err_close;
+	}
+
 	ret = imx_bbu_protect(fd, imx_handler, devicefile, offset,
 			      image_len, 0);
 	if (ret)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

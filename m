Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimX-0001U6-NU
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:15:47 +0200
Message-Id: <20200623131606.16316-2-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/20] scripts: imx-image: Only set DCD pointer when we have
 DCD data
To: Barebox List <barebox@lists.infradead.org>

When we do not have any DCD data we can set the pointer to the
data to NULL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index ec7444a772..2481ae6403 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -329,7 +329,8 @@ static size_t add_header_v2(const struct config_data *data, void *buf)
 	hdr->header.version	= IVT_VERSION;
 
 	hdr->entry		= loadaddr + HEADER_LEN;
-	hdr->dcd_ptr		= loadaddr + offset + offsetof(struct imx_flash_header_v2, dcd_header);
+	if (dcdsize)
+		hdr->dcd_ptr = loadaddr + offset + offsetof(struct imx_flash_header_v2, dcd_header);
 	if (create_usb_image) {
 		dcd_ptr_content = hdr->dcd_ptr;
 		dcd_ptr_offset = offsetof(struct imx_flash_header_v2, dcd_ptr) + offset;
@@ -357,13 +358,14 @@ static size_t add_header_v2(const struct config_data *data, void *buf)
 		hdr->boot_data.size += CSF_LEN;
 	}
 
-	hdr->dcd_header.tag	= TAG_DCD_HEADER;
-	hdr->dcd_header.length	= htobe16(sizeof(uint32_t) + dcdsize);
-	hdr->dcd_header.version	= DCD_VERSION;
-
 	buf += sizeof(*hdr);
 
-	memcpy(buf, dcdtable, dcdsize);
+	if (dcdsize) {
+		hdr->dcd_header.tag	= TAG_DCD_HEADER;
+		hdr->dcd_header.length	= htobe16(sizeof(uint32_t) + dcdsize);
+		hdr->dcd_header.version	= DCD_VERSION;
+		memcpy(buf, dcdtable, dcdsize);
+	}
 
 	return imagesize;
 }
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

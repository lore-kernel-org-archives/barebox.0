Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWGh-0000rN-20
 for barebox@lists.infradead.org; Wed, 15 May 2013 07:37:02 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 09:36:29 +0200
Message-Id: <1368603396-27887-4-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCHv2 03/10] scripts/kwbimage: make the v0 image creation more
 flexible
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Until now, the v0 image creation function was expecting the
configuration parameters to be ordered with first the configuration
parameters affecting the main header, then the DATA configuration
parameters that affect the extended header, then the payload.

However, with the recently added ability to override the destination
address or execution address, the configuration options corresponding
to those values may now appear at the end of the configuration
options. This commit allows to handle that by making the image
creation more flexible:

 - The configuration options for the main header are just searched
   amongst all options, the first match is used.

 - When building the extension header with the DATA options, all DATA
   options from the configuration file are used, in the order in which
   they appear in the kwbimage.cfg file.

This will for example allow a kwbimage.cfg for a v0 image to not
specify any destination or execution address, and simply override it
from the command line.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 scripts/kwbimage.c |   48 ++++++++++++++++++++----------------------------
 1 file changed, 20 insertions(+), 28 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index cca20ab..d4f65a8 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -705,7 +705,7 @@ static void *image_create_v0(struct image_cfg_element *image_cfg,
 	struct ext_hdr_v0 *ext_hdr;
 	void *image;
 	int has_ext = 0;
-	int cfgi, ret;
+	int ret;
 
 	/* Calculate the size of the header and the size of the
 	 * payload */
@@ -754,42 +754,34 @@ static void *image_create_v0(struct image_cfg_element *image_cfg,
 	main_hdr->blocksize = payloadsz + sizeof(uint32_t);
 	main_hdr->srcaddr   = headersz;
 	main_hdr->ext       = has_ext;
-	for (cfgi = 0; cfgi < cfgn; cfgi++) {
-		struct image_cfg_element *el = &image_cfg[cfgi];
-		if (el->type == IMAGE_CFG_BOOT_FROM)
-			main_hdr->blockid = el->bootfrom;
-		else if (el->type == IMAGE_CFG_DEST_ADDR)
-			main_hdr->destaddr = el->dstaddr;
-		else if (el->type == IMAGE_CFG_EXEC_ADDR)
-			main_hdr->execaddr = el->execaddr;
-		else if (el->type != IMAGE_CFG_VERSION)
-			break;
-	}
-
+	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_BOOT_FROM);
+	if (e)
+		main_hdr->blockid = e->bootfrom;
+	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_DEST_ADDR);
+	if (e)
+		main_hdr->destaddr = e->dstaddr;
+	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_EXEC_ADDR);
+	if (e)
+		main_hdr->execaddr = e->execaddr;
 	main_hdr->checksum = image_checksum8(image,
 					     sizeof(struct main_hdr_v0));
 
 	/* Generate the ext header */
 	if (has_ext) {
-		int datai = 0;
+		int cfgi, datai;
 
 		ext_hdr = image + sizeof(struct main_hdr_v0);
 		ext_hdr->offset = 0x40;
 
-		for (; cfgi < cfgn; cfgi++) {
-			struct image_cfg_element *el = &image_cfg[cfgi];
-			if (el->type == IMAGE_CFG_DATA) {
-				ext_hdr->rcfg[datai].raddr = el->regdata.raddr;
-				ext_hdr->rcfg[datai].rdata = el->regdata.rdata;
-				datai++;
-			}
-			else if (el->type == IMAGE_CFG_PAYLOAD)
-				break;
-			else {
-				fprintf(stderr, "Invalid element of type %d\n",
-					el->type);
-				return NULL;
-			}
+		for (cfgi = 0, datai = 0; cfgi < cfgn; cfgi++) {
+			e = &image_cfg[cfgi];
+
+			if (e->type != IMAGE_CFG_DATA)
+				continue;
+
+			ext_hdr->rcfg[datai].raddr = e->regdata.raddr;
+			ext_hdr->rcfg[datai].rdata = e->regdata.rdata;
+			datai++;
 		}
 
 		ext_hdr->checksum = image_checksum8(ext_hdr,
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

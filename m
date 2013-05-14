Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcNmS-0002Hm-HS
 for barebox@lists.infradead.org; Tue, 14 May 2013 22:33:17 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 00:32:19 +0200
Message-Id: <1368570745-23348-7-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368570745-23348-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368570745-23348-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH 06/12] scripts/kwbimage: add support for NAND ECC and page
 size header fields
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

The v0 header, used on Kirkwood, has some fields to indicate the type
of the NAND ECC, and the page size of the NAND. This commit adds
support for such fields, which are needed to support the Kirkwood
Guruplug platform.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 scripts/kwbimage.c |   42 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 0127e2b..4ebb07f 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -177,6 +177,8 @@ struct image_cfg_element {
 		IMAGE_CFG_EXEC_ADDR,
 		IMAGE_CFG_NAND_BLKSZ,
 		IMAGE_CFG_NAND_BADBLK_LOCATION,
+		IMAGE_CFG_NAND_ECC_MODE,
+		IMAGE_CFG_NAND_PAGESZ,
 		IMAGE_CFG_BINARY,
 		IMAGE_CFG_PAYLOAD,
 		IMAGE_CFG_DATA,
@@ -194,6 +196,8 @@ struct image_cfg_element {
 		unsigned int execaddr;
 		unsigned int nandblksz;
 		unsigned int nandbadblklocation;
+		unsigned int nandeccmode;
+		unsigned int nandpagesz;
 		struct ext_hdr_v0_reg regdata;
 	};
 };
@@ -245,6 +249,15 @@ static const char *image_nand_ecc_mode_name(unsigned int id)
 	return NULL;
 }
 
+int image_nand_ecc_mode_id(const char *nand_ecc_mode_name)
+{
+	int i;
+	for (i = 0; nand_ecc_modes[i].name; i++)
+		if (!strcmp(nand_ecc_modes[i].name, nand_ecc_mode_name))
+			return nand_ecc_modes[i].id;
+	return -1;
+}
+
 static struct image_cfg_element *
 image_find_option(struct image_cfg_element *image_cfg,
 		  int cfgn, unsigned int optiontype)
@@ -409,9 +422,9 @@ static int image_extract_v0(void *fdimap, const char *output, FILE *focfg)
 	if (!strcmp(boot_mode_name, "nand")) {
 		const char *nand_ecc_mode =
 			image_nand_ecc_mode_name(main_hdr->nandeccmode);
-		fprintf(focfg, "NAND_ECC_MODE %s\n",
+		fprintf(focfg, "NAND_ECCMODE %s\n",
 			nand_ecc_mode);
-		fprintf(focfg, "NAND_PAGE_SIZE %08x\n",
+		fprintf(focfg, "NAND_PAGESZ %08x\n",
 			main_hdr->nandpagesize);
 	}
 
@@ -763,6 +776,12 @@ static void *image_create_v0(struct image_cfg_element *image_cfg,
 	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_EXEC_ADDR);
 	if (e)
 		main_hdr->execaddr = e->execaddr;
+	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_NAND_ECC_MODE);
+	if (e)
+		main_hdr->nandeccmode = e->nandeccmode;
+	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_NAND_PAGESZ);
+	if (e)
+		main_hdr->nandpagesize = e->nandpagesz;
 	main_hdr->checksum = image_checksum8(image,
 					     sizeof(struct main_hdr_v0));
 
@@ -1009,6 +1028,19 @@ static int image_create_config_parse_oneline(char *line,
 		el->type = IMAGE_CFG_NAND_BADBLK_LOCATION;
 		el->nandbadblklocation =
 			strtol(value, NULL, 16);
+	} else if (!strcmp(keyword, "NAND_ECCMODE")) {
+		char *value = strtok_r(NULL, " ", &saveptr);
+		el->type = IMAGE_CFG_NAND_ECC_MODE;
+		el->nandeccmode = image_nand_ecc_mode_id(value);
+		if (el->nandeccmode < 0) {
+			fprintf(stderr,
+				"Invalid NAND ECC mode '%s'\n", value);
+			return -1;
+		}
+	} else if (!strcmp(keyword, "NAND_PAGESZ")) {
+		char *value = strtok_r(NULL, " ", &saveptr);
+		el->type = IMAGE_CFG_NAND_PAGESZ;
+		el->nandpagesz = strtol(value, NULL, 16);
 	} else if (!strcmp(keyword, "BINARY")) {
 		char *value = strtok_r(NULL, " ", &saveptr);
 		int argi = 0;
@@ -1241,6 +1273,12 @@ static void image_dump_config(struct image_cfg_element *image_cfg,
 		case IMAGE_CFG_NAND_BADBLK_LOCATION:
 			printf("NANDBADBLK 0x%x\n", e->nandbadblklocation);
 			break;
+		case IMAGE_CFG_NAND_ECC_MODE:
+			printf("NAND_ECCMODE 0x%x\n", e->nandeccmode);
+			break;
+		case IMAGE_CFG_NAND_PAGESZ:
+			printf("NAND_PAGESZ 0x%x\n", e->nandpagesz);
+			break;
 		case IMAGE_CFG_BINARY:
 			printf("BINARY %s (%d args)\n", e->binary.file,
 			       e->binary.nargs);
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

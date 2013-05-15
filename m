Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWGh-0000rM-22
 for barebox@lists.infradead.org; Wed, 15 May 2013 07:36:59 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 09:36:28 +0200
Message-Id: <1368603396-27887-3-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCHv2 02/10] scripts/kwbimage: add a few sanity checks
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

This commit uses the newly introduced image_count_options() function
to:

 - See if there is any DATA option that require the creation of an
   extended header for v0 header.

 - Verify that no more than one payload has been provided when
   creating a v0 header.

 - Verify that no more than one binary payload has been provided when
   creating a v1 header. Technically speaking, it is possible to
   support several payloads, but in real life, only one gets used, so
   we will only support that to make the code simpler for now. It can
   always be extended later on if needed.

 - Verify that no more than one payload has been provided when
   creating a v1 header.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 scripts/kwbimage.c |   18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 0d5dcac..cca20ab 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -712,12 +712,16 @@ static void *image_create_v0(struct image_cfg_element *image_cfg,
 	headersz  = sizeof(struct main_hdr_v0);
 	payloadsz = 0;
 
-	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_DATA);
-	if (e) {
+	if (image_count_options(image_cfg, cfgn, IMAGE_CFG_DATA) > 0) {
 		has_ext = 1;
 		headersz += sizeof(struct ext_hdr_v0);
 	}
 
+	if (image_count_options(image_cfg, cfgn, IMAGE_CFG_PAYLOAD) > 1) {
+		fprintf(stderr, "More than one payload, not possible\n");
+		return NULL;
+	}
+
 	payloade = image_find_option(image_cfg, cfgn, IMAGE_CFG_PAYLOAD);
 	if (payloade) {
 		struct stat s;
@@ -818,6 +822,16 @@ static void *image_create_v1(struct image_cfg_element *image_cfg,
 	headersz = sizeof(struct main_hdr_v1);
 	payloadsz = 0;
 
+	if (image_count_options(image_cfg, cfgn, IMAGE_CFG_BINARY) > 1) {
+		fprintf(stderr, "More than one binary blob, not supported\n");
+		return NULL;
+	}
+
+	if (image_count_options(image_cfg, cfgn, IMAGE_CFG_PAYLOAD) > 1) {
+		fprintf(stderr, "More than one payload, not possible\n");
+		return NULL;
+	}
+
 	e = image_find_option(image_cfg, cfgn, IMAGE_CFG_BINARY);
 	if (e) {
 		struct stat s;
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

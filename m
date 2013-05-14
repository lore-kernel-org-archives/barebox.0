Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcNmS-0002Hl-HS
 for barebox@lists.infradead.org; Tue, 14 May 2013 22:33:14 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 00:32:18 +0200
Message-Id: <1368570745-23348-6-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH 05/12] scripts/kwbimage: make image_boot_mode_id() return -1
 on failure
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

The function image_boot_mode_id() converts the name of a boot media
into the corresponding Marvell specific code. However, 0 that we
currently used to indicate that the boot media name wasn't found,
could potentially be a valid value. So instead we use -1 to indicate a
failure.

This is also done in preparation to the introduction of
image_nand_ecc_mode_id(), which will convert a NAND ECC mode name into
the corresponding identifier. And in this case 0 is a valid identifier
of a NAND ECC mode, so we cannot use it to indicate a failure. Since
we want image_boot_mode_id() and image_nand_ecc_mode_id() to have a
consistent behavior, we change the former in this commit. The latter
is introduced in the next commit.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 scripts/kwbimage.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 631f131..0127e2b 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -226,14 +226,14 @@ static const char *image_boot_mode_name(unsigned int id)
 	return NULL;
 }
 
-unsigned int image_boot_mode_id(const char *boot_mode_name)
+int image_boot_mode_id(const char *boot_mode_name)
 {
 	int i;
 	for (i = 0; boot_modes[i].name; i++)
 		if (!strcmp(boot_modes[i].name, boot_mode_name))
 			return boot_modes[i].id;
 
-	return 0;
+	return -1;
 }
 
 static const char *image_nand_ecc_mode_name(unsigned int id)
@@ -987,7 +987,7 @@ static int image_create_config_parse_oneline(char *line,
 		char *value = strtok_r(NULL, " ", &saveptr);
 		el->type = IMAGE_CFG_BOOT_FROM;
 		el->bootfrom = image_boot_mode_id(value);
-		if (!el->bootfrom) {
+		if (el->bootfrom < 0) {
 			fprintf(stderr,
 				"Invalid boot media '%s'\n", value);
 			return -1;
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

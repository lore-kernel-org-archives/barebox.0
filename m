Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TvlsU-0000xN-Vo
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 09:35:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Jan 2013 10:35:16 +0100
Message-Id: <1358415316-32702-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] bootm: move printing of file locations outside verbose mode
To: barebox@lists.infradead.org

The location of files that are booted is a precious information, so print
it by default and not only in verbose mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
---
 commands/bootm.c |   16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 483e6a1..5ccf237 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -143,8 +143,7 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 	size_t size;
 	unsigned int align;
 
-	if (bootm_verbose(data))
-		printf("Loading oftree from '%s'\n", oftree);
+	printf("Loading devicetree from '%s'\n", oftree);
 
 	ft = file_name_detect_type(oftree);
 	if ((int)ft < 0) {
@@ -380,13 +379,14 @@ static int do_bootm(int argc, char *argv[])
 		}
 	}
 
+	printf("\nLoading OS %s '%s'", file_type_to_string(os_type),
+			data.os_file);
+	if (os_type == filetype_uimage &&
+			data.os->header.ih_type == IH_TYPE_MULTI)
+		printf(", multifile image %d", data.os_num);
+	printf("\n");
+
 	if (bootm_verbose(&data)) {
-		printf("\nLoading OS %s '%s'", file_type_to_string(os_type),
-				data.os_file);
-		if (os_type == filetype_uimage &&
-				data.os->header.ih_type == IH_TYPE_MULTI)
-			printf(", multifile image %d", data.os_num);
-		printf("\n");
 		if (data.os_res)
 			printf("OS image is at 0x%08x-0x%08x\n",
 					data.os_res->start,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

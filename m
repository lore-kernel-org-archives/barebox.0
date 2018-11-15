Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNDny-00018q-1z
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 09:19:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Nov 2018 10:19:03 +0100
Message-Id: <20181115091903.25592-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootm: Print which file cannot be opened
To: Barebox List <barebox@lists.infradead.org>

When opening the OS image fails we used to print a message *which* file
could not be opened. This message is no longer printed since we now fail
in read_file_2 when there is an error. Move the message in the
read_file_2 failure path to print it again. file_detect_type() needs no
handling for ret < 0, in case of failure it returns filetype_unknown
which is handled later, so we can remove the error handling there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 169000cccb..36f6c41bbd 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -562,18 +562,15 @@ int bootm_boot(struct bootm_data *bootm_data)
 	data->os_entry = bootm_data->os_entry;
 
 	ret = read_file_2(data->os_file, &size, &data->os_header, PAGE_SIZE);
-	if (ret < 0 && ret != -EFBIG)
+	if (ret < 0 && ret != -EFBIG) {
+		printf("could not open %s: %s\n", data->os_file,
+				strerror(-ret));
 		goto err_out;
+	}
 	if (size < PAGE_SIZE)
 		goto err_out;
 
 	os_type = file_detect_type(data->os_header, PAGE_SIZE);
-	if ((int)os_type < 0) {
-		printf("could not open %s: %s\n", data->os_file,
-				strerror(-os_type));
-		ret = (int)os_type;
-		goto err_out;
-	}
 
 	if (!data->force && os_type == filetype_unknown) {
 		printf("Unknown OS filetype (try -f)\n");
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

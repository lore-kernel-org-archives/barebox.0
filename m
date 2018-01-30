Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egRZQ-00076X-I2
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 08:47:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Jan 2018 09:46:54 +0100
Message-Id: <20180130084657.31943-4-s.hauer@pengutronix.de>
In-Reply-To: <20180130084657.31943-1-s.hauer@pengutronix.de>
References: <20180130084657.31943-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] bbu: command: create temporary variable holding the
 pointer to the image
To: Barebox List <barebox@lists.infradead.org>

Create variable to hold the pointer to the image so that we can
make the data.image pointer const later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/barebox-update.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index c2f2b68e08..84798ab0d9 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -28,6 +28,7 @@ static int do_barebox_update(int argc, char *argv[])
 {
 	int opt, ret, repair = 0;
 	struct bbu_data data = {};
+	void *image = NULL;
 
 	while ((opt = getopt(argc, argv, "t:yf:ld:r")) > 0) {
 		switch (opt) {
@@ -59,9 +60,10 @@ static int do_barebox_update(int argc, char *argv[])
 	if (argc - optind > 0) {
 		data.imagefile = argv[optind];
 
-		data.image = read_file(data.imagefile, &data.len);
-		if (!data.image)
+		image = read_file(data.imagefile, &data.len);
+		if (!image)
 			return -errno;
+		data.image = image;
 	} else {
 		if (!repair)
 			return COMMAND_ERROR_USAGE;
@@ -69,7 +71,7 @@ static int do_barebox_update(int argc, char *argv[])
 
 	ret = barebox_update(&data);
 
-	free(data.image);
+	free(image);
 
 	return ret;
 }
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOMkD-00050d-M8
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 07:09:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Sep 2013 09:08:39 +0200
Message-Id: <1380006527-2599-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
References: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] bootm: check for os image file
To: barebox@lists.infradead.org

Check if an os image file has been given.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index 14b4cff..f7e4f9a 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -210,6 +210,11 @@ int bootm_boot(struct image_data *data)
 	int ret;
 	enum filetype os_type, initrd_type = filetype_unknown;
 
+	if (!data->os_file) {
+		printf("no image given\n");
+		return -ENOENT;
+	}
+
 	os_type = file_name_detect_type(data->os_file);
 	if ((int)os_type < 0) {
 		printf("could not open %s: %s\n", data->os_file,
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

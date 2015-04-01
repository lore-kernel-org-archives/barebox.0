Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YdLHq-0007qA-Is
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 16:14:39 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  1 Apr 2015 18:14:12 +0200
Message-Id: <1427904855-32548-8-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
References: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 07/10] imx-image: pad generated image to 4k
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/imx/imx-image.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index ec2e8deb015b..1c032a3cb142 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -654,6 +654,7 @@ int main(int argc, char *argv[])
 	struct stat s;
 	int infd, outfd;
 	int dcd_only = 0;
+	int now = 0;
 
 	while ((opt = getopt(argc, argv, "c:hf:o:bd")) != -1) {
 		switch (opt) {
@@ -786,7 +787,7 @@ int main(int argc, char *argv[])
 	}
 
 	while (image_size) {
-		int now = image_size < 4096 ? image_size : 4096;
+		now = image_size < 4096 ? image_size : 4096;
 
 		ret = xread(infd, buf, now);
 		if (ret) {
@@ -803,6 +804,18 @@ int main(int argc, char *argv[])
 		image_size -= now;
 	}
 
+	/* pad until next 4k boundary */
+	now = 4096 - now;
+	if (now) {
+		memset(buf, 0x5a, now);
+
+		ret = xwrite(outfd, buf, now);
+		if (ret) {
+			perror("write");
+			exit(1);
+		}
+	}
+
 	ret = close(outfd);
 	if (ret) {
 		perror("close");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

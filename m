Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22d.google.com ([2607:f8b0:400e:c00::22d])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqJK-0001EQ-Jy
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:40 +0000
Received: by mail-pf0-x22d.google.com with SMTP id a11-v6so152401pff.8
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:54:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:53:06 -0700
Message-Id: <20180612205310.25745-51-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 50/54] scripts: imx-image: Use a loop to create multiple
 header copies
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use a loop to create multiple header copies on i.MX35 to avoid code
duplication.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/imx/imx-image.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 294f51a90..bc1f821bd 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -679,6 +679,7 @@ int main(int argc, char *argv[])
 	int dcd_only = 0;
 	int now = 0;
 	int sign_image = 0;
+	int i, header_copies;
 	struct config_data data = {
 		.image_dcd_offset = 0xffffffff,
 		.write_mem = write_mem,
@@ -824,13 +825,9 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	ret = xwrite(outfd, buf, HEADER_LEN);
-	if (ret < 0) {
-		perror("write");
-		exit(1);
-	}
+	header_copies = (data.cpu_type == IMX_CPU_IMX35) ? 2 : 1;
 
-	if (data.cpu_type == IMX_CPU_IMX35) {
+	for (i = 0; i < header_copies; i++) {
 		ret = xwrite(outfd, buf, HEADER_LEN);
 		if (ret < 0) {
 			perror("write");
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

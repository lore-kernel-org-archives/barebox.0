Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22b.google.com ([2607:f8b0:400e:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuYl-0000Bg-VQ
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:03:45 +0000
Received: by mail-pf0-x22b.google.com with SMTP id a12-v6so4902440pfi.3
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:02:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:01:06 -0700
Message-Id: <20180607130108.5339-51-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 50/52] scripts: imx-image: Share the code to write barebox
 header
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/imx/imx-image.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 294f51a90..09686f69c 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -216,9 +216,6 @@ static int add_header_v1(struct config_data *data, void *buf)
 	uint32_t loadaddr = data->image_load_addr;
 	uint32_t imagesize = data->load_size;
 
-	if (add_barebox_header)
-		memcpy(buf, bb_header, sizeof(bb_header));
-
 	buf += offset;
 	hdr = buf;
 
@@ -292,9 +289,6 @@ static int add_header_v2(const struct config_data *data, void *buf)
 	uint32_t loadaddr = data->image_load_addr;
 	uint32_t imagesize = data->load_size;
 
-	if (add_barebox_header)
-		memcpy(buf, bb_header, sizeof(bb_header));
-
 	buf += offset;
 	hdr = buf;
 
@@ -824,7 +818,15 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	ret = xwrite(outfd, buf, HEADER_LEN);
+	ret = xwrite(outfd, add_barebox_header ? bb_header : buf,
+		     sizeof(bb_header));
+	if (ret < 0) {
+		perror("write");
+		exit(1);
+	}
+
+	ret = xwrite(outfd, buf + sizeof(bb_header),
+		     HEADER_LEN - sizeof(bb_header));
 	if (ret < 0) {
 		perror("write");
 		exit(1);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

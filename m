Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSYXe-0007jR-QZ
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 01:57:20 +0000
Received: by mail-pg0-x242.google.com with SMTP id d2-v6so10656088pga.13
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2018 18:56:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Jun 2018 18:53:20 -0700
Message-Id: <20180612015326.26192-49-andrew.smirnov@gmail.com>
In-Reply-To: <20180612015326.26192-1-andrew.smirnov@gmail.com>
References: <20180612015326.26192-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 48/54] scripts: imx-image: Drop error return from
 write_dcd()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Write_dcd() exits early in case of failure, so there's no realy reason
to have it return a error code as a result. Drop it and simplify the
caller code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/imx/imx-image.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index b241e8c4b..a8a26e0ee 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -427,7 +427,7 @@ static int xwrite(int fd, void *buf, int len)
 	return 0;
 }
 
-static int write_dcd(const char *outfile)
+static void write_dcd(const char *outfile)
 {
 	int outfd, ret;
 	int dcdsize = curdcd * sizeof(uint32_t);
@@ -443,8 +443,6 @@ static int write_dcd(const char *outfile)
 		perror("write");
 		exit(1);
 	}
-
-	return 0;
 }
 
 static int check(const struct config_data *data, uint32_t cmd, uint32_t addr,
@@ -778,10 +776,8 @@ int main(int argc, char *argv[])
 		check_last_dcd(0);
 
 	if (dcd_only) {
-		ret = write_dcd(data.outfile);
-		if (ret)
-			exit(1);
-		exit (0);
+		write_dcd(data.outfile);
+		exit(0);
 	}
 
 	switch (data.header_version) {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

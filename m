Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP1-00088Z-DW
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:37:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:12 +0200
Message-Id: <1269855383-22716-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] ARM zImage: do memmap if possible
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c |   16 ++++++++++------
 1 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 2415c29..ec9ad8e 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -241,7 +241,7 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 	const char *commandline = getenv("bootargs");
 	int fd, ret;
 	struct zimage_header header;
-	void *zimage;
+	void *zimage, *m;
 
 	if (argc != 2) {
 		barebox_cmd_usage(cmdtp);
@@ -263,11 +263,15 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 
 	zimage = xmalloc(header.end);
 	memcpy(zimage, &header, sizeof(header));
-
-	ret = read(fd, zimage + sizeof(header), header.end - sizeof(header));
-	if (ret < header.end - sizeof(header)) {
-		printf("could not read %s\n", argv[1]);
-		goto err_out1;
+	m = memmap(fd, PROT_READ);
+	if (m != (void *)-1) {
+		memcpy(zimage, m, header.end);
+	} else {
+		ret = read(fd, zimage + sizeof(header), header.end - sizeof(header));
+		if (ret < header.end - sizeof(header)) {
+			printf("could not read %s\n", argv[1]);
+			goto err_out1;
+		}
 	}
 
 	theKernel = zimage;
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

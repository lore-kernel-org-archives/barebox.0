Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNqEj-0002Uu-Df
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 19:22:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Oct 2012 21:21:58 +0200
Message-Id: <1350328918-15383-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM bootz: use request_sdram_region
To: barebox@lists.infradead.org

We now have request_sdram_region to request a region. Use
it instead of a comparison with MALLOC_BASE.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootz.c |   12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index f394a6b..f069127 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -30,6 +30,7 @@ static int do_bootz(int argc, char *argv[])
 	u32 end;
 	int usemap = 0;
 	struct memory_bank *bank = list_first_entry(&memory_banks, struct memory_bank, list);
+	struct resource *res = NULL;
 
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
@@ -83,8 +84,10 @@ static int do_bootz(int argc, char *argv[])
 			zimage = xmalloc(end);
 		} else {
 			zimage = (void *)bank->start + SZ_8M;
-			if (bank->start + SZ_8M + end >= MALLOC_BASE) {
-				printf("won't overwrite malloc space with image\n");
+			res = request_sdram_region("zimage",
+					bank->start + SZ_8M, end);
+			if (!res) {
+				printf("can't request region for kernel\n");
 				goto err_out1;
 			}
 		}
@@ -94,7 +97,7 @@ static int do_bootz(int argc, char *argv[])
 		ret = read(fd, zimage + sizeof(*header), end - sizeof(*header));
 		if (ret < end - sizeof(*header)) {
 			printf("could not read %s\n", argv[1]);
-			goto err_out1;
+			goto err_out2;
 		}
 	}
 
@@ -113,6 +116,9 @@ static int do_bootz(int argc, char *argv[])
 
 	return 0;
 
+err_out2:
+	if (res)
+		release_sdram_region(res);
 err_out1:
 	free(zimage);
 err_out:
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

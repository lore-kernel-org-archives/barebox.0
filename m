Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9nm-00026S-PQ
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:43:53 +0100
Message-Id: <1294397044-5008-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/24] ipe337: fix printf compiler warnings
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/boards/ipe337/cmd_alternate.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/blackfin/boards/ipe337/cmd_alternate.c b/arch/blackfin/boards/ipe337/cmd_alternate.c
index 2883c77..116f910 100644
--- a/arch/blackfin/boards/ipe337/cmd_alternate.c
+++ b/arch/blackfin/boards/ipe337/cmd_alternate.c
@@ -21,7 +21,7 @@ static int do_alternate(struct command *cmdtp, int argc, char *argv[])
 
 	ptr = buf;
 	if ((*ptr) != MAGIC) {
-		printf("Wrong magic! Expected 0x%08x, got 0x%08x.\n", MAGIC, *ptr);
+		printf("Wrong magic! Expected 0x%08x, got 0x%08lx.\n", MAGIC, *ptr);
 		return 1;
 	}
 
@@ -38,7 +38,7 @@ static int do_alternate(struct command *cmdtp, int argc, char *argv[])
 		} while (val >>= 1);
 	}
 
-	printf("Bitcount : %d\n", bitcount);
+	printf("Bitcount : %ld\n", bitcount);
 
 	free(buf);
 	return (bitcount & 1) ? 3 : 2;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

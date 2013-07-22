Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1DAr-0004IB-Rx
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 10:17:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 12:16:35 +0200
Message-Id: <1374488195-2318-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] memory_display: Change address pointer to type const void *
To: barebox@lists.infradead.org

No need to force a width of the pointer, so use void *. Also it's
not modified in memory_display, so also add a const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory_display.c | 2 +-
 include/common.h        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/memory_display.c b/common/memory_display.c
index eb188e1..7e4f4da 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -2,7 +2,7 @@
 
 #define DISP_LINE_LEN	16
 
-int memory_display(char *addr, loff_t offs, unsigned nbytes, int size, int swab)
+int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int swab)
 {
 	ulong linebytes, i;
 	u_char	*cp;
diff --git a/include/common.h b/include/common.h
index 744b19e..e813726 100644
--- a/include/common.h
+++ b/include/common.h
@@ -220,7 +220,7 @@ int run_shell(void);
 #define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
 #define PAGE_ALIGN_DOWN(x) ((x) & ~(PAGE_SIZE - 1))
 
-int memory_display(char *addr, loff_t offs, unsigned nbytes, int size, int swab);
+int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int swab);
 
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

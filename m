Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cVi1K-0002jv-Tk
 for barebox@lists.infradead.org; Mon, 23 Jan 2017 17:03:10 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Subject: [PATCH 3/5] output: use '[0m' to reset colors
Date: Mon, 23 Jan 2017 18:02:16 +0100
Message-Id: <20170123170218.25139-4-m.olbrich@pengutronix.de>
In-Reply-To: <20170123170218.25139-1-m.olbrich@pengutronix.de>
References: <20170123170218.25139-1-m.olbrich@pengutronix.de>
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
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

'[m' is supposed to have the same effect as '[0m'. However, some EFI
implementations seem to ignore '[m', so use '[0m' everywhere to avoid
rendering issues.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 commands/2048.c   | 2 +-
 common/menu.c     | 2 +-
 include/readkey.h | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/2048.c b/commands/2048.c
index 5ceb5cfb7d12..865803a5a616 100644
--- a/commands/2048.c
+++ b/commands/2048.c
@@ -53,7 +53,7 @@ static void getColor(uint16_t value, char *color, size_t length)
 static void drawBoard(uint16_t board[SIZE][SIZE])
 {
 	int8_t x,y;
-	char color[40], reset[] = "\033[m";
+	char color[40], reset[] = "\033[0m";
 	printf("\033[H");
 
 	printf("2048.c %17d pts\n\n",score);
diff --git a/common/menu.c b/common/menu.c
index e757216c5adf..31e5c90a0f27 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -185,7 +185,7 @@ static void print_menu_entry(struct menu *m, struct menu_entry *me,
 	__print_entry(me->display);
 
 	if (selected)
-		puts("\e[m");
+		puts("\e[0m");
 }
 
 int menu_set_selected_entry(struct menu *m, struct menu_entry* me)
diff --git a/include/readkey.h b/include/readkey.h
index 8398ec2e516e..ed1cd1542d6f 100644
--- a/include/readkey.h
+++ b/include/readkey.h
@@ -26,8 +26,8 @@
 
 #define ANSI_CLEAR_SCREEN "\e[2J\e[;H"
 
-#define printf_reverse(fmt,args...)	printf("\e[7m" fmt "\e[m",##args)
-#define puts_reverse(fmt)		puts("\e[7m" fmt "\e[m")
+#define printf_reverse(fmt,args...)	printf("\e[7m" fmt "\e[0m",##args)
+#define puts_reverse(fmt)		puts("\e[7m" fmt "\e[0m")
 #define gotoXY(row, col)		printf("\e[%d;%dH", col, row)
 #define clear()				puts("\e[2J")
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

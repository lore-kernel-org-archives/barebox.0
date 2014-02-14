Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEKrG-0004Vo-Ej
 for barebox@lists.infradead.org; Fri, 14 Feb 2014 15:39:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2014 16:38:51 +0100
Message-Id: <1392392334-20254-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392392334-20254-1-git-send-email-s.hauer@pengutronix.de>
References: <1392392334-20254-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] input: Add BB_ prefix to KEY_ defines
To: barebox@lists.infradead.org

Our KEY_ defines conflict with the standard Linux KEY_ defines, so
add a BB_ prefix to them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/archosg9/board.c        |  6 +++---
 arch/arm/boards/at91sam9261ek/init.c    |  6 +++---
 arch/arm/boards/at91sam9m10g45ek/init.c | 14 ++++++-------
 arch/arm/boards/at91sam9m10ihd/init.c   |  2 +-
 arch/arm/boards/usb-a926x/init.c        |  8 ++++----
 commands/edit.c                         | 18 ++++++++---------
 common/menu.c                           | 18 ++++++++---------
 drivers/input/qt1070.c                  |  4 ++--
 include/readkey.h                       | 34 +++++++++++++++----------------
 lib/readkey.c                           | 36 ++++++++++++++++-----------------
 lib/readline.c                          | 26 ++++++++++++------------
 11 files changed, 86 insertions(+), 86 deletions(-)

diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index 6a12180..114c34e 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -56,11 +56,11 @@ static struct i2c_board_info i2c_devices[] = {
 };
 #if defined(CONFIG_KEYBOARD_TWL6030) && defined(CONFIG_KEYBOARD_GPIO)
 static struct twl6030_pwrbtn_platform_data pwrbtn_data = {
-	.code = KEY_ENTER
+	.code = BB_KEY_ENTER
 };
 static struct gpio_keys_button keys[] = {
-	{ .code = KEY_UP  , .gpio = 43, .active_low = 1 },
-	{ .code = KEY_DOWN, .gpio = 44, .active_low = 1 },
+	{ .code = BB_KEY_UP  , .gpio = 43, .active_low = 1 },
+	{ .code = BB_KEY_DOWN, .gpio = 44, .active_low = 1 },
 };
 static struct gpio_keys_platform_data gk_data = {
 	.buttons = keys,
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index c1d4d9d..9ebc16a 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -234,13 +234,13 @@ static void ek_add_device_lcdc(void) {}
 #ifdef CONFIG_KEYBOARD_GPIO
 struct gpio_keys_button keys[] = {
 	{
-		.code = KEY_UP,
+		.code = BB_KEY_UP,
 		.gpio = AT91_PIN_PA26,
 	}, {
-		.code = KEY_DOWN,
+		.code = BB_KEY_DOWN,
 		.gpio = AT91_PIN_PA25,
 	}, {
-		.code = KEY_ENTER,
+		.code = BB_KEY_ENTER,
 		.gpio = AT91_PIN_PA24,
 	},
 };
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 34abe05..6503ebb 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -182,25 +182,25 @@ static void ek_device_add_leds(void) {}
 #ifdef CONFIG_KEYBOARD_GPIO
 struct gpio_keys_button keys[] = {
 	{
-		.code = KEY_HOME,
+		.code = BB_KEY_HOME,
 		.gpio = AT91_PIN_PB6,
 	}, {
-		.code = KEY_RETURN,
+		.code = BB_KEY_RETURN,
 		.gpio = AT91_PIN_PB7,
 	}, {
-		.code = KEY_LEFT,
+		.code = BB_KEY_LEFT,
 		.gpio = AT91_PIN_PB14,
 	}, {
-		.code = KEY_RIGHT,
+		.code = BB_KEY_RIGHT,
 		.gpio = AT91_PIN_PB15,
 	}, {
-		.code = KEY_UP,
+		.code = BB_KEY_UP,
 		.gpio = AT91_PIN_PB16,
 	}, {
-		.code = KEY_DOWN,
+		.code = BB_KEY_DOWN,
 		.gpio = AT91_PIN_PB17,
 	}, {
-		.code = KEY_RETURN,
+		.code = BB_KEY_RETURN,
 		.gpio = AT91_PIN_PB18,
 	},
 };
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index 61d7f9d..fc37af4 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -110,7 +110,7 @@ static void ek_add_device_mci(void) {}
 
 struct qt1070_platform_data qt1070_pdata = {
 	.irq_pin	= AT91_PIN_PB19,
-	.code		= { KEY_ENTER, KEY_ENTER, KEY_UP, KEY_DOWN, },
+	.code		= { BB_KEY_ENTER, BB_KEY_ENTER, BB_KEY_UP, BB_KEY_DOWN, },
 	.nb_code	= 4,
 };
 
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 2d4408b..4a28af0 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -339,16 +339,16 @@ struct gpio_led dab_mmx_leds[] = {
 #ifdef CONFIG_KEYBOARD_GPIO
 struct gpio_keys_button keys[] = {
 	{
-		.code = KEY_UP,
+		.code = BB_KEY_UP,
 		.gpio = AT91_PIN_PB25,
 	}, {
-		.code = KEY_HOME,
+		.code = BB_KEY_HOME,
 		.gpio = AT91_PIN_PB13,
 	}, {
-		.code = KEY_DOWN,
+		.code = BB_KEY_DOWN,
 		.gpio = AT91_PIN_PA26,
 	}, {
-		.code = KEY_ENTER,
+		.code = BB_KEY_ENTER,
 		.gpio = AT91_PIN_PC9,
 	},
 };
diff --git a/commands/edit.c b/commands/edit.c
index 295d0a7..6764e84 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -456,7 +456,7 @@ static int do_edit(int argc, char *argv[])
 
 		c = read_key();
 		switch (c) {
-		case KEY_UP:
+		case BB_KEY_UP:
 			if (!curline->prev)
 				continue;
 
@@ -464,7 +464,7 @@ static int do_edit(int argc, char *argv[])
 			cursy--;
 			textx = setpos(curline->data, linepos);
 			break;
-		case KEY_DOWN:
+		case BB_KEY_DOWN:
 			if (!curline->next)
 				continue;
 
@@ -472,19 +472,19 @@ static int do_edit(int argc, char *argv[])
 			cursy++;
 			textx = setpos(curline->data, linepos);
 			break;
-		case KEY_RIGHT:
+		case BB_KEY_RIGHT:
 			textx++;
 			break;
-		case KEY_LEFT:
+		case BB_KEY_LEFT:
 			textx--;
 			break;
-		case KEY_HOME:
+		case BB_KEY_HOME:
 			textx = 0;
 			break;
-		case KEY_END:
+		case BB_KEY_END:
 			textx = curlen;
 			break;
-		case KEY_PAGEUP:
+		case BB_KEY_PAGEUP:
 			for (i = 0; i < screenheight - 1; i++) {
 				if (!curline->prev)
 					break;
@@ -493,7 +493,7 @@ static int do_edit(int argc, char *argv[])
 			}
 			textx = setpos(curline->data, linepos);
 			break;
-		case KEY_PAGEDOWN:
+		case BB_KEY_PAGEDOWN:
 			for (i = 0; i < screenheight - 1; i++) {
 				if (!curline->next)
 					break;
@@ -502,7 +502,7 @@ static int do_edit(int argc, char *argv[])
 			}
 			textx = setpos(curline->data, linepos);
 			break;
-		case KEY_DEL:
+		case BB_KEY_DEL:
 			if (textx == curlen) {
 				if (curline->next)
 					merge_line(curline);
diff --git a/common/menu.c b/common/menu.c
index ef56190..4cefadb 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -303,7 +303,7 @@ int menu_show(struct menu *m)
 		int repaint = 0;
 
 		if (m->auto_select >= 0)
-			ch = KEY_RETURN;
+			ch = BB_KEY_RETURN;
 		else
 			ch = read_key();
 
@@ -327,7 +327,7 @@ int menu_show(struct menu *m)
 			}
 			break;
 		}
-		case KEY_UP:
+		case BB_KEY_UP:
 			m->selected = list_entry(m->selected->list.prev, struct menu_entry,
 						 list);
 			if (&(m->selected->list) == &(m->entries)) {
@@ -336,7 +336,7 @@ int menu_show(struct menu *m)
 			}
 			repaint = 1;
 			break;
-		case KEY_DOWN:
+		case BB_KEY_DOWN:
 			m->selected = list_entry(m->selected->list.next, struct menu_entry,
 						 list);
 			if (&(m->selected->list) == &(m->entries)) {
@@ -353,11 +353,11 @@ int menu_show(struct menu *m)
 				m->selected->action(m, m->selected);
 			repaint = 1;
 			break;
-		case KEY_ENTER:
-			if (ch_previous == KEY_RETURN)
+		case BB_KEY_ENTER:
+			if (ch_previous == BB_KEY_RETURN)
 				break;
-		case KEY_RETURN:
-			if (ch_previous == KEY_ENTER)
+		case BB_KEY_RETURN:
+			if (ch_previous == BB_KEY_ENTER)
 				break;
 			clear();
 			gotoXY(1,1);
@@ -368,11 +368,11 @@ int menu_show(struct menu *m)
 			else
 				print_menu(m);
 			break;
-		case KEY_HOME:
+		case BB_KEY_HOME:
 			m->selected = list_first_entry(&m->entries, struct menu_entry, list);
 			repaint = 1;
 			break;
-		case KEY_END:
+		case BB_KEY_END:
 			m->selected = list_last_entry(&m->entries, struct menu_entry, list);
 			repaint = 1;
 			break;
diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index 7b72965..1ee868d 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -32,8 +32,8 @@
 #define QT1070_RESET_TIME	255
 
 static int default_code[QT1070_NB_BUTTONS] = {
-	KEY_ENTER, KEY_HOME, KEY_UP, KEY_DOWN,
-	KEY_RIGHT, KEY_LEFT, KEY_CLEAR_SCREEN };
+	BB_KEY_ENTER, BB_KEY_HOME, BB_KEY_UP, BB_KEY_DOWN,
+	BB_KEY_RIGHT, BB_KEY_LEFT, BB_KEY_CLEAR_SCREEN };
 
 struct qt1070_data {
 	int code[QT1070_NB_BUTTONS];
diff --git a/include/readkey.h b/include/readkey.h
index 2793f3f..8398ec2 100644
--- a/include/readkey.h
+++ b/include/readkey.h
@@ -4,25 +4,25 @@
 #define CTL_CH(c)		((c) - 'a' + 1)
 
 /* Ascii keys */
-#define KEY_ENTER		'\n'
-#define KEY_RETURN		'\r'
+#define BB_KEY_ENTER		'\n'
+#define BB_KEY_RETURN		'\r'
 
 /* Misc. non-Ascii keys */
-#define KEY_UP			CTL_CH('p')	/* cursor key Up	*/
-#define KEY_DOWN		CTL_CH('n')	/* cursor key Down	*/
-#define KEY_RIGHT		CTL_CH('f')	/* Cursor Key Right	*/
-#define KEY_LEFT		CTL_CH('b')	/* cursor key Left	*/
-#define KEY_HOME		CTL_CH('a')	/* Cursor Key Home	*/
-#define KEY_ERASE_TO_EOL	CTL_CH('k')
-#define KEY_REFRESH_TO_EOL	CTL_CH('e')
-#define KEY_ERASE_LINE		CTL_CH('x')
-#define KEY_INSERT		CTL_CH('o')
-#define KEY_CLEAR_SCREEN	CTL_CH('l')
-#define KEY_DEL7		127
-#define KEY_END			133		/* Cursor Key End	*/
-#define KEY_PAGEUP		135		/* Cursor Key Page Up	*/
-#define KEY_PAGEDOWN		136		/* Cursor Key Page Down	*/
-#define KEY_DEL			137		/* Cursor Key Del	*/
+#define BB_KEY_UP		CTL_CH('p')	/* cursor key Up	*/
+#define BB_KEY_DOWN		CTL_CH('n')	/* cursor key Down	*/
+#define BB_KEY_RIGHT		CTL_CH('f')	/* Cursor Key Right	*/
+#define BB_KEY_LEFT		CTL_CH('b')	/* cursor key Left	*/
+#define BB_KEY_HOME		CTL_CH('a')	/* Cursor Key Home	*/
+#define BB_KEY_ERASE_TO_EOL	CTL_CH('k')
+#define BB_KEY_REFRESH_TO_EOL	CTL_CH('e')
+#define BB_KEY_ERASE_LINE	CTL_CH('x')
+#define BB_KEY_INSERT		CTL_CH('o')
+#define BB_KEY_CLEAR_SCREEN	CTL_CH('l')
+#define BB_KEY_DEL7		127
+#define BB_KEY_END		133		/* Cursor Key End	*/
+#define BB_KEY_PAGEUP		135		/* Cursor Key Page Up	*/
+#define BB_KEY_PAGEDOWN		136		/* Cursor Key Page Down	*/
+#define BB_KEY_DEL		137		/* Cursor Key Del	*/
 
 #define ANSI_CLEAR_SCREEN "\e[2J\e[;H"
 
diff --git a/lib/readkey.c b/lib/readkey.c
index 89cc154..7b38110 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -29,24 +29,24 @@ struct esc_cmds {
 };
 
 static const struct esc_cmds esccmds[] = {
-	{"OA", KEY_UP},       // cursor key Up
-	{"OB", KEY_DOWN},     // cursor key Down
-	{"OC", KEY_RIGHT},    // Cursor Key Right
-	{"OD", KEY_LEFT},     // cursor key Left
-	{"OH", KEY_HOME},     // Cursor Key Home
-	{"OF", KEY_END},      // Cursor Key End
-	{"[A", KEY_UP},       // cursor key Up
-	{"[B", KEY_DOWN},     // cursor key Down
-	{"[C", KEY_RIGHT},    // Cursor Key Right
-	{"[D", KEY_LEFT},     // cursor key Left
-	{"[H", KEY_HOME},     // Cursor Key Home
-	{"[F", KEY_END},      // Cursor Key End
-	{"[1~", KEY_HOME},    // Cursor Key Home
-	{"[2~", KEY_INSERT},  // Cursor Key Insert
-	{"[3~", KEY_DEL},     // Cursor Key Delete
-	{"[4~", KEY_END},     // Cursor Key End
-	{"[5~", KEY_PAGEUP},  // Cursor Key Page Up
-	{"[6~", KEY_PAGEDOWN},// Cursor Key Page Down
+	{"OA", BB_KEY_UP},       // cursor key Up
+	{"OB", BB_KEY_DOWN},     // cursor key Down
+	{"OC", BB_KEY_RIGHT},    // Cursor Key Right
+	{"OD", BB_KEY_LEFT},     // cursor key Left
+	{"OH", BB_KEY_HOME},     // Cursor Key Home
+	{"OF", BB_KEY_END},      // Cursor Key End
+	{"[A", BB_KEY_UP},       // cursor key Up
+	{"[B", BB_KEY_DOWN},     // cursor key Down
+	{"[C", BB_KEY_RIGHT},    // Cursor Key Right
+	{"[D", BB_KEY_LEFT},     // cursor key Left
+	{"[H", BB_KEY_HOME},     // Cursor Key Home
+	{"[F", BB_KEY_END},      // Cursor Key End
+	{"[1~", BB_KEY_HOME},    // Cursor Key Home
+	{"[2~", BB_KEY_INSERT},  // Cursor Key Insert
+	{"[3~", BB_KEY_DEL},     // Cursor Key Delete
+	{"[4~", BB_KEY_END},     // Cursor Key End
+	{"[5~", BB_KEY_PAGEUP},  // Cursor Key Page Up
+	{"[6~", BB_KEY_PAGEDOWN},// Cursor Key Page Down
 };
 
 int read_key(void)
diff --git a/lib/readline.c b/lib/readline.c
index 6afc491..240a131 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -233,19 +233,19 @@ int readline(const char *prompt, char *buf, int len)
 #endif
 			break;
 
-		case KEY_HOME:
+		case BB_KEY_HOME:
 			BEGINNING_OF_LINE();
 			break;
 		case CTL_CH('c'):	/* ^C - break */
 			*buf = 0;	/* discard input */
 			return -1;
-		case KEY_RIGHT:
+		case BB_KEY_RIGHT:
 			if (num < eol_num) {
 				getcmd_putch(buf[num]);
 				num++;
 			}
 			break;
-		case KEY_LEFT:
+		case BB_KEY_LEFT:
 			if (num) {
 				getcmd_putch(CTL_BACKSPACE);
 				num--;
@@ -266,28 +266,28 @@ int readline(const char *prompt, char *buf, int len)
 				eol_num--;
 			}
 			break;
-		case KEY_ERASE_TO_EOL:
+		case BB_KEY_ERASE_TO_EOL:
 			ERASE_TO_EOL();
 			break;
-		case KEY_REFRESH_TO_EOL:
-		case KEY_END:
+		case BB_KEY_REFRESH_TO_EOL:
+		case BB_KEY_END:
 			REFRESH_TO_EOL();
 			break;
-		case KEY_INSERT:
+		case BB_KEY_INSERT:
 			insert = !insert;
 			break;
-		case KEY_ERASE_LINE:
+		case BB_KEY_ERASE_LINE:
 			BEGINNING_OF_LINE();
 			ERASE_TO_EOL();
 			break;
 		case DEL:
-		case KEY_DEL7:
+		case BB_KEY_DEL7:
 		case 8:
 			if (num) {
 				DO_BACKSPACE();
 			}
 			break;
-		case KEY_DEL:
+		case BB_KEY_DEL:
 			if (num < eol_num) {
 				wlen = eol_num - num;
 				memmove(buf + num, buf + num + 1, wlen);
@@ -299,12 +299,12 @@ int readline(const char *prompt, char *buf, int len)
 				eol_num--;
 			}
 			break;
-		case KEY_UP:
-		case KEY_DOWN:
+		case BB_KEY_UP:
+		case BB_KEY_DOWN:
 		{
 			char * hline;
 
-			if (ichar == KEY_UP)
+			if (ichar == BB_KEY_UP)
 				hline = hist_prev();
 			else
 				hline = hist_next();
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eikal-0005sz-F7
 for barebox@lists.infradead.org; Mon, 05 Feb 2018 17:30:09 +0000
Received: by mail-pg0-x243.google.com with SMTP id r1so3531148pgn.11
 for <barebox@lists.infradead.org>; Mon, 05 Feb 2018 09:29:59 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Feb 2018 09:29:35 -0800
Message-Id: <20180205172935.25232-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180205172935.25232-1-andrew.smirnov@gmail.com>
References: <20180205172935.25232-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/4] commands: version: Add framebuffer output support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Extend "version" command to be capable of rendeing version information
on framebuffer devices.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/Kconfig   |   8 +++
 commands/version.c | 198 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 204 insertions(+), 2 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 095536849..1cad5d608 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -238,6 +238,14 @@ config CMD_VERSION
 
 	  barebox 2014.05.0-00142-gb289373 #177 Mon May 12 20:35:55 CEST 2014
 
+config CMD_VERSION_OUTPUT_TO_FRAMEBUFFER
+       bool
+       depends on CMD_VERSION
+       prompt "support displaying version via framebuffer"
+       help
+         Selecting this option will enable version command to output
+         version information onto display backed by a frambuffer
+
 config CMD_MMC_EXTCSD
 	tristate
 	prompt "read/write eMMC ext. CSD register"
diff --git a/commands/version.c b/commands/version.c
index 090f2dd13..ba74a993c 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -20,16 +20,210 @@
 #include <common.h>
 #include <command.h>
 #include <complete.h>
+#include <getopt.h>
+#include <fb.h>
+#include <gui/graphic_utils.h>
+#include <gui/2d-primitives.h>
+
+#define FRAME_SIZE	8
+
+struct placement {
+	int x, y;
+};
+
+typedef struct placement placement_function_t (struct screen *, int, int);
+
+struct placement
+placement_center(struct screen *sc, int text_width, int text_height)
+{
+	struct placement p;
+
+	p.x = (sc->info->xres - text_width) / 2;
+	p.y = (sc->info->yres - text_height) / 2;
+
+	return p;
+}
+
+struct placement
+placement_upper_left(struct screen *sc, int text_width, int text_height)
+{
+	struct placement p;
+
+	p.x = FRAME_SIZE;
+	p.y = FRAME_SIZE;
+
+	return p;
+}
+
+struct placement
+placement_upper_right(struct screen *sc, int text_width, int text_height)
+{
+	struct placement p;
+
+	p.x = sc->info->xres - 1 - text_width - FRAME_SIZE;
+	p.y = FRAME_SIZE;
+
+	return p;
+}
+
+struct placement
+placement_lower_left(struct screen *sc, int text_width, int text_height)
+{
+	struct placement p;
+
+	p.x = FRAME_SIZE;
+	p.y = sc->info->yres - 1 - text_height - FRAME_SIZE;
+
+	return p;
+}
+
+struct placement
+placement_lower_right(struct screen *sc, int text_width, int text_height)
+{
+	struct placement p;
+
+	p.x = sc->info->xres - 1 - text_width  - FRAME_SIZE;
+	p.y = sc->info->yres - 1 - text_height - FRAME_SIZE;
+
+	return p;
+}
 
 static int do_version(int argc, char *argv[])
 {
-	printf ("\n%s\n", version_string);
+	const struct font_desc *font;
+	const char *fbdev = NULL;
+	struct screen *sc;
+	u8 fg[3], bg[3];
+	int text_width;
+	int text_height;
+
+	placement_function_t *place;
+	struct placement placement;
+
+	if (IS_ENABLED(CONFIG_CMD_VERSION_OUTPUT_TO_FRAMEBUFFER)) {
+		const struct {
+			const char *name;
+			placement_function_t *func;
+		} placements[] = {
+			{ "center",      placement_center      },
+			{ "upper-left",  placement_upper_left  },
+			{ "lower-left",  placement_lower_left  },
+			{ "upper-right", placement_upper_right },
+			{ "lower-right", placement_lower_right  },
+		};
+		u32 color;
+		size_t i;
+		int opt;
+		u8 *c;
+
+		place = placement_center;
+
+		memset(fg, 0xff, sizeof(fg)); /* default to white */
+		memset(bg, 0x00, sizeof(bg)); /* default to black */
+
+		while((opt = getopt(argc, argv, "d:f:b:p:")) > 0) {
+			switch(opt) {
+			case 'd':
+				fbdev = optarg;
+				break;
+			case 'f':
+				/* FALLTHROUGH */
+			case 'b':
+				c     = (opt == 'f') ? fg : bg;
+				color = simple_strtoul(optarg, NULL, 16);
+
+				c[0] = color >> 16;
+				c[1] = color >>  8;
+				c[2] = color >>  0;
+				break;
+			case 'p':
+				place = NULL;
+				for (i = 0; i < ARRAY_SIZE(placements); i++)
+					if (!strcmp(optarg, placements[i].name))
+						place = placements[i].func;
+
+				if (!place) {
+					pr_err("Unknown placement: %s\n",
+					       optarg);
+					return -EINVAL;
+				}
+				break;
+			default:
+				return COMMAND_ERROR_USAGE;
+			}
+		}
+	}
+
+	/*
+	 * If no framebuffer device was passed to us, or in case if
+	 * CONFIG_CMD_VERSION_OUTPUT_TO_FRAMEBUFFER is not enabled we
+	 * resort to commands old behaviour.
+	 */
+	if (!fbdev) {
+		printf ("\n%s\n", version_string);
+		return 0;
+	}
+
+	font = find_font_enum(0);
+	if (!font) {
+		pr_err("Couldn't find any suitable fonts to use\n");
+		return -ENOENT;
+	}
+
+	sc = fb_open(fbdev);
+	if (IS_ERR(sc)) {
+		perror("unable to open framebuffer device");
+		return PTR_ERR(sc);
+	}
+
+	text_width  = strlen(version_string) * font->width;
+	text_height = font->height;
+
+	placement = place(sc, text_width, text_height);
+	/*
+	 * Draw a small frame around the version text
+	 */
+	gu_fill_rectangle(sc,
+			  placement.x - FRAME_SIZE,
+			  placement.y - FRAME_SIZE,
+			  placement.x + text_width  + FRAME_SIZE,
+			  placement.y + text_height + FRAME_SIZE,
+			  bg[0], bg[1], bg[2], 0xff);
+	/*
+	 * Then render the version string on the screen
+	 */
+	gu_draw_text(sc, font,
+		     placement.x, placement.y, version_string,
+		     fg[0], fg[1], fg[2], 0xff, bg[0], bg[1], bg[2], 0xff);
+
+	gu_screen_blit(sc);
+	fb_close(sc);
+
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(version)
+BAREBOX_CMD_HELP_TEXT("This command renders version information to a "
+		      "console/framebuffer")
+#ifdef CONFIG_CMD_VERSION_OUTPUT_TO_FRAMEBUFFER
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-d <fbdev>\t", "framebuffer device (if omitted, version "
+		      "is sent to active console(s))")
+BAREBOX_CMD_HELP_OPT ("-f color\t", "foreground color, in hex RRGGBB format")
+BAREBOX_CMD_HELP_OPT ("-b color\t", "background color, in hex RRGGBB format")
+BAREBOX_CMD_HELP_OPT ("-p placement\t",
+		      "version info placement (center, upper-left, lower-left, "
+		      "upper-right, lower-right)")
+#endif
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(version)
 	.cmd		= do_version,
 	BAREBOX_CMD_DESC("print barebox version")
+#ifdef CONFIG_CMD_VERSION_OUTPUT_TO_FRAMEBUFFER
+	BAREBOX_CMD_OPTS("[-dcp]")
+#endif
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
-	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_version_help)
 BAREBOX_CMD_END
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

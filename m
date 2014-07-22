Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9Ux6-0006EI-7Z
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 07:57:36 +0000
Received: by mail-wi0-f174.google.com with SMTP id d1so5459341wiv.7
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 00:57:13 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 22 Jul 2014 09:56:49 +0200
Message-Id: <1406015809-20711-6-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 5/5] Documentation: revamp dfu's help text
To: barebox@lists.infradead.org

From: Holger Schurig <holgerschurig@gmail.com>

... so that it looks a bit nicer in the HTML generated docs.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/dfu.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index 3546252..7f78f3b 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -172,12 +172,15 @@ out:
 
 BAREBOX_CMD_HELP_START(dfu)
 BAREBOX_CMD_HELP_TEXT("Turn's the USB host into DFU mode (Device Firmware Mode) and accepts")
-BAREBOX_CMD_HELP_TEXT("a new firmware. The destination is described by DESC in the this format:")
-BAREBOX_CMD_HELP_TEXT("  DEVICE(NAME)[src]...")
-BAREBOX_CMD_HELP_TEXT("Specify the '(') and ')' literal, the [] however denote this optional modes:")
-BAREBOX_CMD_HELP_TEXT("- 's' safe mode (download the complete image before flashing)")
-BAREBOX_CMD_HELP_TEXT("- 'r' readback of the firmware is allowed")
-BAREBOX_CMD_HELP_TEXT("- 'c' the file will be created (for use with regular files)")
+BAREBOX_CMD_HELP_TEXT("a new firmware. The destination is described by DESC in the format")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("\tDEVICE(NAME)[src]...")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Here '(' and ')' are literal characters. The '[' and ']' however denote")
+BAREBOX_CMD_HELP_TEXT("one of the following optional modes:")
+BAREBOX_CMD_HELP_TEXT("'s': safe mode (download the complete image before flashing); ")
+BAREBOX_CMD_HELP_TEXT("'r': readback of the firmware is allowed; ")
+BAREBOX_CMD_HELP_TEXT("'c': the file will be created (for use with regular files).")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-m STR", "Manufacturer string (barebox)")
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

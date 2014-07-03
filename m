Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2gsa-0001cC-AL
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 13:16:50 +0000
Received: from [69.196.158.250] (port=36522 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X2gsD-0001M8-VO
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 09:16:26 -0400
Date: Thu, 3 Jul 2014 09:16:17 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407030915130.26580@localhost>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] splash.c: Add that .png files are suitable as splash images.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/commands/splash.c b/commands/splash.c
index 5d0c0ad..2ce1bdd 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -78,8 +78,9 @@ static int do_splash(int argc, char *argv[])
 }

 BAREBOX_CMD_HELP_START(splash)
-BAREBOX_CMD_HELP_TEXT("This command displays a graphics in the bitmap (.bmp) format on the")
-BAREBOX_CMD_HELP_TEXT("framebuffer. Currently images with 8 and 24 bit color depth are supported.")
+BAREBOX_CMD_HELP_TEXT("This command displays a graphics image of either bitmap (.bmp) format")
+BAREBOX_CMD_HELP_TEXT("or Portable Network Graphics (.png) format on the framebuffer.")
+BAREBOX_CMD_HELP_TEXT("Currently images with 8 and 24 bit color depth are supported.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-f FB\t",    "framebuffer device (default /dev/fb0)")
@@ -91,7 +92,7 @@ BAREBOX_CMD_HELP_END

 BAREBOX_CMD_START(splash)
 	.cmd		= do_splash,
-	BAREBOX_CMD_DESC("display a BMP image")
+	BAREBOX_CMD_DESC("display a BMP or PNG splash image")
 	BAREBOX_CMD_OPTS("[-fxyno] FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_splash_help)

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

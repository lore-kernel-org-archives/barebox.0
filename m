Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X3rQO-0006mP-4S
 for barebox@lists.infradead.org; Sun, 06 Jul 2014 18:44:32 +0000
Received: from [99.240.204.5] (port=56891 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X3rPm-0001SY-Da
 for barebox@lists.infradead.org; Sun, 06 Jul 2014 14:43:54 -0400
Date: Sun, 6 Jul 2014 14:43:51 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407061442290.15788@localhost>
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
Subject: [PATCH] at91mux: Fix both help info and Kconfig info.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Correct options are, in fact, -p and -b.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index 292e197..4f2c76e 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -509,7 +509,7 @@ static int do_at91mux(int argc, char *argv[])
 }

 BAREBOX_CMD_HELP_START(at91mux)
-BAREBOX_CMD_HELP_TEXT("Dump current MIX configuration. If a BANK or PIN has been")
+BAREBOX_CMD_HELP_TEXT("Dump current MUX configuration. If a BANK or PIN has been")
 BAREBOX_CMD_HELP_TEXT("specified dump pin details.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
@@ -520,7 +520,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(at91mux)
 	.cmd		= do_at91mux,
 	BAREBOX_CMD_DESC("list MUX configuration")
-	BAREBOX_CMD_OPTS("[-pn]")
+	BAREBOX_CMD_OPTS("[-pb]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_at91mux_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
diff --git a/commands/Kconfig b/commands/Kconfig
index c98dbc5..15b1f08 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -44,7 +44,7 @@ config CMD_AT91MUX
 	help
 	  List MUX configuration

-	  Usage: at91mux [-pn]
+	  Usage: at91mux [-pb]

 	  Dump current MUX configuration. If a BANK or PIN has been
 	  specified dump pin details.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta56I-0001l9-PT
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 13:39:55 +0000
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
 ([174.116.196.46]:55732 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1Ta56H-0003um-LN
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 08:39:53 -0500
Date: Sun, 18 Nov 2012 08:39:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1211180836390.17973@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] arm lib: Remove redundant boot usage info from boot[uz].c
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


There is no need to add the command name to the "usage" info when
defining a command.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  fairly sure the command name is superfluous in the usage string,
yes?

diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
index 0d155cb..75e0de3 100644
--- a/arch/arm/lib/bootu.c
+++ b/arch/arm/lib/bootu.c
@@ -36,7 +36,7 @@ static const __maybe_unused char cmd_bootu_help[] =

 BAREBOX_CMD_START(bootu)
 	.cmd            = do_bootu,
-	.usage          = "bootu - start a raw linux image",
+	.usage          = "start a raw linux image",
 	BAREBOX_CMD_HELP(cmd_bootu_help)
 BAREBOX_CMD_END

diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index f069127..9f5b3b4 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -133,7 +133,7 @@ static const __maybe_unused char cmd_bootz_help[] =

 BAREBOX_CMD_START(bootz)
 	.cmd            = do_bootz,
-	.usage          = "bootz - start a zImage",
+	.usage          = "start a zImage",
 	BAREBOX_CMD_HELP(cmd_bootz_help)
 BAREBOX_CMD_END


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

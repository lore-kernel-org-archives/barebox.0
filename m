Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMf9n-0006NI-9D
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 10:06:31 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMf9m-0005P5-8b
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 05:06:26 -0500
Date: Mon, 21 Dec 2009 05:05:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912210502480.11932@localhost>
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
Subject: [PATCH] commands: correct "CONFIG_SIMPLE_PARSER" to
	"CONFIG_SHELL_SIMPLE".
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Based on suggestion from S. Hauer, fix the obvious typo in
commands/Makefile.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  just as an aside, as i mentioned earlier, i'll make a bunch of these
corrections as logically independent patches, rather than mixing them
all together.


diff --git a/commands/Makefile b/commands/Makefile
index a08837e..134d8b3 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -32,7 +32,7 @@ obj-$(CONFIG_CMD_FLASH)		+= flash.o
 obj-$(CONFIG_CMD_MEMINFO)	+= meminfo.o
 obj-$(CONFIG_CMD_TIMEOUT)	+= timeout.o
 obj-$(CONFIG_CMD_READLINE)	+= readline.o
-obj-$(CONFIG_SIMPLE_PARSER)	+= setenv.o
+obj-$(CONFIG_SHELL_SIMPLE)	+= setenv.o
 obj-$(CONFIG_CMD_EXPORT)	+= export.o
 obj-$(CONFIG_CMD_PRINTENV)	+= printenv.o
 obj-$(CONFIG_CMD_SAVEENV)	+= saveenv.o

rday
--

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

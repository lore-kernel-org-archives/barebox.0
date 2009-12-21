Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMgGm-0000zU-Tt
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 11:17:48 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMgGl-0002RK-PV
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 06:17:44 -0500
Date: Mon, 21 Dec 2009 06:17:19 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912210615350.13305@localhost>
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
Subject: [PATCH] commands:  Remove reference to non-existent
 CONFIG_CMD_I2C.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  the commands directory doesn't even have an i2c.c source file, so
it's clearly safe to remove this reference.  although i'm assuming
that, at some point down the road, there will be an "i2c" command
since that would be useful.


diff --git a/commands/Makefile b/commands/Makefile
index 134d8b3..1c657dd 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -4,7 +4,6 @@ obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o
 obj-$(CONFIG_CMD_LOADS)		+= loads.o
 obj-$(CONFIG_CMD_ECHO)		+= echo.o
 obj-$(CONFIG_CMD_MEMORY)	+= mem.o
-obj-$(CONFIG_CMD_I2C)		+= i2c.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_CMD_MTEST)		+= memtest.o
 obj-$(CONFIG_CMD_EDIT)		+= edit.o

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

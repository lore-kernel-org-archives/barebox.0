Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NN65g-0002mD-2N
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 14:52:03 +0000
Received: from cpe00142a336e11-cm001ac318e826.cpe.net.cable.rogers.com
	([174.113.191.234] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NN65d-0008EL-Hd
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 09:51:57 -0500
Date: Tue, 22 Dec 2009 09:51:19 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912220948380.4211@localhost>
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
Subject: [PATCH] Fix typo, "CFG_LONGHELP" -> "CONFIG_LONGHELP".
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  while this fixes an obvious typo in this file, it's really just a
band-aid since this header file sets *numerous* CONFIG_-prefixed
macros, which it shouldn't be doing.  any macros prefixed with CONFIG_
should be reserved for the Kconfig namespace, so it wouldn't hurt to
apply this patch, but it's clear that this file needs a lot more work
at some point in the future.


diff --git a/board/eco920/config.h b/board/eco920/config.h
index 3fb8beb..6f8f8ea 100644
--- a/board/eco920/config.h
+++ b/board/eco920/config.h
@@ -112,7 +112,7 @@

 #define CFG_BAUDRATE_TABLE	{115200 , 19200, 38400, 57600, 9600 }

-#define	CFG_LONGHELP				/* undef to save memory		*/
+#define	CONFIG_LONGHELP				/* undef to save memory		*/
 #define CFG_PROMPT		"barebox> "	/* Monitor Command Prompt */
 #define CFG_CBSIZE		1024		/* Console I/O Buffer Size */
 #define CFG_MAXARGS		32		/* max number of command args */

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

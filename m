Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RZogQ-0006ei-H0
 for barebox@lists.infradead.org; Sun, 11 Dec 2011 19:03:36 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.2.77] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RZogD-0002aQ-4q
 for barebox@lists.infradead.org; Sun, 11 Dec 2011 14:03:21 -0500
Date: Sun, 11 Dec 2011 14:03:15 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1112111358570.19722@oneiric>
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
Subject: [PATCH] Some trivial grammar/spelling fixes for main README file.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


A number of minor fixes related to spelling, grammar and
capitalization in the top-level README file.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  Hope there's no objection to the occasional grammatical patch as
I work my way through the source.  If there are any disagreements with
what's below, let me know if there are different standards for the doc
files.  In some cases, it was just a judgment call.


diff --git a/README b/README
index 9b5317d..9b58f26 100644
--- a/README
+++ b/README
@@ -2,15 +2,15 @@ Barebox
 -------

 Barebox is a bootloader that follows the tradition of Das U-Boot, while
-adapting modern design ideas from the Linux kernel.
+adopting modern design ideas from the Linux kernel.


 Features
 --------

-- A POSIX based file API
+- A POSIX-based file API
   Inside barebox the usual open/close/read/write/lseek functions are used.
-  This makes it familiar to everyone who has programmed under unix systems.
+  This makes it familiar to everyone who has programmed under UNIX systems.

 - Usual shell commands like ls/cd/mkdir/echo/cat,...

@@ -45,9 +45,9 @@ Features
 - simulation target
   barebox can be compiled to run under Linux. While this is rather useless
   in real world this is a great debugging and development aid. New features
-  can be easily developped and tested on long train journeys and started
-  under gdb. There is a console driver for linux which emulates a serial
-  device and a tap based ethernet driver. Linux files can be mapped to
+  can be easily developed and tested on long train journeys and started
+  under gdb. There is a console driver for Linux which emulates a serial
+  device and a TAP-based Ethernet driver. Linux files can be mapped to
   devices under barebox to emulate storage devices.

 - device parameter support
@@ -61,8 +61,8 @@ Features

 - getopt
   There is a small getopt implementation. Some commands got really
-  complicated (both in code and in usage) due to the fact that U-Boot only
-  allowed positional parameters.
+  complicated (both in code and in usage) due to the fact that U-Boot
+  allowed only positional parameters.

 - editor
   Scripts can be edited with a small editor. This editor has no features
@@ -73,7 +73,7 @@ Building Barebox
 ----------------

 Barebox uses the Linux kernel's build system. It consists of two parts:
-the makefile infrastructure (kbuild), plus a configuration system
+the Makefile infrastructure (kbuild), plus a configuration system
 (kconfig). So building barebox is very similar to building the Linux
 kernel.


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

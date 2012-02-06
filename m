Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuRN7-0006PP-VC
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 16:24:58 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RuRN1-0007rt-DG
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 11:24:47 -0500
Date: Mon, 6 Feb 2012 11:24:40 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202061123290.7258@oneiric>
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
Subject: [PATCH] DOC: Some grammar and spelling fixes for barebox-main.dox.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/Documentation/barebox-main.dox b/Documentation/barebox-main.dox
index 90fce8e..17575bf 100644
--- a/Documentation/barebox-main.dox
+++ b/Documentation/barebox-main.dox
@@ -1,13 +1,13 @@
 /** @mainpage Barebox

-Barebox is a bootloader that initializes a hardware and boots Linux and
+Barebox is a bootloader that initializes hardware and boots Linux and
 maybe other operating systems or bare metal code on a variety of
-processors. It was initialy derived from U-Boot and captures up with
-several of it's ideas, so users being familiar with U-Boot should come
-into production quickly with Barebox.
+processors. It was initially derived from U-Boot and retains several of
+U-Boot's ideas, so users familiar with U-Boot should come into
+production quickly with Barebox.

 However, as the Barebox developers are highly addicted to the Linux
-kernel, it's coding style and code quality, we try to stick as closely
+kernel, its coding style and code quality, we try to stick as closely
 as possible to the methodologies and techniques developed in Linux. In
 addition we have a strong background in POSIX, so you'll find several
 good old Unix traditions realized in Barebox as well.
@@ -26,7 +26,7 @@ good old Unix traditions realized in Barebox as well.
 - <b>Environment Filesystem:</b><br>
   In contrast to U-Boot, Barebox doesn't misuse the environment for
   scripting. If you start the bootloader, it gives you a shell and
-  something that looks like a filesystem. In fact it isn't: it is a very
+  something that looks like a filesystem. In fact it isn't; it is a very
   simple ar archive being extracted from flash into a ramdisk with 'loadenv'
   and stored back with 'saveenv'.

@@ -41,7 +41,7 @@ good old Unix traditions realized in Barebox as well.
   if they have the same name.

 - <b>Clocksource:</b><br>
-  We use the clocksource API knwon from Linux.
+  We use the standard clocksource API from Linux.

 - <b>Kconfig/Kbuild:</b><br>
   This gives us parallel builds and removes the need for lots of ifdefs.
@@ -54,7 +54,7 @@ good old Unix traditions realized in Barebox as well.
   to simulate devices.

 - <b>Device Parameters:</b><br>
-  There is a parameter model in @a Barebox: each device can specify it's
+  There is a parameter model in @a Barebox: each device can specify its
   own parameters, which do exist for every instance. Parameters can be
   changed on the command line with \<devid\>.\<param\>="...". For
   example, if you want to access the IPv4 address for eth0, this is done

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

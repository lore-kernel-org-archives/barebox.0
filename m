Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X45M3-0004lx-6Z
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 09:36:59 +0000
Received: from [99.240.204.5] (port=40325 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X45Lg-0004za-UQ
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 05:36:36 -0400
Date: Mon, 7 Jul 2014 05:36:33 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407070534300.28324@localhost>
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
Subject: [PATCH] crc32: Proper name of command is "crc32".
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  as i understand it, this fix should take care of the command being
named "crc32", is that right? it seems to generate the correct sphinx
documentation.

diff --git a/Documentation/user/memory-areas.rst b/Documentation/user/memory-areas.rst
index 6c5bab3..9654a99 100644
--- a/Documentation/user/memory-areas.rst
+++ b/Documentation/user/memory-areas.rst
@@ -2,7 +2,7 @@ Memory areas
 ============

 Several barebox commands like :ref:`command_md`, :ref:`command_erase`
-or :ref:`command_crc` work on an area of memory. Areas have the following form::
+or :ref:`command_crc32` work on an area of memory. Areas have the following form::

   <start>-<end>

diff --git a/commands/crc.c b/commands/crc.c
index 3612162..0e30052 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -107,7 +107,7 @@ static int do_crc(int argc, char *argv[])
 	return err;
 }

-BAREBOX_CMD_HELP_START(crc)
+BAREBOX_CMD_HELP_START(crc32)
 BAREBOX_CMD_HELP_TEXT("Calculate a CRC32 checksum of a memory area.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")

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

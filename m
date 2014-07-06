Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X3tyZ-0005gD-4W
 for barebox@lists.infradead.org; Sun, 06 Jul 2014 21:27:59 +0000
Received: from [99.240.204.5] (port=32873 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X3ty7-0006K8-FX
 for barebox@lists.infradead.org; Sun, 06 Jul 2014 17:27:31 -0400
Date: Sun, 6 Jul 2014 17:27:28 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407061724590.20386@localhost>
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
Subject: is it "crc" or "crc32"?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  the source file commands/crc.c has a very confusing tail end, which
generates two partial entries for the sphinx docs:

BAREBOX_CMD_HELP_START(crc)
BAREBOX_CMD_HELP_TEXT("Calculate a CRC32 checksum of a memory area.")
BAREBOX_CMD_HELP_TEXT("")
BAREBOX_CMD_HELP_TEXT("Options:")
BAREBOX_CMD_HELP_OPT ("-f FILE", "Use file instead of memory.")
#ifdef CONFIG_CMD_CRC_CMP
BAREBOX_CMD_HELP_OPT ("-F FILE", "Use file to compare.")
#endif
BAREBOX_CMD_HELP_OPT ("-v CRC",  "Verify")
BAREBOX_CMD_HELP_OPT ("-V FILE", "Verify with CRC read from FILE")
BAREBOX_CMD_HELP_END

BAREBOX_CMD_START(crc32)   <-- ????

  the first command definition refers to "crc", but the second one
refers to "crc32". is that correct? what does it mean?

rday

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

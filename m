Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rv7o8-00085S-Vt
 for barebox@lists.infradead.org; Wed, 08 Feb 2012 13:43:37 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1Rv7o4-00060I-2B
 for barebox@lists.infradead.org; Wed, 08 Feb 2012 08:43:32 -0500
Date: Wed, 8 Feb 2012 08:43:27 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202080838460.4323@oneiric>
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
Subject: should all SD-bootable boards have CONFIG_MCI_WRITE enabled?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  with boards like the beagle and panda that can boot off of SD cards,
shouldn't all boards like that have CONFIG_MCI_WRITE enabled so that
one could write the environment back with "saveenv"?

  currently, omap3530_beagle_defconfig *doesn't* have that set, which
produces (on my xM):

barebox@Texas Instrument's Beagle:/ saveenv
saving environment
could not open /dev/env0: Read-only file system

  now, that *could* be because i have no /dev/env0 file given how my
environment was configured (i have only /dev/defaultenv), but even if
i did have a /dev/env0, wouldn't i still need MCI_WRITE to save my
environment?

  the obvious proposed patch is to add CONFIG_MCI_WRITE=y to both the
beagle and panda defconfig files.  does that sound right?  any other
boards for which that would be appropriate?

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

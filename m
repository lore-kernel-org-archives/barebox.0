Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuQwo-0005od-H2
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 15:57:47 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RuQwb-0006AA-9h
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 10:57:29 -0500
Date: Mon, 6 Feb 2012 10:57:22 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202061041330.5018@oneiric>
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
Subject: any value in allowing user selection of barebox prompt?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  making things a bit simpler than my last few posts, is it worth
making the BOARDINFO prompt string user selectable?  if i was going to
do some customization, it would be nice to have the prompt perhaps
abbreviate what i'd done.

  for instance, if i:

$ make omap3530_beagle_defconfig

i can see how my barebox prompt string is going to be set in
arch/arm/mach-omap/Kconfig:

config BOARDINFO
        default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
        default "Texas Instrument's Beagle" if MACH_BEAGLE
        default "Texas Instrument's OMAP3EVM" if MACH_OMAP3EVM
        default "Texas Instrument's Panda" if MACH_PANDA
        default "Phytec phyCORE pcm049" if MACH_PCM049
        default "Phytec phyCARD-A-L1" if MACH_PCAAL1

  but if i specifically configure and build for an xM, i'd like the
prompt to perhaps read:

  barebox@Texas Instrument's Beagle xM:/

it's easy enough to do (although it would need to be done on a
per-machine basis):

config BOARDINFO
        string "Board info"
        default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
        default "Texas Instrument's Beagle" if MACH_BEAGLE
        default "Texas Instrument's OMAP3EVM" if MACH_OMAP3EVM
        default "Texas Instrument's Panda" if MACH_PANDA
        default "Phytec phyCORE pcm049" if MACH_PCM049
        default "Phytec phyCARD-A-L1" if MACH_PCAAL1

  i tried it and it seems to work fine although the aesthetics in
"make menuconfig" is a bit strange WRT order:

    (Texas Instrument's Beagle) Board info
        Select OMAP board (Texas Instrument's Beagle Board)  --->

but that could be fixed just by moving the BOARDINFO entry below the
board choice in that file.

  was this already discussed and rejected once upon a time?  it's not
a big deal but it has the value of being moderately informative.

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

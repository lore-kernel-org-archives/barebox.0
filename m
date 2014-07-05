Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X3RE8-0004Id-3Y
 for barebox@lists.infradead.org; Sat, 05 Jul 2014 14:46:08 +0000
Received: from [99.240.204.5] (port=41535 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X3RDU-0005XW-Q4
 for barebox@lists.infradead.org; Sat, 05 Jul 2014 10:45:28 -0400
Date: Sat, 5 Jul 2014 10:45:25 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407051023580.17423@localhost>
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
Subject: device trees, dtc and beaglebone black
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  first in a series of questions as i try to puzzle out device trees
and the config options related to it -- first few questions will
undoubtedly be simple as i want to make absolutely sure i don't
misunderstand something basic that screws me up later. and i'll ask in
relation to a real-life example i'm interested in -- the beaglebone
black (BBB).

  first, i notice this page on device trees on the barebox wiki:

http://wiki.barebox.org/doku.php?id=user:devicetree

is it still reasonably up to date? seems like it has useful
information that isn't yet in the user manual.

  next, with the BBB, i realize there are two configs and builds that
must be done:

 $ make omap3530_beagle_xload_defconfig
 $ make omap3530_beagle_defconfig

the first is responsible for building the first-stage (MLO) loader for
the BBB, and it appears to have no device tree functionality whatever,
so it seems i can safely ignore that build, so i'll restrict myself to
the second configure and build for all future questions.

  in terms of building and linking a DTB directly into the barebox
executable, i can see the "System Type" selections:

  [*] link a DTB into the barebox image
    () DTB to build into the barebox image (NEW)

where i assume that if i want to link a DTB, i need to select the
appropriate .dts file, and i'd select "am335x-boneblack". so far, so
good, but here's the first puzzle.

  if i select to link a DTB, it seems obvious that i will need to
compile the .dts file with the "dtc" compiler, right? but that would
seem to be the *only* time i need access to the device tree compiler,
isn't it? and whether or not a device tree compiler is built is
controlled by CONFIG_DTC. you can see this in scripts/Makefile:

  subdir-$(CONFIG_DTC)            += dtc

but it seems that "dtc" is being compiled even when it's unneeded.

  if you look at drivers/of/Kconfig:

=====

config OFTREE
        select DTC
        bool

config OFTREE_MEM_GENERIC
        depends on OFTREE
        depends on PPC || ARM
        def_bool y

config DTC
        bool

config OFDEVICE
        select OFTREE
        select DTC
        bool "Enable probing of devices from the devicetree"

=====

it appears that DTC is explicitly selected by either of OFTREE or
OFDEVICE. but the simple selection of device tree support doesn't seem
to require building "dtc" unless you need to compile a device tree
yourself, does it? i tested this -- i selected not to have a builtin
DTB, but "dtc" was still compiled for me. any reason why? it doesn't
hurt, of course, but it seems unnecessary. or am i misreading
something?

  more questions shortly ...

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

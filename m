Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X3lSh-0001xa-G0
 for barebox@lists.infradead.org; Sun, 06 Jul 2014 12:22:32 +0000
Received: from [99.240.204.5] (port=52470 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X3lSG-0007HN-SK
 for barebox@lists.infradead.org; Sun, 06 Jul 2014 08:22:04 -0400
Date: Sun, 6 Jul 2014 08:22:01 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407060802390.590@localhost>
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
Subject: "make menuconfig" entries related to device tree seem kind of
 disorganized
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  another issue i've thought about WRT device tree support in barebox
is that the Kconfig options for DTs seem kind of scattered across the
Kconfig files, whereas it might make more sense to simply put
everything in a single top-level menu, "Device tree support". (as
before, i'll use my config for the beaglebone black as a live
example.)

  first, if i run "make menuconfig", right under "System Type",
there's a selection for "link a DTB into the barebox image". but that
really has *nothing* to do with the system type, does it? in fact,
there seem to be a few entries under "System Type" that don't really
reflect system type -- they're more "configuration" and "build"
options, such as how to compile barebox, and so on. i'm not terribly
concerned about those latter selections, but whether or not to link a
DTB into barebox seems really unrelated to system type.

  next, under top-level "Commands", way down under Miscellaneous,
there are a number of DT-related commands -- of_dump, of_node,
of_property and oftree, which are odd for a couple reasons. first,
i've never been keen on *anything* being classified as
"miscellaneous". :-) seriously, i've always felt like it's a bit of a
defeat to throw something under "misc" because i can't figure out
where it really belongs. but that's not all.

  even if i (i think) don't select "Enable probing of devices from the
devicetree" from under "Drivers", i still have the ability to select
those DT-related commands, which is weird, and that's because rather
than the DT-related commands *depending* on selecting DT support, it's
set up the other way around -- those commands *select* OFTREE. that's
backwards from the way it's normally done -- i remember numerous
kernel programmers expressing frustration with an overuse of "select"
in Kconfig files, rather than properly using dependencies. it would be
far cleaner for the developer to first select some level of DT
support, *after* which those commands suddenly become visible and
selectable.

  side note: does the selection of "Enable probing of devices from the
devicetree" really belong under "Drivers"? maybe i'm just not looking
at it the right way, it doesn't really seem like what i normally
consider a "driver." but ... no big deal.

  anyway, it just seems like the DT stuff is spread confusingly across
the config structure when it would make way more sense to put it all
in one place, so that one could, in one click, select "Device tree
support", whereupon one would be presented with everything related to
device trees.

  thoughts? more DT stuff coming shortly ...

rday

p.s. what exactly is the difference between the CONFIG variables
OFTREE versus OFDEVICE?

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

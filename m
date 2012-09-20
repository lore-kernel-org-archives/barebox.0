Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEirN-0002Tr-3z
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 15:40:14 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1TEirH-0004Hi-4D
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 17:40:07 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1TEirG-0002tR-W7
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 17:40:07 +0200
Message-ID: <1348155606.3514.21.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 20 Sep 2012 17:40:06 +0200
In-Reply-To: <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
References: <n> <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/2] Add bcm2835/Raspberry-Pi support
To: barebox@lists.infradead.org

Hi,

I've tried your patches and the boot fine:

barebox 2012.09.0-00168-g5a8f45d #1 Thu Sep 20 17:24:48 CEST 2012

Board: RaspberryPi (BCM2835/ARM1176JZF-S)
Malloc space: 0x00200000 -> 0x005fffff (size  4 MB)
Stack space : 0x00100000 -> 0x00108000 (size 32 kB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
RPi> / devinfo 
devices:
`---- uart-pl0110
     `---- cs0
`---- global
`---- mem0
     `---- 0x00000000-0x07ffffff: /dev/ram0
`---- ramfs0
`---- devfs0
`---- mem1
     `---- 0x00000000-0x00002007: /dev/defaultenv
`---- mem2
     `---- 0x00000000-0xfffffffe: /dev/mem

drivers:
uart-pl011
     ramfs
     devfs
       mem
    cramfs
RPi> / 

The first patch has some white-space warnings which should be fixed:
$ git am ~/\[PATCH_1_2\]_Add_bcm2835_Raspberry-Pi_support.mbox
Applying: Add bcm2835/Raspberry-Pi support
/ptx/work/dude/jlu/raspi/barebox/.git/rebase-apply/patch:358: trailing whitespace.
        .rate = UART0_CLOCK,
/ptx/work/dude/jlu/raspi/barebox/.git/rebase-apply/patch:410: space before tab in indent.
        uint32_t rstc;
/ptx/work/dude/jlu/raspi/barebox/.git/rebase-apply/patch:411: trailing whitespace.

/ptx/work/dude/jlu/raspi/barebox/.git/rebase-apply/patch:415: trailing whitespace.

/ptx/work/dude/jlu/raspi/barebox/.git/rebase-apply/patch:595: trailing whitespace.

warning: squelched 1 whitespace error
warning: 6 lines add whitespace errors.

So feel free to add my Tested-By for the cleaned-up version:
Tested-By: Jan Luebbe <jlu@pengutronix.de>

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

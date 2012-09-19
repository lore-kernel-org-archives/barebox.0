Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEHD8-0007tJ-Ok
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 10:08:56 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1TEHD6-0003GA-ES
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 12:08:48 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1TEHD6-00021F-72
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 12:08:48 +0200
Message-ID: <1348049328.3397.10.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 19 Sep 2012 12:08:48 +0200
In-Reply-To: <505997B7.9040306@gmail.com>
References: <n> <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
 <1348045844.3397.8.camel@coredoba.hi.pengutronix.de>
 <505997B7.9040306@gmail.com>
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
To: barebox-request <barebox@lists.infradead.org>

Hi,

On Wed, 2012-09-19 at 12:00 +0200, Carlo Caione wrote:
> You need an sd card with a single partition fat32 with inside 
> bootcode.bin, loader.bin and start.elf (you can find the files here 
> https://github.com/raspberrypi/firmware/tree/master/boot)
> Then just copy barebox.bin on the card and rename it kernel.img.

Ok, I'll try that later today.

What are your next plans? The USB or SD controllers?

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

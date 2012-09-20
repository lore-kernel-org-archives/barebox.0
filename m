Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEdwj-0004vW-2d
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 10:25:25 +0000
Date: Thu, 20 Sep 2012 12:25:12 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20120920122512.5138a05a@skate>
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
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

Dear Carlo Caione,

On Wed, 19 Sep 2012 12:00:23 +0200, Carlo Caione wrote:

> Yes, it works for me.
> You need an sd card with a single partition fat32 with inside 
> bootcode.bin, loader.bin and start.elf (you can find the files here 
> https://github.com/raspberrypi/firmware/tree/master/boot)
> Then just copy barebox.bin on the card and rename it kernel.img.

It would probably be good to put that somewhere in the Barebox
documentation. Generally, I think some per-board documentation is
lacking in Barebox on how to set up Barebox on each particular
platform, especially with regard to the first stage bootloaders that
are often needed on a number of platforms.

And yes, I know, I should be sending a patch augmenting the
documentation with this :)

Thanks,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

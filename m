Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEH4z-0007pD-EG
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 10:00:30 +0000
Received: by bkcji2 with SMTP id ji2so387514bkc.36
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 03:00:23 -0700 (PDT)
Message-ID: <505997B7.9040306@gmail.com>
Date: Wed, 19 Sep 2012 12:00:23 +0200
From: Carlo Caione <carlo.caione@gmail.com>
MIME-Version: 1.0
References: <n> <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
 <1348045844.3397.8.camel@coredoba.hi.pengutronix.de>
In-Reply-To: <1348045844.3397.8.camel@coredoba.hi.pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Add bcm2835/Raspberry-Pi support
To: barebox@lists.infradead.org

On 19/09/2012 11:10, Jan L=FCbbe wrote:
> Hi,
>
> thanks for working on this!

You are welcome :)

> For trying out your code, I'd like to know how you tested this. How did
> you prepare your SD card? Is there anything else I need to be ware of to
> get it working?

Yes, it works for me.
You need an sd card with a single partition fat32 with inside =

bootcode.bin, loader.bin and start.elf (you can find the files here =

https://github.com/raspberrypi/firmware/tree/master/boot)
Then just copy barebox.bin on the card and rename it kernel.img.

Please, let me know if you have any problem.

Thank you,

--
Carlo Caione


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

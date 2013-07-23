Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1f9r-00083b-2J
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 16:09:52 +0000
Received: from [192.168.10.59] (p4FC11628.dip0.t-ipconnect.de [79.193.22.40])
 by knowtrek.com (Postfix) with ESMTPSA id 8CF61C170007
 for <barebox@lists.infradead.org>; Tue, 23 Jul 2013 18:09:26 +0200 (CEST)
Message-ID: <51EEAAB6.1020208@knowtrek.com>
Date: Tue, 23 Jul 2013 18:09:26 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
References: <2b0f708c.5533168.51ee6577.50113@o2.pl>
In-Reply-To: <2b0f708c.5533168.51ee6577.50113@o2.pl>
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
Subject: Re: Raspberry Pi net boot using barebox.
To: barebox@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello Dariusz,

> I find this thread while googling today: 
> http://comments.gmane.org/gmane.comp.boot-loaders.barebox/4051
> 
> I downloaded barebox package from official site and some
> cross-compilers from github/raspberry I configured barebox for ARM
> architecture and turned on menuconfig. Then I type make and press
> enter - and I noticed some new files in barebox directory same as
> those from this thread: 
> http://www.raspberrypi.org/phpBB3/viewtopic.php?t=25087&p=230000
> 
> I formated sd card with fat32 and copy on it 3 files same way like
> man from this post 
> http://comments.gmane.org/gmane.comp.boot-loaders.barebox/4051 I
> downloaded loader.bin file and start.elf file from history (setp.
> 2012) version of raspberry firmware from github.
> 
> Then i booted PI - but nothing happens - there was only rainbow on
> the screen all time.
> 
> What should i do?


I have used Raspberry Pi for my bachelor thesis. What I wondered is
that GPU is used for boot process: "Is there a GPU binary? Yes. The
GPU binary also contains the first stage bootloader." [1]

There is this boot programm Video Core (VC). Thats the one that
resides in /opt/vc . As far as I know, that tool is resonsible for
boot and I can guess I would say second stage. But it is very
difficult to use this tool and GPU sepcifications were not public [2].
Maybe you find other images than the offical one, that use barebox as
default [3]?

I have heard many stories about Raspberry Pi foundation being set up
by Broadcom to make their devices popular. I do not remember the
sources. No offense to the guys from raspberry pi foundation.
Working with the bcm2835.c file to implement an SPI user-space modul I
got a similar impression. On LinuxTag 2013 in Berlin this plattform
has been criticized for not conforming to open hardware standards.
(The eagle files were hard to find).

If you find a solution nevertheless, I would be very much interested
as well.

Greetings,

Adam




[1] http://www.raspberrypi.org/faqs
[2] http://www.raspberrypi.org/phpBB3/viewtopic.php?f=72&t=34461
[3] http://raspberrypidiskimages.com/
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlHuqrUACgkQefEEI87R1DfdywCdHvQo0W9yKNo31I69Yt7WtUV6
atYAn19nKtWqJdq+XLAqOLtis/Iuz4nM
=N0Io
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

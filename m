Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moh1-ve1.go2.pl ([193.17.41.131])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1tdu-0003NA-FJ
 for barebox@lists.infradead.org; Wed, 24 Jul 2013 07:37:51 +0000
Received: from moh1-ve1.go2.pl (unknown [10.0.0.131])
 by moh1-ve1.go2.pl (Postfix) with ESMTP id 15B0A91C7DC
 for <barebox@lists.infradead.org>; Wed, 24 Jul 2013 09:37:22 +0200 (CEST)
Received: from o2.pl (unknown [10.0.0.67])
 by moh1-ve1.go2.pl (Postfix) with SMTP
 for <barebox@lists.infradead.org>; Wed, 24 Jul 2013 09:37:22 +0200 (CEST)
From: =?UTF-8?Q?dariusz.s93?= <dariusz.s93@o2.pl>
Mime-Version: 1.0
Message-ID: <12f34395.6beeefcd.51ef8432.9ec3@o2.pl>
Date: Wed, 24 Jul 2013 09:37:22 +0200
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
Subject: =?UTF-8?Q?Raspberry_pi_barebox_boot?=
To: barebox@lists.infradead.org

Hello!

I find this thread while googling today:
http://comments.gmane.org/gmane.comp.boot-loaders.barebox/4051

I downloaded barebox package from official site and some cross-compilers
from github/raspberry
I configured barebox for ARM architecture and turned on menuconfig. Then I
type make and press enter - and I noticed some new files in barebox
directory same as those from this thread:
http://www.raspberrypi.org/phpBB3/viewtopic.php?t=25087&p=230000

I formated sd card with fat32 and copy on it 3 files same way like man from
this post
http://comments.gmane.org/gmane.comp.boot-loaders.barebox/4051
I downloaded loader.bin file and start.elf file from history (setp. 2012)
version of raspberry firmware from github.

Then i booted PI - but nothing happens - there was only rainbow on the
screen all time.

What should i do?

Let me recall - all my knowledge how to boot RPI with Barebox comes from
this post

  Yes, it works for me.
  You need an sd card with a single partition fat32 with inside 
  bootcode.bin, loader.bin and start.elf (you can find the files here 
  https://github.com/raspberrypi/firmware/tree/master/boot)
  Then just copy barebox.bin on the card and rename it kernel.img.

  Please, let me know if you have any problem.

  Thank you,

  --
  Carlo Caione
<<<

Sorry for my english.
Darek

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

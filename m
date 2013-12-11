Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-x22f.google.com ([2607:f8b0:400c:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqnGA-00020L-2C
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 17:07:42 +0000
Received: by mail-ve0-f175.google.com with SMTP id jx11so6088671veb.6
 for <barebox@lists.infradead.org>; Wed, 11 Dec 2013 09:07:17 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 11 Dec 2013 12:07:17 -0500
Message-ID: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Porting barebox (devicetree) to Variscite iMX6 SOM
To: barebox@lists.infradead.org

I figured I'd just throw this out to everyone..

Is there any really good source of information or directions on the
correct steps involved in getting a devicetree based barebox image
built and then correctly programmed onto an SD Card? I feel like I am
missing something somewhere.

I have been involved in getting barebox working on a Variscite i.MX6
SOM with the intent to send it to Sascha, et al. for inclusion in the
tree (once I get it actually working....).

Back in August, I managed to get the Variscite board booting with an
earlier version of barebox and my additions using the "old-style"
methodology in the arch/arm/boards file and the older style DCD header
info. Unfortunately, this version was prior to the inclusion of GPMI
NAND support and other features we needed.

So...I have now been attempting to migrate things to the most current
barebox releases and transfer everything I have done into the newer
style formats aimed at devicetree -- and I haven't been able to get it
to work yet.

So far, I started from the imx_v7_defconfig,  created what I think are
appropriate dts/dtsi files that describe my baseboard and SOM, updated
my board.c and lowlevel.c files (hopefully correctly -- there just
isn't much code in these files anymore with devicetree), created a
flash-header-variscite.imxcfg file using the DCD information I had
already verified worked in the old format (based on the u-Boot DCD
info from Variscite), updated the appropriate Makefiles to build the
new modules, added the appropriate entry to images/Makefile.imx, etc.

I then built it and programmed the resulting .img file into an SD Card
but I get nothing apparent in terms of a response (no serial console,
no blinking LED, etc).

I do NOT have an env partition at the moment but have it set to build
a default environment into barebox itself (which tends to be how we
prefer to have it for our current SD card boot mechanism -- which is
aimed primarily at recovery and upgrade anyway).

Are there any steps I'm missing or anything major I'm doing wrong? Do
I need to be manually specifying a dtb file to include?

Any and all help would be greatly appreciated!

Thanks again,
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

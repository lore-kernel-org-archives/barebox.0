Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoCQL-0004Vy-2m
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 14:28:02 +0000
Message-ID: <54621C64.5070004@free-electrons.com>
Date: Tue, 11 Nov 2014 11:25:40 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <20141110080657.GA18558@pengutronix.de> <5460FFB0.9080205@free-electrons.com>
 <20141110184345.GC27002@pengutronix.de> <546113A7.30500@gmail.com>
 <20141111090649.GE27002@pengutronix.de>
In-Reply-To: <20141111090649.GE27002@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 0/4] mvebu: Add network support for Armada 370/XP
To: =?windows-1252?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Uwe,

On 11/11/2014 06:06 AM, Uwe Kleine-K=F6nig wrote:
>>>
>>> Do you have a command line for me? I used
>>>
>>> 	scripts/kwboot -b images/barebox-netgear-rn104-uart.img /dev/ttyUSB0
>>>
>>> which took much longer than I expected (didn't time it, but I'd say in
>>> the several minutes range). And I didn't know what to do then. Ctrl-C
>>> and then connecting microcom was wrong. Adding -t to the command line
>>> above, too.
> Any hints on how kwboot is used? It loads the binary into RAM and runs
> it from there, right? I timed my above command and it took 38m28.225s
> for my image (341304 bytes).
> =


This is how I use kwboot:

1. Boot your board (with stock U-Boot and Linux) and extract the bootloader.
   According to my notes, I just grabbed a couple megabytes:

   $ dd if=3D/dev/mtd0 of=3D/mtd0.dump bs=3D1M count=3D2

   I guess you can grab the entire bootloader partition (if you have one).

2. Run kwbimage tool and dump the output to the appropriate board directory:

  $ ./scripts/kwbimage -x -i /srv/nfs/mtd0.dump -o arch/arm/boards/plathome=
-openblocks-ax3/

  Fix the produced kwbimage.cfg to boot from UART (actually, I think it's n=
ot needed):

  diff --git a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg b/arch/=
arm/boards/plathome-openblocks-ax3/kwbimage.cfg
  index 219c2ec..fd6c0df 100644
  --- a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
  +++ b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
  @@ -1,5 +1,5 @@
   VERSION 1
  -BOOT_FROM spi
  +BOOT_FROM uart
   DESTADDR 00600000
   EXECADDR 006b0000
   NAND_BLKSZ 00000000

3. Make your barebox

  $ make

4. Run kwboot and have fun!

  $ ./scripts/kwboot -b images/barebox-plathome-openblocks-ax3.img -t -B 11=
5200 /dev/ttyUSB0

After kwboot transfers the image, it starts a terminal. You don't need to o=
pen another one,
and close everything listening on ttyUSB0 or kwboot won't work fine. It sho=
uld take less
than a minute to transfer the image.

This works for me on every mvebu board I have, but it was a major pain at f=
irst :/
-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

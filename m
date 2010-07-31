Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OfA8T-0004iK-JH
	for barebox@lists.infradead.org; Sat, 31 Jul 2010 11:21:50 +0000
Received: by eyd10 with SMTP id 10so1028334eyd.36
	for <barebox@lists.infradead.org>; Sat, 31 Jul 2010 04:21:48 -0700 (PDT)
Message-ID: <4C540747.7000602@dawes.za.net>
Date: Sat, 31 Jul 2010 13:21:43 +0200
From: Rogan Dawes <rogan@dawes.za.net>
MIME-Version: 1.0
References: <4C532D05.7020407@dawes.za.net>
In-Reply-To: <4C532D05.7020407@dawes.za.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Porting to Marvell 88F5182?
To: barebox@lists.infradead.org

On 2010/07/30 9:50 PM, Rogan Dawes wrote:
> Hi folks,
>
> I am trying to get a decent boot loader running on my DLink DNS323. It
> was shipped with a severely crippled version of U-Boot, forked from
> U-Boot 1.1.1, and heavily bastardized by Marvell.
>
[...]
>
> I have managed to get just about everything to work, except for the
> flash part, a Spansion S29GL064M90TFIR4 device. Unfortunately, there
> seems to be some strange connections going on, and the standard U-Boot
> CFI code does not recognise it.

Since I'd be chainloading barebox from the existing U-Boot, which does 
support loadb and bootm, it probably makes the most sense initially to 
just skip the lowlevel init, and build a minimal ARM second stage, and 
wrap it in a u-boot image, I think.

I tried using the at91sam9263ek_defconfig, and unsetting 
CONFIG_MACH_DO_LOWLEVEL_INIT.

My CROSS_COMPILE env variable was set to:

CROSS_COMPILE=arm-linux-gnueabi-

I then made it into a uImage using:

mkimage -A arm -O u-boot -T kernel -C none -a 0x800000 -e 0x800000 -n 
"Barebox" -d barebox.bin uImage.bin

Unfortunately, it hung as soon as I tried to execute it in U-Boot:

Marvell> bootm
## Booting image at 00100000 ...
    Image Name:   Barebox
    Image Type:   ARM U-Boot Kernel Image (uncompressed)
    Data Size:    176100 Bytes = 172 kB
    Load Address: 00800000
    Entry Point:  00800000
    Verifying Checksum ... OK
OK

Starting kernel ...

Any suggestions for a better (minimal?) defconfig to start from, or 
other things to try?

Many thanks!

Rogan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

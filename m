Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f41.google.com ([74.125.82.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S0xWg-0006p5-5U
 for barebox@lists.infradead.org; Fri, 24 Feb 2012 15:57:43 +0000
Received: by wgbdt11 with SMTP id dt11so780963wgb.0
 for <barebox@lists.infradead.org>; Fri, 24 Feb 2012 07:57:39 -0800 (PST)
From: Mark Olleson <mark.olleson@yamaha.co.uk>
Date: Fri, 24 Feb 2012 15:57:36 +0000
References: <5E5BF80D-E268-4688-8E16-5BF26FBD7D4D@yamaha.co.uk>
Message-Id: <FCA231F0-6BD8-4368-8303-C664165FAC42@yamaha.co.uk>
Mime-Version: 1.0 (Apple Message framework v1251.1)
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: PATCH: Fix MMC boot in OMAP4 xload configurations
To: barebox@lists.infradead.org

Sascha,
On 24 Feb 2012, at 07:23, Sascha Hauer wrote:

> Hi Mark,
> =

> On Thu, Feb 23, 2012 at 04:53:28PM +0000, Mark Olleson wrote:
>> omap4_bootsrc() always returns OMAP_BOOTSRC_UNKNOWN when an OMAP4
>> xload image is built with pcm049_xload_defconfig.  This is likely to
>> be the case for all OMAP4 xload configurations.
>> =

>> This means that when the CPU is configured to boot from MMC1 with
>> boot[5:0],  xload will load the second stage boot loader from NAND
>> flash (if present) rather than MMC1 as intended. =

>> =

>> omap4_bootsrc() reads data left behind towards the top of the SRAM by
>> the ROM-based boot-loader.  This is the same SRAM into which the xload
>> image is loaded.   The xload image is of a sufficient size that it
>> overwrites these locations, and OMAP4_TRACING_VECTOR3 always contains
>> 0.
>> =

>> These locations are in fact trampled by data in the BSS section of the
>> image.   The single largest item in there is FILE files[MAX_FILES].
>> This patch reduces the size of files[] considerably.  The image now
>> JUST fits.
> =

> Sorry, this is not even a short term solution, it will probably break
> very soon again.

I totally agree - this fixed me in the very short term, but we're sailing s=
o close =

to the wind here that changes in the any (few) modules that are used in the=
se =

configurations will break it again. =


My patch was really a heads-up that we have an issue. =


> =

>> =

>> Long term, a better solution would be to not rely on
>> OMAP4_TRACING_VECTOR3, and instead use the structure passed into the
>> xload by the ROM-based boot loader - which also indicates the boot
>> device.     This wold allow us another 4kB of code before we overflow
>> the SRAM completely.
> =

> That sounds interesting. I wasn't aware that the ROM passes a structure
> into the boot loader.

Cue quick check that this is actually in the public TRM!  it is - at =A727.=
4.8.4 - Image Execution.

The ROM boot-loader passes a pointer to a structure containing the data in =
a register at entry - what is not so obvious is where the structure is loca=
ted.  I think it's likely that it's on the ROM-loader's stack - which is al=
so in SRAM, and also getting overwritten. Clearly the ROM loader doesn't ha=
ve much in the way of functional decomposition if it still successfully boo=
ts after having its stack obliterated.  =


The TRM is quite explicit that the xload image shouldn't be any larger than=
 48KB in order to avoid the stack, tracing vector - and a set of exception =
vectors also located in-between   - as it stands, we're coming in at about =
52.5kB once the bss sections of image are accounted for.


> Another thing is that I still have the Thumb2 patches pending which are
> currently blocked by Jean-Christophe.

That will help a lot.   Otherwise we're going to need to start the messy ta=
sk of economising on space throughout the code-base. =


Another solution that might work would be to configure SYSBOOT[5:0] as GPIO=
 and determine the boot method that way.  Not ideal as this will tell us th=
e boot order and not the device that was actually used, but would mean that=
 we could use the entire 56kB of SRAM and not have to worry about the traci=
ng vectors. =



Mark =



Mark Olleson - Senior R&D Engineer
Technology Research & Development Group
Yamaha R&D Centre London

mark.olleson@yamaha.co.uk

Direct Line: +44 20 8987 0870 =

Switchboard: +44 20 8987 9595






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

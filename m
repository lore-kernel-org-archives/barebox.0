Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RmpEz-0006hK-Eu
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 16:17:03 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Mon, 16 Jan 2012 16:16:57 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A89317FB2B7@DBDE01.ent.ti.com>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAA5B@DBDE01.ent.ti.com>
 <20120116115228.GR5446@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAD15@DBDE01.ent.ti.com>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAE23@DBDE01.ent.ti.com>,
 <20120116154626.GS5446@pengutronix.de>
In-Reply-To: <20120116154626.GS5446@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: [PATCH] omap3 towards thumb2 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

(responding via webmail. Won't be able to quote properly)
________________________________________
From: Sascha Hauer [s.hauer@pengutronix.de]
Sent: Monday, January 16, 2012 9:16 PM
To: Premi, Sanjeev
Cc: barebox@lists.infradead.org
Subject: Re: [PATCH] omap3 towards thumb2 support

On Mon, Jan 16, 2012 at 12:42:36PM +0000, Premi, Sanjeev wrote:
>
> > -----Original Message-----
> > From: barebox-bounces@lists.infradead.org
> > [mailto:barebox-bounces@lists.infradead.org] On Behalf Of
> > Premi, Sanjeev
> > Sent: Monday, January 16, 2012 5:32 PM
> > To: Sascha Hauer
> > Cc: barebox@lists.infradead.org
> > Subject: RE: [PATCH] omap3 towards thumb2 support
> >
>
> [snip]
>
> > > >
> > > > I was able to pull in your branch and encountered a minor
> > > > issue - fixed by the patch at end of this mail.
> > > >
> > > > How can I enable thumb2? Didn't find aything obvious in
> > > > omap3530_beagle_xload_defconfig.
> > >
> > > Did you merge the work/thumb2 branch into your branch? Then
> > you should
> > > find THUMB2_BAREBOX in menuconfig.
> >
> > Found it. I was searching in a "cached" version of the file already
> > in my editor. Will try immediately.
> >
>
> I discarded the patches that I had manually merged last week and
> pulled work/thumb2 instead.
>
> The size of MLO dropped from 47604 to 35052 bytes. However, it didn't
> boot successfully on the board. The MLO generated after removing
> CONFIG_THUMB2_BAREBOX came up fine.

Please check that CONFIG_STACK_BASE really is 0x4020F000. It may be set
differently if you started from an older config.

[sp} Already did this.

Also, the resulting binary should also be startable as a second stage
loader in which case you might get some stack trace if you have enabled
this in the first stage.

[sp] Okay, this could be the issue. I was always building as first stage
     bootloader only - as i was looking for the banner to appear.

     Will try using emulator tomorrow to debug further.

>
> BTW, I while merging this patch, I saw a warning that could be fixed
> before merging the patch into master.
>   8917ac1 : Applying: ARM: move exception vectors away from start of binary
>
> /home/premi/barebox/.git/rebase-apply/patch:236: new blank line at EOF.
> +
> warning: 1 line adds whitespace errors.

Ok, will fix.

I attached my binary MLO file. Could you check if it works for you? I
just checked this binary and it comes up with:

[sp] I will try tomorrow morning.

40V

barebox 2012.01.0-00204-g319f3a9 (Jan 16 2012 - 16:41:49)

Board: Texas Instrument's Beagle
NAND device: Manufacturer ID: 0x2c, Chip ID: 0xba ( )
Malloc space: 0x87bfff10 -> 0x87ffff0f (size  4 MB)
Stack space : 0x4020f000 -> 0x4020fc00 (size  3 kB)
booting from MMC1
could not read barebox.bin from sd card
booting failed

(I have no barebox.bin on my SD card, so 'booting failed' is ok)

Sascha

--
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

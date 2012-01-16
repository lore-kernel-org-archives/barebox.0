Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rmlta-00048l-KO
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 12:42:43 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Mon, 16 Jan 2012 12:42:36 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A89317FAE23@DBDE01.ent.ti.com>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAA5B@DBDE01.ent.ti.com>
 <20120116115228.GR5446@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAD15@DBDE01.ent.ti.com>
In-Reply-To: <E28AAFD00EFAA646AE3DF9B89CD24A89317FAD15@DBDE01.ent.ti.com>
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


> -----Original Message-----
> From: barebox-bounces@lists.infradead.org 
> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of 
> Premi, Sanjeev
> Sent: Monday, January 16, 2012 5:32 PM
> To: Sascha Hauer
> Cc: barebox@lists.infradead.org
> Subject: RE: [PATCH] omap3 towards thumb2 support
> 

[snip]

> > > 
> > > I was able to pull in your branch and encountered a minor
> > > issue - fixed by the patch at end of this mail.
> > > 
> > > How can I enable thumb2? Didn't find aything obvious in
> > > omap3530_beagle_xload_defconfig.
> > 
> > Did you merge the work/thumb2 branch into your branch? Then 
> you should
> > find THUMB2_BAREBOX in menuconfig.
> 
> Found it. I was searching in a "cached" version of the file already
> in my editor. Will try immediately.
> 

I discarded the patches that I had manually merged last week and
pulled work/thumb2 instead.

The size of MLO dropped from 47604 to 35052 bytes. However, it didn't
boot successfully on the board. The MLO generated after removing
CONFIG_THUMB2_BAREBOX came up fine.

BTW, I while merging this patch, I saw a warning that could be fixed
before merging the patch into master.
  8917ac1 : Applying: ARM: move exception vectors away from start of binary

/home/premi/barebox/.git/rebase-apply/patch:236: new blank line at EOF.
+
warning: 1 line adds whitespace errors.


Here is the snapshot of my working branch:

d7ec121 : ARM: Allow to compile in thumb-2 mode
b695957 : ARM: get runtime offset of board_init_lowlevel_return by using separate section
6e5cfed : ARM: move exception vectors away from start of binary
60293bd : ARM OMAP3: Fix compile errors
d0b9b24 : Merge branch 'work/omap3' of git://git.pengutronix.de/git/barebox into thumb-01
f4a3223 : ARM omap3: make omap3_core.S thumb safe
1a80a4d : mtd omap nand: fix driver without CONFIG_PARAMETER
b4b125f : ARM cache-armv7: Add additional ISB
06c7256 : ARM omap3: reimplement setup_auxcr in pure asm

~sanjeev

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

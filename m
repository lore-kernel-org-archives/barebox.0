Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwr4e-0007kb-35
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 07:11:17 +0000
Date: Tue, 8 Mar 2011 09:10:58 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110308071058.GB22012@jasper.tkos.co.il>
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F8A2@SBS2008.wellsense.local>
	<201103081635.29082.marc@cpdesign.com.au>
	<39A4B204C321D34DA3490E3B119D5A6C68C006F8A4@SBS2008.wellsense.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39A4B204C321D34DA3490E3B119D5A6C68C006F8A4@SBS2008.wellsense.local>
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
Subject: Re: iMX35 3stack framebuffer problem
To: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Cc: Itai Raab <itai.raab@wellsense-tech.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Boaz,

On Tue, Mar 08, 2011 at 09:03:55AM +0200, Boaz Ben-David wrote:
> Yes, I am using the freescale kernel unfotunately.
> Do you know of some way to fix this (a patch for the freescale kernel
> maybe)?

A simple way to check whether this is the problems is to just disable the 
framebuffer in the kernel build, and make sure that you can boot again.

Then, the fix for this problem is to move the request_irq() call to the end of 
the .probe routine.

You should not expect any kind of support from Freescale for their released 
Linux kernels.

baruch

> On Tue, 2011-03-08 at 16:35 +1100, Marc Reilly wrote:
> > On Tuesday, March 08, 2011 03:35:10 am Boaz Ben-David wrote:
> > > Hi,
> > > 
> > > When using the iMX35 freescale 3stack we are having some issues with the FB
> > > driver. On device boot we enable the fb using "fb0.enable=1" and then try
> > > to boot the kernel from nand. The problem is that after the kernel is
> > > loaded to RAM and extracted the board hangs. If we do not init the fb0
> > > device but simply boot the kernel it works fine. Trying "fb0.enable=0"
> > > before booting also did not help.
> > > Did anyone encounter this issue yet or are we doing something wrong?
> > 
> > Are you using the freescale kernel? It doesn't handle loading the IPU driver 
> > if the IPU has been enabled previously.. (an IRQ fires before all the driver 
> > structures have been initialized and crashes)
> > 
> > Cheers,
> > Marc

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

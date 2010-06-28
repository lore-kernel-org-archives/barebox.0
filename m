Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OT9lR-000644-10
	for barebox@lists.infradead.org; Mon, 28 Jun 2010 08:32:25 +0000
Date: Mon, 28 Jun 2010 11:32:15 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100628083215.GF2681@jasper.tkos.co.il>
References: <AANLkTimjBoeR8qBpdmbcuRgxr6o7xNRKaYQ6OdyDi_Fu@mail.gmail.com>
	<20100628080442.GH12115@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100628080442.GH12115@pengutronix.de>
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
Subject: Re: testing barebox on calao sbc35-a9260 board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Mon, Jun 28, 2010 at 10:04:42AM +0200, Sascha Hauer wrote:
> On Fri, Jun 25, 2010 at 11:31:49AM +0200, Belisko Marek wrote:
> > I have a calao board sbc35-a9260 with u-boot pre-installed on it.
> > I would like to try barebox running on that board (also make some development).
> > I build at91sam9260ek_defconfig to try it out. I became to situation
> > that I don't know how to load image to board :)
> > 
> > I try via tftp but u-boot automatically try to boot it and I got some
> > error about magic number.
> > I think about possibility just download binary to some RAM address and
> > then use go command in u-boot
> > to test if barebox binary will work.
> > 
> > There exist some how-to or example how to do this?
> 
> It's perfectly fine to start barebox from U-Boot with the 'go' command.
> Try 'setenv autostart no' in U-Boot to stop U-Boot from autostarting
> images.

Is there a way to do the same on Barebox? Currently 'go barebox.bin' in ramfs 
returns -EINVAL from memmap.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goVHQ-0007PX-MC
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 15:26:30 +0000
Date: Tue, 29 Jan 2019 16:26:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190129152626.vipm6yi4ovel54oa@pengutronix.de>
References: <c1d66b9b8990989493a16d8c3a1d663e@moritz.augsburger.name>
 <20190128080225.asjbq2sugnaof6tu@pengutronix.de>
 <a391df2b46e827a4248821be10482999@moritz.augsburger.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a391df2b46e827a4248821be10482999@moritz.augsburger.name>
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
Subject: Re: [PATCH] rpi: completed new revision scheme
To: Moritz Augsburger <ml+barebox@moritz.augsburger.name>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 28, 2019 at 10:57:00AM +0100, Moritz Augsburger wrote:
> Hi Sascha,
> 
> Am 2019-01-28 09:02, schrieb Sascha Hauer:
> > >  static int rpi_board_rev = 0;
> > > @@ -211,10 +225,12 @@ static void rpi_get_board_rev(void)
> > >          *
> > > http://www.raspberrypi.org/forums/viewtopic.php?f=31&t=20594
> > >          */
> > >         rpi_board_rev = msg->get_board_rev.body.resp.rev;
> > > +       printf("RPI: Board rev %x\n", rpi_board_rev);
> > >         if (rpi_board_rev & 0x800000) {
> > >                 rpi_board_rev = (rpi_board_rev >> 4) & 0xff;
> > >                 rpi_models = rpi_models_new_scheme;
> > >                 rpi_models_size = ARRAY_SIZE(rpi_models_new_scheme);
> > > +               printf("RPI: Board rev %u new\n", rpi_board_rev);
> > 
> > Are these printfs necessary? Looks like debugging aid. If yes, please
> > remove.
> 
> You're right, they were overseen and are a debugging leftover.
> 
> > Otherwise the patch looks fine, but I can't apply it due to whitespace
> > damages. Could you send it using git-send-emain? If that's no option
> > maybe a github pull request could do it.
> 
> This time as attachement, hope it  works better.

Indeed, yes. Applied, thanks

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

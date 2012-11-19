Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaOWi-00033I-EM
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 10:24:30 +0000
Date: Mon, 19 Nov 2012 11:24:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119102426.GP10369@pengutronix.de>
References: <1353086393-16213-1-git-send-email-plagnioj@jcrosoft.com>
 <20121119092046.GH10369@pengutronix.de>
 <20121119095611.GG8327@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121119095611.GG8327@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/1] at91sam9260ek: specify mach entry
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 19, 2012 at 10:56:11AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:20 Mon 19 Nov     , Sascha Hauer wrote:
> > 
> > On Fri, Nov 16, 2012 at 06:19:50PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > as the sam9260ek may not be the first one in the list
> > > 
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  arch/arm/configs/at91sam9260ek_defconfig |    1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
> > > index b746bc8..9c5c7d5 100644
> > > --- a/arch/arm/configs/at91sam9260ek_defconfig
> > > +++ b/arch/arm/configs/at91sam9260ek_defconfig
> > > @@ -1,4 +1,5 @@
> > >  CONFIG_ARCH_AT91SAM9260=y
> > > +CONFIG_MACH_AT91SAM9260EK=y
> > 
> > Won't this be removed again when we regenerate this file with make
> > safedefconfig? It seems a bit fragile to keep this change manually. I
> > have no good idea how to do this better though.
> > 
> the isssue that I'm going to add a new board that will be named animeo-ip
> 
> so the at91sam9260ek will be broken as it will be configured as the animeo-ip

Can you resend this patch then along with the animeo-ip patches? At that
point we can be sure that the next at91sam9260ek config generated with
make savedefconfig will be correct.

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

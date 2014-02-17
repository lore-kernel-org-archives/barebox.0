Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFNjl-0004si-HN
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 12:55:54 +0000
Message-ID: <1392641710.4634.2.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 17 Feb 2014 13:55:10 +0100
In-Reply-To: <20140217065359.GH17250@pengutronix.de>
References: <1392330771-21671-1-git-send-email-dev@lynxeye.de>
 <1392330771-21671-3-git-send-email-dev@lynxeye.de>
 <20140217065359.GH17250@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 2/7] tegra: add break to switch statements
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Montag, den 17.02.2014, 07:53 +0100 schrieb Sascha Hauer:
> On Thu, Feb 13, 2014 at 11:32:46PM +0100, Lucas Stach wrote:
> > Avoids a possible miscompilation.
> > 
> > Signed-off-by: Lucas Stach <dev@lynxeye.de>
> > ---
> >  arch/arm/mach-tegra/include/mach/lowlevel.h | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
> > index 472348a..9081b1c 100644
> > --- a/arch/arm/mach-tegra/include/mach/lowlevel.h
> > +++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
> > @@ -73,8 +73,10 @@ enum tegra_chiptype tegra_get_chiptype(void)
> >  	switch ((hidrev & HIDREV_CHIPID_MASK) >> HIDREV_CHIPID_SHIFT) {
> >  	case 0x20:
> >  		return TEGRA20;
> > +		break;
> >  	default:
> >  		return TEGRA_UNK_REV;
> > +		break;
> 
> What kind of miscompilation other than a compiler bug are you thinking
> of? Have you seen that this patch changes anything?
> 

I have to admit that I haven't investigated the issue closely, but this
actually makes the difference between working and nonworking when adding
in the Tegra3 case later on.

-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

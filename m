Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGSXn-0004dL-OQ
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 10:39:12 +0000
Date: Tue, 25 Sep 2012 12:39:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120925103909.GD1322@pengutronix.de>
References: <20120922175346.GX26553@game.jcrosoft.org>
 <1348338408-26737-1-git-send-email-plagnioj@jcrosoft.com>
 <1348338408-26737-5-git-send-email-plagnioj@jcrosoft.com>
 <20120925080922.GG24458@pengutronix.de>
 <20120925101905.GI26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120925101905.GI26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 5/5] at91sam9m10g45ek: add lcdc support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 25, 2012 at 12:19:05PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:09 Tue 25 Sep     , Sascha Hauer wrote:
> > > diff --git a/arch/arm/boards/at91sam9m10g45ek/env/splash.png b/arch/arm/boards/at91sam9m10g45ek/env/splash.png
> > 
> > I understand your desire to show a logo on the screen, but we really
> > need a storage outside the main repository for this. I'm perfectly fine
> > with showing full HD 3d pictures on the screen if your hardware can do
> > so, but we should not put this into the repository.
> > 
> > We should solve this right now, then we are free to add huge logos, add
> > different logo for each board, update logos for christmas, summer,
> > Helloween...
> > 
> > How about adding some wget mechanism which:
> > 
> > - Only downloads the logos if allowed in the config
> > - Does not download logos if a logo directory already exists
> > 
> > I'm sure we could create some storage here.
> I nack the wget not the idea
> 
> how about a git submodule
> 
> as I must have the offline build support

That was the "Does not download logos if a logo directory already
exists" part above.

Anyway, a submoule is fine with me. I don't care, as long as it's
not in the main repository.

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

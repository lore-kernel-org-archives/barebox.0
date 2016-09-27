Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bopX3-0001f3-TH
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 10:22:39 +0000
Message-ID: <1474971736.2299.0.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 27 Sep 2016 12:22:16 +0200
In-Reply-To: <20160927132431.404514747b5951608fe05389@gmail.com>
References: <20160927095919.3461-1-l.stach@pengutronix.de>
 <20160927132431.404514747b5951608fe05389@gmail.com>
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
Subject: Re: [PATCH 1/2] mfd: syscon: fix exported symbol name
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Am Dienstag, den 27.09.2016, 13:24 +0300 schrieb Antony Pavlov:
> On Tue, 27 Sep 2016 11:59:18 +0200
> Lucas Stach <l.stach@pengutronix.de> wrote:
> 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/mfd/syscon.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
> > index 295e210f6e2d..9f8baee1aadf 100644
> > --- a/drivers/mfd/syscon.c
> > +++ b/drivers/mfd/syscon.c
> > @@ -76,8 +76,7 @@ static void __iomem *syscon_node_to_base(struct device_node *np)
>                     ^^^^^^
> 
> Hmm. In the current next and master branches syscon_node_to_base() is a static function.
> Can we just drop this EXPORT_SYMBOL_GPL()?
> 
You are right. I'll just drop the EXPORT_SYMBOL.

Thanks,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

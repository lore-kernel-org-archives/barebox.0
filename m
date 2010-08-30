Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OpywT-0006sv-W5
	for barebox@lists.infradead.org; Mon, 30 Aug 2010 07:38:13 +0000
Date: Mon, 30 Aug 2010 09:37:42 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100830073742.GC23081@game.jcrosoft.org>
References: <1283141106-21671-1-git-send-email-plagnioj@jcrosoft.com>
	<1283141106-21671-2-git-send-email-plagnioj@jcrosoft.com>
	<4C7B5F91.6010506@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C7B5F91.6010506@pengutronix.de>
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
Subject: Re: [PATCH 2/2] stm8815: fix the uart device clock match
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:36 Mon 30 Aug     , Marc Kleine-Budde wrote:
> Jean-Christophe PLAGNIOL-VILLARD wrote:
> > that use the device name + id to found it's clock
> > to use the right match as we fix the dev_name macro
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/mach-nomadik/8815.c |    6 ++++--
> >  1 files changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
> > index 8598f14..f1d5e8c 100644
> > --- a/arch/arm/mach-nomadik/8815.c
> > +++ b/arch/arm/mach-nomadik/8815.c
> > @@ -50,12 +50,14 @@ void st8815_add_device_sdram(u32 size)
> >  }
> >  
> >  static struct device_d uart0_serial_device = {
> > +	id = 0,
>         ^
> 
> you missed a dot, here.
bad paste

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

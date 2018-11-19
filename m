Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOeed-0000Fk-0L
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:11:36 +0000
Date: Mon, 19 Nov 2018 09:11:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181119081122.bmtw6ol4dl4yjmur@pengutronix.de>
References: <20181115141552.26386-1-s.hauer@pengutronix.de>
 <cd74626d-72ea-ec05-644a-d3f24f1d4541@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd74626d-72ea-ec05-644a-d3f24f1d4541@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX: When SRSR shows wdog then lookup reset source
 in wdog
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Barebox List <barebox@lists.infradead.org>

On Fri, Nov 16, 2018 at 03:22:59PM +0100, Marc Kleine-Budde wrote:
> On 11/15/18 3:15 PM, Sascha Hauer wrote:
> > On i.MX6 when the watchdog has resetted the system then the SRSR
> > register correctly shows that the watchdog has resetted the system.
> > This is not the desired result though, a "reset" in barebox or "reboot"
> > in Linux should result in "RST" as reset source. So instead of making
> > the SRSR register value overwrite the reset source read from the
> > watchdog registers, interpret the SRSR value corresponding to watchdog
> > reset as "lookup details in the watchdog registers".
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/mach-imx/imx.c  |  6 +++---
> >  drivers/watchdog/imxwd.c | 10 +++++++---
> >  2 files changed, 10 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
> > index ad227663dd..f87dd76c75 100644
> > --- a/arch/arm/mach-imx/imx.c
> > +++ b/arch/arm/mach-imx/imx.c
> > @@ -204,9 +204,9 @@ void imx_set_reset_reason(void __iomem *srsr,
> >  	 * sure we'll always override info from watchdog driver.
> >  	 */
> 
> With this change, the above comment doesn't describe the reality anymore.

Right, thanks. I removed it.

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

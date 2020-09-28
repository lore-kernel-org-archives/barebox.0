Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMoYb-0004E5-Aj
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 08:30:50 +0000
Date: Mon, 28 Sep 2020 10:30:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200928083047.GF11648@pengutronix.de>
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
 <20200918084532.2794-4-s.hauer@pengutronix.de>
 <20200922161722.GA30919@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922161722.GA30919@pengutronix.de>
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
Subject: Re: [PATCH 3/9] Kallsyms: Also resolve global variables
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Sep 22, 2020 at 06:17:22PM +0200, Michael Grzeschik wrote:
> Hi!
> 
> On Fri, Sep 18, 2020 at 10:45:26AM +0200, Sascha Hauer wrote:
> > Increase the area used for resolving symbols so that global variables
> > can also be resolved to names.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> > common/kallsyms.c | 4 ++--
> > 1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/common/kallsyms.c b/common/kallsyms.c
> > index e15dec5dfc..2c16ab2884 100644
> > --- a/common/kallsyms.c
> > +++ b/common/kallsyms.c
> > @@ -15,8 +15,8 @@ extern const unsigned long kallsyms_markers[] __attribute__((weak));
> > 
> > static inline int is_kernel_text(unsigned long addr)
> > {
> > -	if ((addr >= (unsigned long)_stext && addr <= (unsigned long)_etext))
> > -		return 1;
> > +        if (addr >= (unsigned long)_stext && addr <= (unsigned long)_end)
> > +                return 1;
> 
> tabs vs spaces.

Added a separate patch fixing it.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

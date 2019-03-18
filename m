Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5phd-0007G9-Tj
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 10:41:10 +0000
Date: Mon, 18 Mar 2019 11:41:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190318104107.w3brsm7vfxvjswlt@pengutronix.de>
References: <20190318091454.11386-1-s.hauer@pengutronix.de>
 <20190318091454.11386-6-s.hauer@pengutronix.de>
 <20190318103148.g74dwta7od4226ee@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190318103148.g74dwta7od4226ee@pengutronix.de>
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
Subject: Re: [PATCH 05/11] ARM: boards: Harmonize barebox_arm_reset_vector()
 prototype
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Mar 18, 2019 at 11:31:48AM +0100, Roland Hieber wrote:
> On Mon, Mar 18, 2019 at 10:14:48AM +0100, Sascha Hauer wrote:
> > barebox_arm_reset_vector() is a global function but we never provided a
> > prototype anywhere. The prototypes differ for the different boards, so
> > to provide a common prototype we must harmonize them.
> > 
> > void barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
> > 
> > Should be suitable for all boards.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> 
> [...]
> 
> > diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
> > index f0d009dfd2..471ef0cfd5 100644
> > --- a/arch/arm/mach-imx/cpu_init.c
> > +++ b/arch/arm/mach-imx/cpu_init.c
> > @@ -12,6 +12,7 @@
> >   * GNU General Public License for more details.
> >   */
> >  
> > +#include <common.h>
> 
> Was this intentional? The commit message doesn't say anything about it,
> and it is the only such change in the commit.

Yes, that is intentional. With the change of the prototype we need the
typedef for uint32_t which is undefined without previous inclusion of
linux/types.h (or common.h)

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

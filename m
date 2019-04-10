Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hE6dH-0004he-W5
 for barebox@lists.infradead.org; Wed, 10 Apr 2019 06:22:53 +0000
Date: Wed, 10 Apr 2019 08:22:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190410062250.5ipgpxho7a7lnkj2@pengutronix.de>
References: <20190408144932.29201-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190408144932.29201-1-abbotti@mev.co.uk>
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
Subject: Re: [PATCH] clk: socfpga: fix compiler warnings for Cyclone5
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Mon, Apr 08, 2019 at 03:49:32PM +0100, Ian Abbott wrote:
> When building for Cyclone5 SoCFPGA, the socfpga_a10_pll_init(),
> socfpga_a10_perith_init() and socfpga_a10_gate_init() functions are
> defined as dummy functions returning ERR_PTR(-ENOSYS).  They are defined
> with external linkage.  With '-Wmissing-prototypes' GCC warns about
> externally linked function definitions with no preceding prototype.
> Define them as 'static inline' to avoid the compiler warnings.
> 
> (Note: Arria10 uses non-dummy versions of these functions declared
> 'extern' but defined elsewhere.)
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  drivers/clk/socfpga/clk.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

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

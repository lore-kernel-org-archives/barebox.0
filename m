Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fx6LQ-0001RE-Pd
 for barebox@lists.infradead.org; Tue, 04 Sep 2018 08:05:54 +0000
Date: Tue, 4 Sep 2018 10:05:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180904080540.jhrm2ifjyreshced@pengutronix.de>
References: <20180903112408.2086-1-m.niestroj@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180903112408.2086-1-m.niestroj@grinn-global.com>
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
Subject: Re: [PATCH 00/18] crypto: caam: Pull CAAM support improvements from
 Linux
To: Marcin Niestroj <m.niestroj@grinn-global.com>
Cc: barebox@lists.infradead.org

Hi Marcin,

On Mon, Sep 03, 2018 at 01:23:50PM +0200, Marcin Niestroj wrote:
> Hi,
> 
> This is a set of patches, which improve CAAM support. They sync CAAM
> support with Linux v4.19-rc1. Applying them allows to use CAAM on
> ARM IMX devices. Some of these patches had to be adapted to match
> Barebox.

Not sure what you mean with "Applying them allows to use CAAM on
ARM IMX devices". i.MX is the only architecture we ever tested the CAAM
on, so it's supposed to work there without your patches.

Anyway, the patches look good and syncing to Linux is good, so applied.

Sascha


> 
> Marcin Niestroj (18):
>   crypto: caam - fix RNG init descriptor ret. code checking
>   crypto: caam - fix warning in APPEND_MATH_IMM_u64
>   crypto: caam - fix writing to JQCR_MS when using service interface
>   crypto: caam - handle core endianness != caam endianness
>   crypto: caam - add support for iMX6UL
>   crypto: caam - fix sparse warnings
>   crypto: caam - trivial code clean-up
>   crypto: caam - remove unreachable code in report_ccb_status()
>   crypto: caam - constify pointer to descriptor buffer
>   crypto: caam - avoid double inclusion in desc_constr.h
>   crypto: caam - clean-up in caam_init_rng()
>   crypto: caam - fix incorrect define
>   crypto: caam - constify key data
>   crypto: caam - fix endless loop when DECO acquire fails
>   crypto: caam - do not use mem and emi_slow clock for imx7x
>   crypto: caam - sync desc.h with Linux
>   crypto: caam - staticize caam_get_era()
>   crypto: caam - allow retrieving 'era' from register
> 
>  drivers/crypto/caam/caamrng.c     |   9 +-
>  drivers/crypto/caam/ctrl.c        | 240 +++++++++++++++++++-----------
>  drivers/crypto/caam/ctrl.h        |   1 -
>  drivers/crypto/caam/desc.h        |  35 ++---
>  drivers/crypto/caam/desc_constr.h | 118 +++++++++------
>  drivers/crypto/caam/error.c       |   5 +-
>  drivers/crypto/caam/jr.c          |  64 +++-----
>  drivers/crypto/caam/regs.h        | 123 ++++++++++++++-
>  8 files changed, 374 insertions(+), 221 deletions(-)
> 
> -- 
> 2.18.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

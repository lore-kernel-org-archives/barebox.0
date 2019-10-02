Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFYIY-0008Qk-Km
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 06:39:45 +0000
Date: Wed, 2 Oct 2019 08:39:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191002063934.yfuunz67zff43d6n@pengutronix.de>
References: <20191001003527.1257-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001003527.1257-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2] mci: imx-esdhc-pbl: Fix watermark level value for i.MX
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>, Ruslan Sushko <ruslan.sushko@zii.aero>

On Mon, Sep 30, 2019 at 05:35:27PM -0700, Andrey Smirnov wrote:
> Layerscape and i.MX have different semantics of Watermark Level
> Register. Whereas the former uses "0" to signify maximum allowed
> value, the latter does not.
> 
> According to the RM (i.MX8MQ, i.MX6):
> 
> "...The read burst length must be less than or equal to the read
> watermark level.."
> 
> Setting Watermark Level Register to zero violates that limitation. It
> appears that, on i.MX8MQ, not following that rule causes certain
> configs + toolchains to result in non-bootable image. Specifically,
> polling for CICHB, CIDHB and DLA to clear in esdhc_send_cmd() times
> out. There doesn't appear to be any clear relationship as to what kind
> of image will have the problem, but the following combinations failed
> to boot on ZII i.MX8MQ Zest board:
> 
>   - gcc version 9.2.1 20190827 (Red Hat Cross 9.2.1-1) (GCC) +
>     imx_v8_defconfig + CONFIG_DEBUG_LL and CONFIG_PBL_CONSOLE
> 
>   - gcc version 5.5.0 (Timesys 20190405) (custom toolchain) +
>     imx_v8_defconfig
> 
> Setting WML's *_BRST_LE to 16 and *_WML to 128 on i.MX resolves the
> issue (same setting that's selected by writing 0 on Layerscape).
> 
> Fixes: 48562aeaa8 ("esdhc-xload: check for PRSSTAT_BREN only after each block")
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Ruslan Sushko <ruslan.sushko@zii.aero>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNAje-0007I1-LY
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 07:07:12 +0000
Date: Wed, 23 Oct 2019 09:07:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191023070709.dqsg5msny5tyi7e4@pengutronix.de>
References: <20191021122047.12204-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021122047.12204-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] hwrng: dev-random: always use /dev/urandom
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 21, 2019 at 02:20:46PM +0200, Ahmad Fatoum wrote:
> /dev/random can block long after boot time. It seems there's a consensus
> that /dev/urandom is safe to use except for very early boot, which isn't
> when barebox sandbox is usually run. To make the HWRNG more useful,
> always use /dev/urandom.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/board/dev-random.c                | 7 +------
>  arch/sandbox/mach-sandbox/include/mach/linux.h | 1 -
>  drivers/hw_random/Kconfig                      | 6 +++---
>  3 files changed, 4 insertions(+), 10 deletions(-)

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

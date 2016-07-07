Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bL3lf-0002DS-OK
 for barebox@lists.infradead.org; Thu, 07 Jul 2016 07:30:40 +0000
Date: Thu, 7 Jul 2016 09:30:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160707073018.GD20657@pengutronix.de>
References: <1467837506-32177-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467837506-32177-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/2] MIPS: csrc-r4k: get counter rate from devicetree
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 06, 2016 at 11:38:24PM +0300, Antony Pavlov wrote:
> At the moment csrc-r4k rate is fixed to 100 MHz.
> This is acceptable only for qemu-malta.
> 
> This patch introduces a devicetree-based solution
> for detecting csrc-r4k counter rate.
> 
> The most notable users of this patch are AR9331-based boards.
> 
> 
> Antony Pavlov (2):
>   of: base: import of_get_cpu_node() from linux-v4.7-rc2
>   MIPS: csrc-r4k: get cp0 counter rate from devicetree

Applied, thanks

Sascha

> 
>  arch/mips/lib/csrc-r4k.c | 24 ++++++++++++--
>  drivers/of/base.c        | 86 ++++++++++++++++++++++++++++++++++++++++++++++++
>  include/of.h             | 10 ++++++
>  3 files changed, 118 insertions(+), 2 deletions(-)
> 
> -- 
> 2.8.1
> 
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgQLw-0002Fy-V6
 for barebox@lists.infradead.org; Thu, 27 Jun 2019 09:06:02 +0000
Date: Thu, 27 Jun 2019 11:05:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190627090554.qhdnd72s63jevpxj@pengutronix.de>
References: <20190624100043.27636-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624100043.27636-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v4 0/2] add JTAG debugging support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 24, 2019 at 12:00:41PM +0200, Oleksij Rempel wrote:
> changes v4:
> - rebase against latest git next barebox
> - make sure barebox header is not broken by PBL patch
> 
> Oleksij Rempel (1):
>   add CONFIG_PBL_BREAK option
> 
> Rouven Czerwinski (1):
>   add gdb helper scripts to load barebox symbols

Applied, thanks

Sascha

> 
>  Documentation/user/debugging.rst        | 21 +++++++++
>  Documentation/user/user-manual.rst      |  1 +
>  arch/arm/cpu/common.c                   | 13 ++++++
>  arch/arm/cpu/start.c                    |  2 +
>  arch/arm/include/asm/barebox-arm-head.h |  7 +++
>  arch/arm/include/asm/barebox-arm.h      |  1 +
>  common/Kconfig                          |  8 ++++
>  scripts/gdb/helper.py                   | 60 +++++++++++++++++++++++++
>  8 files changed, 113 insertions(+)
>  create mode 100644 Documentation/user/debugging.rst
>  create mode 100644 scripts/gdb/helper.py
> 
> -- 
> 2.20.1
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

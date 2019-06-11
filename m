Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hac1N-0000B3-Lt
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 08:20:47 +0000
Date: Tue, 11 Jun 2019 10:20:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190611082042.eeijvdph7chemmzi@pengutronix.de>
References: <20190607070658.10919-1-r.czerwinski@pengutronix.de>
 <20190607070658.10919-2-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607070658.10919-2-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v3 2/3] add CONFIG_PBL_BREAK option
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Fri, Jun 07, 2019 at 09:06:59AM +0200, Rouven Czerwinski wrote:
> From: Oleksij Rempel <linux@rempel-privat.de>
> 
> With this option barebox will be build with breakpoint instruction
> in early pbl stage and on main barebox entry. Otherwise two nop
> instructions are generated which allow binary patching of existing
> barebox binaries.
> In case production barebox images should be debugged, the corresponding
> ELF binaries need to be kept to allow later JTAG debugging.
> This option only works with an attached JTAG debugger, the board will
> hang otherwise.
> 
>  
> +
> +config PBL_BREAK
> +	bool "Execute software break on pbl start"
> +	help
> +	  If this enabled, barebox will be compiled with BKPT instruction
> +	  during early pbl init and entry of the main barebox.
> +	  This option can only be used with a JTAG debugger,
> +	  the board hangs otherwise.

This option is presented to everyone but implemented only on ARM.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCl8j-00024c-BD
 for barebox@lists.infradead.org; Fri, 23 Aug 2013 06:46:38 +0000
Date: Fri, 23 Aug 2013 08:46:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130823064602.GG31036@pengutronix.de>
References: <1377173137-27320-1-git-send-email-shravan.k@phytec.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1377173137-27320-1-git-send-email-shravan.k@phytec.in>
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
Subject: Re: [PATCH 1/2] ARM: omap: barebox update spi nor MLO handler
To: Shravan Kumar <shravan.k@phytec.in>
Cc: barebox@lists.infradead.org

Hi Shravan,

On Thu, Aug 22, 2013 at 02:05:36PM +0200, Shravan Kumar wrote:
> From: shravan <shravan.k@phytec.in>
> 
> 	-Added mlo spi NOR copy handler
> 	-This handler will convert the MLO to big endian
> 	-Tested with pcm051 board
> 
> +/*
> + * Register a omap MLO update handler for SPI NOR
> + */
> +int omap_bbu_spi_nor_mlo_register_handler(const char *name, char *devicefile)
> +{

Does this work with "real" omaps? The comment in the header seems to
imply that it only works for am33xx. If this is the case, the function
should be named am33xx_bbu_spi_nor_mlo_register_handler.

Otherwise this series looks fine.

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

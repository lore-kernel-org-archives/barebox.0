Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk2m2-0005e3-N6
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 08:11:40 +0000
Date: Thu, 17 Jan 2019 09:11:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190117081136.lkoso5bwrrt34ga3@pengutronix.de>
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
 <20190116174559.17416-8-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190116174559.17416-8-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 07/11] ARM: at91: import low level DDRAMC initialization
 code from at91bootstrap
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 16, 2019 at 06:45:55PM +0100, Ahmad Fatoum wrote:
> This commit imports DDRAMC initialization routines for use in PBL from
> https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/driver/ddramc.c
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> +
> +void ddram_initialize(unsigned long base_address,
> +		     unsigned long ram_address,
> +		     struct ddramc_register *ddramc_config)

All the exported functions should have a proper at91_ or whatever
prefix.

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

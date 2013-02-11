Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4qFX-0008RG-Ih
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 10:04:36 +0000
Date: Mon, 11 Feb 2013 11:04:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211100432.GZ1906@pengutronix.de>
References: <1360336929.3798.11.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360336929.3798.11.camel@lws-weitzel>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: v2013.02.0 phyCORE-OMAP4 MLO to big
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 08, 2013 at 04:22:09PM +0100, Jan Weitzel wrote:
> Hi,
> with the release v2013.02.0 the MLO gets so bit, that it eats the boot
> information in the SRAM.
> 
> nm --size-sort 
> 
> ...
> 00000630 D nand_flash_ids
> 000008c0 t mci_probe
> 00000c00 b gpio_desc
> 00001400 b files
> 
> If I remove  GPIOLIB from MLO it work again. Maybe setting MAX_FILES
> down or find a dynamic way for the big arrays is a better solution.
> Any Ideas?

Could you link the MLO to SDRAM instead?

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

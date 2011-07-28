Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLxa-00085b-Dr
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 08:28:52 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QmLxY-0005xy-5Q
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:28:48 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QmLxY-0000Js-4H
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:28:48 +0200
Date: Thu, 28 Jul 2011 10:28:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110728082848.GU20587@pengutronix.de>
References: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
	<1311840062-11446-9-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311840062-11446-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 8/8] add a ns16550 registration helper and use it
To: barebox@lists.infradead.org

On Thu, Jul 28, 2011 at 10:01:02AM +0200, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   10 +-------
>  arch/arm/boards/omap/board-beagle.c               |   12 ++--------
>  arch/arm/boards/omap/board-omap3evm.c             |   22 ++++++++------------
>  arch/arm/boards/omap/board-sdp343x.c              |   12 ++--------
>  arch/arm/boards/panda/board.c                     |   12 ++--------
>  arch/arm/boards/pcm049/board.c                    |   12 ++--------
>  arch/x86/boards/x86_generic/generic_pc.c          |   15 +++----------
>  include/driver.h                                  |    7 ++++++
>  8 files changed, 34 insertions(+), 68 deletions(-)
> 
> diff --git a/include/driver.h b/include/driver.h
> index af34803..ab2a074 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -227,6 +227,13 @@ static inline struct device_d *add_cfi_flash_device(int id, resource_size_t star
>  				  IORESOURCE_MEM | flags, NULL);
>  }
>  

We need

struct NS16550_plat;

here to not break compilation. Fixed.

Sascha

> +static inline struct device_d *add_ns16550_device(int id, resource_size_t start,
> +		resource_size_t size, struct NS16550_plat *pdata)
> +{
> +	return add_generic_device("serial_ns16550", id, NULL, start, size,
> +				  IORESOURCE_MEM, pdata);
> +}
> +
>  /* linear list over all available devices
>   */
>  extern struct list_head device_list;
> -- 
> 1.7.5.4
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

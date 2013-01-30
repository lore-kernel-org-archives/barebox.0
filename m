Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U0fu8-0001iI-IQ
 for barebox@lists.infradead.org; Wed, 30 Jan 2013 22:13:17 +0000
Date: Wed, 30 Jan 2013 23:13:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130130221314.GA11480@pengutronix.de>
References: <1358779081-31836-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358779081-31836-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [RFC PATCH 1/1] omap: xload: switch to generic bootstrap
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 21, 2013 at 03:38:01PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> Hi,
> 
> 	just compiled not tested

Just tested on panda, this does not work.

> +static __noreturn int omap_xload(void)
> +{
> +	int (*func)(void) = NULL;
> +
> +	switch (omap_bootsrc())
> +	{

{ should be in the previous line.

> +	case OMAP_BOOTSRC_MMC1:
> +		printf("booting from MMC1\n");
> +		func = bootstrap_read_disk("disk0.0", NULL);

For some reason the autodetection does not work, with "fat" it works. I
haven't investigated why. Anything else but fat does not make sense
anyway since the OMAP ROM code expects a FAT for the MLO here and barebox
is on the same partition.

> +		break;
> +	case OMAP_BOOTSRC_USB1:
> +		if (IS_ENABLED(CONFIG_FS_OMAP4_USBBOOT)) {
> +			printf("booting from USB1\n");
> +			func = bootstrap_read_disk("omap4_usbboot", "omap4_usbbootfs");

'func' is set but not used now.

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

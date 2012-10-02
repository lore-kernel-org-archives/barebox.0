Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ2o0-000677-7A
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 13:46:41 +0000
Date: Tue, 2 Oct 2012 15:46:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121002134631.GX1322@pengutronix.de>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-5-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348973437-31132-5-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 4/9] twl6030: add debug info
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 30, 2012 at 04:50:32AM +0200, vj wrote:
> ---
>  drivers/mfd/twl6030.c | 22 ++++++++++++++++++++++
>  include/mfd/twl6030.h |  8 ++++++++
>  2 files changed, 30 insertions(+)
> 
> diff --git a/drivers/mfd/twl6030.c b/drivers/mfd/twl6030.c
> index 7ecfed8..b8b0418 100644
> --- a/drivers/mfd/twl6030.c
> +++ b/drivers/mfd/twl6030.c
> @@ -39,6 +39,28 @@ static int twl_probe(struct device_d *dev)
>  
>  	devfs_create(&(twl_dev->core.cdev));
>  
> +#ifdef DEBUG
> +	{
> +		u8 i, jtag_rev, eprom_rev;
> +		int r;
> +		u64 dieid;
> +		r = twl6030_reg_read(twl_dev, TWL6030_JTAG_JTAGVERNUM,
> +			&jtag_rev);
> +		r |= twl6030_reg_read(twl_dev, TWL6030_JTAG_EPROM_REV,
> +			&eprom_rev);
> +		for (i = 0; i < 8; i++)
> +			r |= twl6030_reg_read(twl_dev, TWL6030_DIEID_0+i,
> +				((u8 *)(&dieid))+i);
> +		if (r)
> +			debug("TWL6030 Error reading ID\n");
> +		else
> +			debug("TWL6030 JTAG REV: 0x%02X, "
> +				"EPROM REV: 0x%02X, "
> +				"DIE ID: 0x%016llX\n",
> +				(unsigned)jtag_rev, (unsigned)eprom_rev, dieid);

Please use dev_dbg for driver/device related messages. dev_dbg will add
the correct context to the message.

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

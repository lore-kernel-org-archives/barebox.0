Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TKQl4-0007QT-UT
 for barebox@lists.infradead.org; Sat, 06 Oct 2012 09:33:21 +0000
Received: from mail415.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 0BF2DFFA911
 for <barebox@lists.infradead.org>; Sat,  6 Oct 2012 11:42:27 +0200 (CEST)
Date: Sat, 6 Oct 2012 11:30:52 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121006093052.GU26553@game.jcrosoft.org>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
 <1349476393-25520-3-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349476393-25520-3-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 02/11] twl6030: add debug info
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On 00:33 Sat 06 Oct     , vj wrote:
> 
> Signed-off-by: vj <vicencb@gmail.com>
> ---
>  drivers/mfd/twl6030.c | 20 ++++++++++++++++++++
>  include/mfd/twl6030.h |  8 ++++++++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/drivers/mfd/twl6030.c b/drivers/mfd/twl6030.c
> index 01728fd..87ee232 100644
> --- a/drivers/mfd/twl6030.c
> +++ b/drivers/mfd/twl6030.c
> @@ -39,6 +39,26 @@ static int twl_probe(struct device_d *dev)
>  
>  	devfs_create(&(twl_dev->core.cdev));
>  
> +	if (IS_ENABLED(DEBUG)) {
CONFIG_DEBUG instead?


> +		u8 i, jtag_rev, eprom_rev;
> +		int r;
> +		u64 dieid;
add one empty line
> +		r = twl6030_reg_read(twl_dev, TWL6030_JTAG_JTAGVERNUM,
> +			&jtag_rev);
> +		r |= twl6030_reg_read(twl_dev, TWL6030_JTAG_EPROM_REV,
> +			&eprom_rev);
> +		for (i = 0; i < 8; i++)
> +			r |= twl6030_reg_read(twl_dev, TWL6030_DIEID_0+i,
> +				((u8 *)(&dieid))+i);
> +		if (r)
> +			dev_dbg(dev, "TWL6030 Error reading ID\n");
> +		else
> +			dev_dbg(dev, "TWL6030 JTAG REV: 0x%02X, "
> +				"EPROM REV: 0x%02X, "
> +				"DIE ID: 0x%016llX\n",
> +				(unsigned)jtag_rev, (unsigned)eprom_rev, dieid);
> +	}
> +
>  	return 0;
>  }
>  
> diff --git a/include/mfd/twl6030.h b/include/mfd/twl6030.h
> index f1278d4..bb4f773 100644
> --- a/include/mfd/twl6030.h
> +++ b/include/mfd/twl6030.h
> @@ -371,6 +371,14 @@ enum twl6030_reg {
>  	/* JTAG */
>  	TWL6030_JTAG_JTAGVERNUM = 0x0287,
>  	TWL6030_JTAG_EPROM_REV = 0x02DF,
> +	TWL6030_DIEID_0 = 0x02C0,
> +	TWL6030_DIEID_1 = 0x02C1,
> +	TWL6030_DIEID_2 = 0x02C2,
> +	TWL6030_DIEID_3 = 0x02C3,
> +	TWL6030_DIEID_4 = 0x02C4,
> +	TWL6030_DIEID_5 = 0x02C5,
> +	TWL6030_DIEID_6 = 0x02C6,
> +	TWL6030_DIEID_7 = 0x02C7,
>  	/* GPADC Trimming */
>  	TWL6030_GPADC_TRIM1 = 0x02CD,
>  	TWL6030_GPADC_TRIM2 = 0x02CE,
> -- 
> 1.7.12.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

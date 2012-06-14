Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sf70N-0006Uk-9b
 for barebox@lists.infradead.org; Thu, 14 Jun 2012 10:10:19 +0000
Date: Thu, 14 Jun 2012 12:10:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120614101016.GP13302@pengutronix.de>
References: <1336463641-27219-1-git-send-email-w.sang@pengutronix.de>
 <1336463641-27219-9-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336463641-27219-9-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH 8/8] arm: mxs: add write support for ocotp
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, May 08, 2012 at 09:54:01AM +0200, Wolfram Sang wrote:
>  
> +static ssize_t mxs_ocotp_cdev_write(struct cdev *cdev, const void *buf, size_t count,
> +		ulong offset, ulong flags)
> +{
> +	struct ocotp_priv *priv = cdev->priv;
> +	void __iomem *base = priv->base;
> +	const char *write_param;
> +	unsigned int write_enabled = 0;
> +	unsigned long old_hclk, aligned_offset;
> +	int old_vddio, num_words, num_bytes, i, ret = 0;
> +	u8 *work_buf;
> +	u32 reg;
> +
> +	write_param = dev_get_param(cdev->dev, "permanent_write_enable");
> +	if (write_param)
> +		write_enabled = simple_strtoul(write_param, NULL, 0);
> +
> +	if (!write_param || !write_enabled)
> +		return -EPERM;

Can't you save the write_enabled in ocotp_priv?

> +
>  static struct file_operations mxs_ocotp_ops = {
>  	.read	= mxs_ocotp_cdev_read,
> +	.write	= mxs_ocotp_cdev_write,

This should be compiled in only if CONFIG_MXS_OCOTP_WRITABLE is
enabled.

>  	.lseek	= dev_lseek_default,
>  };
>  
> +#ifdef CONFIG_MXS_OCOTP_WRITABLE
> +static int mxs_ocotp_write_enable_set(struct device_d *dev, struct param_d *param,
> +		const char *val)
> +{
> +	unsigned long write_enable;
> +
> +	if (!val)
> +		return -EINVAL;
> +
> +	write_enable = simple_strtoul(val, NULL, 0);
> +	if (write_enable > 1)
> +		return -EINVAL;
> +
> +	return dev_param_set_generic(dev, param, write_enable ? "1" : "0");
> +}
> +#endif /* CONFIG_MXS_OCOTP_WRITABLE */
> +
>  static int mxs_ocotp_probe(struct device_d *dev)
>  {
>  	int err;
> @@ -113,6 +213,16 @@ static int mxs_ocotp_probe(struct device_d *dev)
>  	if (err < 0)
>  		return err;
>  
> +#ifdef CONFIG_MXS_OCOTP_WRITABLE

Please replace this with if(IS_ENABLED(CONFIG_MXS_OCOTP_WRITABLE)),
then you don't need to #ifdef mxs_ocotp_write_enable_set. Additionally
we get better compile coverage.

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

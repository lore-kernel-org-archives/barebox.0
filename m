Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T1NGU-0003el-8W
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 19:58:59 +0000
Date: Tue, 14 Aug 2012 21:58:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120814195854.GB1451@pengutronix.de>
References: <1344959336-18562-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344959336-18562-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [for master PATCH 1/2] miidev: add phy_addr detection support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 14, 2012 at 05:48:55PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> export via param the phy_addr and the phy_id detected
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> Hi,
> 
> 	this is need to fix the calao board support since the introduction of
> 	the gigabit phy detection support

Can you explain what this has to do with gigabit support?

Sascha

> 
> Best Regards,
> J.
>  drivers/net/miidev.c |   76 ++++++++++++++++++++++++++++++++++++++++++++++----
>  include/miidev.h     |    2 ++
>  2 files changed, 72 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
> index b49944b..ab1811d 100644
> --- a/drivers/net/miidev.c
> +++ b/drivers/net/miidev.c
> @@ -236,18 +236,82 @@ static struct file_operations miidev_ops = {
>  	.lseek = dev_lseek_default,
>  };
>  
> +static int get_phy_id(struct mii_device *mdev, int phy_addr,
> +			  uint32_t *phy_id)
> +{
> +	int val;
> +
> +	val = mii_read(mdev, phy_addr, MII_PHYSID1);
> +	if (val < 0)
> +		return -EIO;
> +	*phy_id = (val & 0xffff) << 16;
> +	val = mii_read(mdev, phy_addr, MII_PHYSID2);
> +	if (val < 0)
> +		return -EIO;
> +	*phy_id |= (val & 0xffff);
> +
> +	return 0;
> +}
> +
> +static int phy_detect_one(struct mii_device *mdev, int phy_addr,
> +			  uint32_t *phy_id)
> +{
> +	uint32_t _phy_id;
> +	int ret;
> +
> +	ret = get_phy_id(mdev, phy_addr, &_phy_id);
> +
> +	if (ret)
> +		return ret;
> +
> +	/* If the phy_id is mostly Fs, there is no device there */
> +	if ((_phy_id & 0x1fffffff) == 0x1fffffff)
> +		return -EIO;
> +
> +	*phy_id = _phy_id;
> +
> +	return 0;
> +}
> +
> +static int phy_detect(struct mii_device *mdev)
> +{
> +	int phy_addr;
> +
> +	for (phy_addr = 0; phy_addr <= 0x1f; phy_addr++) {
> +		if (!phy_detect_one(mdev, phy_addr, &mdev->phy_id))
> +			return phy_addr;
> +	}
> +
> +	return -EIO;
> +}
> +
>  static int miidev_probe(struct device_d *dev)
>  {
>  	struct mii_device *mdev = dev->priv;
>  	int val;
>  	int caps = 0;
> +	char str[11];
> +
> +	if (mdev->address < 0) {
> +		int phy_addr;
> +
> +		phy_addr = phy_detect(mdev);
> +
> +		if (phy_addr < 0) {
> +			dev_err(dev, "cannot detect PHY\n");
> +			return -ENODEV;
> +		}
> +		mdev->address = phy_addr;
> +	} else {
> +		if (phy_detect_one(mdev, mdev->address, &mdev->phy_id) < 0)
> +			goto err_out;
> +	}
> +
> +	sprintf(str, "%u", mdev->address);
> +	dev_add_param_fixed(dev, "phy_addr", str);
> +	sprintf(str, "0x%08x", mdev->phy_id);
> +	dev_add_param_fixed(dev, "phy_id", str);
>  
> -	val = mii_read(mdev, mdev->address, MII_PHYSID1);
> -	if (val < 0 || val == 0xffff)
> -		goto err_out;
> -	val = mii_read(mdev, mdev->address, MII_PHYSID2);
> -	if (val < 0 || val == 0xffff)
> -		goto err_out;
>  	val = mii_read(mdev, mdev->address, MII_BMSR);
>  	if (val < 0)
>  		goto err_out;
> diff --git a/include/miidev.h b/include/miidev.h
> index 4bbf94c..2f39234 100644
> --- a/include/miidev.h
> +++ b/include/miidev.h
> @@ -38,6 +38,8 @@ struct mii_device {
>  	struct device_d *parent;
>  
>  	int address;	/* The address the phy has on the bus */
> +	uint32_t phy_id;	/* The phy id */
> +
>  	int	(*read) (struct mii_device *dev, int addr, int reg);
>  	int	(*write) (struct mii_device *dev, int addr, int reg, int value);
>  
> -- 
> 1.7.10.4
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

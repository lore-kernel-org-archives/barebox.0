Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCcFP-0002Az-Hi
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:44:36 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 4 Mar 2013 21:42:55 +0100
References: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
 <1362392034-1908-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362392034-1908-10-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201303042142.55844.jbe@pengutronix.de>
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
Subject: Re: [PATCH 09/10] mtd: nand: Add bbt parameter
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> [...]
> --- a/drivers/mtd/nand/nand_base.c
> +++ b/drivers/mtd/nand/nand_base.c
> @@ -1688,6 +1688,23 @@ static int mtd_set_erasebad(struct device_d *dev,
> struct param_d *param, return 0;
>  }
>
> +static const char *mtd_get_bbt_type(struct device_d *dev, struct param_d 
*p) +{
> +	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
> +	struct nand_chip *chip = mtd->priv;
> +	char *str;

Should also be "const char *str"

> +
> +	if (!chip->bbt)
> +		str = "none";
> +	else if ((chip->bbt_td && chip->bbt_td->pages[0] != -1) ||
> +				(chip->bbt_md && chip->bbt_md->pages[0] != -1))
> +		str = "flashbased";
> +	else
> +		str = "memorybased";
> +
> +	return str;
> +}
> +

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

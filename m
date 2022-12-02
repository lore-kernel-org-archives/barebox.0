Delivery-date: Fri, 02 Dec 2022 10:02:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11wP-008LRc-8v
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 10:02:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11wO-00050q-8m
	for lore@pengutronix.de; Fri, 02 Dec 2022 10:02:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dCaEkF1Jy1RN1+3Zg9k3yOO1c9KGRCSwy1eZeM60hcg=; b=zQ0HHjQ21VtDs0d75ckegZzyll
	rSOSq66HFHisMahCybc+yOcPg1EAuBPIliFX08OsCNKCpVKelCphf/FZWz/is1vB3AD6IiwP5SAUu
	7Pmx2AswerokWvVixvCA6BadOciUj78YA1/vNqW7Bk3TmEeAgC0eYckmPmB8s5AtwX9cx9O8TCAdF
	DWsGARPhKeIMXL0ak5SS4oQABCp5Ly0TQNZT5pr77AxMJ8Hyqs4kCyTE1l+2HHGo4cbml4dIImwP3
	nuMNIHILLaPuiguWPiUIf1UB21sgB+AG5TmgXr4vG63toShE5kgXZi8OUjmmLtb5d/BnoVJC1sImL
	O4nSgGHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11v4-00EkqX-Ap; Fri, 02 Dec 2022 09:01:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11uy-00Ekp8-DE
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 09:01:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11uw-0004WE-Qh; Fri, 02 Dec 2022 10:01:10 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11uw-000798-Jh; Fri, 02 Dec 2022 10:01:10 +0100
Date: Fri, 2 Dec 2022 10:01:10 +0100
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221202090110.GQ29728@pengutronix.de>
References: <20221201153749.4041301-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221201153749.4041301-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_010112_475254_26B07C93 
X-CRM114-Status: GOOD (  25.04  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mfd: axp20x: support AXP313A PMIC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 01, 2022 at 04:37:49PM +0100, Johannes Zink wrote:
> This adds the register definitions for the AXP313A PMIC to the AXP20X
> mfd driver.
> 
> Signed-off-by: Wei Chen <wei.chen@streamunlimited.com>
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  drivers/mfd/axp20x-i2c.c   |  1 +
>  drivers/mfd/axp20x.c       | 21 ++++++++++++++++++++-
>  include/linux/mfd/axp20x.h | 28 ++++++++++++++++++++++++++++
>  3 files changed, 49 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/axp20x-i2c.c b/drivers/mfd/axp20x-i2c.c
> index d0f6a0f394..d1bb96e735 100644
> --- a/drivers/mfd/axp20x-i2c.c
> +++ b/drivers/mfd/axp20x-i2c.c
> @@ -51,6 +51,7 @@ static const struct of_device_id axp20x_i2c_of_match[] = {
>  	{ .compatible = "x-powers,axp152", .data = (void *)AXP152_ID },
>  	{ .compatible = "x-powers,axp202", .data = (void *)AXP202_ID },
>  	{ .compatible = "x-powers,axp209", .data = (void *)AXP209_ID },
> +	{ .compatible = "x-powers,axp313a", .data = (void *)AXP313A_ID },
>  	{ .compatible = "x-powers,axp221", .data = (void *)AXP221_ID },
>  	{ .compatible = "x-powers,axp223", .data = (void *)AXP223_ID },
>  	{ .compatible = "x-powers,axp803", .data = (void *)AXP803_ID },
> diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
> index 8d9de59e7d..62df91ff01 100644
> --- a/drivers/mfd/axp20x.c
> +++ b/drivers/mfd/axp20x.c
> @@ -38,6 +38,7 @@ static const char * const axp20x_model_names[] = {
>  	"AXP221",
>  	"AXP223",
>  	"AXP288",
> +	"AXP313A",
>  	"AXP803",
>  	"AXP806",
>  	"AXP809",
> @@ -68,6 +69,12 @@ static const struct regmap_config axp288_regmap_config = {
>  	.max_register	= AXP288_FG_TUNE5,
>  };
>  
> +static const struct regmap_config axp313a_regmap_config = {
> +	.reg_bits	= 8,
> +	.val_bits	= 8,
> +	.max_register	= AXP313A_POK_CONTROL,
> +};
> +
>  static const struct regmap_config axp806_regmap_config = {
>  	.reg_bits	= 8,
>  	.val_bits	= 8,
> @@ -160,6 +167,13 @@ static const struct mfd_cell axp288_cells[] = {
>  	},
>  };
>  
> +static const struct mfd_cell axp313a_cells[] = {
> +	{
> +		.name		= "axp313a-regulator"
> +	},
> +};
> +
> +
>  static const struct mfd_cell axp803_cells[] = {
>  	{
>  		.name		= "axp221-pek",
> @@ -271,6 +285,11 @@ int axp20x_match_device(struct axp20x_dev *axp20x)
>  		axp20x->nr_cells = ARRAY_SIZE(axp288_cells);
>  		axp20x->regmap_cfg = &axp288_regmap_config;
>  		break;
> +	case AXP313A_ID:
> +		axp20x->cells = axp313a_cells;
> +		axp20x->nr_cells = ARRAY_SIZE(axp313a_cells);
> +		axp20x->regmap_cfg = &axp313a_regmap_config;
> +		break;
>  	case AXP803_ID:
>  		axp20x->nr_cells = ARRAY_SIZE(axp803_cells);
>  		axp20x->cells = axp803_cells;
> @@ -351,7 +370,7 @@ int axp20x_device_probe(struct axp20x_dev *axp20x)
>  	axp20x->poweroff.poweroff = axp20x_power_off;
>  	axp20x->poweroff.priority = 200;
>  
> -	if (axp20x->variant != AXP288_ID)
> +	if (!(axp20x->variant == AXP288_ID) || (axp20x->variant == AXP313A_ID))
>  		poweroff_handler_register(&axp20x->poweroff);
>  
>  	return 0;
> diff --git a/include/linux/mfd/axp20x.h b/include/linux/mfd/axp20x.h
> index 5e068eb6ba..150ff063b8 100644
> --- a/include/linux/mfd/axp20x.h
> +++ b/include/linux/mfd/axp20x.h
> @@ -18,6 +18,7 @@ enum axp20x_variants {
>  	AXP221_ID,
>  	AXP223_ID,
>  	AXP288_ID,
> +	AXP313A_ID,
>  	AXP803_ID,
>  	AXP806_ID,
>  	AXP809_ID,
> @@ -287,6 +288,24 @@ enum axp20x_variants {
>  #define AXP288_FG_TUNE4             0xec
>  #define AXP288_FG_TUNE5             0xed
>  
> +#define AXP313A_ON_INDICATE          0x00
> +#define AXP313A_OFF_INDICATE         0x01
> +#define AXP313A_IC_TYPE              0x03
> +#define AXP313A_OUTPUT_CONTROL       0x10
> +#define AXP313A_DCDC_DVM_PWM         0x12
> +#define AXP313A_DCDC1_CONTROL        0x13
> +#define AXP313A_DCDC2_CONTROL        0x14
> +#define AXP313A_DCDC3_CONTROL        0x15
> +#define AXP313A_ALDO1_CONTROL        0x16
> +#define AXP313A_DLDO1_CONTROL        0x17
> +#define AXP313A_POWER_STATUS         0x1A
> +#define AXP313A_PWROK_SET            0x1B
> +#define AXP313A_WAKEUP_CONRTOL       0x1C
> +#define AXP313A_OUTOUT_MONITOR       0x1D
> +#define AXP313A_POK_CONTROL          0x1E
> +#define AXP313A_IRQ_ENABLE1          0x20
> +#define AXP313A_IRQ_STATUS1          0x21
> +
>  /* Regulators IDs */
>  enum {
>  	AXP20X_LDO1 = 0,
> @@ -323,6 +342,15 @@ enum {
>  	AXP22X_REG_ID_MAX,
>  };
>  
> +enum {
> +	AXP313A_DCDC1 = 0,
> +	AXP313A_DCDC2,
> +	AXP313A_DCDC3,
> +	AXP313A_LDO1,  /* RTCLDO */
> +	AXP313A_LDO2,  /* RTCLDO1 */
> +	AXP313A_REG_ID_MAX,
> +};
> +
>  enum {
>  	AXP806_DCDCA = 0,
>  	AXP806_DCDCB,
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Mon, 27 Oct 2025 13:28:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDMKh-00CKnx-30
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 13:28:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDMKh-0004uM-7i
	for lore@pengutronix.de; Mon, 27 Oct 2025 13:28:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vHwZ8eIFRcXfbW7uuRI0E8ztNC4b1jYoX0mS/O2kFfk=; b=Uyo/7ooJcbs71THTi4ZDNxskc+
	8rrGMhxYwbB3xszxuVFjHjMaQvikUyZC3nJfzC1WACKL0If7IHW+yDJcoNAq1PVDameakmzL50L/D
	2xoCKL42+etmM6F0PUoQGxaQXL7yEZ3bYVrcNWQjlKnIaNraG7rF41IhDcFEiFhZ+p07S4DwrmuI5
	VxW+iKQ0DQ4BcrrTozNZskwACjlw7EzgDWzjWYRMsJ45G9nFWLXAznmuZzPDiNi01nR2O7xP8ElgP
	uDLhd8SDLU5a2JtOvU93qzoZqbUSDNKUhE8KwiVqzesV2NFlDes0CyMoyZ7NUkJQO5IdFQjUDuAW+
	hy0eYXGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMK8-0000000DtXj-3kkz;
	Mon, 27 Oct 2025 12:27:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMK5-0000000DtWu-3DCz
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 12:27:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDMK3-0004Yy-Ht; Mon, 27 Oct 2025 13:27:39 +0100
Message-ID: <458109fe-0d93-4b34-a985-231250b920b7@pengutronix.de>
Date: Mon, 27 Oct 2025 13:27:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
References: <20251027065315.2419160-1-a.fatoum@barebox.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251027065315.2419160-1-a.fatoum@barebox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_052741_809890_BA225764 
X-CRM114-Status: GOOD (  28.76  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] regulator: implement dev_of_regulator_get
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/27/25 7:53 AM, Ahmad Fatoum wrote:
> Regulators for a device need not be listed in the main node associated
> with a device. Export dev_of_regulator_get for these use cases to
> simplify porting Linux drivers.

This caused CI failures for some 32-bit targets, presumably ones without OF.

I'll respin.

Cheers,
Ahmad

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  drivers/regulator/core.c | 20 ++++++++++++--------
>  include/regulator.h      | 27 ++++++++++++++++++++++-----
>  2 files changed, 34 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index f18622cba80c..cd0795589403 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -329,7 +329,8 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
>  }
>  
>  static struct regulator_dev *of_regulator_get(struct device *dev,
> -						   const char *supply)
> +					      struct device_node *np,
> +					      const char *supply)
>  {
>  	char *propname;
>  	struct regulator_dev *rdev;
> @@ -339,7 +340,7 @@ static struct regulator_dev *of_regulator_get(struct device *dev,
>  	/*
>  	 * If the device does have a device node return the dummy regulator.
>  	 */
> -	if (!dev->of_node)
> +	if (!np)
>  		return NULL;
>  
>  	propname = basprintf("%s-supply", supply);
> @@ -348,7 +349,7 @@ static struct regulator_dev *of_regulator_get(struct device *dev,
>  	 * If the device node does not contain a supply property, this device doesn't
>  	 * need a regulator. Return the dummy regulator in this case.
>  	 */
> -	if (!of_get_property(dev->of_node, propname, NULL)) {
> +	if (!of_get_property(np, propname, NULL)) {
>  		dev_dbg(dev, "No %s-supply node found, using dummy regulator\n",
>  				supply);
>  		rdev = NULL;
> @@ -359,7 +360,7 @@ static struct regulator_dev *of_regulator_get(struct device *dev,
>  	 * The device node specifies a supply, so it's mandatory. Return an error when
>  	 * something goes wrong below.
>  	 */
> -	node = of_parse_phandle(dev->of_node, propname, 0);
> +	node = of_parse_phandle(np, propname, 0);
>  	if (!node) {
>  		dev_dbg(dev, "No %s node found\n", propname);
>  		rdev = ERR_PTR(-EINVAL);
> @@ -408,7 +409,8 @@ static struct regulator_dev *of_regulator_get(struct device *dev,
>  }
>  #else
>  static struct regulator_dev *of_regulator_get(struct device *dev,
> -						   const char *supply)
> +					      struct device_node *np,
> +					      const char *supply)
>  {
>  	return NULL;
>  }
> @@ -505,14 +507,16 @@ static struct regulator_dev *dev_regulator_get(struct device *dev,
>   *
>   * Return: a regulator object or an error pointer
>   */
> -struct regulator *regulator_get(struct device *dev, const char *supply)
> +struct regulator *dev_of_regulator_get(struct device *dev,
> +				       struct device_node *np,
> +				       const char *supply)
>  {
>  	struct regulator_dev *rdev = NULL;
>  	struct regulator *r;
>  	int ret;
>  
> -	if (dev->of_node && supply) {
> -		rdev = of_regulator_get(dev, supply);
> +	if (np && supply) {
> +		rdev = of_regulator_get(dev, np, supply);
>  		if (IS_ERR(rdev))
>  			return ERR_CAST(rdev);
>  	}
> diff --git a/include/regulator.h b/include/regulator.h
> index cb542b05c696..401cb8ba464e 100644
> --- a/include/regulator.h
> +++ b/include/regulator.h
> @@ -4,8 +4,7 @@
>  
>  #include <linux/bitops.h>
>  #include <linux/err.h>
> -
> -struct device;
> +#include <device.h>
>  
>  /* struct regulator is an opaque object for consumers */
>  struct regulator;
> @@ -212,7 +211,9 @@ const char *rdev_get_name(struct regulator_dev *rdev);
>  
>  #ifdef CONFIG_REGULATOR
>  
> -struct regulator *regulator_get(struct device *, const char *);
> +struct regulator *dev_of_regulator_get(struct device *dev,
> +				       struct device_node *np,
> +				       const char *supply);
>  void regulator_put(struct regulator *r);
>  struct regulator *regulator_get_name(const char *name);
>  int regulator_enable(struct regulator *);
> @@ -265,8 +266,9 @@ int regulator_list_voltage_table(struct regulator_dev *rdev,
>  				  unsigned int selector);
>  #else
>  
> -static inline struct regulator *regulator_get(struct device *dev,
> -					      const char *id)
> +struct regulator *dev_of_regulator_get(struct device *dev,
> +				       struct device_node *np,
> +				       const char *supply)
>  {
>  	return NULL;
>  }
> @@ -327,6 +329,21 @@ static inline int regulator_get_voltage(struct regulator *regulator)
>  
>  #endif
>  
> +/*
> + * regulator_get - get the supply for a device.
> + * @dev:	the device a supply is requested for
> + * @supply:     the supply name
> + *
> + * This returns a supply for a device. Check the result with IS_ERR().
> + * NULL is a valid regulator, the dummy regulator.
> + *
> + * Return: a regulator object or an error pointer
> + */
> +static inline struct regulator *regulator_get(struct device *dev, const char *id)
> +{
> +	return dev_of_regulator_get(dev, dev_of_node(dev), id);
> +}
> +
>  static inline struct regulator *regulator_get_optional(struct device *dev,
>  						       const char *id)
>  {

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




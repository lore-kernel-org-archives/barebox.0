Delivery-date: Tue, 04 Oct 2022 09:48:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofcfg-005Klg-Nm
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 09:48:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofcff-000585-KY
	for lore@pengutronix.de; Tue, 04 Oct 2022 09:48:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OPdL51JG9iHCC/+o97RkbLLqxiDYi/7pjwAWtnLHCrY=; b=uoSA6hLP83UmA66URNvPqc0591
	fEH0VA6l5mbgt32B1v7FCdAgWBkzFOfbgC/6Z1nWBAZuZdwAGGdD4rbN0SWVZbYFnBuLqVsyn1fpv
	w71dmdDdNuPOWfyPZdaUHgeVoi0Z4r4GdV/pTJrciR2bnkEU1Nf9EtzwG0g4v3EvVuX7YlbrXD0T7
	wFm8isAID9ZMuvxFYqk6QDPTEACnWRjixi6MStMJ46jG8qC4S3REABFq4katfmkLh7vzeB8iAlZ+K
	/sMGSfeDvA2PYlhGiFJNOvYr93V+cJwdO8Yo8AWfYcjUe6f8aojBevPDmYDejwNaS1+WIBj3GaKa4
	5Q9IIXFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofce7-008noF-R6; Tue, 04 Oct 2022 07:47:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcdw-008nml-F5
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 07:47:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofcdv-0004xI-8P; Tue, 04 Oct 2022 09:47:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofcdv-0004ri-17; Tue, 04 Oct 2022 09:47:07 +0200
Date: Tue, 4 Oct 2022 09:47:07 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221004074706.GG986@pengutronix.de>
References: <20220928085052.2599436-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220928085052.2599436-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_004712_255239_A9DC961A 
X-CRM114-Status: GOOD (  24.51  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mfd: axp20x: export axp20x-regulator child for AXP152
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 28, 2022 at 10:50:52AM +0200, Ahmad Fatoum wrote:
> While the upstream Linux driver doesn't support regulator configuration
> for the AXP152, we may need this in barebox for initial regulator setup.
> Thus have the MFD driver register the appropriate child device as done
> for the other drivers. While at it, pass along the axp20x driver data
> object. This is needed, so the regulator driver can query the variant;
> so far it was only possible to retrieve the parent regmap and redo the
> revision readout.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mfd/axp20x.c | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
> index da1e8ce35a7d..0a53eaea7cfa 100644
> --- a/drivers/mfd/axp20x.c
> +++ b/drivers/mfd/axp20x.c
> @@ -141,6 +141,9 @@ static const struct mfd_cell axp152_cells[] = {
>  	{
>  		.name		= "axp20x-pek",
>  	},
> +	{
> +		.name		= "axp20x-regulator",
> +	},
>  };
>  
>  static const struct mfd_cell axp288_cells[] = {
> @@ -337,6 +340,8 @@ int axp20x_device_probe(struct axp20x_dev *axp20x)
>  				     AXP806_REG_ADDR_EXT_ADDR_SLAVE_MODE);
>  	}
>  
> +	axp20x->dev->priv = axp20x;
> +
>  	ret = mfd_add_devices(axp20x->dev, axp20x->cells, axp20x->nr_cells);
>  	if (ret)
>  		return dev_err_probe(axp20x->dev, ret, "failed to add MFD devices\n");
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



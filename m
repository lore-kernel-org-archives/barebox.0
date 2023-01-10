Delivery-date: Tue, 10 Jan 2023 15:56:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFG3U-007qvj-15
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 15:56:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFG3S-0007PL-1q
	for lore@pengutronix.de; Tue, 10 Jan 2023 15:56:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5zdnXu1Cayuz/LXOXGiWpUFakrEe47quX541BX0tBms=; b=Y2iPl+Z6fpUNf0fhO6JRTrg+XV
	HOoIjZRSMnS2ZRogfKysng+is8M5MAyeg4eMR/OHYwRjRUf8PxGDGi7Asf3SFANKOItAcVynh5miT
	O5yUjKile/lISWxkkf7b1XVFwrlnc+TU+mtCiibeGK8V3rmSjLomQkqCm/zONzbB2v0SFbaQlX+C6
	dpB/yMjncgkeRjFdm6ifDISbu62PSxslm3ocG1bAJ7fGEuvimEC9N0RgvWzjQjBDis6Jb7ykB5HpT
	T383p58cbtUSmozjCaxC17Vjic4lT6Td2F9i7uHu6Vq4fTmhA9uePYpHSe2EYeSBZ8wN7E4uHIhyE
	J8O9G+kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFG2H-007QGF-Kt; Tue, 10 Jan 2023 14:55:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFG2D-007QFA-5O
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 14:55:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFG2B-0006yh-UH; Tue, 10 Jan 2023 15:55:27 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFG2B-00052q-OI; Tue, 10 Jan 2023 15:55:27 +0100
Date: Tue, 10 Jan 2023 15:55:27 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110145527.GO28911@pengutronix.de>
References: <20230109151944.2070704-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109151944.2070704-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_065529_222346_DF6706EA 
X-CRM114-Status: GOOD (  24.79  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] regulator: scmi: rename struct
 scmi_regulator::device_node to of_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 04:19:44PM +0100, Ahmad Fatoum wrote:
> The naming is different than the Linux driver and was only chosen for
> symmetry with device_d::device_node. Now that this is renamed to
> device:of_node, follow suite in the barebox driver.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/regulator/scmi-regulator.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/regulator/scmi-regulator.c b/drivers/regulator/scmi-regulator.c
> index 22813ce66248..2a007ac620a1 100644
> --- a/drivers/regulator/scmi-regulator.c
> +++ b/drivers/regulator/scmi-regulator.c
> @@ -44,7 +44,7 @@ struct scmi_regulator {
>  	struct scmi_device *sdev;
>  	struct scmi_protocol_handle *ph;
>  	struct regulator_dev rdev;
> -	struct device_node *device_node;
> +	struct device_node *of_node;
>  	struct scmi_reg_desc sdesc;
>  };
>  
> @@ -232,7 +232,7 @@ static int scmi_regulator_common_init(struct scmi_regulator *sreg)
>  	 */
>  	if (vinfo->negative_volts_allowed) {
>  		dev_warn(dev, "Negative voltages NOT supported...skip %s\n",
> -			 sreg->device_node->full_name);
> +			 sreg->of_node->full_name);
>  		return -EOPNOTSUPP;
>  	}
>  
> @@ -278,7 +278,7 @@ static int process_scmi_regulator_of_node(struct scmi_device *sdev,
>  	rinfo->sregv[dom]->ph = ph;
>  
>  	/* get hold of good nodes */
> -	rinfo->sregv[dom]->device_node = np;
> +	rinfo->sregv[dom]->of_node = np;
>  
>  	dev_dbg(&sdev->dev,
>  		"Found SCMI Regulator entry -- OF node [%d] -> %s\n",
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



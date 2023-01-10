Delivery-date: Tue, 10 Jan 2023 15:39:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFme-007qDA-CL
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 15:39:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFmc-0004O6-4D
	for lore@pengutronix.de; Tue, 10 Jan 2023 15:39:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HIXm5kx9kaZTxcXujR+AD9qBC7UGsxhs+bYk/QPH/WE=; b=mwQr9t3fc+lvKEBHtcWWAyU7nP
	IuMnDlH+u73xTtNptTACrvSB9mLwbX7CVLLX0FYaOmNUbo2Xc4TWoht+803bFBR3QvhfJrZNjt04L
	2Nl2522gu4U6csbntnLT7zL3uu9VJ6B2jfIytxflQrWonza3Al7W0JERJq0GI2YqVMFncb1v8o2S+
	LkSWGxl59AA+SG5YEbv5y39yK5ExWuQYSlyUJvaZ1yfiRd2hIDmjf+leBP9E6Svs1PupqPTAy5H5o
	cbTDV6E3IbKAkQYnwcRMf0D4zffUa8i3vfSTo4V6T080lt+fgHKl7TcSNSgmRDDmVBKUZajrJd8LL
	iwz8u9aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFlM-007Kzj-6a; Tue, 10 Jan 2023 14:38:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFlH-007KyA-5X
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 14:38:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFlF-0004GU-Pp; Tue, 10 Jan 2023 15:37:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFlF-0004Rx-JX; Tue, 10 Jan 2023 15:37:57 +0100
Date: Tue, 10 Jan 2023 15:37:57 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230110143757.GH28911@pengutronix.de>
References: <20230109175909.2018186-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109175909.2018186-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_063759_224309_E36B8778 
X-CRM114-Status: GOOD (  21.40  )
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
Subject: Re: [PATCH] regulator: rk808: simplify one error branch with
 dev_err_probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 06:59:09PM +0100, Ahmad Fatoum wrote:
> This has the added benefit of recording the error message.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/regulator/rk808-regulator.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
> index 3da6cca294ae..8c96b99c9be5 100644
> --- a/drivers/regulator/rk808-regulator.c
> +++ b/drivers/regulator/rk808-regulator.c
> @@ -783,10 +783,9 @@ static int rk808_regulator_register(struct rk808 *rk808, int id,
>  	cfg->rdev.regmap = rk808->regmap;
>  
>  	ret = of_regulator_register(&cfg->rdev, match->of_node);
> -	if (ret) {
> -		dev_err(dev, "failed to register %s regulator\n", match->name);
> -		return ret;
> -	}
> +	if (ret)
> +		return dev_err_probe(dev, ret, "failed to register %s regulator\n",
> +				     match->name);
>  
>  	dev_dbg(dev, "registered %s\n", match->name);
>  
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



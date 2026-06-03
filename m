Delivery-date: Wed, 03 Jun 2026 16:44:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUmpA-001xWr-0O
	for lore@lore.pengutronix.de;
	Wed, 03 Jun 2026 16:44:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUmp9-0007T1-Gq
	for lore@pengutronix.de; Wed, 03 Jun 2026 16:44:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lk5xiLq9QCxkt/RwAVPuV5f0RwumrM1/nO0ebh5/QEg=; b=0h8kZgzsdgBq1Dyklk3sAfZXyb
	rzvRHchMojmyNzIB4iXknYXdcbEParcmL6OSab7uPMz0JmLvE4dQsquYtUBvCQr6jsOnghTFkBP/z
	9j7tKkdv9s9anXWAUTK+rwDDrHRQBTLf2RrAXNvMLobGXvYVb+VzTkgSbsKqdQ3DdhhSuXeDLaM8n
	6/TxZDJK7YqaEuGpC8uBABXXEPsfRhfSYFUfva2LpleI1ejwvxs+i8+LnApc2c0DCZZo2RN6Z7QEj
	cHzzTHTg3yO4edMASNTFstpcd5wS++M+i/vb7fIzNkxbAmjs66vdr2LM8Z+tJ2TaZCIVuUlu+PAzU
	yLxfcpFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUmn7-0000000FI4k-3Y8g;
	Wed, 03 Jun 2026 14:41:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUmn3-0000000FI4N-3qOt
	for barebox@lists.infradead.org;
	Wed, 03 Jun 2026 14:41:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wUmn1-00074m-HZ; Wed, 03 Jun 2026 16:41:51 +0200
Message-ID: <38498647-a753-4565-8790-2297e54d17c2@pengutronix.de>
Date: Wed, 3 Jun 2026 16:41:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
 <20260603-feature-snvs-imx6ul-v1-1-6305f63bd3fa@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260603-feature-snvs-imx6ul-v1-1-6305f63bd3fa@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_074153_981496_78D04C96 
X-CRM114-Status: GOOD (  15.02  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] nvmem: snvs_lpgpr: remove unnecessary cfg->name
 assignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 6/3/26 3:33 PM, Stefan Kerkmann wrote:
> The name is now fixed to `snvs` since commit:
> 
> 8f52947260 ("nvmem: snvs_lpgpr: set nvmem config name to snvs").
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/nvmem/snvs_lpgpr.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
> index 95ce023a14..6c1d5a836f 100644
> --- a/drivers/nvmem/snvs_lpgpr.c
> +++ b/drivers/nvmem/snvs_lpgpr.c
> @@ -117,7 +117,6 @@ static int snvs_lpgpr_probe(struct device *dev)
>  		return PTR_ERR(priv->regmap);
>  
>  	cfg = &priv->cfg;
> -	cfg->name = dev_name(dev);
>  	cfg->dev = dev;
>  	cfg->priv = priv;
>  	cfg->stride = 4;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




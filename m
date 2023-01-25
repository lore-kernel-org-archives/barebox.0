Delivery-date: Wed, 25 Jan 2023 10:22:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKbzd-001K6m-9K
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 10:22:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKbza-0006SU-ML
	for lore@pengutronix.de; Wed, 25 Jan 2023 10:22:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2bWueHVxJ6oJT5iH3BFVFPRLMwLp9CqP6Y5PpO0fSXU=; b=QcibW20thk9cAQrmIyL4xGVmEF
	ndX8YNAKKHSMH1x9BxbySTBH8QeUVg5LG33FkIb8s8L/XkGHTa5CAf/8qtBj4RxKln+/rSliFXaZk
	KHaeaAO43LUXvplPNUq1uH3EGTHm233GOZIZMRpP4u7XsdsUTdcDQYB1Yb9Wx0J8YVMCzmoSzwytK
	i8gFhJwXB3EDM+vTMOVGqs0RyWK7Nol+WyNBgPAJ+P2lOOSb5UuFQr7ZV6E0RHz0oUQeDAX2vjC77
	IGfCfVT8/2PYerGB043yfi1y1l57AXFzSPmeVg4UxR/kN+qK4WXuJekFBh3KdpLRB6pwIKyoYhvX4
	OaCpCzlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKbyR-006auA-7J; Wed, 25 Jan 2023 09:21:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKbyF-006arq-LU
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 09:21:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKbyD-0006Gl-Rp; Wed, 25 Jan 2023 10:21:29 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKbyD-0006en-KO; Wed, 25 Jan 2023 10:21:29 +0100
Date: Wed, 25 Jan 2023 10:21:29 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230125092129.nua7ipc223llsanv@pengutronix.de>
References: <20230125073739.1992152-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125073739.1992152-1-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_012131_729998_A9A28BE7 
X-CRM114-Status: GOOD (  16.39  )
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
Subject: Re: [PATCH 1/2] i2c: i.MX: Use better error code when bus recovery
 failed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-01-25, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/i2c/busses/i2c-imx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index e4b04327ee..3be3b158c7 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -235,7 +235,7 @@ static int i2c_fsl_start(struct i2c_adapter *adapter)
>  	if (result) {
>  		result = i2c_recover_bus(&i2c_fsl->adapter);
>  		if (result)
> -			return result;
> +			return -EIO;

This would also reinterpret adap->bus_recovery_info->recover_bus()
errors. I didn't checked the possible error codes for this but I think
to say it's an IO error is fine.

Acked-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

>  		return -EAGAIN;
>  	}
>  
> -- 
> 2.30.2
> 
> 
> 



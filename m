Delivery-date: Tue, 28 Jun 2022 10:27:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o66ZW-0002kc-F9
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 10:27:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o66ZY-000160-DN
	for lore@pengutronix.de; Tue, 28 Jun 2022 10:27:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rOsIGwrDNlKXHoyloFnRerDHx84kQzUbWuTKxnIKDnc=; b=2DeXLiIM00JWyF2HJp9lMrPtM8
	vuP3P26G1eK/9zW3w3gO6udyOuBVUszrGDgM8UrjyEKdtyp33Fs/P9WKU9PQkeBB9Hd5SKgK4Pcp9
	wv6tyFlRm/rQXriYJrzE4hxqpBuZbYOx/EpM9r9oE4f/eXgAYlnzKz59uZNdwgh5WAVVp52SvfjmG
	FwNkFpSo3yIX0T46YcPFhJA8udmaydphDsJrCQcu7rd2AuSIdWfr5/GO70LqEyb2TMS7SI9D1cHd1
	HCnEzXjOG8IqNRN6wfl7hj/CxV+/fqY441h1CuzQVlSHyyUvyT623AmXw/srrs8X7tkpZe5RDiYSx
	OSWNgZEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o66Y8-005Fq0-Uc; Tue, 28 Jun 2022 08:26:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o66X8-005FH6-Nv
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 08:25:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o66X7-0000bn-Fn; Tue, 28 Jun 2022 10:25:17 +0200
Message-ID: <06940ef4-f585-3a23-9cda-dc62f89f0f8e@pengutronix.de>
Date: Tue, 28 Jun 2022 10:25:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20220628061941.24199-1-eagle.alexander923@gmail.com>
 <20220628061941.24199-2-eagle.alexander923@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220628061941.24199-2-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_012518_875674_1D46EED6 
X-CRM114-Status: GOOD (  17.37  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] drivers: firmware: arm-scmi: Use core_platform_driver()
 macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.06.22 08:19, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/firmware/arm_scmi/driver.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index ef3d76b3f4..ad91a60e0c 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -1252,6 +1252,7 @@ static struct driver_d scmi_driver = {
>  	.of_compatible = scmi_of_match,
>  	.probe = scmi_probe,
>  };
> +core_platform_driver(scmi_driver);
>  
>  static int __init scmi_bus_driver_init(void)
>  {
> @@ -1267,12 +1268,6 @@ static int __init scmi_bus_driver_init(void)
>  }
>  pure_initcall(scmi_bus_driver_init);
>  
> -static int __init scmi_platform_driver_init(void)
> -{
> -	return platform_driver_register(&scmi_driver);
> -}
> -core_initcall(scmi_platform_driver_init);
> -
>  MODULE_ALIAS("platform: arm-scmi");
>  MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
>  MODULE_DESCRIPTION("ARM SCMI protocol driver");


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



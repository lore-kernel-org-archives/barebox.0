Delivery-date: Wed, 12 May 2021 07:19:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghH4-00053q-Uq
	for lore@lore.pengutronix.de; Wed, 12 May 2021 07:19:10 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghH4-0003SU-4A
	for lore@pengutronix.de; Wed, 12 May 2021 07:19:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ty+1pX2lC4TxCEOJQ5QUmsldb5PiiEm2CZS4965Q3LI=; b=GKWLewAGs9ZU0oiWAuhc4as6n
	rW+r5Al3loTfET8KSVeuz6g5Ytg/UGHfqR33mlPHr8Jaiqbmc+ZN1H0P517IivsdKS2Mrkkhparmf
	0qf2dzwoeevKmGVtoP6hqxToM8JCRHw1llGPV/FUMSmI8qNtK1r6aCoKWdUneOU6pdsb2u9fDfS7v
	u2Dw+KrIWIZ6YWhfgeThtp8YeI7PxU+36fXJsLPMvjC/wqKpYNrN/2geCy3ZYqg2G7qsJHVFHslTu
	5T/ckbsgyHp+OiYEuiTDIqu3vAi/CUofCyjJgov/5kfJPrzHi8r6XdAIdWlRM/NLAhvYwK7SxroE1
	Upzy/2G9Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lghFu-0022nt-4f; Wed, 12 May 2021 05:17:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghFq-0022ne-PG
 for barebox@desiato.infradead.org; Wed, 12 May 2021 05:17:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=RvkD3t9vT5ucE5P1CjGtf6dKZbsLXxEHm74k7pjTi/A=; b=2O4CI1NpeJ6zNxEV4K30B0kHVs
 5b5dK7mWzs0qEThY6CDV6UB2YEW1O6jDg+Xh83JCYuy+GmtqbiXImunRsdYKBF5PjSh5qRi2fP9Yv
 UF616H4gpNX0dw2M1IVbu3K8XKUzLkm4TauJCLfDXcIoQgUlYM/b/B43KSAua5TBqTwRWRWv5taOL
 ktTVcW0nBF/STgiWAEOK40EGY0iZkmLkXG9qFzQoS107HmZ+KtkIlOTU7AC+3Y1goU9TTvZp1zUvG
 YcZVL5OmyqxaFhnc9hxaHqVJ9ettpDBcTKnqxsGAQSSm3+DS2/0W8G2Br9fUmblPokFNW3fMSALOl
 iqpIZH1Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghFn-00A75O-S6
 for barebox@lists.infradead.org; Wed, 12 May 2021 05:17:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghFm-0003Nr-Aw; Wed, 12 May 2021 07:17:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghFl-0002id-OB; Wed, 12 May 2021 07:17:49 +0200
Date: Wed, 12 May 2021 07:17:49 +0200
To: Yunus Bas <y.bas@phytec.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210512051749.GI19819@pengutronix.de>
References: <20210507072950.2005039-1-y.bas@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210507072950.2005039-1-y.bas@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:17:38 up 83 days,  8:41, 79 users,  load average: 0.04, 0.10, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_221751_936497_266D9382 
X-CRM114-Status: GOOD (  25.46  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] Revert "ARM: dts: phycore-imx6: change mtd-partition
 names for compatibility with kernel"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 07, 2021 at 09:29:50AM +0200, Yunus Bas wrote:
> This reverts commit 72ba815bf6feaa0a98d2496f52784dd5b4258e73.
> 
> The NVMEM name-clashing has been fixed on Linux-upstream. NVMEM devices
> are now registered with the unique device names instead of the
> MTD-partition names. This fix is no longer needed.
> 
> Signed-off-by: Yunus Bas <y.bas@phytec.de>

Applied, thanks

Sascha

> ---
> Changes in v2:
> - Added missing signed-off
> ---
>  arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> index 2fb920945..2c333ce8f 100644
> --- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -29,7 +29,7 @@
>  
>  		environment-spinor {
>  			compatible = "barebox,environment";
> -			device-path = &m25p80, "partname:nor.barebox-environment";
> +			device-path = &m25p80, "partname:barebox-environment";
>  			status = "disabled";
>  		};
>  	};
> @@ -86,22 +86,22 @@
>  		#size-cells = <1>;
>  
>  		partition@0 {
> -			label = "nor.barebox";
> +			label = "barebox";
>  			reg = <0x0 0x100000>;
>  		};
>  
>  		partition@100000 {
> -			label = "nor.barebox-environment";
> +			label = "barebox-environment";
>  			reg = <0x100000 0x20000>;
>  		};
>  
>  		partition@120000 {
> -			label = "nor.oftree";
> +			label = "oftree";
>  			reg = <0x120000 0x20000>;
>  		};
>  
>  		partition@140000 {
> -			label = "nor.kernel";
> +			label = "kernel";
>  			reg = <0x140000 0x0>;
>  		};
>  	};
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


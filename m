Delivery-date: Fri, 10 Jun 2022 09:47:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZMF-009nON-AZ
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 09:47:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzZME-0000FC-1p
	for lore@pengutronix.de; Fri, 10 Jun 2022 09:47:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p2BAtRtXZYbQdOdrK74uOqLoPQHrgS0wZx2kgncSzcU=; b=ABOl/JD97FjHBtFXjlk3vn/9sF
	pFkEsWq0Dlhn2PV1r2ql83cPiEZlW7KoihgkZe5kOPbHa6CghlLlGsi1DoI2DtoHdWrYQqRbpAirT
	viWr5qNrXgMKGC/spzjaF2v3Wupr/MD70q4B5sS+2ROPjHVG1jPFpbm00ReC8sKx7VTJviGIut+X4
	fUTXckx9PUqoQ9LUueNgbDA2IFLM2fAutW6lt31U2I52qnSzvmXosD27re0ol1f37S6nlNTBZSxl2
	tAtpAo4UYBIpCQl8U7XO0dLQkxozh25qbYr4OLOCAudZLPRQ54J/aAImDhZn2wsHuFMJQdTIzdjqz
	kkvqj5bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZL3-006XS2-ND; Fri, 10 Jun 2022 07:45:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZKy-006XQU-RA
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 07:45:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzZKx-0008JM-Jo; Fri, 10 Jun 2022 09:45:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzZKx-0007Ye-5d; Fri, 10 Jun 2022 09:45:43 +0200
Date: Fri, 10 Jun 2022 09:45:43 +0200
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220610074543.GD1615@pengutronix.de>
References: <20220609214330.1443541-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609214330.1443541-1-dev@lynxeye.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_004544_911289_B9F8A05D 
X-CRM114-Status: GOOD (  22.55  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] arm: imx8mq: re-enable DDRC for Barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 11:43:29PM +0200, Lucas Stach wrote:
> With Linux 5.18 the DDRC is disabled for most boards in the upstream
> DT, as it isn't used. Barebox however needs the DDRC node to be enabled
> as it has a driver to read the memory size from the controller and ends
> up with no available RAM without this driver being present.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/dts/imx8mq-ddrc.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mq-ddrc.dtsi b/arch/arm/dts/imx8mq-ddrc.dtsi
> index 1df39151a1cd..6961477eef38 100644
> --- a/arch/arm/dts/imx8mq-ddrc.dtsi
> +++ b/arch/arm/dts/imx8mq-ddrc.dtsi
> @@ -8,3 +8,7 @@
>  	/delete-node/ memory@40000000;
>  };
>  
> +&ddrc {
> +	status = "okay";
> +};
> +
> -- 
> 2.36.1
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


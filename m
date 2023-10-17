Delivery-date: Tue, 17 Oct 2023 07:01:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qscCv-00BMZJ-81
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 07:01:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qscCu-0008I5-6Q
	for lore@pengutronix.de; Tue, 17 Oct 2023 07:01:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z2aOiie7jM+m014w1/VpbqlZ+GTqP/nYjzhbbpTMlvw=; b=CUchFYOl/B3LXZgpAlcqJjdvme
	BhDQyCKj/R7OOl2JdS3mn9xIMnib6q1IQjFqUhmHVGLcWFhMSB7EdwVqkrFfCZvJNESoIaNQDLhx+
	0bqz+xsXJryigBwRz3yOdDGs1YNMUeu0dvFu3Ka5my83Mx3xJR3zlhVk3K0/eQWx+IiOd09sJAR/o
	HJO0Oyu77iMgqYyRcBdo1onIiAj7/QTgt1D7pE45xHBuPivY3pQAQZBFTxNuqW9cvL6co41sHC7cW
	nEtKEPs4at/qHTXjI5NTCnVRhy/cGdVN9gF5HX8Jz3zrng7vgHMtJexhTJC+7wRyNf+/tbxYXRBg9
	+Agf036Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qscBT-00BFIq-1A;
	Tue, 17 Oct 2023 04:59:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qscBP-00BFI7-1h
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 04:59:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qscBM-000887-TO; Tue, 17 Oct 2023 06:59:52 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qscBM-002Erm-AO; Tue, 17 Oct 2023 06:59:52 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qscBM-00Er4B-7k; Tue, 17 Oct 2023 06:59:52 +0200
Date: Tue, 17 Oct 2023 06:59:52 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20231017045952.GE3359458@pengutronix.de>
References: <20231016142432.2759214-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016142432.2759214-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_215955_586734_2D56E7AE 
X-CRM114-Status: GOOD (  18.10  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: Add missing call to
 arm_cpu_lowlevel_init() for rk3568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 16, 2023 at 05:24:32PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/mach-rockchip/rk3568.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
> index c0453ea0c4..75b0824479 100644
> --- a/arch/arm/mach-rockchip/rk3568.c
> +++ b/arch/arm/mach-rockchip/rk3568.c
> @@ -93,6 +93,8 @@ static void qos_priority_init(void)
>  
>  void rk3568_lowlevel_init(void)
>  {
> +	arm_cpu_lowlevel_init();
> +
>  	/*
>  	 * When perform idle operation, corresponding clock can
>  	 * be opened or gated automatically.
> -- 
> 2.38.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



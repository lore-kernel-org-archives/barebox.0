Delivery-date: Mon, 03 Jul 2023 12:46:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGH4Q-00DPpg-86
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 12:46:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGH4N-0000MO-Rr
	for lore@pengutronix.de; Mon, 03 Jul 2023 12:46:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CY7SLQdBGqQFUYwqMZazZ69uNCZaL/kGwNSjlVsJHFQ=; b=HR9h8jAq4KaMQ5TuUDAolfnEuN
	kg/R/eVTNyCHACMQjw0Bb7XPXrvpH0ThoA+svfoY3lW7M4zqQK5ySFFGORz06EJ9Cs3v+a/ra99Hd
	uDl8smjm4tbdr3gUUz20x/ksAnuenJQj2afpNuV3q+ZFAjcvklpfwpq8rQI5WXJQBoXcs+4e3e7V7
	OQrp8ib/1A0arjXBj/xg/C/OQCEh3vi24qs+QuK+j/hqFkKHUfQNeXZittR465bfNHaDyYnZrEAZF
	owE3278xaR8voG2M5bUB9qljTt3Lq/woBD3d/zYi9TBGmzOS6ROEEyjE4LPtyl28/Sc5mtXc9inDo
	jzZi0Xvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGH3M-00AHsd-2m;
	Mon, 03 Jul 2023 10:45:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGH3H-00AHrj-32
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 10:45:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGH3G-0008Mk-L1; Mon, 03 Jul 2023 12:45:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGH3G-0000ta-Dm; Mon, 03 Jul 2023 12:45:02 +0200
Date: Mon, 3 Jul 2023 12:45:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230703104502.GL18491@pengutronix.de>
References: <20230703093655.2073607-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230703093655.2073607-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_034503_975913_CAE965D3 
X-CRM114-Status: GOOD (  22.54  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] sandbox: dts: skip reboot mode without hostfile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 03, 2023 at 11:36:55AM +0200, Ahmad Fatoum wrote:
> The stickypage hostfile won't probe if the file is missing, yet because
> it's compatible to simple-mfd, its child nodes will be probed and fail
> their probe, because the hostfile itself was missing.
> 
> Fix this by only probing hostfile children if the parent probe concludes
> successfully.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/board/hostfile.c | 2 +-
>  arch/sandbox/dts/sandbox.dts  | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
> index d3fe8bcb9036..ca21703544af 100644
> --- a/arch/sandbox/board/hostfile.c
> +++ b/arch/sandbox/board/hostfile.c
> @@ -184,7 +184,7 @@ static int hf_probe(struct device *dev)
>  	of_parse_partitions(cdev, np);
>  	of_partitions_register_fixup(cdev);
>  
> -	return 0;
> +	return of_platform_populate(np, NULL, dev);
>  }
>  
>  static __maybe_unused struct of_device_id hostfile_dt_ids[] = {
> diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
> index 75c633c5909f..6a0ae77d65bd 100644
> --- a/arch/sandbox/dts/sandbox.dts
> +++ b/arch/sandbox/dts/sandbox.dts
> @@ -56,7 +56,7 @@ y {
>  	};
>  
>  	stickypage: stickypage {
> -		compatible = "barebox,hostfile", "syscon", "simple-mfd";
> +		compatible = "barebox,hostfile", "syscon";
>  		barebox,filename = "$build/stickypage.bin";
>  		reg = <0 0 0 4096>;
>  		barebox,cdev; /* no caching allowed */
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



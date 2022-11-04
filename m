Delivery-date: Fri, 04 Nov 2022 09:55:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqsTl-00Ejvd-KX
	for lore@lore.pengutronix.de; Fri, 04 Nov 2022 09:55:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqsTk-0006Ew-49
	for lore@pengutronix.de; Fri, 04 Nov 2022 09:55:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nUo/KL3+1D8vdHwCMbRntLSoioOy6+MZZZNAtD/VM2M=; b=NwagcXub3Z7Xg+N7lp7rMcgomu
	eYKDwXx/dP086oglWjH9V0VFW4yD/3OColamyvgiplS4PIU7KBMO4IPeIpICFXsRDQlj58G4k3Nxf
	53WlYTrG7ZFhQgbsPDGMlbJccEHUahlmDaZZQ5q/ZgbaIw5Wlcn3OuqMoIwaM4mNu9qMNZdFohPgW
	mYcklVHutvtH8bh2gYfx5RC96GSdHcb0UoHZH8Iob7X5eMUCSUavpsSKZwRjfNI7QHhrUMOc0Fzt4
	IPktiI9cfcM2M4No3yyOfHNC81xKbAo5t1Sl7P5S75UpZIHWD1zTa+kHLA6tEEGtYcLFbQfgaBrwf
	4jxeRoGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqsSV-0030vo-TN; Fri, 04 Nov 2022 08:53:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqsSR-0030v5-3s
	for barebox@lists.infradead.org; Fri, 04 Nov 2022 08:53:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqsSP-00063t-70; Fri, 04 Nov 2022 09:53:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqsSO-0006Xe-Vx; Fri, 04 Nov 2022 09:53:44 +0100
Date: Fri, 4 Nov 2022 09:53:44 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221104085344.GU3143@pengutronix.de>
References: <20221102104814.2070367-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102104814.2070367-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_015347_471840_A4F88699 
X-CRM114-Status: GOOD (  20.78  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rk356x: rk3568-evb: add missing new line to log
 message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 02, 2022 at 11:48:14AM +0100, Ahmad Fatoum wrote:
> If ADC is available, but read out returns an error, we end up with a log
> line that's not new line terminated. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/rockchip-rk3568-evb/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
> index 212c801c93d3..ef886e67ed15 100644
> --- a/arch/arm/boards/rockchip-rk3568-evb/board.c
> +++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
> @@ -94,7 +94,7 @@ static int rk3568_evb_detect_hwid(void)
>  	return 0;
>  
>  err_hwid:
> -	pr_err("couldn't retrieve hardware ID");
> +	pr_err("couldn't retrieve hardware ID\n");
>  	return ret;
>  }
>  late_initcall(rk3568_evb_detect_hwid);
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



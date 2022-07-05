Delivery-date: Tue, 05 Jul 2022 05:57:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8Zgh-0068Ff-Dv
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 05:57:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8Zgj-0005uO-9I
	for lore@pengutronix.de; Tue, 05 Jul 2022 05:57:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/3sRjNaQltCU0M8IB23y2Y84/87+9TH7d7/r3tSQqV8=; b=aQRMYDtQ3ij4cK1q7AGhusXebF
	yaHpwjfNq+TdXUI+jy8gjgKIEYQdd3b3EwD3zz+vEjgCQjrkds4Zxoi+CZ4+z2aFlLkVEykF4cPDw
	5BL7Dy0ADlmfszzNwS8z438nqKajksnCJeApGu8kFQnKKEA1RoaDgiZp8hDCM5utLjoO884Meg9rV
	7/dNKRWZJhbOUnNgrvYuMtKnFMPSR/kNQgNPEaHb+aRcN5n30s3y49wU23EBBurpmpIClfhLcme/m
	t9x7WMdI91BtbTJBAIMwpufNDN94Q/2HiCpdX5/q7fk9G/iOVIjvVt39CeFSre5idAONwJWXx37h4
	Fg780UBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ZfU-00EKLe-Sw; Tue, 05 Jul 2022 03:56:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ZfQ-00EKLD-DL
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 03:56:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8ZfP-0005YN-3y; Tue, 05 Jul 2022 05:56:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8ZfO-0006JI-RU; Tue, 05 Jul 2022 05:56:02 +0200
Date: Tue, 5 Jul 2022 05:56:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de
Message-ID: <20220705035602.GJ2387@pengutronix.de>
References: <20220704092409.124836-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220704092409.124836-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 05:55:52 up 96 days, 16:25, 63 users,  load average: 0.11, 0.06,
 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_205604_486241_23F26E67 
X-CRM114-Status: GOOD (  23.86  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX8M: select ARM_USE_COMPRESSED_DTB for all
 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 04, 2022 at 11:24:08AM +0200, Ahmad Fatoum wrote:
> With DDR firmware, ARM trusted firmware and possibly OP-TEE, we are
> already quite short on SRAM, so it makes sense to always use compressed
> device trees on the i.MX8M to shift some of the size from PBL into
> barebox proper. Select ARM_USE_COMPRESSED_DTB for the i.MX8M boards.
> 
> Follow-up commit will touch all i.MX8M boards we have in tree that do
> not yet make use of this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index c9f03f8aaddd..83ea0059ca35 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -183,6 +183,7 @@ config ARCH_IMX8M
>  	select HW_HAS_PCI
>  	select IMX8M_DRAM
>  	select PBL_VERIFY_PIGGY if HABV4
> +	select ARM_USE_COMPRESSED_DTB
>  
>  config ARCH_IMX8MM
>  	select ARCH_IMX8M
> @@ -514,7 +515,6 @@ config MACH_ZII_IMX8MQ_DEV
>  	select ARM_SMCCC
>  	select MCI_IMX_ESDHC_PBL
>  	select MACH_ZII_COMMON
> -	select ARM_USE_COMPRESSED_DTB
>  
>  config MACH_ZII_VF610_DEV
>  	bool "ZII VF610 Dev Family"
> @@ -574,7 +574,6 @@ config MACH_NXP_IMX8MN_EVK
>  	select MCI_IMX_ESDHC_PBL
>  	select IMX8M_DRAM
>  	select I2C_IMX_EARLY
> -	select ARM_USE_COMPRESSED_DTB
>  
>  config MACH_NXP_IMX8MP_EVK
>  	bool "NXP i.MX8MP EVK Board"
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



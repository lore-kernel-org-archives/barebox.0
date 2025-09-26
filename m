Delivery-date: Fri, 26 Sep 2025 13:32:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v26gk-001JS3-2p
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 13:32:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v26gk-0007xV-AD
	for lore@pengutronix.de; Fri, 26 Sep 2025 13:32:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qPadpnlP0E0QYQs6DUV6TwEuoBfpnldJDoHFoN5+ov0=; b=xGuZnS8GLjlXLm1RAtyIV2wlW0
	fsKl9JuSgWMcyyysWgIBdFz6ogD3dj57mYOQ1/jY7xlDqAR/GP3edekRJhnGHNLiYtylwyxUcPLhO
	FFqb32jNJdkARZM7m+8CrXsE2xLiic4LvZ5Xxv+Jj9ijX0bDRoFyiVLhEi081VjYPkIMSkMnvetyB
	9qDIYwrhytzpL2Pi2Ihe7VB8COYKua30sS8g9Q7xE5DV6R3vEMxWSwjM1Kubjr4Lg5uJNitPgEu8N
	WF/IrXDJbSUitju1SmtXKRhQT8ytrSMFv6FwCV1iIbtqBC8CEIOZJub3xJTK4+7L8+kzykuxbJL47
	PhY01SSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v26g8-00000000o98-2I3W;
	Fri, 26 Sep 2025 11:31:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v26g5-00000000o6H-2uK0
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 11:31:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v26g2-0007oI-9t; Fri, 26 Sep 2025 13:31:50 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v26g2-000a9B-0O;
	Fri, 26 Sep 2025 13:31:50 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v26g1-00EV8B-3D;
	Fri, 26 Sep 2025 13:31:50 +0200
Date: Fri, 26 Sep 2025 13:31:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aNZ5pTTiP8YuveQY@pengutronix.de>
References: <20250924-prt8ml-fixup-v1-1-477ac5d8d67e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-prt8ml-fixup-v1-1-477ac5d8d67e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_043153_733451_81A57AD6 
X-CRM114-Status: GOOD (  18.88  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! ARM: boards: Add support for PRT8ML
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 24, 2025 at 10:13:51AM +0200, Jonas Rebmann wrote:
> Remove redundant clock setup code already present in
> imx8m_ccgr_clock_enable() called from imx8mp_cpu_lowlevel_init()
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c | 5 -----
>  1 file changed, 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c
> index 54c0e4a1a7..ffbc08b6bc 100644
> --- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c
> +++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c
> @@ -86,11 +86,6 @@ static __noreturn noinline void prt_prt8ml_start(void)
>  
>  ENTRY_FUNCTION(start_prt_prt8ml, r0, r1, r2)
>  {
> -	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
> -
> -	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
> -	       ccm + IMX8M_CCM_CCGRn_SET(IMX8M_CCM_CCGR_SCTR));
> -
>  	imx8mp_cpu_lowlevel_init();
>  
>  	relocate_to_current_adr();
> 
> ---
> base-commit: 7e32be40a193007e138c0eb589eb852420655523
> change-id: 20250924-prt8ml-fixup-5cdfa477bca8
> 
> Best regards,
> --  
> Jonas Rebmann <jre@pengutronix.de>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



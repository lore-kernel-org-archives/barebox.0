Delivery-date: Mon, 11 Sep 2023 12:34:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfeFk-00BNVm-DU
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 12:34:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfeFi-0007IH-D0
	for lore@pengutronix.de; Mon, 11 Sep 2023 12:34:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0CBISegRTrmJzPKCXsrD1RAE6Q+lTBfa9rXxCMJ/wes=; b=Obqbuwb+rPFxAeOXhOAzMGVrjL
	faKkVKTGfwWlZsypMM5FzbzKgUik8mI0dYbvixYFb/hQ6C73GGuzffw5wSVHhCTxruO0AvvRCF0e4
	AMxkgtHwFmhYSVVpupOl3cDnJ4PpIQcPhXO3LPyPja1ghQN0lqk0dxznWMALzL0evh7Aq/iL5yIDr
	VU/Yke4J3brLnLhiU0IOn+xJz2YhjQiVsdjIjqoW3oEQ0yDSNa5xOntn3nMmCb5cqZsT00sp6+eO7
	EXTvAgimwOB92xWGULwWGESxM1D6CpUSZfb2NTT44LghSbh9QM+5gRkN0xP/xE2jt46E9fs38RFEB
	Rf+gD9rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfeEN-000EW1-1v;
	Mon, 11 Sep 2023 10:33:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfeEL-000EU5-0d
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 10:33:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfeEJ-00075Z-RW; Mon, 11 Sep 2023 12:33:19 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfeEJ-005Wgw-FH; Mon, 11 Sep 2023 12:33:19 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfeEJ-00507B-4t; Mon, 11 Sep 2023 12:33:19 +0200
Date: Mon, 11 Sep 2023 12:33:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230911103319.oyepfclielsffs3y@pengutronix.de>
References: <20230911101219.2166001-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911101219.2166001-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_033321_256326_C466E2C2 
X-CRM114-Status: GOOD (  15.83  )
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
Subject: Re: [PATCH] ARM: i.MX8M: don't print TF-A version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-09-11, Ahmad Fatoum wrote:
> In usual configurations, TF-A already prints its version on startup, so
> printing it in barebox again is unnecessary and less informational than
> the TF-A print and complicates running barebox without TF-A.
> Thus just drop it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  arch/arm/mach-imx/imx8m.c | 11 -----------
>  1 file changed, 11 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> index af44b089e08a..c7c799c64bc4 100644
> --- a/arch/arm/mach-imx/imx8m.c
> +++ b/arch/arm/mach-imx/imx8m.c
> @@ -56,7 +56,6 @@ u64 imx8m_uid(void)
>  static int imx8m_init(const char *cputypestr)
>  {
>  	void __iomem *src = IOMEM(MX8M_SRC_BASE_ADDR);
> -	struct arm_smccc_res res;
>  
>  	genpd_activate();
>  
> @@ -66,16 +65,6 @@ static int imx8m_init(const char *cputypestr)
>  	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
>  	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
>  
> -	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
> -	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
> -		arm_smccc_smc(IMX_SIP_BUILDINFO,
> -			      IMX_SIP_BUILDINFO_GET_COMMITHASH,
> -			      0, 0, 0, 0, 0, 0, &res);
> -
> -		if (res.a0 > 0)
> -			pr_info("i.MX ARM Trusted Firmware: %s\n", (char *)&res.a0);
> -	}
> -
>  	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled() &&
>  	    !of_find_node_by_path_from(NULL, "/firmware/optee")) {
>  		static struct of_optee_fixup_data optee_fixup_data = {
> -- 
> 2.39.2
> 
> 
> 



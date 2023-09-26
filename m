Delivery-date: Tue, 26 Sep 2023 13:40:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ql6Qs-00BxTK-Ir
	for lore@lore.pengutronix.de; Tue, 26 Sep 2023 13:40:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ql6Qq-0008SL-E3
	for lore@pengutronix.de; Tue, 26 Sep 2023 13:40:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GZzMyMItfPzuL5uMh/AorQZadhuU13kGg/EsSpaO2p4=; b=gs5FwFrEjh4ki0XfDYdHnzxquA
	3z55ycytfYJLnrcHPQjIoO0iuynhiGu5uTwagyQDfi+xB0zaXLb2n64xRfZwVm9DKb+Xo9TsP8G6Q
	z1uNfPQlULj3SwM4koGitzgaNkZYFYGdCFfMzXiHaA9M3IQEh/TzK3NPm74VNUavReueQAu/qfs8v
	PtnbiQqv8bhLW9DsrpCOcKHfHg1SAf2bkqZ97/iee7xlWfphJIzE7hO3KVdqC1ZnljSrekbJk5Ztd
	DfTd++R8mycfmwxbTNHB/fNpx2DkEnJYA2Co+aicK4zTN0JuBVLtOHbb76ZvpIwK7z71xVsoIAuRb
	oOUXksgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ql6Pl-00GHGG-2N;
	Tue, 26 Sep 2023 11:39:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ql6Pj-00GHFM-0I
	for barebox@lists.infradead.org;
	Tue, 26 Sep 2023 11:39:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ql6Ph-0007d4-SA; Tue, 26 Sep 2023 13:39:37 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ql6Ph-0095qv-Fy; Tue, 26 Sep 2023 13:39:37 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ql6Ph-00BYdO-De; Tue, 26 Sep 2023 13:39:37 +0200
Date: Tue, 26 Sep 2023 13:39:37 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230926113937.GD637806@pengutronix.de>
References: <20230911101219.2166001-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911101219.2166001-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_043939_130806_0682F5AC 
X-CRM114-Status: GOOD (  21.28  )
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

On Mon, Sep 11, 2023 at 12:12:19PM +0200, Ahmad Fatoum wrote:
> In usual configurations, TF-A already prints its version on startup, so
> printing it in barebox again is unnecessary and less informational than
> the TF-A print and complicates running barebox without TF-A.
> Thus just drop it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx8m.c | 11 -----------
>  1 file changed, 11 deletions(-)

Applied, thanks

Sascha

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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



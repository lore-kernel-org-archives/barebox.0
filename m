Delivery-date: Wed, 11 Jan 2023 11:23:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFYG9-008jBJ-Gz
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 11:23:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFYG7-0005tn-86
	for lore@pengutronix.de; Wed, 11 Jan 2023 11:23:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=26OrvOJmWL3YhZpguDa9eBajHv4guBrdaBGp0+2Ec6s=; b=4O+9F6XsLp7VJf1sq4YcL28mH9
	zOjt3VK7+DjUB02lg3A4MkJ/uKrRCVWw3D0N6RJmE5aVXUP7Bw+SC50YSlDv2d5gqNugZUCWYdPSw
	pR9Gi4PQyCWEDKqHzHEzy+IvZRSRxqkghR/RMV+wjS5erEKKz/rYD+OASpfccLOp1FMsSffO+x8dI
	Z/IqazMKzEZRh7nJbHDpP9rm850yMsZ0S2wgVvKGksRl0yhw9Iv79jnnEREBx4hjUZ/C9cfvu9HV/
	++yUA3Yi5ykX6fsNT54bGjF+XnYCAR1fyobfkJr8SE90CDfvcd3LDUvSLY8vaXdXVGKrRjDD+nBUb
	ejn/6rYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYEy-00Akds-Mv; Wed, 11 Jan 2023 10:21:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYEt-00Akcu-V3
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 10:21:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pFYEs-0005ij-NJ; Wed, 11 Jan 2023 11:21:46 +0100
Message-ID: <caaa3e6f-4473-9eb9-a807-4ee63e944367@pengutronix.de>
Date: Wed, 11 Jan 2023 11:21:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
References: <20230111100111.677018-1-johannes.schneider@leica-geosystems.com>
 <20230111100111.677018-3-johannes.schneider@leica-geosystems.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230111100111.677018-3-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_022148_017572_CAC329E7 
X-CRM114-Status: GOOD (  19.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/1] ARM: i.MX8M: smccc: fix firmware_atf check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.01.23 11:01, Johannes Schneider wrote:
> Replace the config-switch check with a check for the current execution
> level.

Please describe your reasoning behind changes (e.g. IMX8MQ_ATF may be
deselected when building solely non-MQ boards). It's not evident otherwise,
why this is a fix.

> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  arch/arm/mach-imx/imx8m.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> index 9758525b54..bb2733f2ab 100644
> --- a/arch/arm/mach-imx/imx8m.c
> +++ b/arch/arm/mach-imx/imx8m.c
> @@ -61,7 +61,7 @@ static int imx8m_init(const char *cputypestr)
>  	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
>  
>  	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
> -	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
> +	    (current_el() == 2)) {
>  		arm_smccc_smc(IMX_SIP_BUILDINFO,
>  			      IMX_SIP_BUILDINFO_GET_COMMITHASH,
>  			      0, 0, 0, 0, 0, 0, &res);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




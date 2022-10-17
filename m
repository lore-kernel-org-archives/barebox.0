Delivery-date: Mon, 17 Oct 2022 18:40:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okTAW-00Bkci-Ul
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 18:40:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okTAU-0006et-Ue
	for lore@pengutronix.de; Mon, 17 Oct 2022 18:40:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rVsQU+R5sjpRXL4g7J0wKJRBLTXq+DMtBAtbo6N9KtE=; b=Z+0NpUnQZpNV/qla9XRKdbNQKU
	OmvSIe7GByNzqOSAmJtKR418c71pS611rB5by6IXepAKRsNOy3HOd2UZ4SxjjqAu4Er9M/0CMbINu
	CssLTYOQHn5VEa2sTU4aDxNl4zvDZ6U95OlOaZYEYQnwoUvdFQyfTgkW91qe7q2dGTs6rsQQornKi
	pPPPxhvKdUq0lCxlGq2bgfdLH10osb9CoeIhRJihSOZLT72fVAXxtCi1x9K3YpgIHk3kAj+lzbkq4
	vJZZ4dZx7oTtkvvX61VooG8Rmi73jyg4YEB+ZmPYPRhAJBhlJrB+ztMrFkS7ug4OBqJ9ODg3JbLmO
	C2FzSvpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okT9K-00DnCK-BE; Mon, 17 Oct 2022 16:39:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okT9F-00DnAX-6l
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 16:39:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1okT9D-0006N8-Tn; Mon, 17 Oct 2022 18:39:28 +0200
Message-ID: <47f1dc23-7593-629e-2028-304d4618ad6f@pengutronix.de>
Date: Mon, 17 Oct 2022 18:39:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20221017161818.333094-1-m.felsch@pengutronix.de>
 <20221017161818.333094-3-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221017161818.333094-3-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_093929_270237_19F0488D 
X-CRM114-Status: GOOD (  20.54  )
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
Subject: Re: [PATCH next 3/3] ARM: i.MX8M: align SIP_BUILDINFO with the tf-a
 define
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.10.22 18:18, Marco Felsch wrote:
> Align the define with the name used by the usptream and downstream tf-a.
> 
> While on change the pr_info behaviour to only print the version if a0
> contain something useful.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-imx/imx8m.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> index 8b275bd6f6..9758525b54 100644
> --- a/arch/arm/mach-imx/imx8m.c
> +++ b/arch/arm/mach-imx/imx8m.c
> @@ -18,8 +18,8 @@
>  #include <linux/iopoll.h>
>  #include <linux/arm-smccc.h>
>  
> -#define FSL_SIP_BUILDINFO			0xC2000003
> -#define FSL_SIP_BUILDINFO_GET_COMMITHASH	0x00
> +#define IMX_SIP_BUILDINFO			0xC2000003
> +#define IMX_SIP_BUILDINFO_GET_COMMITHASH	0x00
>  
>  void imx8m_clock_set_target_val(int clock_id, u32 val)
>  {
> @@ -62,10 +62,12 @@ static int imx8m_init(const char *cputypestr)
>  
>  	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
>  	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
> -		arm_smccc_smc(FSL_SIP_BUILDINFO,
> -			      FSL_SIP_BUILDINFO_GET_COMMITHASH,
> +		arm_smccc_smc(IMX_SIP_BUILDINFO,
> +			      IMX_SIP_BUILDINFO_GET_COMMITHASH,
>  			      0, 0, 0, 0, 0, 0, &res);
> -		pr_info("i.MX ARM Trusted Firmware: %s\n", (char *)&res.a0);
> +
> +		if (res.a0 > 0)
> +			pr_info("i.MX ARM Trusted Firmware: %s\n", (char *)&res.a0);
>  	}
>  
>  	return 0;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



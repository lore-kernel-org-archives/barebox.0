Delivery-date: Tue, 24 Jan 2023 09:29:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKEfw-000Hyq-CE
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 09:29:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKEft-0007bN-Nc
	for lore@pengutronix.de; Tue, 24 Jan 2023 09:29:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tLPHqEg+G3PrnfGEl11dwTPyjfL58Ap9Cwq6iXZ7/hA=; b=L0wc/Jt7jTDIjCb16s1EzwN+go
	H9YkxwVOvu4fYZ6oz8p1/cqqgK6h4E2P9lCl3tcpwfr62eB4VNNMRiQkoE+aKKjnJoF9t7SkqkyIc
	smaMndz5LtnToqJNzqeNPvUxzxxoIopLBaQWAqkR5mmA4KnvqSsd7DHtGWHJcxes7gGOytAu9b3BL
	I4ZmY96gFD2pGhPVjxri18NbL2cDUcrqkJIYuEuGm203vsU8G3pP+Hj+2kO2o31c9ujG0jR5/lVMM
	2tozxIZoC60mefazvhq8KAfS9hgOBzNWCs6JSBNpXjKS6o4ena+PuGINbb04go64SKUzhC3eXJ5xo
	RQf1sIQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKEek-002k7u-Rt; Tue, 24 Jan 2023 08:27:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKEef-002k6Q-2m
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 08:27:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pKEed-0007N4-6p; Tue, 24 Jan 2023 09:27:43 +0100
Message-ID: <ab972e58-2d3a-8ee3-c251-788fe5179e1d@pengutronix.de>
Date: Tue, 24 Jan 2023 09:27:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: John Watts <contact@jookia.org>, barebox@lists.infradead.org
References: <20230123201817.1084728-1-contact@jookia.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230123201817.1084728-1-contact@jookia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_002745_151999_0673881F 
X-CRM114-Status: GOOD (  30.35  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] imx6-mmdc: Work around ERR050070
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23.01.23 21:18, John Watts wrote:
> The MPWLGCR registers clear the error bits before software can read them,
> so rely on the MPWLHWERR registers for error reporting instead.
> 
> This errata was announced in 2019 and seems to apply to all chip revisions.
> 
> U-Boot contains a different workaround where it checks the calibration data
> for the result 0x001F001F (maximum delay) and flag that as a failure.
> This workaround seems to first publicly appear in the Novena U-Boot code
> and originate from Freescale internal code or documentation.
> 
> While we're at it, fix the comment implying this code only checks PHY0 in x32
> configuration. This is wrong and misleading.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  arch/arm/mach-imx/imx6-mmdc.c              | 18 ++++++++++++++----
>  arch/arm/mach-imx/include/mach/imx6-mmdc.h |  1 +
>  2 files changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
> index 00b8d30d69..908771626a 100644
> --- a/arch/arm/mach-imx/imx6-mmdc.c
> +++ b/arch/arm/mach-imx/imx6-mmdc.c
> @@ -11,6 +11,18 @@
>  #include <mach/imx6-regs.h>
>  #include <mach/imx6.h>
>  
> +static bool wlcalib_failed(void __iomem *ips)
> +{
> +	int i;
> +
> +	for (i = 0; i < 4; ++i) {
> +		if (readb(P0_IPS + MPWLHWERR + i) == 0)

s/P0_OPS/ips/ ?

Also does it need to be bytewise reads? If not, you could rewrite
as return readl(ips + MPWLHWERR) == 0;

> +			return true;

Write level calibration has failed when MPWLHWERR == 0 and succeeded
when there is some other value? That sounds odd.

> +	}
> +
> +	return false;
> +}
> +
>  int mmdc_do_write_level_calibration(void)
>  {
>  	u32 esdmisc_val, zq_val;
> @@ -56,11 +68,9 @@ int mmdc_do_write_level_calibration(void)
>  	/* Upon completion of this process the MMDC de-asserts the MPWLGCR[HW_WL_EN] */
>  	while (readl(P0_IPS + MPWLGCR) & 0x00000001);
>  
> -	/* check for any errors: check both PHYs for x64 configuration, if x32, check only PHY0 */
> -	if ((readl(P0_IPS + MPWLGCR) & 0x00000F00) ||
> -			(readl(P1_IPS + MPWLGCR) & 0x00000F00)) {
> +	/* check for any errors on both PHYs */
> +	if (wlcalib_failed(P0_IPS) || wlcalib_failed(P1_IPS))
>  		errorcount++;
> -	}
>  
>  	pr_debug("Write leveling calibration completed\n");
>  
> diff --git a/arch/arm/mach-imx/include/mach/imx6-mmdc.h b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
> index bda20aba17..098ba4f5bf 100644
> --- a/arch/arm/mach-imx/include/mach/imx6-mmdc.h
> +++ b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
> @@ -18,6 +18,7 @@
>  #define MPWLGCR		0x808
>  #define MPWLDECTRL0	0x80c
>  #define MPWLDECTRL1	0x810
> +#define MPWLHWERR	0x878
>  #define MPPDCMPR1	0x88c
>  #define MPSWDAR		0x894
>  #define MPRDDLCTL	0x848

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




Delivery-date: Fri, 12 Jan 2024 17:31:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rOKRR-00Eiyl-08
	for lore@lore.pengutronix.de;
	Fri, 12 Jan 2024 17:31:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rOKRQ-0002g5-9N
	for lore@pengutronix.de; Fri, 12 Jan 2024 17:31:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tUBBtwQcxc4BLeg9ceDH9ROLaKlP1XU1XNm6YZZ+mgQ=; b=3zKxNkyPmjCtIEfwPoNKWw7f6Y
	FYoyIObdUKYHs1N7leS+515Gofzsv0yVRtAyQUmxiBL01Viqaw1h91UxM3a61LJsXU1BEz/icJCeM
	iADGz0ATLiZIIT6cM2R5T4/iBGZLNSrvHKdEmOiHs38VWMQqRVuD0Visep9FU6rkdgwE2aM7VUI1O
	KF6t9mh/OUpprNIEfAMMpvr/SUDLRTyAdlR1T6WfIb3uN6tP4gMRolKmyF6iBqs/JrRjlJWVo68Ie
	5OA+mN/6JQRogKEAAhB8Kn8xtt+QTNRlBVXWsGNAGSzgFDs47e0HY8RFArFq+pCXgstm8NeexSu4c
	HIpvrmJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOKQ4-003JcG-0W;
	Fri, 12 Jan 2024 16:30:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOKPz-003JbE-2f
	for barebox@lists.infradead.org;
	Fri, 12 Jan 2024 16:30:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rOKPu-0002Oq-G0; Fri, 12 Jan 2024 17:29:58 +0100
Message-ID: <c301b3d3-7a94-4e31-8dde-0cfd6f0a96d7@pengutronix.de>
Date: Fri, 12 Jan 2024 17:29:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240112-fix-habv4-event-report-v2-0-1c91bc857935@pengutronix.de>
 <20240112-fix-habv4-event-report-v2-2-1c91bc857935@pengutronix.de>
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20240112-fix-habv4-event-report-v2-2-1c91bc857935@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_083003_888172_638CD6D6 
X-CRM114-Status: GOOD (  26.55  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] habv4: use hab rom implementation of report_event
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 12.01.24 16:21, Stefan Kerkmann wrote:
> The existing habv4 rom vector table had some mismatches in the API of
> the function pointers which broke calling into the HAB rom - mainly
> observed with the `report_event` function. The suspected culprit here is
> the `bytes` pointer which was `uint32_t*` vs. the documented `size_t*`.
> 
> When compiled using the ILP32 data model e.g. for 32-Bit systems both
> referrenced values have the same width, but once compiled for (I)LP64
> they differ as `size_t` is 64-Bit wide there. This seems to trigger a
> memory corruption once that pointer is passed to the HAB boot rom code
> and dereferenced there, the root cause wasn't investigated further
> though.
> 
> As this implementation has only been tested on imx8mm, imx8nm and imx8mp
> boards I'm beeing defensive and only enable it for these targets. Once
> all SOCs of the family have been verified to work correctly the OCRAM
> readout workaround can be removed.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>   drivers/hab/habv4.c | 48 ++++++++++++++++++++++++++++++++++++++----------
>   1 file changed, 38 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index 92bee8399d..4e401ca9d3 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -184,6 +184,33 @@ enum hab_sip_cmd {
>   	FSL_SIP_HAB_AUTH_IMG_NO_DCD = 0x08,
>   };
>   
> +static enum hab_status hab_sip_report_event(enum hab_status status,
> +					    uint32_t index, uint8_t *event,
> +					    size_t *bytes)
> +{
> +	struct arm_smccc_res res;
> +
> +	v8_flush_dcache_range((unsigned long)bytes,
> +			      (unsigned long)bytes + sizeof(*bytes));
> +
> +	if (event)
> +		v8_flush_dcache_range((unsigned long)event,
> +				      (unsigned long)event + *bytes);
> +
> +	arm_smccc_smc(FSL_SIP_HAB, FSL_SIP_HAB_REPORT_EVENT,
> +		      (unsigned long)index, (unsigned long)event,
> +		      (unsigned long)bytes, 0, 0, 0, &res);
> +
> +	v8_inv_dcache_range((unsigned long)bytes,
> +			    (unsigned long)bytes + sizeof(*bytes));
> +
> +	if (event)
> +		v8_inv_dcache_range((unsigned long)event,
> +				    (unsigned long)event + *bytes);
> +
> +	return (enum hab_status)res.a0;
> +}
> +
>   static enum hab_status hab_sip_report_status(enum hab_config *config,
>   					     enum habv4_state *state)
>   {
> @@ -220,9 +247,6 @@ static uint32_t hab_sip_get_version(void)
>   #define HABV4_EVENT_MAX_LEN		0x80
>   
>   #define IMX8MQ_ROM_OCRAM_ADDRESS	0x9061C0
> -#define IMX8MM_ROM_OCRAM_ADDRESS	0x908040
> -#define IMX8MN_ROM_OCRAM_ADDRESS	0x908040
> -#define IMX8MP_ROM_OCRAM_ADDRESS	0x90D040
>   
>   static enum hab_status imx8m_read_sram_events(enum hab_status status,
>   					     uint32_t index, uint8_t *event,
> @@ -239,12 +263,6 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
>   
>   	if (cpu_is_mx8mq())
>   		sram = (char *)IMX8MQ_ROM_OCRAM_ADDRESS;
> -	else if (cpu_is_mx8mm())
> -		sram = (char *)IMX8MM_ROM_OCRAM_ADDRESS;
> -	else if (cpu_is_mx8mn())
> -		sram = (char *)IMX8MN_ROM_OCRAM_ADDRESS;
> -	else if (cpu_is_mx8mp())
> -		sram = (char *)IMX8MP_ROM_OCRAM_ADDRESS;
>   	else
>   		return HAB_STATUS_FAILURE;
>   
> @@ -296,9 +314,19 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
>   	return HAB_STATUS_FAILURE;
>   }
>   
> +static enum hab_status imx8m_report_event(enum hab_status status,
> +					  uint32_t index, uint8_t *event,
> +					  size_t *bytes)
> +{
> +	if (cpu_is_mx8mm() || cpu_is_mx8mn() || cpu_is_imx8mp())

There is a typo in the condition, that I somehow introduced wrangling 
testing branches. It should be `cpu_is_mx8mp()` not `cpu_is_imx8mp()` 
I'll send another series with fix with the upcoming review feedback 
(which is to come as I was told).

> +		return hab_sip_report_event(status, index, event, bytes);
> +	else
> +		return imx8m_read_sram_events(status, index, event, bytes);
> +}
> +
>   struct habv4_rvt hab_smc_ops = {
>   	.header = { .tag = 0xdd },
> -	.report_event = imx8m_read_sram_events,
> +	.report_event = imx8m_report_event,
>   	.report_status = hab_sip_report_status,
>   };
>   
> 

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |



Delivery-date: Tue, 16 Jan 2024 09:15:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPebH-001az1-3D
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 09:15:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPebI-0008Go-KM
	for lore@pengutronix.de; Tue, 16 Jan 2024 09:15:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B8DFm/bXjfRfVLhelISTpExtI5wnJJX8INLVSsv2Wog=; b=VXpamI8TCFEwKqglHGiu9Dht9F
	XPxrNu1A5uybYKU+khK6EtfRoJ7iLSP0bAknckK8BCjncARe/9L9ZL8tg6zBFmBmtrjiOT0uggMYz
	o1TBCJArYtordXHZ1KEybbmdrRHiTN/Q8p2K7Dx6gelN2YeXZRUMimFCsBHGDAtvG5xnrMsylJg4s
	lI81CkY6vz3YEwXpF2IYztX3YACtaHEN0f5XQpkvENEM3cc29oOZfKwaoOPPpTdaPEZ6pOe25pp1S
	7RI5P3zxDWHHVKUzcOQANPtBP4f9cCnT1vhLTYKT1sbRIS7uj27kLwN212oPU6nrytjyRpWJFlvC0
	0AP9jkzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPea5-00BNdb-2I;
	Tue, 16 Jan 2024 08:13:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPea1-00BNcl-1q
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 08:13:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPeZx-0008BO-Vr; Tue, 16 Jan 2024 09:13:50 +0100
Message-ID: <15aa742d-9670-4da5-a65b-263d44e260cb@pengutronix.de>
Date: Tue, 16 Jan 2024 09:13:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240112-fix-habv4-event-report-v2-0-1c91bc857935@pengutronix.de>
 <20240112-fix-habv4-event-report-v2-2-1c91bc857935@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240112-fix-habv4-event-report-v2-2-1c91bc857935@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_001353_627450_D1A91DDB 
X-CRM114-Status: GOOD (  14.90  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] habv4: use hab rom implementation of report_event
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefan,

On 12.01.24 16:21, Stefan Kerkmann wrote:
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

I am not too happy about the cache maintenance here. *event and *bytes
are both stack memory, which share a cache line with other stack variables.

This issue exists in hab_sip_report_status too, so this need not delay
application of the series, but it would nice to get this cleaned up,
eventually.

A first attempt was here:
https://lore.barebox.org/barebox/20230921095649.310666-1-a.fatoum@pengutronix.de/

I am also unsure if cache maintenance is correct, see:
https://lists.trustedfirmware.org/archives/list/tf-a@lists.trustedfirmware.org/message/D3PIAW7G2B3JQIH5BGMUZZKHPGNMXUUT/

> +static enum hab_status imx8m_report_event(enum hab_status status,
> +					  uint32_t index, uint8_t *event,
> +					  size_t *bytes)
> +{
> +	if (cpu_is_mx8mm() || cpu_is_mx8mn() || cpu_is_imx8mp())

I suggest we swap the if else clauses and use cpu_is_mx8mq(). imx8m_read_sram_events
only supports that one SoC now and it's likely that new SoCs (e.g. i.MX9) will
also reuse hab_sip_report_event. Could you send a fixup?

Thanks,
Ahmad

> +		return hab_sip_report_event(status, index, event, bytes);
> +	else
> +		return imx8m_read_sram_events(status, index, event, bytes);
> +}
> +
>  struct habv4_rvt hab_smc_ops = {
>  	.header = { .tag = 0xdd },
> -	.report_event = imx8m_read_sram_events,
> +	.report_event = imx8m_report_event,
>  	.report_status = hab_sip_report_status,
>  };
>  
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




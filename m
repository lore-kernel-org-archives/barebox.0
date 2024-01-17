Delivery-date: Wed, 17 Jan 2024 08:21:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ0Ew-003LnC-0V
	for lore@lore.pengutronix.de;
	Wed, 17 Jan 2024 08:21:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ0Ew-0004I0-Pe
	for lore@pengutronix.de; Wed, 17 Jan 2024 08:21:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V5CH0XIa8+YcvxjE+LNkNoWNvJD3yGc60ou6/+vfVMw=; b=KVkYdLrxuNAyeVboeCnlHSusVO
	2PRUOzcFCfEgC1I2U5W1lo845HPV/sOqCx38AQQh2ipUB5AgFBvSWbVePwwPhcifXEfr9/iMGaAz5
	/+6rpyGKJNgsjEX/ScrEU7KFdYlg9u7KXxa80J4quQBtKvL6JiyL3R1Rh2WzL6lZM9fOEBH3po9/u
	wn+U4p0H3M8LTdw304P7676w9nlOetTIGViAGec2EwhS95wlkShbZMwSBnBT/FY/cdwj2G/qALRpZ
	HYwjUtBDcViirxhLderkqtLVG/fZ1I8qgPQM0370qD6ICc+K8CIu+fKGPQxNIA0rFPFIz9OObbQEL
	8lZ9d8cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ0Dy-00EfcB-0I;
	Wed, 17 Jan 2024 07:20:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ0Ds-00EfbZ-2e
	for barebox@lists.infradead.org;
	Wed, 17 Jan 2024 07:20:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rQ0Dq-0004BD-4L; Wed, 17 Jan 2024 08:20:26 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rQ0Dp-000Pjr-O9; Wed, 17 Jan 2024 08:20:25 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rQ0Dp-000LoF-Lg; Wed, 17 Jan 2024 08:20:25 +0100
Date: Wed, 17 Jan 2024 08:20:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <20240117072025.GE4700@pengutronix.de>
References: <20240112-fix-habv4-event-report-v2-0-1c91bc857935@pengutronix.de>
 <20240112-fix-habv4-event-report-v2-2-1c91bc857935@pengutronix.de>
 <15aa742d-9670-4da5-a65b-263d44e260cb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <15aa742d-9670-4da5-a65b-263d44e260cb@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_232028_857248_26CE4036 
X-CRM114-Status: GOOD (  20.59  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] habv4: use hab rom implementation of report_event
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 16, 2024 at 09:13:48AM +0100, Ahmad Fatoum wrote:
> Hello Stefan,
> 
> On 12.01.24 16:21, Stefan Kerkmann wrote:
> > +static enum hab_status hab_sip_report_event(enum hab_status status,
> > +					    uint32_t index, uint8_t *event,
> > +					    size_t *bytes)
> > +{
> > +	struct arm_smccc_res res;
> > +
> > +	v8_flush_dcache_range((unsigned long)bytes,
> > +			      (unsigned long)bytes + sizeof(*bytes));
> > +
> > +	if (event)
> > +		v8_flush_dcache_range((unsigned long)event,
> > +				      (unsigned long)event + *bytes);
> 
> I am not too happy about the cache maintenance here. *event and *bytes
> are both stack memory, which share a cache line with other stack variables.
> 
> This issue exists in hab_sip_report_status too, so this need not delay
> application of the series, but it would nice to get this cleaned up,
> eventually.
> 
> A first attempt was here:
> https://lore.barebox.org/barebox/20230921095649.310666-1-a.fatoum@pengutronix.de/
> 
> I am also unsure if cache maintenance is correct, see:
> https://lists.trustedfirmware.org/archives/list/tf-a@lists.trustedfirmware.org/message/D3PIAW7G2B3JQIH5BGMUZZKHPGNMXUUT/
> 
> > +static enum hab_status imx8m_report_event(enum hab_status status,
> > +					  uint32_t index, uint8_t *event,
> > +					  size_t *bytes)
> > +{
> > +	if (cpu_is_mx8mm() || cpu_is_mx8mn() || cpu_is_imx8mp())
> 
> I suggest we swap the if else clauses and use cpu_is_mx8mq(). imx8m_read_sram_events
> only supports that one SoC now and it's likely that new SoCs (e.g. i.MX9) will
> also reuse hab_sip_report_event. Could you send a fixup?

I fixed this part up here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



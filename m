Delivery-date: Tue, 10 Mar 2026 16:18:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyqf-00A8II-13
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 16:18:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyqd-0000we-Ik
	for lore@pengutronix.de; Tue, 10 Mar 2026 16:18:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ALC99Cg79eft9mQ1bfs0yIiLxybvKYGQ9eXqwnsTXXM=; b=pQJLol+3QR+ZX3v+8y/Mo+1hvo
	XQKdReQdXX/zyrnhS0jQc4ISWGT7UBKaMYjL5L+oTZJuk7xas19zXGDldrFil5wIftS7uubhjkNIe
	cBqjATVCnjnFYoeB91xoJfgtAmFfLjW75J01tFRsNOtovknUlmQAELySngqltqkXe29kcc6QfHOpj
	9nQI9vWxSA7CnQ1wYFN7qYYo0Hu0gIVNOSzZKxGIx1U5dsMXZMJ+549MDiGleYpfZNnza4EHH09bs
	LI5xTl+DmVFdtbbQSv8i4r5fSSAQ9pDUrPHx57BaCT/25556W8O6G8yUHSqWvJF42D7lOMKuMpbB9
	+NjWLE8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzyq5-00000009mRH-0Fnf;
	Tue, 10 Mar 2026 15:17:41 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzyq1-00000009mQh-0Q5m
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 15:17:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:in-reply-to:from:references:cc:to:
	 subject:mime-version:date:message-id:from;
	bh=ALC99Cg79eft9mQ1bfs0yIiLxybvKYGQ9eXqwnsTXXM=;
	b=SY0Zv8fqBueBRfzl+0tups6h8kdIPKIv0iJoqIMG20oCqlsZWiqXDWIOiPWdvh7gJ8tAbG0XepWOj
	 PcRvoGklw75ABR6WFRayxo1o3xmS8EDtH+Sjpv77/aleb84okYUnDe+Qe1sxky9GNxbZywt7YBCUEt
	 rDpMhs4qy1hSDP9gENTV1FE2XtDy4JaAVjsgIHi58oOzxC0lG6IzZDA3xTYsY3RCVNi1qJyNPUf5q7
	 /eDVSCRLC5PkOqwRKKQVzEmTVXxBlrik3JPshEm0FuY68xG6SaNzJkNXkE4PMI2eIHFCCJZlk+GL3V
	 UBts0GnoJuEvFU1eBjrt15NhtAGV4BA==
X-MSG-ID: 3eec444b-1c94-11f1-9155-005056817704
Message-ID: <ae348be5-6c25-4cb6-8883-7f0d298f1b33@protonic.nl>
Date: Tue, 10 Mar 2026 16:17:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Cc: barebox@lists.infradead.org
References: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
 <20260304110013.495725-6-robin.van.der.gracht@protonic.nl>
 <aa_wVOPwEBZn__Pn@pengutronix.de>
Content-Language: en-US, nl-NL
From: Robin van der Gracht <robin@protonic.nl>
Organization: Protonic Holland
In-Reply-To: <aa_wVOPwEBZn__Pn@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_081738_352423_BE303730 
X-CRM114-Status: GOOD (  13.19  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/9] ARM: boards: protonic-rk356x: Move mecsbc code to
 model init function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 3/10/26 11:20, Sascha Hauer wrote:
> Hi Robin,
>
> On Wed, Mar 04, 2026 at 12:00:09PM +0100, Robin van der Gracht wrote:
>> This adds a means for registering a model specific late initcall function.
> Please explain why this is necessary in the commit message.
>
>> +static int prt_rk356x_mecsbc_init(void)
>> +{
>> +	if (prt_priv.hw_id == 0 && prt_priv.hw_rev == 0)
>> +		of_register_fixup(mecsbc_sd_of_fixup, prt_priv.dev);
>> +
>> +	return 0;
>> +}
>> +
>> +static int prt_rk356x_devices_init(void)
>> +{
>> +	int ret;
>> +
>> +	if (prt_priv.model->init) {
>> +		ret = prt_priv.model->init();
>> +		if (ret) {
>> +			pr_warn("Model init failed with %d\n", ret);
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	return 0;
>> +}
>> +late_initcall(prt_rk356x_devices_init);
> This executes unconditionally on all boards. You have a patch later in
> this series fixing that, please squash it into this patch.
>
> Sascha
>
Ack. I'll make the changes and submit v2.

Robin



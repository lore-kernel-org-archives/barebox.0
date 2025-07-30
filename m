Delivery-date: Wed, 30 Jul 2025 10:13:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh1wQ-005Cb5-1a
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 10:13:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh1wP-0006zW-TO
	for lore@pengutronix.de; Wed, 30 Jul 2025 10:13:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C6BBJ7aMlgBjHhVmjQ7u81H6RFg9n8tL30TXypbe9No=; b=lqy9ZN+h/EQiJJmgWsEauB0x6a
	Xl/Zo0+vNZH1OnGbZsiGrJbmFjlCE/KNnKZLiBd2hYUhilrQg858yHVYnnGIqnyjSmeAYjhEfaTG3
	pq+Ga/Gu6UcR93QKk+Z39A02xR2UrgYZqYw3S/8SOgFmWUiqVqKW7PtFAgvokaK2VHxr/9GRgHb4r
	hJNAo+CAce0bHfwnV4pYfQIYBBtVJx9aIKC9Zz6UasKpxIDpododM3DIhKjM3b0ldOgXgVt1iKD1D
	3HCsBwhuCYEfJnOYvvJ5NgiG6xzFbvlN5+wk0OsuSKe41aVUc1YtqpU2Bf5dVIg/uxS9tXf/AvGwK
	WS83mmiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh1vy-00000000xUX-2bwa;
	Wed, 30 Jul 2025 08:13:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh1vw-00000000xUA-0Qu0
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 08:13:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh1vu-0006vI-SM; Wed, 30 Jul 2025 10:13:06 +0200
Message-ID: <a62d9aec-d1da-4e62-9b15-efbf67440893@pengutronix.de>
Date: Wed, 30 Jul 2025 10:13:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
 <20250729203659.1858575-3-ivo.ivanov.ivanov1@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250729203659.1858575-3-ivo.ivanov.ivanov1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_011308_150659_7E2AA030 
X-CRM114-Status: GOOD (  21.04  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/4] clocksource: arm_architected_timer: support
 clock-frequency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 7/29/25 22:36, Ivaylo Ivanov wrote:
> Some platforms, like the Samsung Galaxy S8, leave CNTFRQ_EL0 unset in
> the previous stage bootloader. Therefore reading it causes a hang and
> the boot proccess is halted.
> 
> Since on such retail devices there is no way to set it without replacing
> the entire boot chain, allow setting a value from clock-frequency
> whenever it's passed.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux does this too, so I think regressions are unlikely.

Cheers,
Ahmad

> ---
>  drivers/clocksource/arm_architected_timer.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clocksource/arm_architected_timer.c b/drivers/clocksource/arm_architected_timer.c
> index 9a1f2d2b..daced94c 100644
> --- a/drivers/clocksource/arm_architected_timer.c
> +++ b/drivers/clocksource/arm_architected_timer.c
> @@ -24,7 +24,16 @@ static struct clocksource cs = {
>  
>  static int arm_arch_timer_probe(struct device *dev)
>  {
> -	cs.mult = clocksource_hz2mult(get_cntfrq(), cs.shift);
> +	u32 cntfrq;
> +	int ret;
> +
> +	/* Some platforms don't set CNTFRQ_EL0 before barebox */
> +	ret = of_property_read_u32(dev->of_node, "clock-frequency", &cntfrq);
> +
> +	if (ret)
> +		cntfrq = get_cntfrq();
> +
> +	cs.mult = clocksource_hz2mult(cntfrq, cs.shift);
>  
>  	return init_clock(&cs);
>  }

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




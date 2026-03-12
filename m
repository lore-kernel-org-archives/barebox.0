Delivery-date: Thu, 12 Mar 2026 10:51:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0chE-00AmIL-1A
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 10:51:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0chE-00049M-NJ
	for lore@pengutronix.de; Thu, 12 Mar 2026 10:51:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TohvbvPEWDMeYQ0bq5Pm58cwd6tVmyAEw/LAMa5NOA=; b=F0588gp2GjEAWo
	vpOMS/zXEQI6psm/+Ay2WXB9acu+m2vHicjlh0MaIoMgAryX9T9BdleBMXUhAgwm1EkANKGluSwDH
	SYiXZc93dD2IVXfCJtpFbzYhBJ7n3HzYaDCUg10fSRHAkhe8eK3MYJLFbRSqVdWT5q/tth+13M0Jf
	vig1tenPsog2ng7K90jICMJSqK/f3NXcwQsGoUYEkB5XQPYA2VBvOt+7sCiJu8gnZ+PslXikMopVU
	mIJrD/2779RV3lEWt/FH/eccdyRxp+y/HN/6dBDMpTVXN5wYKeNZSMz7hjrwFoIfA/1NtUJFh4vUf
	1LUCkKcSsDVlTjJPBkcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0cgi-0000000Do9m-1ooD;
	Thu, 12 Mar 2026 09:50:40 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0cgf-0000000Do8n-0iaf
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 09:50:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:in-reply-to:from:references:cc:to:
	 subject:mime-version:date:message-id:from;
	bh=3TohvbvPEWDMeYQ0bq5Pm58cwd6tVmyAEw/LAMa5NOA=;
	b=mBVTJ7aeK/jK94IGhmVzjh/tRtU6cnvZ/+i8qZvMK2SKBGonXyAgKEjTzEFR+bUc/z8R65Yzy9kEu
	 8HTe2S6HRuwepvp8fmA+LD46GFfq6YDXSVUv/bhr1ywu9vG4klstuSmTAQAmGNPKiN6KJgZ4DIxosW
	 qxOz0P/melcE8FmZGebaU/KZ0xLJkld13lDtcuKFNmaWJgoiiBfKN7iuXjN6W//cclsirpPefWvvIf
	 KYTjTzywjBRcSiopR+E+oaF4V5+U5JGup3R8fcGG9AHH9X+XyuORGuuEJIeiN5pv2Jo6w1NQQv4DO0
	 6Iy3l2z6RYObTfQ4uZVyv97QcyVpW1A==
X-MSG-ID: e74235da-1df8-11f1-9155-005056817704
Message-ID: <882bdcfa-c09a-43ae-b41f-654e4ded2d2c@protonic.nl>
Date: Thu, 12 Mar 2026 10:50:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Jander <david@protonic.nl>,
 Robin van der Gracht <robin.van.der.gracht@protonic.nl>
References: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
 <20260312092113.1d90fd46@erd003.prtnl>
Content-Language: en-US, nl-NL
From: Robin van der Gracht <robin@protonic.nl>
Organization: Protonic Holland
In-Reply-To: <20260312092113.1d90fd46@erd003.prtnl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_025038_034601_18C45772 
X-CRM114-Status: GOOD (  13.05  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/8] ARM: boards: protonic-mecsbc: Generalization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 3/12/26 09:21, David Jander wrote:
> On Tue, 10 Mar 2026 16:24:25 +0100
> Robin van der Gracht <robin.van.der.gracht@protonic.nl> wrote:
>
>> Hello,
>> This patch series makes changes to the existing protonic-mecsbc
>> board support. These changes pave the way for supporting multiple
>> simular products with the same board support code. We'll be adding
>> products with a RK3562 chipset to the mecsbc board code.
>> For that we'll change the board name to be more generic: protonic-rk356x
> Why not protonic-rk35xx or something even more generic? protonic-prtpuk is
> already mainlined and the code is very similar to this branch. IMHO it should
> also be merged. Q4/2026 the RK36xx family is being launched. We don't know yet
> whether it will be sufficiently similar/compatible to warrant a hypothetical
> protonic board to also be added here?
The prtpuk is a rk3576.

I'd like to suggest changing it to  protonic-rk35xx now so we can merge 
the prtpuk
into this board support later on.

If future rk36xx board support aligns with our current rk35xx board 
support than we can
always merge that with new patches in the future.

- Robin



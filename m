Delivery-date: Fri, 12 Apr 2024 15:33:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH2C-0095MR-2C
	for lore@lore.pengutronix.de;
	Fri, 12 Apr 2024 15:33:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH2C-0001k6-2U
	for lore@pengutronix.de; Fri, 12 Apr 2024 15:33:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qtsu8rIEcbXtFoS8UyIVO6T5aGsuCwl29Bd/L7VLTzE=; b=gsB9XjhTlyKrOVCyhzGs5TW3hi
	x7GiGB62x7vwTP23gJgkOm9fA4lnEouXk9+VjLZIFNDpRwWiNMgBTj6j6GhnLsEasbuBfw5s8nQvt
	VaKlS8Dfwk1KOtbhQqoVW3n1ylSO/uyX7OV3YMRFLywh+gCMe9XXQKQlaCNqNRoD8O1eN+7iHGp4M
	ycXMryrwyLuzt7DVjOhahxwb2jpsUXmwZ8tHWp7So8P2B9VRR78WR6AioEbfGuxnDXAKr2X+MmmH6
	NDWrCmI+a6FzGgEZLymyVxtv8oT2q9uw4wmR+KYzy4oAt8ryYkruM7xFjwAcJSgoqLzKqZw1DICg+
	MPRfdQtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH1m-0000000HLsT-3uxN;
	Fri, 12 Apr 2024 13:33:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH1e-0000000HLjz-0XZi
	for barebox@lists.infradead.org;
	Fri, 12 Apr 2024 13:33:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rvH1a-0001GE-2J; Fri, 12 Apr 2024 15:33:02 +0200
Message-ID: <3c5fd58a-6d49-4eca-ae39-d507acc35f8c@pengutronix.de>
Date: Fri, 12 Apr 2024 15:33:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michael Riesch <michael.riesch@wolfvision.net>,
 Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
 <20240405-feature-wolfvision-pf5-v1-1-e4a29c0e7fe1@wolfvision.net>
 <20240405170223.k4yijw7wffr3fy4j@pengutronix.de>
 <12f46e93-c50f-4c3b-9052-eb25c5448d88@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <12f46e93-c50f-4c3b-9052-eb25c5448d88@wolfvision.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_063306_944472_6DBD8FF6 
X-CRM114-Status: GOOD (  18.87  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] DNM: dts: arm64: rockchip: copy pf5 device tree from
 mainline Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12.04.24 15:02, Michael Riesch wrote:
> Hi Marco,
> 
> Thanks for your response!
> 
> On 4/5/24 19:02, Marco Felsch wrote:
>> Hi Michael,
>>
>> thanks for your patches.
>>
>>> DNM: dts: arm64: rockchip: copy pf5 device tree from
>>
>> I suppose DNM means "do not merge", instead of marking it this way we
>> put the not yet upstream Linux dts files into arch as well but mark them
>> as upstream dts file, e.g.:
>>
>>   - arch/arm/dts/imx8mm-innocomm-wb15-evk-upstream.dts
>>   - arch/arm/dts/imx8mp-debix-model-a-upstream.dts
>>   - arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
>>   - arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi

I have been wondering if we should add yet another device tree
directory for kernel DTs that are not yet in the kernel, e.g.
common/boards/dts. Then we can place full DTs there, remove them
once they are in dts/ and clean up arch/$ARCH/dts/ that way.

> OK, I'll do it that way!
> 
>> Once the files are usptream we can remove them.
> 
> Is this something I should keep in mind or may I expect that this
> happens automagically?

Usually, when someone notices. Having them in a single directory
as suggested above may make it easier to sport no longer needed DTs.

Thoughts?

Cheers,
Ahmad

> 
>> On 24-04-05, Michael Riesch wrote:
>>> [...]
> Best regards,
> Michael
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




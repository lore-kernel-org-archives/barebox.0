Delivery-date: Mon, 13 Apr 2026 13:23:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCFO2-00BhSP-33
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 13:23:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCFO2-0001ed-Ct
	for lore@pengutronix.de; Mon, 13 Apr 2026 13:23:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KWzwfh7sz+4cQb5flkoWBBmOq7rJvf5TqqgknjM+oyI=; b=doSV6UVj/ftvCEDIl75sAcgVKS
	uMqR7mruJkAQiH0NwePGv8Te4/f47UKVUd/TSZT5U2rQT2M1WHeKfweq0Lg8ztnBxXVYPWHkrvs0M
	hfOpC9znCzRrwtgD90RW+oyx9xybw/ZV97bbYW90GzrPp9jXSzAA1eiWQb0Rpl4obDpOTZ+tAeFr2
	sTmqXl5JUr4QgHDwDWSWU6XzzDoaDErLaWb2eN0JSn9eS2/GmHjV3vEan4RsifOpFfcYglb0u0DAv
	Uo5XnZTXPDssHBZUjcoTbG1cAvYA8pKEauUMGEqSxBzofyJWXQE0qVhHtSImGcHKlEcJm2QIqh9eT
	mcrnEoWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCFNa-0000000FZKE-2wFp;
	Mon, 13 Apr 2026 11:22:58 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCFNX-0000000FZJr-2Nxw
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 11:22:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:in-reply-to:from:references:to:subject:
	 mime-version:date:message-id:from;
	bh=KWzwfh7sz+4cQb5flkoWBBmOq7rJvf5TqqgknjM+oyI=;
	b=RJdZNIRmrt32q7VIE828J2+6MAiCVniW8cco0hM4pAr6WpAQlmedaa2k62NUY4A+r4UqZE2/kTtjE
	 43EnFmY1KXBXx+MfOvKYMR0Z+1rjNJOfI2cCTsf+MjPzMcZaZ3xd32ftxfHALj8It9DpbpzyZaXCMB
	 kWDSuZxgb5oYqV4KnSrGkZKP8U6k5UPSRAF6yL7uxR0md39848zHuWN/vIDZ5dVy7ga6/bGEr671vX
	 NhtzjQb3pZilLS7cumGfNZBzMPJ/bA15ixGCXe4cML4uphMZwD3vTmTGBMWcXYUSewqsQjtCmAQ/Hc
	 YvnG0woHZQCmfS/3J9DPFutjhiqL0PQ==
X-MSG-ID: 188ec138-372b-11f1-bcdc-00505681446f
Message-ID: <0378d500-7b92-4e41-b341-2601e874106e@protonic.nl>
Date: Mon, 13 Apr 2026 13:22:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20260408121912.1428585-1-yunus@protonic.nl>
 <56377c59-066d-4e49-a249-0216a9d6629d@pengutronix.de>
Content-Language: en-US
From: Yunus Taskopru <yunus@protonic.nl>
In-Reply-To: <56377c59-066d-4e49-a249-0216a9d6629d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_042256_025070_DC85F5A0 
X-CRM114-Status: GOOD (  18.04  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: rk3588-rock-5b: use broken-cd for sdmmc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

At the moment, I am experiencing some hardware issues with the SD card 
slot, so I am unable to test whether the ROCK 5T workaround also works 
on the ROCK 5B.

Op 08-04-2026 om 3:59 p.m. schreef Ahmad Fatoum:
> Hello Yunus,
> 
> On 4/8/26 2:19 PM, Yunus Taskopru wrote:
>> Using the card-detect GPIO caused SD card access to fail on a tested
>> ROCK 5B.
>>
>> Replace the card-detect GPIO setup with broken-cd and drop the detect
>> pin from the sdmmc pinctrl configuration.
>>
>> Signed-off-by: Yunus Taskopru <yunus@protonic.nl>
> 
> This sound very similar to commit bd5518cd7e34 ("ARM: rockchip: fix SD
> card startup for Radxa ROCK 5T").
> 
> Optimally, we would support whatever is needed for the hardware chip
> select to work, so we can use the same pinmux as Linux.
> 
> Next best thing is that we don't have different workarounds for the same
> issue.
> 
> Can you check if the workaround in above commit also works for you if
> you add it into the ROCK 5b DT?
> 
> Thanks,
> Ahmad
> 
>> ---
>>   arch/arm/dts/rk3588-rock-5b.dts | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/arch/arm/dts/rk3588-rock-5b.dts b/arch/arm/dts/rk3588-rock-5b.dts
>> index aca675f57f..decece25d4 100644
>> --- a/arch/arm/dts/rk3588-rock-5b.dts
>> +++ b/arch/arm/dts/rk3588-rock-5b.dts
>> @@ -55,6 +55,12 @@ environment_sd: partition@408000 {
>>   	};
>>   };
>>   
>> +&sdmmc {
>> +	broken-cd;
>> +	/delete-property/ cd-gpios;
>> +	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
>> +};
>> +
>>   &pcie3x4 {
>>   	/* Does not work in barebox (missing phy driver) */
>>   	status = "disabled";
> 

-- 
Yunus Taskopru
Protonic Holland.
tel.: +31 (0) 229 212928
De Factorij 36 / 1689 AL Zwaag




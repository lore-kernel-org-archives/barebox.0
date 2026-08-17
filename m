Delivery-date: Mon, 17 Aug 2026 09:31:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvroF-00437q-0D
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 09:31:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 873E22009FB
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 09:31:02 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nBnfoMbV;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+LS5MZni/AWZVWMQGRpi6LFDnv2k/XNbF0Ls2L0tyRU=; b=nBnfoMbVj1YMOtSw0yySDQVUQN
	uUrYdeb2ew8Wml6SbDS4rHUP2sy4UudJ+lybMeD+Jcxq2Vz5GFGEDKE84NeLKomFTNOZhuG7+YK02
	lSyT/bJpBOIFUfdKb+ir+MccLkXE0pa466jvn7T4mUjcG+01e94QdG3Z9Bxt87iCzezbCxu0JTlIX
	kPX9HiGD6gkibR7ulwT0fZJGj3R2cnsVXr5mucyPdZOR36PaBC1sJRRoiDll1ZwZS0y0VRMMiVvez
	Uh85e4SZihLAyhBfgU7embmRw7hVyBuEtRxpZVc/h1sR6VGPT8UNZrrMDFk+Cg1x8sRCc+w1sY3r4
	IDFQGDGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvrni-00000005YYF-0L4M;
	Mon, 17 Aug 2026 07:30:30 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvrnc-00000005YXX-2hbO
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 07:30:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DCDA9200444;
	Mon, 17 Aug 2026 09:30:20 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wvrnY-001uSW-2X;
	Mon, 17 Aug 2026 09:30:20 +0200
Message-ID: <19d25c21-a937-4e63-abd5-67afafc6abd9@pengutronix.de>
Date: Mon, 17 Aug 2026 09:30:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: RK3588 optee question
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvRLYGdbNX_uK2bqHAOSqPDydYPi25fULCVTXop7VB227w@mail.gmail.com>
 <6a82a488.478ea94c.10bcfe.7909SMTPIN_ADDED_MISSING@mx.google.com>
 <CAP1tNvR34q93DFDreTvvvYPLz0=7=U1_P9w65a0+Xug4OjcA8g@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <CAP1tNvR34q93DFDreTvvvYPLz0=7=U1_P9w65a0+Xug4OjcA8g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_003024_835019_879898F0 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 8/17/26 8:14 AM, Alexander Shiyan wrote: > Hello. > > Yes,
    everything works now. > > The only thing that's unclear is that kernel loading
    is interrupted > when using the open source TF-A > for the [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: dznqpdcixkyztc5ad8eombeqz68rciny
X-Spamd-Result: default: False [-7.61 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.20)[2a0a:edc0:0:900:1d::77:received,2a0a:edc0:0:c01:1d::a2:received];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 873E22009FB

On 8/17/26 8:14 AM, Alexander Shiyan wrote:
> Hello.
> 
> Yes, everything works now.
> 
> The only thing that's unclear is that kernel loading is interrupted
> when using the open source TF-A
> for the RK3568. The RK3588 doesn't have this problem.
> However, this is most likely a problem with the TF-A implementation,
> not the barebox.

interrupted as in it hangs? Did you check if your reserved memory
entries are correctly populated?

Cheers,
Ahmad

> 
> Thanks!
> 
> пн, 17 авг. 2026 г. в 09:04, Sascha Hauer <s.hauer@pengutronix.de>:
>>
>> On 2026-08-14 11:42, Alexander Shiyan wrote:
>>> Update:
>>>
>>> Issue with RK3588 resolved by adding SPD=opteed to the TF-A build command line
>>
>> So is everything resolved now?
>>
>> Sascha
>>
>>>
>>> пт, 14 авг. 2026 г. в 09:49, Alexander Shiyan <eagle.alexander923@gmail.com>:
>>>>
>>>> Hello, Sascha.
>>>>
>>>> With CONFIG_SCRATCH_SIZE=0x100000 compiles fine.
>>>>
>>>> Now about the current errors, one build is used for two images for
>>>> RK3568 and RK3588.
>>>>
>>>> RK3568, Rockchip BL31, tee.bin from OPTEE_OS:
>>>> arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware version 0x0
>>>> optee: smc_abi: probing for conduit method.
>>>> optee: smc_abi: revision 4.10 (5c827bf3bc358e9a)
>>>> psci psci.of: detected version 1.1
>>>>
>>>> RK3588, open source TF-A, tee.bin from OPTEE_OS:
>>>> arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware version 0x0
>>>> optee: smc_abi: probing for conduit method.
>>>> WARNING: optee: smc_abi: api uid mismatch
>>>> ERROR: optee firmware:optee.of: probe failed: Invalid argument
>>>>
>>>> Switching to a configuration using Rockchip BL31 with the TEE/OPTEE options
>>>> currently enabled results in a constant restart of DDR init code, meaning the
>>>> code never reaches BL31...
>>>>
>>>> What else can I watch?
>>>>
>>>> Thanks!
>>>>
>>>>
>>>> чт, 13 авг. 2026 г. в 09:42, Sascha Hauer <s.hauer@pengutronix.de>:
>>>>>
>>>>> On 2026-08-12 17:44, Alexander Shiyan wrote:
>>>>>> Hello Sascha.
>>>>>>
>>>>>> After enabling CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT=y the following build
>>>>>> errors occur:
>>>>>>
>>>>>> CC [P]  arch/arm/mach-rockchip/rk3588.pbl.o
>>>>>> In file included from include/linux/array_size.h:6,
>>>>>> from include/linux/kernel.h:6,
>>>>>> from /home/ARM64/barebox/arch/arm/include/asm/barebox-arm.h:17,
>>>>>> from include/mach/rockchip/bootrom.h:9,
>>>>>> from arch/arm/mach-rockchip/bootrom.c:2:
>>>>>> include/linux/build_bug.h:100:41: error: static assertion failed:
>>>>>> "sizeof(structrockchip_scratch_space) <= CONFIG_SCRATCH_SIZE"
>>>>>
>>>>> Set CONFIG_SCRATCH_SIZE=0x100000
>>>>>
>>>>> Seems we have to look into it to get a sane default.
>>>>>
>>>>> Sascha
>>>>>
>>>>> --
>>>>> Pengutronix e.K.                           |                             |
>>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>>>
>>>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




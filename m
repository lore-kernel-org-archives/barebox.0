Delivery-date: Tue, 11 Aug 2026 16:08:52 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wtn9v-00207p-2W
	for lore@lore.pengutronix.de;
	Tue, 11 Aug 2026 16:08:52 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 611DF201C9E
	for <lore@pengutronix.de>; Tue, 11 Aug 2026 16:08:52 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=flXswJkJ;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tbGFIwxsEc0afT8mcHh5NNgDfrTS/CucUF58ailCNs0=; b=flXswJkJphQ7RCCN1pCUmRG3so
	h3lswTcL+Rdfz1P7WPPoaBI2L70EpX1n8VSsLUO8YVj2T9+QMPkHrQ0QNE8+m7JOxIGPCiTATZOBW
	lU5Rz1qmSDNP8+UOuGd/d3GzmYKYCrDRI7iL/3/IeeWeZw0QIWLetWEaZpCqf+7R7AQacMlS+nIVe
	PM4TmaXmCx87CspDvz/fPda6gdViAGtGt0Rd5TMdaKSA9jlQl0DEDi962LTtON9Ct2OqWoFHBkAhZ
	Gll/ioicGYTif8Km+5rNsS9ZYpSdd/IAUnJSO2jHu5BZ52dZp8CHilpn/GDVh7fl5Vx4EgK+g+sTh
	4LvRyE0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtn8e-0000000EB7G-1Bjr;
	Tue, 11 Aug 2026 14:07:32 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtn8a-0000000EB6j-1kXQ
	for barebox@lists.infradead.org;
	Tue, 11 Aug 2026 14:07:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D6E4A2017AA;
	Tue, 11 Aug 2026 16:07:25 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wtn8X-000xaO-2O;
	Tue, 11 Aug 2026 16:07:25 +0200
Message-ID: <92b327a9-0253-4fb1-80d3-31d4c1ebc2d7@pengutronix.de>
Date: Tue, 11 Aug 2026 16:07:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: RK3588 optee question
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvQBxkjkCX7=zYt5ACjUUi+c2FkbCjz7UG+vQeVKeNB_Og@mail.gmail.com>
 <4fe06c6b-c3d8-40ab-9e80-b853dfa617ee@pengutronix.de>
 <CAP1tNvRB6qH2Ujv7=AvKL3kZTdaDrWO2gDZSKRucW7_g3pwoeg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <CAP1tNvRB6qH2Ujv7=AvKL3kZTdaDrWO2gDZSKRucW7_g3pwoeg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_070728_603796_1F4CB53C 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/11/26 2:54 PM, Alexander Shiyan wrote: > Hello. >
    > As far as I can see, this option (CFG_CORE_DYN_SHM) is enabled > by default
    in out/arm-plat-rockchip/conf.mk > > Experiments with the open (BL3 [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: 1i7shitg51hm96t94czkdwh8nn5eat5y
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:eagle.alexander923@gmail.com,m:barebox@lists.infradead.org,m:eaglealexander923@gmail.com,s:lore@pengutronix.de];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
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
	TAGGED_RCPT(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 611DF201C9E

Hi,

On 8/11/26 2:54 PM, Alexander Shiyan wrote:
> Hello.
> 
> As far as I can see, this option (CFG_CORE_DYN_SHM) is enabled
> by default in out/arm-plat-rockchip/conf.mk
> 
> Experiments with the open (BL31) TF-A version give a different error:
> ...
> NOTICE:  BL31: v2.15.0(release):v2.15.0-274-gc64fe42d7
> NOTICE:  BL31: Built : 14:41:34, Jul  6 2026
> ...
> arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware version 0x0
> optee: smc_abi: probing for conduit method.
> WARNING: optee: smc_abi: api uid mismatch
> ERROR: optee firmware:optee.of: probe failed: Invalid argument

Huh, no idea off the top my head what is still missing in the OP-TEE or
TF-A configuration.

Cheers,
Ahmad

> 
> вт, 11 авг. 2026 г. в 15:19, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>
>> Hi,
>>
>> On 8/11/26 1:51 PM, Alexander Shiyan wrote:
>>> Am I missing something?
>>> The following lines confuse me, what is these line mean?:
>>> ERROR: optee: smc_abi: driver requires OP-TEE dynamic shared memory support
>>> ERROR: optee firmware:optee.of: probe failed: Function not implemented
>>
>> Try enabling CFG_CORE_DYN_SHM in OP-TEE.
>>
>> Cheers,
>> Ahmad
>>
>>
>> --
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




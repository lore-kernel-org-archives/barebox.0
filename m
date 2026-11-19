Delivery-date: Thu, 19 Nov 2026 17:04:05 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xU4cG-0019GK-0h
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 17:04:04 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3B08C202933
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 17:04:00 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NWhe5OgZ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ACM7kZWd;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795104240;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=i0E73OD+tmCgCtc20nde7rRGqEHCRDNJxDnmQqLHLSo=;
	b=ZlgQwSrjRchXaE/HhGfrZIMKg8iU1MRNHjY+Z1SNkNc6d63pVWf6qtJK1fscA2UV0UE+vF
	EaDyY66on0/wR7UUsQgwJJEMlslyCjWSf5deeJt4er6/pGsfeUiMjiO5HpAKN2KtqQBbgi
	+0UiDdaqyagNKHIIZ6VVS2tfMVCfEKGw65tUlpKPq70hf3f2hhphnHHA2TbH3fvDQUhcim
	nNz/cQp9cRTGJbuVv7eU7HkV1LgT8rpdY23FxXr7PAZd38WQAKft48exwR5KAkKRFXPsq/
	sXzVsXteGzlOQ6Xs/aSgwE4bN+tbsbzLEB/DI/J7/PeNMfhMlA+DrzwaddTBHw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795104240; a=rsa-sha256;
	cv=pass;
	b=SxwEyJfo6U38T20V8M4fhKd4lLMFwEQn0V4Ux/rDAv7g82WKSkDiEDNvFCLvLOFcNjTFyu
	mfcdQsmdE7ZAeTpflOgXXVhlRn5u7vB9I/hpzVYg3Fs3GHUulRwDpD6nrJdN8E98UxU0k+
	hxl1pfgfO7eiQvq3P9oZM/furYmU+OIA4ONMAiaj/nNLSXL9mxnhDhl/FpFGNBp5BVrz8G
	JKmaubV9CPD0I1MPwZn6FJUkG+T4iPg8pSo4bSgKvS47XsAMYDWCDRlLZrmYBnC/TdhxOW
	PsNa9emuVCmOLHZuJD+ExsUGNHxeqVvTJf4pWeZsXNogvK4DWQB0Hk7mlH1KMw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NWhe5OgZ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ACM7kZWd;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=i0E73OD+tmCgCtc20nde7rRGqEHCRDNJxDnmQqLHLSo=; b=NWhe5OgZ6osd4z
	3WoAtPhFwoKB2ETWh+4LsPrsgA02LJsnLsCXUJhz17oQ0utYvABtcm7h1sH3fmB+MQLRotersg3m5
	j159WpTDaWp9atcx1YKOkq7iwgmYT7DppbtnVQlDUP7NtMp6nXAS3erlaNfJc1J7Zhs4GfpfKEktN
	xpHIHXbUiEM0iw+0zAAKPeTyVNOInfiuyw4MFbr7NohpS9eEBiTn+hFp5GKg5EF6v2Q/K+Wihr3hO
	gRCG8ofA9hjiCEgo4cYa+7L3lDbV7U9Jv0lzjJPWJJawdzJNUDpxhhnPhqF/PbseO4rS+8efFoGyq
	BH3np6qVA9m1KINaZvkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4ak-0000000CZk9-2ZEd;
	Thu, 19 Nov 2026 16:02:30 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4af-0000000CZiU-1mxU
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 16:02:29 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C1D37202931;
	Thu, 19 Nov 2026 17:02:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795104138;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i0E73OD+tmCgCtc20nde7rRGqEHCRDNJxDnmQqLHLSo=;
	b=ACM7kZWdxiAbpykPN8tWwmegSkUYXA7IL0DXb4Ff/tlR4iiaEnJy5DJeRlSp2IPLU+iEw4
	zM0Ya01wMD9VOIrBGtkipOBSnwfSAG6wOmbzsPiGQgEky6Zk5VFYLzrb2c+/RO0B5x2kIH
	2lGhPwH8UvZWOJ65EpfMXR4rkvsriIorIylaU45DE5lL19CQiQTOKyTDs/VH2CenCXNM+/
	L12QlFo+wsNGyop6cBk9WKWHMcPAotg8265h8eUpjFVG0OeuSYaQeI/orUm8UwFhEZRvc8
	NyFe/o0EntWTwS7FRZDzAJVt8v2H6U4yBd7pabrEuDudhrVXdvf8mzkiIBIFYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795104138;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i0E73OD+tmCgCtc20nde7rRGqEHCRDNJxDnmQqLHLSo=;
	b=fG7HNEp9B/K3YtoMC84i4u0VuxtvXUEs2q3NUj16D2QIcCsfU7mM7oqvoVMpvyTueqqDZb
	2L6Tp09t1MXan5bEqiKKRUJ6ZViSSKfW37fYuvD1obB63zYkSK721hTm++qbQLar+ynrA0
	tKVDzr+sTVb8LpuzetWo88odm+fIrLfrpK2+XP4FT8rAJT7KtmziNYVqxz2gE5fkoZxLPE
	UlGX5p4pXMXwUEJUBbTxotWlqBgq8tQmSKsWqUg4I016G4GPMhND6kx6PXmUyJeSymx4D9
	YTY7SAbvvLeZ1Qb7H9NKgoNjhHRha0hSYHsI1ueP4r519rGYuyDtFCoQPJ2rpw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795104138; a=rsa-sha256;
	cv=none;
	b=FYI6TcRjm+9ZCuyMHOeKV3eNiRV6B4rhDS1gWtLUqTQIj7A7tMuYClKQUx6m8VHXmAWCgi
	YJLQHRlfIY8WEwEzqGA7dmaJyWhmEI7bELV6tcnq0j3gMxS0kqTd73IJEOiLkuGKGYSDxI
	gt2xzjcci+y9hvzCyirR3zvrB9Kk+bHpgrwUIAEauOwLjJZKnsZJrX+sfzFqt3HCBA1Tyn
	X+fogy79ClFuT7BQlS6+5k0HBdTJ8MKGbifM1YFOMIaly1G9hGQtTSMxn2kB3pKquF+dR7
	Xw07usVObndIDu8xKtw1j5QQvZJH+szOjEH3eiMeiSR2prp6eR0I5GHy1+eW3A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <2817c1f2-7550-4c85-821d-acffc20d3077@pengutronix.de>
Date: Thu, 19 Nov 2026 17:02:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Strange bug with supply dependency
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvRtU8munqnUTiqU_zEP_rxdm_hb42u_oU1FVL93czrtFA@mail.gmail.com>
 <yhue3ceigbcc2njkoqyui5z6dhjkxts3dvbbwxlt7v36abxsyi@v3uubuqgfe5x>
 <CAP1tNvRpSdk9mauU3RGraT0DqCc5LFyR8mzBjHQg3Uw_eeo63A@mail.gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvRpSdk9mauU3RGraT0DqCc5LFyR8mzBjHQg3Uw_eeo63A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_080227_916383_B83165CF 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Alexander, On 11/19/26 4:30 PM, Alexander Shiyan wrote:
    > Hello. > I meant that the PMIC driver prints no errors in this case. >
   Only GPIO driver print the error. > Currently, it looks like this: > > Board:
    Dias [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.22:email,0.0.0.23:email];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 3B08C202933
X-Rspamd-Server: mx1
X-Stat-Signature: hzw9ymukwsfgwht6wyjn3jdfb7xr94cq

Hello Alexander,

On 11/19/26 4:30 PM, Alexander Shiyan wrote:
> Hello.
> I meant that the PMIC driver prints no errors in this case.
> Only GPIO driver print the error.
> Currently, it looks like this:
> 
> Board: Diasom DS-RK3588-SMARC-EVB
> rockchip-dmc memory-controller.of: Detected memory size: 0x400000000
> netconsole: registered as netconsole-1
> fan53555-regulator rk86020: FAN53555 Option[10] Rev[1] Detected!
> WARNING: pca953x pcal65240: Failed to get 'vcc' regulator with
> Requested probe deferral (ignored).
> fan53555-regulator rk86021: FAN53555 Option[10] Rev[1] Detected!
> fan53555-regulator rk86030: FAN53555 Option[10] Rev[1] Detected!
> ERROR: rockchip_saradc fec10000.adc@fec10000.of: can't get
> vref-supply: Requested probe deferral
> ERROR: rockchip_saradc fec10000.adc@fec10000.of: probe permanently deferred
> ERROR: Could not find ADC channel "aiodev0.in_value1_mV": -2!
> ERROR: Could not find ADC channel "aiodev0.in_value7_mV": -2!

Do you reach a shell afterwards? Can you share the devinfo/drvinfo output?

Cheers,
Ahmad

> 
> чт, 19 нояб. 2026 г. в 18:08, Marco Felsch <m.felsch@pengutronix.de>:
>>
>> On 26-11-19 17:19, Alexander Shiyan wrote:
>>> Hello All.
>>>
>>> I have the following DTS fragment:
>>>
>>> exp: gpio@22 {
>>>   compatible = "nxp,pcal6524";
>>>   reg = <0x22>;
>>>   gpio-controller;
>>>   #gpio-cells = <2>;
>>> //  vcc-supply = <&vcc_1v8>;
>>> };
>>>
>>> pmic@23 {
>>>   pinctrl-names = "default";
>>>   pinctrl-0 = <&pmic_pins &rk806_dvs1 &rk806_dvs2 &rk806_dvs3>;
>>>   compatible = "rockchip,rk806";
>>>   reg = <0x23>;
>>> ...
>>>   regulators {
>>> ...
>>>     vcc_1v8: dcdc-reg10 {
>>>       regulator-name = "vcc_1v8";
>>>       regulator-always-on;
>>>       regulator-boot-on;
>>>       regulator-min-microvolt = <1800000>;
>>>       regulator-max-microvolt = <1800000>;
>>>
>>>       regulator-state-mem {
>>>         regulator-on-in-suspend;
>>>         regulator-suspend-microvolt = <1800000>;
>>>       };
>>>    };
>>> ...
>>>
>>> Uncommenting the "vcc-supply" line causes the PMIC driver to silently
>>> fail to load,
>>
>> What do you mean by silently? Are there no error messages?
>>
>> You extend the driver error message from:
>>
>> dev_warn(dev, "Failed to get 'vcc' regulator (ignored).\n");
>>
>> to
>>
>> dev_warn(dev, "Failed to get 'vcc' regulator with %pe (ignored).\n", reg);
>>
>> Regards,
>>   Marco
>>
>>> which in turn breaks all devices powered by the PMIC.
>>> None of the expander's GPIOs are used anywhere.
>>> When this line is commented out, everything works as expected.
>>> Is there some sort of dependency from sharing the same bus?
>>>
>>> Thanks!
>>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




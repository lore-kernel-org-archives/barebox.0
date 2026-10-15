Delivery-date: Thu, 15 Oct 2026 14:47:54 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHKsE-00DvMW-1i
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 14:47:54 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E137D201547
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 14:47:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=p8rA8+D9;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AMkJqKv3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792068470; a=rsa-sha256;
	cv=pass;
	b=RJY4jcAxLr3SvmmHSHcUl7xQQ6SFiDN6mhmxBjwI73M5R2HqMbeBjj7o6kE5dqjM8cdETF
	9ZQ+3hleHcHbOJzf+tnp4aM46D/GoT1tGQc9njhR2VmW1mahGLjjb77KaFJr9iW8QowXr9
	VG1ARk9544DuIExD2ozfw9oVQAKXajKuYoDT2KnRy7tnefHgK0Ux7OPH0D4JZwoRt+DPk6
	3DGxeO07JMPZsMTH2u4B8fdIaIfkehOYga32HFL/fokGN5lN9TVZLBCa4WDuWR8Amipvg9
	9xOaeeiVTVJh9Llg59w2yZePsCkJzhgrWnuI09DXNNESr3bA1Q2U46Kc4VrCeA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=p8rA8+D9;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AMkJqKv3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068470;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=OaD2g4u7xw3pE/d23Rn95KPFoHgEItBGulnL40lxEw8=;
	b=G0sgJBzpcASYjidY9AyaI4q4gHk4S8DYZOtAtTv0PPog6/TfHWOw8DzJOipsSx7Ou0qK1v
	LNN6fvsePvLRdvchboRpuFPi/HIawZsJTBdXcgmBujsV7m5RraIalnWMxPM0zpGj26qHm1
	T0sJihMf0xHs0KVVPRujP8Z4VNlyAdwZbQhaKELF1qJiwxRQb0dZj1bANvTOtiiDxBfyNb
	gz6KjDDqUwmSIZCfQhbQdOYjK1+uGUFoUuHwCsSGIdEcIdlT2+IyBV1e/lR9y8FbHoO4sm
	8QivI6XhCsjHRPLgz1RJtEeqkTHGScf1Pkee/6MMHFw0mqF9eUaj/CvICU/Wsg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OaD2g4u7xw3pE/d23Rn95KPFoHgEItBGulnL40lxEw8=; b=p8rA8+D9s7ZwlSk8W56kPOBpMq
	qgBorFABI/4tB4eCboGMxLzq9CEvt4qNFI3oFDpP+GvkjTcqaAnvC3d+njE+70YAbQAtUVhOa19cN
	9lgfdWfr10wjg8wp4U+DYM/YA1xF+jpP8S5uKTt9HepPsYzEJigRVHJIqdLcdSlSHulZh923vTB+G
	A7TpqUvkOeU0cUMtNP03EzQ33R/BbUfOOqFCQvmnEViRKZFXMpGJHzjc60fs9K6bNaxuMelaYRzLW
	FQTsTCjxyR2+m15vss70YKFgA4c6CHSI9JQ3YpO61mXmFfKa2/bDG/2DO2BIhJe31B28+mMffrRU0
	9wA/g+tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKra-000000009XU-2qOs;
	Thu, 15 Oct 2026 12:47:14 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKrV-000000009WD-2loA
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 12:47:12 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 64BC0201547;
	Thu, 15 Oct 2026 14:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068421;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OaD2g4u7xw3pE/d23Rn95KPFoHgEItBGulnL40lxEw8=;
	b=AMkJqKv3i+o9Dp/ohhbF3rsdCHfb7y1BUjEiXR6p2i2pt36is1QFs81enyIT3Pga0Dz0Bt
	btJzARxjxCT+7p86XK5sakNOp90ikS1zGvWJUJ4+Xw39I8KPdrFP+JffR4SpyFpsLup85n
	arw7b5L/ArkMwEqDsEIF0kcMqDiP05A0S8XZbYL/C/enBYS4M9IY1qKOxC/cf922Ne17xZ
	/xtvpEimn7LnQIK/IGfDxIzrgVwJTqjMcIQXaAbX3jTnq86Iji2oWpod1SIQYbKdh8MeaJ
	fmmLw1ZMA9Si6StCUAKywStOw7HUaOoA67JHgrws6Y07vmiddvhOfO4w1MQN+w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792068421; a=rsa-sha256;
	cv=none;
	b=QLtlRySPnISg0+wHpVcF22D6xP3ApNJiZZUFmUWCxhfy/lII5OK20jC3GM2MFmZICVc5C8
	QkycCNGARU2vw7f9BVBnRX52PNxu7bfWEMp4lXJxRLfWuhztJDIxr6XD4yYyYp95IarqKG
	nMBB12UWoOhv/gw0Pzc9B7jr0THC3/DM00FGp5pHMSSNFpI2BMZDzSMSS6m2ZM6vA4ktWq
	FiAbn1+vpFiPn4Qqs5PUco1je0aUYIEJrgSzkZePFhNWw90coe6vWpr6X5VPLGbvodb/XT
	4Jir7xighH7Jtu2Zs/2UF7QOZjgs03gFvq7xwd6JG6IEr9sz7V7i7Ei+FqXt7w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068421;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OaD2g4u7xw3pE/d23Rn95KPFoHgEItBGulnL40lxEw8=;
	b=TCCm4iGCjfqRITJlgJdhMdClnX1LNf9gDI/SaFFG75wLCk0BISToMzMWVGpqW14rmYCUz5
	QJ00u6JiIoUqk6/PEFttx6jV0EgYb2mFs9ZUXk3QgoYQEVpTWWTjt1ALYXzVC+/aXTQoty
	CxZuT9fpmICJIbg+BzDhqJ2MlaRSJGL8fQ7eeSz38lMGTyqu1zX+RJoRkbfK6B0yIAia/Q
	J9Yy9YNiw67NdG7tkRvk7KfCSlg9XnOG7FkWI8TzdkxRc/GEsY4sRd1O5+8jH16U6paxsL
	fA2NIQlYwlV/RU2AyutpngXh+iZN/hdqBtgYmBKDAIxoB7Vu3wpbtfR19+LjEA==
Message-ID: <2d7e5126-427c-438c-8259-c6546b764b76@pengutronix.de>
Date: Thu, 15 Oct 2026 14:47:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/10] Documentation: efi: describe load options
 handling
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-10-a.fatoum@pengutronix.de>
 <tqorcgwnas5oc5nfyuswbns7cazd2jghiqcqrk2ra7esagx2ys@4kzonh3562zf>
 <7b26bdee-d4c5-401d-9a51-1aeba18f239b@pengutronix.de>
 <gveoo4ebchsh4jsc4zclydgka5ri5ju5cmzemknugondbcpjzv@34gotzeh3jiw>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <gveoo4ebchsh4jsc4zclydgka5ri5ju5cmzemknugondbcpjzv@34gotzeh3jiw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_054710_582608_44992C2B 
X-CRM114-Status: GOOD (  27.43  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 10/15/26 2:13 PM, Marco Felsch wrote: > On 26-10-15
    13:19, Ahmad Fatoum wrote: >> Hello Marco, >> >> On 10/15/26 1:08 PM, Marco
    Felsch wrote: >>> On 26-10-15 11:18, Ahmad Fatoum wrote: >>>> +To pas [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E137D201547
X-Stat-Signature: 4bjft8wy3ywiortpjnwk4udh3mtyj9x5

Hi,

On 10/15/26 2:13 PM, Marco Felsch wrote:
> On 26-10-15 13:19, Ahmad Fatoum wrote:
>> Hello Marco,
>>
>> On 10/15/26 1:08 PM, Marco Felsch wrote:
>>> On 26-10-15 11:18, Ahmad Fatoum wrote:
>>>> +To pass a ``root=`` option to a UKI, have :ref:`command_devlookup`
>>>> +generate it for the root partition, the same way ``global.bootm.appendroot``
>>>> +would, including the option name from ``global.bootm.root_param``:
>>>> +
>>>> +.. code-block:: sh
>>>> +
>>>> +  devlookup -v rootarg -k /dev/disk0.1
>>>> +  global efi.bootargs.root="${rootarg}"
>>>> +  bootm /boot/EFI/Linux/uki.efi
>>>
>>> Just a comment on this: devlookup can't be compared to the appendroot
>>> mechansim, due to the partition enumeration mismatch between barebox and
>>> linux, e.g. mmc block device partitions start at 0, whereas linux starts
>>> counting at 1.
>>>> On embedded devices booting from an MMC device the root=/dev/mmcblk*
>>> mechanism should be used if the device supports dual boot e.g. from SD
>>> and from eMMC.
>>
>> devlookup -k follows the same code paths appendroot would follow, so it
>> will be 1-indexed /dev/mmblkXpY if that's what appendroot would have
>> produced.
> 
> Ah, good to know, thanks.
> 
>>> Therefore I would have liked to see that the appendroot mechanism would
>>> be supported for UKIs as well which would stop the requirement of having
>>> different UKI profiles just to encode the different boot mediums.
>>
>> I believe barebox can't provide this universally.
>>
>> - On an x86 system with secure boot, the systemd-stub will ignore any
>> extra command-line arguments, except for the profile.
> 
> According the comment from system-stub, the cmdline is only ignored if
> the UKI already has a cmdline and we're in secure-boot:
> 
> ---8<---------8<---------8<---------8<---------8<---------8<---------8<--
> | * We'll suppress the custom cmdline if we are in Secure Boot mode, and if either there is already
> | * a cmdline baked into the UKI or we are in confidential VM mode. */ 
> ---8<---------8<---------8<---------8<---------8<---------8<---------8<--

If you have a good idea how to design the API for this, so it's not
confusing to users, go ahead.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>> - On the ARM systems with device tree, we may be able to cheat by
>> patching the DT, but I have not checked how Linux or systemd-boot handle
>> /chosen/bootargs if they are booted via EFI.
>>
>> Cheers,
>> Ahmad
>>
>>
>>>
>>> However, as said this is just a comment and doesn't block this patch:
>>>
>>> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
>>>
>>>>  Drivers
>>>>  ^^^^^^^
>>>> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
>>>> index 8e6f3bbbe9ce..dc7ac6dc8716 100644
>>>> --- a/Documentation/user/booting-linux.rst
>>>> +++ b/Documentation/user/booting-linux.rst
>>>> @@ -103,6 +103,9 @@ to the bootargs. Variables without a value are skipped:
>>>>  
>>>>    Kernel command line: ignore_loglevel console=ttyO0,115200 earlyprintk
>>>>  
>>>> +When booting an EFI-stubbed kernel as EFI application, the
>>>> +:ref:`EFI load options <efi_load_options>` precede the Linux bootargs.
>>>> +
>>>>  .. _bootargs_concat_order:
>>>>  
>>>>  Concatenation order
>>>> @@ -170,7 +173,8 @@ This takes the kernel from ``/mnt/mmc1/zImage`` (which could be an
>>>>  boot entries should always add Kernel command line parameters to variables with
>>>>  ``.dyn`` in it. These will be cleared before booting different boot entries.
>>>>  This is done so that following boot entries do not leak command line
>>>> -parameters from the previous boot entries.
>>>> +parameters from the previous boot entries. The same applies to the
>>>> +:ref:`EFI load options <efi_load_options>` in ``global.efi.bootargs.dyn.*``.
>>>>  
>>>>  This entry can be booted with ``boot mmc``. It can also be made the default by
>>>>  setting the :ref:`global.boot.default <magicvar_global_boot_default>` variable
>>>> -- 
>>>> 2.47.3
>>>>
>>>>
>>
>> -- 
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




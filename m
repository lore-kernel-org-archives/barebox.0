Delivery-date: Thu, 15 Oct 2026 14:31:16 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHKc8-00Dv4v-1K
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 14:31:16 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 61BC7201ADE
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 14:31:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=H8dr4aGJ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=N5okznco;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792067475; a=rsa-sha256;
	cv=pass;
	b=AWxjT7hiOT59+vo+pAds2CHRQVv91Lx3r5yJcBpdRMPG6b1sB1EOJ469LZWbVBUADS83PB
	JYkneYvD4JonyyiUd4+G3Bvk8k6/9W5kGTd/zeCsPi9dXFnrR8k0RqfiYigaIHNgOPSP9F
	aMiGiumZibsCf6TtN6m1ufbFxicZbmwF2k+Sl6b1Eyb6cDiXiaBcXNe1yZy0R5fruKjbyq
	L28YWANg9BqvWdS/6/RRQHJ/B++cdxFwBNbLZtoKhVbgcB3vJ/GR8v02DMkb43OdnCuRrS
	Xfuxr4jA+iiAxIRWfjCSs/Drl3+ITmzBsHI8Oen+U4lP/ywkWhUHSLi1oKIlRA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=H8dr4aGJ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=N5okznco;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792067475;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=IjBgktAxAc3a4meIrt/6P8PlBssj3TwBv5Ne7vq81/0=;
	b=XQUmyRXWXdzLIEB2sJ7nfCecMTwS9cFjvxBoVV7E7gqaHVEBneCSWmvFukScbCtM1Uc+87
	mG6eOkKtk/zSBeVjZ51N1A7IfYU3cd95LzvRiQsCQHpVaQ/Nv8tdSS4pRlLYhZaEvAaYh7
	NMN4eZyo1GNPcY2q8LuB4PSeXNmEmC5kIAv8VMldAH0sPy4tnDZWG/oE7YwUi2fzsiLiXl
	bq16o4umxJxepmFvGoPzUiHIGC7zReTmNln2PUxR+bNLWCNUEDEJ0cuvncSoD28atA3izC
	zgukLUsRiRWC5ntvKd+6JKH1WBpY3x5aJfhl+B2Ia2UeE5hTt3I84J12jTqavA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IjBgktAxAc3a4meIrt/6P8PlBssj3TwBv5Ne7vq81/0=; b=H8dr4aGJDsZysMkZEASmpZYRCD
	p+8N05nE4YUZc8NwT9wsgbJK7/GrpUuEImLDTpl7D7j8ea5D5n3K8yMiVjIQHxyqHB6kypt6y49Bh
	b26PcUuRORgpu5Gs2feLgTAvufrQVo8Bynzp8w9MMFKIMGelu9VIlxaHJlg529JLTT/YHw/PdrAV/
	NQGYZ/5g3qhptersnbmW1AfFmkB4tUysDt+ersX3DuRcsT4QkA562vyeqBQb4sZeLPdPFg+cFaUVQ
	HSDyAZawidz8v1ajvD6wefgqos5DnF9JJGoZbeiBkJUBaxTQwV8nT3xj/zH85upBYVPTjfnq1KBfj
	tfUMAEjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJUx-0000000HYPQ-2VTp;
	Thu, 15 Oct 2026 11:19:47 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJUs-0000000HYOm-0YUm
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:19:44 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0991B202012;
	Thu, 15 Oct 2026 13:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063180;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IjBgktAxAc3a4meIrt/6P8PlBssj3TwBv5Ne7vq81/0=;
	b=N5okzncoo6WmQF/lPAzO6mPfptfqocsaOQ9W8yxVWRFsYtJ+yyRPzF4F3fgHGL8pUB36ge
	YMw5Txejg68j8IMWMnm41UHWhtI5Kykz+l4qx/sE9LKUOSHkK88rph17/T0VrnL+vS/WeJ
	hBUXKhg0klwKcjBg305O3rAh6pvbh479OmsLfxgIavAYPQ5bx4NgZiJ1rg/hE/+E/jvnin
	vWsGdoqa607WFBfV8Vqp7LpNMdL/GXMYCYw8w03uM3bYRYiWhxVJk9YHSVFsfhi71XQ54J
	O2kWm1xCgUBTNRY7hEc3QD1a0pBtOtEPUJ/U6Qr6tEBNjPfu9gRkbn8hqyvW3g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792063180; a=rsa-sha256;
	cv=none;
	b=BmFL5xBJAfEC4/uu/7Asl4UtOuz7+L4ECFVlnYbznfUPVf95XDmlxx6cEl+OmI86Wv/1BS
	TqghSsyDAOzGORe7q5kIoj7Q/e0di88Avgwsm244WGQJMLr3H5mvD3MHWw5qu2bJStDuB9
	8uqXaesgg/1oSlNplXB+sLjLa+De2RxQ2cf3QLeTijWjH4eUMhI2F/UMyPIVuaQEMlBrrt
	BsqsMBldcZB/8g8N+KMTKhOVDadY9axmBm1qToRG7t59EEsAw/L2ensJ/jN3UTJbllZGcP
	bbz9vCYrCfxNiNUepXAMFHEPUuql27JgJzu+xfCi0ifoDbG1hkJO6oP8SDADMQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063180;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IjBgktAxAc3a4meIrt/6P8PlBssj3TwBv5Ne7vq81/0=;
	b=NDn4gZmpY//c9CzVMsr8yYzctddYQjzN/ZMNyF4EG//9cD3L4lIaWqnE9FPUgJENuKEX7w
	1f/QNl1sMh2JijqCOzbThgZdIqFP1JqM/Ahtp2BBWcj03HBwGKlbKG7bzlb/LU9H3VG9KP
	swyZJ5yObEHoJvMgIT1Jd7CYrsBbkDtQg1Kjd6JZFJgdNzELilp6mYdlqDimSYDxqgt076
	gIX1fRWwIPIs41dNZ9/ioSc/rsuY5HIolytFnC2vIczu7YFxcpopD6ZPoOotZhgYp/ZFoy
	21CXqYc9VFFCAKBNNIKhTM73wwacPpEkiqzM6+2QALKKtLmHYq2JcwP1+3COIw==
Message-ID: <7b26bdee-d4c5-401d-9a51-1aeba18f239b@pengutronix.de>
Date: Thu, 15 Oct 2026 13:19:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/10] Documentation: efi: describe load options
 handling
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-10-a.fatoum@pengutronix.de>
 <tqorcgwnas5oc5nfyuswbns7cazd2jghiqcqrk2ra7esagx2ys@4kzonh3562zf>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <tqorcgwnas5oc5nfyuswbns7cazd2jghiqcqrk2ra7esagx2ys@4kzonh3562zf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_041942_892127_86CFACA8 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Marco, On 10/15/26 1:08 PM, Marco Felsch wrote: > On
    26-10-15 11:18, Ahmad Fatoum wrote: >> +To pass a ``root=`` option to a UKI,
    have :ref:`command_devlookup` >> +generate it for the root partition, the
    sam [...] 
 
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
X-Rspamd-Queue-Id: 61BC7201ADE
X-Stat-Signature: kaf9oyrutus6m8aszhscetwhsxktbmy6

Hello Marco,

On 10/15/26 1:08 PM, Marco Felsch wrote:
> On 26-10-15 11:18, Ahmad Fatoum wrote:
>> +To pass a ``root=`` option to a UKI, have :ref:`command_devlookup`
>> +generate it for the root partition, the same way ``global.bootm.appendroot``
>> +would, including the option name from ``global.bootm.root_param``:
>> +
>> +.. code-block:: sh
>> +
>> +  devlookup -v rootarg -k /dev/disk0.1
>> +  global efi.bootargs.root="${rootarg}"
>> +  bootm /boot/EFI/Linux/uki.efi
> 
> Just a comment on this: devlookup can't be compared to the appendroot
> mechansim, due to the partition enumeration mismatch between barebox and
> linux, e.g. mmc block device partitions start at 0, whereas linux starts
> counting at 1.
> > On embedded devices booting from an MMC device the root=/dev/mmcblk*
> mechanism should be used if the device supports dual boot e.g. from SD
> and from eMMC.

devlookup -k follows the same code paths appendroot would follow, so it
will be 1-indexed /dev/mmblkXpY if that's what appendroot would have
produced.


> Therefore I would have liked to see that the appendroot mechanism would
> be supported for UKIs as well which would stop the requirement of having
> different UKI profiles just to encode the different boot mediums.

I believe barebox can't provide this universally.

- On an x86 system with secure boot, the systemd-stub will ignore any
extra command-line arguments, except for the profile.

- On the ARM systems with device tree, we may be able to cheat by
patching the DT, but I have not checked how Linux or systemd-boot handle
/chosen/bootargs if they are booted via EFI.

Cheers,
Ahmad


> 
> However, as said this is just a comment and doesn't block this patch:
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> 
>>  Drivers
>>  ^^^^^^^
>> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
>> index 8e6f3bbbe9ce..dc7ac6dc8716 100644
>> --- a/Documentation/user/booting-linux.rst
>> +++ b/Documentation/user/booting-linux.rst
>> @@ -103,6 +103,9 @@ to the bootargs. Variables without a value are skipped:
>>  
>>    Kernel command line: ignore_loglevel console=ttyO0,115200 earlyprintk
>>  
>> +When booting an EFI-stubbed kernel as EFI application, the
>> +:ref:`EFI load options <efi_load_options>` precede the Linux bootargs.
>> +
>>  .. _bootargs_concat_order:
>>  
>>  Concatenation order
>> @@ -170,7 +173,8 @@ This takes the kernel from ``/mnt/mmc1/zImage`` (which could be an
>>  boot entries should always add Kernel command line parameters to variables with
>>  ``.dyn`` in it. These will be cleared before booting different boot entries.
>>  This is done so that following boot entries do not leak command line
>> -parameters from the previous boot entries.
>> +parameters from the previous boot entries. The same applies to the
>> +:ref:`EFI load options <efi_load_options>` in ``global.efi.bootargs.dyn.*``.
>>  
>>  This entry can be booted with ``boot mmc``. It can also be made the default by
>>  setting the :ref:`global.boot.default <magicvar_global_boot_default>` variable
>> -- 
>> 2.47.3
>>
>>

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




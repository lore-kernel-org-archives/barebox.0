Delivery-date: Thu, 09 Oct 2025 14:48:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6q44-005x8o-1P
	for lore@lore.pengutronix.de;
	Thu, 09 Oct 2025 14:48:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6q43-0000RC-GB
	for lore@pengutronix.de; Thu, 09 Oct 2025 14:48:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FBrLTImCNTm/f40H4QUUsTRPmUBGAW8JpC78ahj6YWc=; b=kAMTWpzOsL4SmgxQKAPjKu6Hwy
	JV11qmuhWDKilXjnNqddbJCbtLQLFFZbhAnx1lpwjE9N5TiL9qFbPmj55N9d+HggKOCo1HGazrik8
	BYrNb+0pgsa8CMdauv/eL/bHuE849HWpr15/XlipvsIz2yz5JRXcm+iWLsUzZHSiiXQVWeA53+CDd
	JcTSqX23eCGCwFu+EYSk6Q8S+u8RtRJI7cFomr3NycnEHiqCQsErsafO0j5J6vfHPnOozeyUO240C
	xyofHZtlwAHuLgkXyVxGkxrKGVzu/kGWQgD0WPrdTFXjxBoUH9y43Ewmi7sLObSvCvji9mu8txev7
	5wgFK3+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6q3P-000000068j7-2xpG;
	Thu, 09 Oct 2025 12:47:31 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6q3L-000000068iT-3nV4
	for barebox@lists.infradead.org;
	Thu, 09 Oct 2025 12:47:29 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-579d7104c37so1195650e87.3
        for <barebox@lists.infradead.org>; Thu, 09 Oct 2025 05:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1760014046; x=1760618846; darn=lists.infradead.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=FBrLTImCNTm/f40H4QUUsTRPmUBGAW8JpC78ahj6YWc=;
        b=fIXqtDHQhzPIhhdlbEjT/WG5YArZtu2tInSpVVoRaaS5IX12Z09/h/netUsTiTWhe6
         YJc1xgGb0CBBeueaOiEKcGmWl2T8SrFlCrwU98ur9IajHSZd3Wzdom7mxuKCkq2lSWwr
         gX7ZtnFCoUfUn4cv9cFN1Rs/moJKw9kjx6VKoxunJtjmuWHwurcW/cpOyJZlI90LXTKM
         UjFQW0W2vahvSvMuOZ/hp0npkhBee9OKSGS+xmTjLtoh7OJubaxAWA7ATVUptXqTtCCn
         yOqDmNQCW7WobdqyUqEG9baOj7y1s11Of4V0JraNsL2uHW0eqfyWaSLZ8vpcvkAg0CGK
         LdYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760014046; x=1760618846;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FBrLTImCNTm/f40H4QUUsTRPmUBGAW8JpC78ahj6YWc=;
        b=Eu3afzj3gs87VmS2KW9eu+XBG8s2hm9trQEMUdRQRQzkCUjtFeyU/chwG2xFCCkVcx
         Pk/RnkxxqMiogXMo9f7mG2cz3qI1jPXR0EnXTLUmTKM7IukQ1q9rrcxVrKUy49jW6cWj
         WP1tAjtm2Wz0RQ7zICSSlPDSSMn9l9zMKFRD17vsjuZwTgHkkXfSG0lKVnh1qKfnsmpw
         Z2I9kYOECB0kWTggtR7Z10nNMtcY8dvvYW49gv0u0350nQsF10vFSSyuZJ57i+QjM+58
         bE1xnmvgnczrF/auaazDT5mTrvstsyN02v1rWL9jpv5fC8EMyxni0XUWK5ZHK7/trUxH
         Pzow==
X-Forwarded-Encrypted: i=1; AJvYcCVqSuYAKgOuGVLcXzwwKs4g8oktAxpIpztdvF9F/csKI4v4dtr6lY4f7K5VXtJrH3iEStZNvrmZ@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3jAuJNmF/HEZ+zpnBZU6S7tF0wwAE7uKq14MydX4fMz3f47ko
	XtQT1JV716fpebkeWKGy6Go8gnE1+UTSmZJXgW5T4Vf0geSenENo+qr1TzMXVnJANjI=
X-Gm-Gg: ASbGnct8yHXN0o6dak3wocq6nhru7a3th9qO8l6Kzd73ixTsSzo210lMwynxwbWsmah
	v1vZ5QvkfwmIGIueBqAac9s9MuIkNCUwsOLhOpTDg5YXk5AuUzjngrgBH5hQwXZEdNS5yOYN6lL
	/KEN9cTY+KjZU5ABD5XDQF2gaIyKyEu8AS+3n9RFZA15lBdV1Cdavp+FepA0kuCXbRHCfWGtcMK
	ubjETddRCJqoZdvhDbhvZWB47FW8odmWcdZHKxY6GL97qeAYAgbrQUE6P/pMo9PkAoVDzLx/sZb
	xo9bIXsbWC1zoFGRcUIoglkt7hPoi8/4ad18krYUVktmqDPqerEqzkxoStB9br2gnn4uoTmaGKV
	TmdQsCyPyex1fZw0xqQPlSSwNfNijdYGv96Zl47Hlnerfj9AOFGGgl2a6vnhEGutIJZe9z29TQD
	ggxX+dOp8kd6U=
X-Google-Smtp-Source: AGHT+IH418X+ThWVBy5Za67CsKCnopsKDVPss8F21ty0TonH/3pA3rEQm9na8MiZQhHQLKd30DVg6Q==
X-Received: by 2002:a05:6512:1302:b0:58a:ff9c:d107 with SMTP id 2adb3069b0e04-5906dafc4eemr2348020e87.51.1760014045549;
        Thu, 09 Oct 2025 05:47:25 -0700 (PDT)
Received: from wkz-x13 (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907ac0cfc8sm1037311e87.32.2025.10.09.05.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 05:47:24 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <24151bf4-46bb-466b-a2c8-b8324e4b9b9b@pengutronix.de>
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <3e45fde4-a263-4826-aafe-42f41bd46c26@pengutronix.de>
 <878qhm1nar.fsf@waldekranz.com>
 <7730e527-c73e-4857-946d-3411cbf3a510@pengutronix.de>
 <875xcp1599.fsf@waldekranz.com>
 <24151bf4-46bb-466b-a2c8-b8324e4b9b9b@pengutronix.de>
Date: Thu, 09 Oct 2025 14:47:22 +0200
Message-ID: <87347s1btx.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_054728_143757_4AD14FF0 
X-CRM114-Status: GOOD (  35.54  )
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
X-Spam-Status: No, score=-0.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/11] dm: verity: Add transparent integrity checking
 target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On tor, okt 09, 2025 at 08:37, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> Hi,
>
> On 10/8/25 10:57 PM, Tobias Waldekranz wrote:
>> On ons, okt 08, 2025 at 09:30, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>> - ...so that I can then use it to generate test images,
>>>>
>>>> - ...so that I can write tests,
>>>>
>>>> - ...so that I can publish v1
>>>>
>>>> ...its...a whole thing :)
>>>
>>> IMO, just send patches against the Containerfile and we rebuild it.
>>> We can create a new subdirectory, move the Containerfile into it and
>>> put the patches there as well.
>> 
>> So would you like those patches to add a clone+configure+build of
>> genimage to the Containerfile, or what do you have in mind?
>> 
>> The other option would be to make do without genimage, and create the
>> DDI using veritysetup+openssl(1)+dd.
>> 
>> Which would you prefer?
>
> First one sounds good to me.

Ack.

>> 
>>>> Anyway, this only works with existing crypto primitives because (a) we
>>>> can use the certificateFingerprint property to locate the key, without
>>>> having to parse the PKCS#7 data and (b) because the hash algorithm is
>>>> specified by DPS to SHA256, again letting us skip over parsing the ASN.1
>>>> data to determine that.
>>>>
>>>> If we want to support more general operations, e.g. have some
>>>> lightweight openssl(1)-like command that can validate detached
>>>> signatures, then I think something like mbedtls is definitely needed.
>>>
>>> I see.
>>>
>>>>> Jonas (Cc'd) is working right now in a backwards-compatible manner of
>>>>> attaching meta-data to keys, e.g.:
>>>>>
>>>>> export myfitkey="keyring=fit,hint=myhint:pkcs11:token=foo,bar;object=bl"
>>>>> export myjwtkey="keyring=jwt-myboard:jwt_pub.pem"
>>>>
>>>> Shiny! Being able to have multiple keyrings is a great feature.
>>>
>>> Yes, and it would be extensible to associate extra data with a key
>>> in case you need this, although your fingerprint should probably
>>> just be generated by keytoc.
>> 
>> Yes, this is the approach I have taken:
>> https://github.com/wkz/barebox/commit/f2ee4cb4670c32104ac2ef2791c9e525b0d323ff
>
> Sounds good. Should we just skip MD5/SHA1 for new features though?

That is fine by me. I just went for the full gamut. Ultimately, it is a
build-time option that specifies which subset of fingerprints to
collect. On my branch, only SHA256 can be chosen, since that is what DPS
uses, but if any other feature needs something else, then it can easily
be added:

https://github.com/wkz/barebox/commit/58eb40aa5370ca2b35b0f949f0bd605e8eba9a10

>>> I might take you up on that if you are at 39c3 or FrOSCon ;)
>> 
>> Unfortunately not - hopefully our paths will cross at some other
>> conference! :)
>
> :)
>
>>> It's a bit magic/implicit, but if we are going to implement it as is some
>>> way, this would make it at least reproducible.
>> 
>> If you want (a) backwards compatibility and (b) something that does not
>> require any ACK from the UAPI group, then I think it is the best we can
>> do.
>
> Ack.
>
>>> The project for which I upstreamed JWT support hasn't yet switched
>>> over to security policies (v2025.10.0 will be the first release with them
>>> expectedly). I will probably add an example to the 32-bit Qemu platform,
>>> so it's possible to:
>>>
>>> pytest --interactive --bootarg barebox.security.token=$(cat common/boards/qemu-virt/devel.token)
>> 
>> Cool. Can you then place a unique ID from a fusebox or something in the
>> token, so that it is bound to a single device?
>
> Yes, the i.MX8M SoC unique ID was used as claim to bind the JWT to a
> specific HW. In the meantime, Marco imported SoC framework support from
> Linux, so we have a unified API for the unique ID that could be used.

Perfect!

> Cheers,
> Ahmad
>
>> 
>>> Cheers,
>>> Ahmad
>>>
>>>>
>>>>> Cheers,
>>>>> Ahmad
>>>>>
>>>>>>
>>>>>> Tobias Waldekranz (11):
>>>>>>   dm: Add helper to manage a lower device
>>>>>>   dm: linear: Refactor to make use of the generalized cdev management
>>>>>>   dm: verity: Add transparent integrity checking target
>>>>>>   dm: verity: Add helper to parse superblock information
>>>>>>   commands: veritysetup: Create dm-verity devices
>>>>>>   ci: pytest: Open up testfs to more consumers than the FIT test
>>>>>>   ci: pytest: Enable testfs feature on malta boards
>>>>>>   ci: pytest: Generate test data for dm-verity
>>>>>>   test: pytest: add basic dm-verity test
>>>>>>   ci: pytest: Centralize feature discovery to a separate step
>>>>>>   ci: pytest: Enable device-mapper labgrid tests
>>>>>>
>>>>>>  .github/workflows/test-labgrid-pytest.yml     |  26 +-
>>>>>>  arch/mips/configs/qemu-malta_defconfig        |   4 +
>>>>>>  commands/Kconfig                              |  10 +
>>>>>>  commands/Makefile                             |   1 +
>>>>>>  commands/veritysetup.c                        | 123 +++++
>>>>>>  .../boards/configs/enable_dm_testing.config   |   9 +
>>>>>>  drivers/block/dm/Kconfig                      |   7 +
>>>>>>  drivers/block/dm/Makefile                     |   1 +
>>>>>>  drivers/block/dm/dm-core.c                    | 118 ++++
>>>>>>  drivers/block/dm/dm-linear.c                  |  64 +--
>>>>>>  drivers/block/dm/dm-target.h                  |  34 ++
>>>>>>  drivers/block/dm/dm-verity.c                  | 517 ++++++++++++++++++
>>>>>>  include/device-mapper.h                       |   5 +
>>>>>>  scripts/generate_testfs.sh                    |  64 ++-
>>>>>>  test/mips/be@qemu-malta_defconfig.yaml        |   1 +
>>>>>>  test/mips/qemu-malta64el_defconfig.yaml       |   1 +
>>>>>>  test/py/test_dm.py                            |  38 ++
>>>>>>  test/py/test_fit.py                           |   4 +-
>>>>>>  test/riscv/qemu-virt64@rv64i_defconfig.yaml   |   1 +
>>>>>>  test/riscv/qemu@virt32_defconfig.yaml         |   1 +
>>>>>>  20 files changed, 968 insertions(+), 61 deletions(-)
>>>>>>  create mode 100644 commands/veritysetup.c
>>>>>>  create mode 100644 common/boards/configs/enable_dm_testing.config
>>>>>>  create mode 100644 drivers/block/dm/dm-verity.c
>>>>>>  create mode 100644 test/py/test_dm.py
>>>>>>
>>>>>
>>>>>
>>>>> -- 
>>>>> Pengutronix e.K.                           |                             |
>>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>>
>>>
>>>
>>> -- 
>>> Pengutronix e.K.                           |                             |
>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>> 
>
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



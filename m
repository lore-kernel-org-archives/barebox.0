Delivery-date: Wed, 08 Oct 2025 22:57:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6bEU-005idh-2y
	for lore@lore.pengutronix.de;
	Wed, 08 Oct 2025 22:57:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6bET-0005fy-TD
	for lore@pengutronix.de; Wed, 08 Oct 2025 22:57:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6u1XqiZyARU/doqJ3RSqSl6FCb2mOV/9e4NByGFS2Qw=; b=eu/6aBbNzwK0ZC5EaQIhf4ewaT
	t06QRxXlPfDx/1ggZr1aZP4qDsKg50LNLaJwbDSLM0VeboAFi2l3HGequywcdFzxR0QHJG87v8PJA
	Ar2kTHPK2Jk9qobUge98C9uUOureFuVbu8jJp1e2BpaEsw+GBJnqSB2IOcjA5PSD2upMAHCDHlbuY
	K5UEFrIklwV8JTCtPND15jTQkTIClzJud1czfGuZDyaX+9G4tYisOU0vAx7/eVwdWeVt0ofbN7oDX
	bUmkN7D7A9XHK+zP0NUQu3gRzmbIEJc+2TQuN61ueCKUngvsYBP9b6pbXUmKEv6omeIbB2dtc6QBY
	dvy8D8Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6bDl-00000004fev-2OsE;
	Wed, 08 Oct 2025 20:57:13 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6bDi-00000004feV-1Tv5
	for barebox@lists.infradead.org;
	Wed, 08 Oct 2025 20:57:12 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-57e36125e8aso266958e87.2
        for <barebox@lists.infradead.org>; Wed, 08 Oct 2025 13:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1759957028; x=1760561828; darn=lists.infradead.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=6u1XqiZyARU/doqJ3RSqSl6FCb2mOV/9e4NByGFS2Qw=;
        b=KeIYN5/j0thh4eh+/bbCuK5/JtbqZTM6omuTkdHNqoHTzLgJraosxFUjc98eJusPiV
         EQ2gEZDr+jKpejNSKPzIoaDIULxJwuyeu+R7ONtpJlaRChja490CStuyVcHS2ObMI+t2
         b63tVJOm6FcdQRlywRdLufKpfdDCxoOBfjvJnNpSqVciJbKpwHzPHHYfTnijynPMH/B0
         7mtf+pvtD0DlNupgyK3jyiZwWum9H4iVWymsrd2AZ52KzlbEKW4wBJo7pyn22WSTnWy2
         v7T4MH9EfI/iy7bEAUEsltXnijx7a4QjSOtjxZuiSB3W01DYoYxET9sw6WrcNBWoMRfk
         t9rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759957028; x=1760561828;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6u1XqiZyARU/doqJ3RSqSl6FCb2mOV/9e4NByGFS2Qw=;
        b=lWaXFR+rFw1I+w9yQ592Ly/pLuiFjh7rZxNEeDreF+41nx5o/hb0v7BZ8bUBgxPnMF
         uxeDzQXCXhv6mG5mR0wca6d15ri8sYnx0QoA3w4flya9ZqEHJetXU0ThLuD/ZrOx0xGd
         XnOGstnNh9yTOmbyoZ+WwqChBiuYmz4cZ6bdRcQcMI+8AqPAAkeJ4GFKY2k52ReGZ8Bi
         6HAdsRp+9igJ3mnWXx4hzJaRfvykUvaon75Vs3fh9HqP/uimLEiicMBFWC2sIiTnHxdq
         B2xCIOcqfp4ewKQ1QihlQWY0vyWG3Awo8FXNSf1IhurmWbP2pDrtELCS3TkF/5bPhKdA
         LkRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKNS5TUC4HEMniVIrmxdMOjRyc8ItyFEhRP6U2moOl4exKtWkuOczCCjXg+TTC/EitTK1KHdPr@lists.infradead.org
X-Gm-Message-State: AOJu0YzzLVxu/ABeqpwHaI9p6PFC1NFRTPcaSZP+VffoNAN6bgT6BvP6
	NlqucxnmPiwWMRudU9sbgH32SPzk/EoSTFUqf81lpkJStdRKG+RrBs7lwY0pBJJuGvcB7Q6Qlsa
	+ijrt
X-Gm-Gg: ASbGncvSy65f0rI7uZHq9Sjj33CkJgr7ZtmPniPw1ytD54pFmBW/M9Ieg6OsLaCJf0A
	sshhFmtdm0Ph4Yk5HMYn5UKupa5nWTh4EhOfG55VDC4QmeCbl5dl14qea16U6tGnSxTIucWcD1N
	E0uqUK1pBjqx+s8lPRGS+v7uvzJZV7c350BbpfPu3Tw6WtVnacLd3JWv6SEB0dIAFn6UQjxSR/H
	5QizWDlzIBn/0RrQU8FEL3gEBMm8OEgO0mII6Dps5zzc+Xain001kly89REb0C9WE+hm7uSPnMw
	4n7aLZV4+VIZC7NWgNXcNwwK73qukcitmdjiUwNQt6ZkbtQwjvp5X+t2MpBM9y2luDT0C6K9ZWO
	L2/QOetBtwWXtBPvHQXeCTzSa0fIh4OfL0PUCP38Emph3gsYxpHi+oUafrfWOoqURzJ1DdYy3lT
	VCoyE=
X-Google-Smtp-Source: AGHT+IHRTWWgpc3EPJj/BM5bEVWFW45FvLGobHPeRcw+1Db5mCmkflZauIHZrw/O0ju1iXDsdY5vvg==
X-Received: by 2002:a05:6512:61b1:b0:586:2e4b:22c5 with SMTP id 2adb3069b0e04-5906de87eecmr1367998e87.56.1759957027539;
        Wed, 08 Oct 2025 13:57:07 -0700 (PDT)
Received: from wkz-x13 (h-176-10-159-15.NA.cust.bahnhof.se. [176.10.159.15])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907ad9e569sm343265e87.74.2025.10.08.13.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 13:57:06 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <7730e527-c73e-4857-946d-3411cbf3a510@pengutronix.de>
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <3e45fde4-a263-4826-aafe-42f41bd46c26@pengutronix.de>
 <878qhm1nar.fsf@waldekranz.com>
 <7730e527-c73e-4857-946d-3411cbf3a510@pengutronix.de>
Date: Wed, 08 Oct 2025 22:57:06 +0200
Message-ID: <875xcp1599.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_135710_693075_2FE12F7C 
X-CRM114-Status: GOOD (  50.38  )
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
X-Spam-Status: No, score=-0.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/11] dm: verity: Add transparent integrity checking
 target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On ons, okt 08, 2025 at 09:30, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> Hi,
>
> On 07.10.25 22:15, Tobias Waldekranz wrote:
>> On tis, okt 07, 2025 at 11:05, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>> To avoid having to integrate full ASN.1 + X509 parsing in Barebox, my
>>>> plan is:
>>>
>>> We've been piecewise importing crypto primitives from the Linux kernel
>>> so far, but I've been thinking if we shouldn't take the leap and import
>>> mbedtls, but we haven't had the need so far. Sascha is not opposed, if
>>> there's a good use case for it.
>> 
>> IMO, for this particular feature, it is certainly possible to get by
>> without something like that. I have implemented signature validation by
>> pretty much following the road-map detailed in my original message:
>> 
>> https://github.com/wkz/barebox/commit/4779bd7c766bab704aed982d8fa79d99078633b7#diff-4a7f94e9bbcea0d43614b6f3e7edeedfc0a597a1d284c9ffe4f002ad621f580fR127-R128
>
> Cool. mbedtls will have to wait then...
>
> /me dreams of a future with a network block device on top of a smoltcp
> stack that maps a verity RAUC bundle that's downloaded as needed via
> HTTP range requests and then network booted (after verifying the
> signed root hash with mbedtls of course). Not because we absolutely need
> to, but because we can.
>
>> The work is now stalled on getting
>> https://github.com/pengutronix/genimage/pull/312 merged (yes, I am
>> shamelessly trying to get some attention on this PR :)),
>
> This might turn out to be successful. Let's see..
>
>> 
>> - ...so that can be included in a new release of genimage,
>> 
>> - ...so that I can eventually include that in
>>   ghcr.io/barebox/barebox/barebox-ci,
>
> I have little issue with building our own genimage during container
> creation or even our own Qemu (just thought about it today because of
> https://patchwork.ozlabs.org/project/qemu-devel/list/?series=472897&state=*

Nice feature. It will be great to be able to test that together with
OP-TEE in QEMU!

>> - ...so that I can then use it to generate test images,
>> 
>> - ...so that I can write tests,
>> 
>> - ...so that I can publish v1
>> 
>> ...its...a whole thing :)
>
> IMO, just send patches against the Containerfile and we rebuild it.
> We can create a new subdirectory, move the Containerfile into it and
> put the patches there as well.

So would you like those patches to add a clone+configure+build of
genimage to the Containerfile, or what do you have in mind?

The other option would be to make do without genimage, and create the
DDI using veritysetup+openssl(1)+dd.

Which would you prefer?

>> Anyway, this only works with existing crypto primitives because (a) we
>> can use the certificateFingerprint property to locate the key, without
>> having to parse the PKCS#7 data and (b) because the hash algorithm is
>> specified by DPS to SHA256, again letting us skip over parsing the ASN.1
>> data to determine that.
>> 
>> If we want to support more general operations, e.g. have some
>> lightweight openssl(1)-like command that can validate detached
>> signatures, then I think something like mbedtls is definitely needed.
>
> I see.
>
>>> Jonas (Cc'd) is working right now in a backwards-compatible manner of
>>> attaching meta-data to keys, e.g.:
>>>
>>> export myfitkey="keyring=fit,hint=myhint:pkcs11:token=foo,bar;object=bl"
>>> export myjwtkey="keyring=jwt-myboard:jwt_pub.pem"
>> 
>> Shiny! Being able to have multiple keyrings is a great feature.
>
> Yes, and it would be extensible to associate extra data with a key
> in case you need this, although your fingerprint should probably
> just be generated by keytoc.

Yes, this is the approach I have taken:
https://github.com/wkz/barebox/commit/f2ee4cb4670c32104ac2ef2791c9e525b0d323ff

>>> This makes sense, even if there is no decision yet for
>>> https://github.com/uapi-group/specifications/issues/167
>> 
>> Ehm, yeah. I have lots of thoughts about the response to this
>> issue. Maybe over a beer sometime :)
>
> I might take you up on that if you are at 39c3 or FrOSCon ;)

Unfortunately not - hopefully our paths will cross at some other
conference! :)

>>> I would suggest we hardcode (and document) that in case there are
>>> multiple candidates, the ones closest after the root partition are taken?
>> 
>> I think this is a great approach. Simple, yet seems like it solves all
>> the common setups.
>
> It's a bit magic/implicit, but if we are going to implement it as is some
> way, this would make it at least reproducible.

If you want (a) backwards compatibility and (b) something that does not
require any ACK from the UAPI group, then I think it is the best we can
do.

>>>> - Having a build-time option that limits booting to only be allowed
>>>>   from trusted filesystems.
>>>
>>> Ye, for users without security policies, a build-time option would be apt.
>> 
>> No no, forget that - just I suggested that someone who already owns a
>> 2kW electric nailgun should buy a hammer :)
>
> Heh, I think there is place for both. If something is not needed at all
> in a build, we should still be able to disable it completely with no
> way back (sans exploits).
>
>> I just watched your talk and Security policies sound really great!
>> 
>> Is there any information/examples on how to use JWTs to dynamically
>> switch into a developer/rma mode?
>
> The project for which I upstreamed JWT support hasn't yet switched
> over to security policies (v2025.10.0 will be the first release with them
> expectedly). I will probably add an example to the 32-bit Qemu platform,
> so it's possible to:
>
> pytest --interactive --bootarg barebox.security.token=$(cat common/boards/qemu-virt/devel.token)

Cool. Can you then place a unique ID from a fusebox or something in the
token, so that it is bound to a single device?

> Cheers,
> Ahmad
>
>> 
>>> Cheers,
>>> Ahmad
>>>
>>>>
>>>> Tobias Waldekranz (11):
>>>>   dm: Add helper to manage a lower device
>>>>   dm: linear: Refactor to make use of the generalized cdev management
>>>>   dm: verity: Add transparent integrity checking target
>>>>   dm: verity: Add helper to parse superblock information
>>>>   commands: veritysetup: Create dm-verity devices
>>>>   ci: pytest: Open up testfs to more consumers than the FIT test
>>>>   ci: pytest: Enable testfs feature on malta boards
>>>>   ci: pytest: Generate test data for dm-verity
>>>>   test: pytest: add basic dm-verity test
>>>>   ci: pytest: Centralize feature discovery to a separate step
>>>>   ci: pytest: Enable device-mapper labgrid tests
>>>>
>>>>  .github/workflows/test-labgrid-pytest.yml     |  26 +-
>>>>  arch/mips/configs/qemu-malta_defconfig        |   4 +
>>>>  commands/Kconfig                              |  10 +
>>>>  commands/Makefile                             |   1 +
>>>>  commands/veritysetup.c                        | 123 +++++
>>>>  .../boards/configs/enable_dm_testing.config   |   9 +
>>>>  drivers/block/dm/Kconfig                      |   7 +
>>>>  drivers/block/dm/Makefile                     |   1 +
>>>>  drivers/block/dm/dm-core.c                    | 118 ++++
>>>>  drivers/block/dm/dm-linear.c                  |  64 +--
>>>>  drivers/block/dm/dm-target.h                  |  34 ++
>>>>  drivers/block/dm/dm-verity.c                  | 517 ++++++++++++++++++
>>>>  include/device-mapper.h                       |   5 +
>>>>  scripts/generate_testfs.sh                    |  64 ++-
>>>>  test/mips/be@qemu-malta_defconfig.yaml        |   1 +
>>>>  test/mips/qemu-malta64el_defconfig.yaml       |   1 +
>>>>  test/py/test_dm.py                            |  38 ++
>>>>  test/py/test_fit.py                           |   4 +-
>>>>  test/riscv/qemu-virt64@rv64i_defconfig.yaml   |   1 +
>>>>  test/riscv/qemu@virt32_defconfig.yaml         |   1 +
>>>>  20 files changed, 968 insertions(+), 61 deletions(-)
>>>>  create mode 100644 commands/veritysetup.c
>>>>  create mode 100644 common/boards/configs/enable_dm_testing.config
>>>>  create mode 100644 drivers/block/dm/dm-verity.c
>>>>  create mode 100644 test/py/test_dm.py
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
>
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



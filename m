Delivery-date: Thu, 09 Oct 2025 08:38:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6kI9-005rac-24
	for lore@lore.pengutronix.de;
	Thu, 09 Oct 2025 08:38:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6kI8-0007gB-RV
	for lore@pengutronix.de; Thu, 09 Oct 2025 08:38:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wdHOzvstCpt7em5hIYgrS6PQfyXxL6+eYE2hphzBhtY=; b=rYWrOkGkbqqGxGrmyUeZugGiaK
	VGl/tgQQHTLdMMhgKTln99DSe9qCaCzf0U36YfZ3hy+Z6cC0vrqVJlPvC8+9PyR7f2lc2KEV8PFD1
	F4gSDJJ2wkSBXyR4f1K6q3bNQZWFCalsFrznjy/6iw3YTNtwKnr6ELbKP0ZirFYXU3V6v9Pv7ycXq
	X9etdf5vpFHixcJUYrJ2EDstRqt8yYsI2XpOJ0gJ4qfQX2wV9JheASG1UGXAxj0wE0JMDmkxtDwIz
	chhEkgc/NHtAFfuTmong78XGnrfgY4tsL4o0ouiX5p8fpD7dBQnop93ogetGrHaCWH7uNgQ5GaBwW
	sN0oSqDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6kHU-00000005HxE-0n34;
	Thu, 09 Oct 2025 06:37:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6kHR-00000005HwT-0Qo9
	for barebox@lists.infradead.org;
	Thu, 09 Oct 2025 06:37:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v6kHN-0007bB-NN; Thu, 09 Oct 2025 08:37:33 +0200
Message-ID: <24151bf4-46bb-466b-a2c8-b8324e4b9b9b@pengutronix.de>
Date: Thu, 9 Oct 2025 08:37:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <3e45fde4-a263-4826-aafe-42f41bd46c26@pengutronix.de>
 <878qhm1nar.fsf@waldekranz.com>
 <7730e527-c73e-4857-946d-3411cbf3a510@pengutronix.de>
 <875xcp1599.fsf@waldekranz.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <875xcp1599.fsf@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_233737_150237_D1F5A441 
X-CRM114-Status: GOOD (  37.06  )
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
X-Spam-Status: No, score=-1.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/11] dm: verity: Add transparent integrity checking
 target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/8/25 10:57 PM, Tobias Waldekranz wrote:
> On ons, okt 08, 2025 at 09:30, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>> - ...so that I can then use it to generate test images,
>>>
>>> - ...so that I can write tests,
>>>
>>> - ...so that I can publish v1
>>>
>>> ...its...a whole thing :)
>>
>> IMO, just send patches against the Containerfile and we rebuild it.
>> We can create a new subdirectory, move the Containerfile into it and
>> put the patches there as well.
> 
> So would you like those patches to add a clone+configure+build of
> genimage to the Containerfile, or what do you have in mind?
> 
> The other option would be to make do without genimage, and create the
> DDI using veritysetup+openssl(1)+dd.
> 
> Which would you prefer?

First one sounds good to me.

> 
>>> Anyway, this only works with existing crypto primitives because (a) we
>>> can use the certificateFingerprint property to locate the key, without
>>> having to parse the PKCS#7 data and (b) because the hash algorithm is
>>> specified by DPS to SHA256, again letting us skip over parsing the ASN.1
>>> data to determine that.
>>>
>>> If we want to support more general operations, e.g. have some
>>> lightweight openssl(1)-like command that can validate detached
>>> signatures, then I think something like mbedtls is definitely needed.
>>
>> I see.
>>
>>>> Jonas (Cc'd) is working right now in a backwards-compatible manner of
>>>> attaching meta-data to keys, e.g.:
>>>>
>>>> export myfitkey="keyring=fit,hint=myhint:pkcs11:token=foo,bar;object=bl"
>>>> export myjwtkey="keyring=jwt-myboard:jwt_pub.pem"
>>>
>>> Shiny! Being able to have multiple keyrings is a great feature.
>>
>> Yes, and it would be extensible to associate extra data with a key
>> in case you need this, although your fingerprint should probably
>> just be generated by keytoc.
> 
> Yes, this is the approach I have taken:
> https://github.com/wkz/barebox/commit/f2ee4cb4670c32104ac2ef2791c9e525b0d323ff

Sounds good. Should we just skip MD5/SHA1 for new features though?

>> I might take you up on that if you are at 39c3 or FrOSCon ;)
> 
> Unfortunately not - hopefully our paths will cross at some other
> conference! :)

:)

>> It's a bit magic/implicit, but if we are going to implement it as is some
>> way, this would make it at least reproducible.
> 
> If you want (a) backwards compatibility and (b) something that does not
> require any ACK from the UAPI group, then I think it is the best we can
> do.

Ack.

>> The project for which I upstreamed JWT support hasn't yet switched
>> over to security policies (v2025.10.0 will be the first release with them
>> expectedly). I will probably add an example to the 32-bit Qemu platform,
>> so it's possible to:
>>
>> pytest --interactive --bootarg barebox.security.token=$(cat common/boards/qemu-virt/devel.token)
> 
> Cool. Can you then place a unique ID from a fusebox or something in the
> token, so that it is bound to a single device?

Yes, the i.MX8M SoC unique ID was used as claim to bind the JWT to a
specific HW. In the meantime, Marco imported SoC framework support from
Linux, so we have a unified API for the unique ID that could be used.

Cheers,
Ahmad

> 
>> Cheers,
>> Ahmad
>>
>>>
>>>> Cheers,
>>>> Ahmad
>>>>
>>>>>
>>>>> Tobias Waldekranz (11):
>>>>>   dm: Add helper to manage a lower device
>>>>>   dm: linear: Refactor to make use of the generalized cdev management
>>>>>   dm: verity: Add transparent integrity checking target
>>>>>   dm: verity: Add helper to parse superblock information
>>>>>   commands: veritysetup: Create dm-verity devices
>>>>>   ci: pytest: Open up testfs to more consumers than the FIT test
>>>>>   ci: pytest: Enable testfs feature on malta boards
>>>>>   ci: pytest: Generate test data for dm-verity
>>>>>   test: pytest: add basic dm-verity test
>>>>>   ci: pytest: Centralize feature discovery to a separate step
>>>>>   ci: pytest: Enable device-mapper labgrid tests
>>>>>
>>>>>  .github/workflows/test-labgrid-pytest.yml     |  26 +-
>>>>>  arch/mips/configs/qemu-malta_defconfig        |   4 +
>>>>>  commands/Kconfig                              |  10 +
>>>>>  commands/Makefile                             |   1 +
>>>>>  commands/veritysetup.c                        | 123 +++++
>>>>>  .../boards/configs/enable_dm_testing.config   |   9 +
>>>>>  drivers/block/dm/Kconfig                      |   7 +
>>>>>  drivers/block/dm/Makefile                     |   1 +
>>>>>  drivers/block/dm/dm-core.c                    | 118 ++++
>>>>>  drivers/block/dm/dm-linear.c                  |  64 +--
>>>>>  drivers/block/dm/dm-target.h                  |  34 ++
>>>>>  drivers/block/dm/dm-verity.c                  | 517 ++++++++++++++++++
>>>>>  include/device-mapper.h                       |   5 +
>>>>>  scripts/generate_testfs.sh                    |  64 ++-
>>>>>  test/mips/be@qemu-malta_defconfig.yaml        |   1 +
>>>>>  test/mips/qemu-malta64el_defconfig.yaml       |   1 +
>>>>>  test/py/test_dm.py                            |  38 ++
>>>>>  test/py/test_fit.py                           |   4 +-
>>>>>  test/riscv/qemu-virt64@rv64i_defconfig.yaml   |   1 +
>>>>>  test/riscv/qemu@virt32_defconfig.yaml         |   1 +
>>>>>  20 files changed, 968 insertions(+), 61 deletions(-)
>>>>>  create mode 100644 commands/veritysetup.c
>>>>>  create mode 100644 common/boards/configs/enable_dm_testing.config
>>>>>  create mode 100644 drivers/block/dm/dm-verity.c
>>>>>  create mode 100644 test/py/test_dm.py
>>>>>
>>>>
>>>>
>>>> -- 
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>
>>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




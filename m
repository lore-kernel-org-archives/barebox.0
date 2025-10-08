Delivery-date: Wed, 08 Oct 2025 09:30:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6OdT-005Wek-1O
	for lore@lore.pengutronix.de;
	Wed, 08 Oct 2025 09:30:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6OdS-0007vT-Fc
	for lore@pengutronix.de; Wed, 08 Oct 2025 09:30:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BiDXwmTT/9nmRDz3u/IxRH3h7hWmcGta9zQYDSCtTZs=; b=RP8KcGS+MCobdPhMaZbAbJ3Rlp
	cicdS0hcqYrfyiBwCWVsgoWHjKbrD+sKgXQlydym9XmvccYgsuaQGsuJW2N6eMWsuM0+5hOC63O6C
	euD+3/Yjz2V4zWoVVirUxnDh4D7D3qn5+9mzHDY/5E8vVKpzAlSSNXXSmtSfLcDOkvo5RaLTkz9qi
	BfkW4Go8eqM+FnwHwA4vwDyxmVychBFVnphBCUE7HAfG6qFUlBf3qSSYFhD3ePsYj8cwSba7lNw78
	yCnDV2ZlxkILbgt6VN4BXQBD5LCQuQYR2GIFNQImWA3oOXsH61cv5MkD2Z/OIdQR7JyvlNCZPpmtr
	bSKBb8SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Oci-00000003Llx-0ntH;
	Wed, 08 Oct 2025 07:30:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Ocf-00000003LlZ-1AC3
	for barebox@lists.infradead.org;
	Wed, 08 Oct 2025 07:30:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v6Ocd-0007ee-7H; Wed, 08 Oct 2025 09:30:03 +0200
Message-ID: <7730e527-c73e-4857-946d-3411cbf3a510@pengutronix.de>
Date: Wed, 8 Oct 2025 09:30:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <3e45fde4-a263-4826-aafe-42f41bd46c26@pengutronix.de>
 <878qhm1nar.fsf@waldekranz.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <878qhm1nar.fsf@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_003005_472302_17C92482 
X-CRM114-Status: GOOD (  44.17  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/11] dm: verity: Add transparent integrity checking
 target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 07.10.25 22:15, Tobias Waldekranz wrote:
> On tis, okt 07, 2025 at 11:05, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>> To avoid having to integrate full ASN.1 + X509 parsing in Barebox, my
>>> plan is:
>>
>> We've been piecewise importing crypto primitives from the Linux kernel
>> so far, but I've been thinking if we shouldn't take the leap and import
>> mbedtls, but we haven't had the need so far. Sascha is not opposed, if
>> there's a good use case for it.
> 
> IMO, for this particular feature, it is certainly possible to get by
> without something like that. I have implemented signature validation by
> pretty much following the road-map detailed in my original message:
> 
> https://github.com/wkz/barebox/commit/4779bd7c766bab704aed982d8fa79d99078633b7#diff-4a7f94e9bbcea0d43614b6f3e7edeedfc0a597a1d284c9ffe4f002ad621f580fR127-R128

Cool. mbedtls will have to wait then...

/me dreams of a future with a network block device on top of a smoltcp
stack that maps a verity RAUC bundle that's downloaded as needed via
HTTP range requests and then network booted (after verifying the
signed root hash with mbedtls of course). Not because we absolutely need
to, but because we can.

> The work is now stalled on getting
> https://github.com/pengutronix/genimage/pull/312 merged (yes, I am
> shamelessly trying to get some attention on this PR :)),

This might turn out to be successful. Let's see..

> 
> - ...so that can be included in a new release of genimage,
> 
> - ...so that I can eventually include that in
>   ghcr.io/barebox/barebox/barebox-ci,

I have little issue with building our own genimage during container
creation or even our own Qemu (just thought about it today because of
https://patchwork.ozlabs.org/project/qemu-devel/list/?series=472897&state=*

> - ...so that I can then use it to generate test images,
> 
> - ...so that I can write tests,
> 
> - ...so that I can publish v1
> 
> ...its...a whole thing :)

IMO, just send patches against the Containerfile and we rebuild it.
We can create a new subdirectory, move the Containerfile into it and
put the patches there as well.

> Anyway, this only works with existing crypto primitives because (a) we
> can use the certificateFingerprint property to locate the key, without
> having to parse the PKCS#7 data and (b) because the hash algorithm is
> specified by DPS to SHA256, again letting us skip over parsing the ASN.1
> data to determine that.
> 
> If we want to support more general operations, e.g. have some
> lightweight openssl(1)-like command that can validate detached
> signatures, then I think something like mbedtls is definitely needed.

I see.

>> Jonas (Cc'd) is working right now in a backwards-compatible manner of
>> attaching meta-data to keys, e.g.:
>>
>> export myfitkey="keyring=fit,hint=myhint:pkcs11:token=foo,bar;object=bl"
>> export myjwtkey="keyring=jwt-myboard:jwt_pub.pem"
> 
> Shiny! Being able to have multiple keyrings is a great feature.

Yes, and it would be extensible to associate extra data with a key
in case you need this, although your fingerprint should probably
just be generated by keytoc.

>> This makes sense, even if there is no decision yet for
>> https://github.com/uapi-group/specifications/issues/167
> 
> Ehm, yeah. I have lots of thoughts about the response to this
> issue. Maybe over a beer sometime :)

I might take you up on that if you are at 39c3 or FrOSCon ;)

>> I would suggest we hardcode (and document) that in case there are
>> multiple candidates, the ones closest after the root partition are taken?
> 
> I think this is a great approach. Simple, yet seems like it solves all
> the common setups.

It's a bit magic/implicit, but if we are going to implement it as is some
way, this would make it at least reproducible.

>>> - Having a build-time option that limits booting to only be allowed
>>>   from trusted filesystems.
>>
>> Ye, for users without security policies, a build-time option would be apt.
> 
> No no, forget that - just I suggested that someone who already owns a
> 2kW electric nailgun should buy a hammer :)

Heh, I think there is place for both. If something is not needed at all
in a build, we should still be able to disable it completely with no
way back (sans exploits).

> I just watched your talk and Security policies sound really great!
> 
> Is there any information/examples on how to use JWTs to dynamically
> switch into a developer/rma mode?

The project for which I upstreamed JWT support hasn't yet switched
over to security policies (v2025.10.0 will be the first release with them
expectedly). I will probably add an example to the 32-bit Qemu platform,
so it's possible to:

pytest --interactive --bootarg barebox.security.token=$(cat common/boards/qemu-virt/devel.token)

Cheers,
Ahmad

> 
>> Cheers,
>> Ahmad
>>
>>>
>>> Tobias Waldekranz (11):
>>>   dm: Add helper to manage a lower device
>>>   dm: linear: Refactor to make use of the generalized cdev management
>>>   dm: verity: Add transparent integrity checking target
>>>   dm: verity: Add helper to parse superblock information
>>>   commands: veritysetup: Create dm-verity devices
>>>   ci: pytest: Open up testfs to more consumers than the FIT test
>>>   ci: pytest: Enable testfs feature on malta boards
>>>   ci: pytest: Generate test data for dm-verity
>>>   test: pytest: add basic dm-verity test
>>>   ci: pytest: Centralize feature discovery to a separate step
>>>   ci: pytest: Enable device-mapper labgrid tests
>>>
>>>  .github/workflows/test-labgrid-pytest.yml     |  26 +-
>>>  arch/mips/configs/qemu-malta_defconfig        |   4 +
>>>  commands/Kconfig                              |  10 +
>>>  commands/Makefile                             |   1 +
>>>  commands/veritysetup.c                        | 123 +++++
>>>  .../boards/configs/enable_dm_testing.config   |   9 +
>>>  drivers/block/dm/Kconfig                      |   7 +
>>>  drivers/block/dm/Makefile                     |   1 +
>>>  drivers/block/dm/dm-core.c                    | 118 ++++
>>>  drivers/block/dm/dm-linear.c                  |  64 +--
>>>  drivers/block/dm/dm-target.h                  |  34 ++
>>>  drivers/block/dm/dm-verity.c                  | 517 ++++++++++++++++++
>>>  include/device-mapper.h                       |   5 +
>>>  scripts/generate_testfs.sh                    |  64 ++-
>>>  test/mips/be@qemu-malta_defconfig.yaml        |   1 +
>>>  test/mips/qemu-malta64el_defconfig.yaml       |   1 +
>>>  test/py/test_dm.py                            |  38 ++
>>>  test/py/test_fit.py                           |   4 +-
>>>  test/riscv/qemu-virt64@rv64i_defconfig.yaml   |   1 +
>>>  test/riscv/qemu@virt32_defconfig.yaml         |   1 +
>>>  20 files changed, 968 insertions(+), 61 deletions(-)
>>>  create mode 100644 commands/veritysetup.c
>>>  create mode 100644 common/boards/configs/enable_dm_testing.config
>>>  create mode 100644 drivers/block/dm/dm-verity.c
>>>  create mode 100644 test/py/test_dm.py
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
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



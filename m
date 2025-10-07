Delivery-date: Tue, 07 Oct 2025 22:16:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6E6L-005Mcv-2i
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 22:16:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6E6K-0002x4-Qx
	for lore@pengutronix.de; Tue, 07 Oct 2025 22:16:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zq58+DBoYzPxJg3oYG0ZUHUA/wxZObSR+r5MoTN55CQ=; b=YTpxU1RjzS6sLoXRjyKq9noYRN
	wvTVG8pnVTK8HlyAXz2iF0vsOUs+Yi0i8MQvLj6L8Wt64DkVs9zDXfle4NHZogIsGTikKE0uzlj5a
	anWLTQPyx+uVbbFBUSRSsGdZAFg+FaE2SdjyeKmWwuY5TRunTIyUcmkMvOFu8wWZX6GYoiwNpyKCu
	g0/TQyO5cawwa2tAkMLoO0StjzcBGoijMNrbH6pAs+4ZrLtXDEHAkswulviGDoSYKGMpZIFreLjEl
	5fFAKCGHKKfbwwJfx/Ny/v6kZnO9OUnqciEF8e6CKkJfvTosK2zRh4PiydKQDlckx7kkpi+jK5Ka5
	LUvMTzag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6E5c-00000002jYx-1FX3;
	Tue, 07 Oct 2025 20:15:16 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6E5Z-00000002jYL-2e5U
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 20:15:15 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-57b35e176dbso8601175e87.1
        for <barebox@lists.infradead.org>; Tue, 07 Oct 2025 13:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1759868111; x=1760472911; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zq58+DBoYzPxJg3oYG0ZUHUA/wxZObSR+r5MoTN55CQ=;
        b=1tbTWrDpfYznC2YEWMf7SAwGvXIfgZPY+2R+f/6wb92ROoTLBGPQF071VRT2aoGqE+
         ErkRUlPcwIjtby2SzqCd7ERKqiySb6DvZvyyq0IKGIEwnvGiHLvSCgC848wMnTYs6Ni3
         Fx59pQZuhf8+potUcScW7AxmLVmyCBGxp/oCiRg7XRTvLDJS1pT67ECijQEL6TfhewcI
         wEIhvbnPIbEbTNS3pfqY5/QLumhxkxhTQkug9q5DCSwqgQcLLiTOjgO7odyV2AeFTpQ3
         GGJGZPNHA2k5H6tYE/Klz5JictpxmMR86Feh4Hnwjw+rxwfeqtx2SM9OPSK2Rxrp3oaQ
         ByLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759868111; x=1760472911;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zq58+DBoYzPxJg3oYG0ZUHUA/wxZObSR+r5MoTN55CQ=;
        b=ueSj4Jb3oaGJDHtkQ0HJQ9EHFotkAIabmbY5DbayNHjOfQeVQMg0+jn2uMswYhWA9A
         9e/w0FEYwsn64viA6Vg9hwZ/o9Hi+oNvqxpGjFnXPs7g4APmBI0D78DCZOe9oWyEqXiH
         cI3BGX2t22CA1nZf4m7y18U6wYEXzYE5sxrFZZ9gRO1GHcz9Adl8hT+S0b4YnM0Pu7r0
         DaBvvA1UTQepdwqO4tIPCEbPwBdljwRNm/CNP/iLhkvSlkpeXg26sDkfoAjEgGLaioLc
         L4QYw/aqsl6cTrsEp0azEwlkchwUxmSo/7tgP3tgll9slgcWRngSD3WQZg3yUmBjTevG
         Dyrw==
X-Forwarded-Encrypted: i=1; AJvYcCUfqGrlaUVLwUANHX2QXT03Fbx+ttGdVvRpik+t1aemWBd87MvqvK6LSGqG8syGn9q2iJOz1pON@lists.infradead.org
X-Gm-Message-State: AOJu0YzhDORZyxTx5xHRnzuo2qHxS4qBnrOzaENenDStnPA7DqGpBXkX
	fkuKu7xCzpqiHdYGXDBA5g4oS9o6KKujGabzOfqIHCLgeSsCsnxTPoaAhhzC44ot6WMlFlScUZn
	VUTqy
X-Gm-Gg: ASbGncvJAfWsVmQNPB+FxeVIO1Szgd/3fmPd5x9hCHO9yMPSujKEy6pTLFo4s8pHZqt
	NfrM/XNMiEaN9JtibLeJ1cSdNy1mGmbDHn9nnpC2vpbdCPkIV9tcLcKRSTN7jhdjVQ+etAckunu
	QASXYBERHz9VC1Wt79NOhFvuhAt5FxRBxHvP1HdvlCWA8ur2xx8l1ggd6smvhgkN0/kgyFhKy7A
	o/COqv0fOxmU+1JJjMYsSej89bsdiIwB4HA4T5XTjLJkqNIFKh4s3qh+emXYvKN7ocAJgbr4OGj
	VbNMWi+It/gqzDsglEIpTUh6gfqnfjLyRssrmNCsNhyt5FD5BWhPO8NxhAYkMR9Kzyx88xL8XHD
	6K2lFkkkl70csU+JlftH2PO67Z7HYD++e99nU6lCj4k0jpOkVTBkuevYxw27g+gsUUSRRCNrZsx
	x2VPY=
X-Google-Smtp-Source: AGHT+IF4PwNCYymnHKFXa5q0nM+LNZxM5kKkvVg2cFqCBvEdoBUJThtwL5c+Jm5CMhnxVC9chXuitw==
X-Received: by 2002:a05:6512:3e1d:b0:571:86bc:423b with SMTP id 2adb3069b0e04-5906d9e8a5fmr265802e87.44.1759868110653;
        Tue, 07 Oct 2025 13:15:10 -0700 (PDT)
Received: from wkz-x13 (h-176-10-159-15.NA.cust.bahnhof.se. [176.10.159.15])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0113f3ddsm6397086e87.52.2025.10.07.13.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 13:15:09 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <3e45fde4-a263-4826-aafe-42f41bd46c26@pengutronix.de>
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <3e45fde4-a263-4826-aafe-42f41bd46c26@pengutronix.de>
Date: Tue, 07 Oct 2025 22:15:08 +0200
Message-ID: <878qhm1nar.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_131513_972412_181ED68C 
X-CRM114-Status: GOOD (  44.05  )
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

On tis, okt 07, 2025 at 11:05, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> Hi,
>
> On 18.09.25 09:43, Tobias Waldekranz wrote:
>> This series adds initial support for dm-verity. Notably, it does not
>> include any support for validation of any root hash signature. As
>> such, practical use in a production setting is still limited, unless
>> you have some other way of securely determining that the root hash is
>> valid.
>>=20
>> 3/11 is where the action is.
>>=20
>> TL;DR: What follows is just a discussion about the future - it has
>>        nothing to do with the contents of this series.
>
> Thanks for pointing out the shed for I come with color.
>
>> Once this is in place, signature validation is next on my TODO. The
>> kernel accepts a PKCS7 signature for this purpose. This is therefore
>> also what Discoverable Partitions Specification (DPS) provides in its
>> <arch>-<part>-verity-sig partitions, which contain a NUL-padded JSON
>> document like this:
>>=20
>> {
>> 	"roothash": "0123456789abcdef...",
>> 	"certificateFingerprint": "0123456789abcdef..",
>> 	"signature": "MIIINQYJKo..."
>> }
>>=20
>> To avoid having to integrate full ASN.1 + X509 parsing in Barebox, my
>> plan is:
>
> We've been piecewise importing crypto primitives from the Linux kernel
> so far, but I've been thinking if we shouldn't take the leap and import
> mbedtls, but we haven't had the need so far. Sascha is not opposed, if
> there's a good use case for it.

IMO, for this particular feature, it is certainly possible to get by
without something like that. I have implemented signature validation by
pretty much following the road-map detailed in my original message:

https://github.com/wkz/barebox/commit/4779bd7c766bab704aed982d8fa79d9907863=
3b7#diff-4a7f94e9bbcea0d43614b6f3e7edeedfc0a597a1d284c9ffe4f002ad621f580fR1=
27-R128

The work is now stalled on getting
https://github.com/pengutronix/genimage/pull/312 merged (yes, I am
shamelessly trying to get some attention on this PR :)),

- ...so that can be included in a new release of genimage,

- ...so that I can eventually include that in
  ghcr.io/barebox/barebox/barebox-ci,

- ...so that I can then use it to generate test images,

- ...so that I can write tests,

- ...so that I can publish v1

...its...a whole thing :)

Anyway, this only works with existing crypto primitives because (a) we
can use the certificateFingerprint property to locate the key, without
having to parse the PKCS#7 data and (b) because the hash algorithm is
specified by DPS to SHA256, again letting us skip over parsing the ASN.1
data to determine that.

If we want to support more general operations, e.g. have some
lightweight openssl(1)-like command that can validate detached
signatures, then I think something like mbedtls is definitely needed.

>> 1. Add support for (optionally) storing a certificate fingerprint
>>    along with a `struct public_key`. So at build time, we can note the
>>    fingerprint of keys that we include in the builtin keystore.
>>=20
>>    We could also support parsing fingerprints from a DT. Not sure if
>>    this is needed.
>
> ECDSA support in barebox afaik doesn't have a DT representation and
> going forward CONFIG_CRYPTO_PUBLIC_KEYS is the standard way to pass keys
> into barebox.
>
> Jonas (Cc'd) is working right now in a backwards-compatible manner of
> attaching meta-data to keys, e.g.:
>
> export myfitkey=3D"keyring=3Dfit,hint=3Dmyhint:pkcs11:token=3Dfoo,bar;obj=
ect=3Dbl"
> export myjwtkey=3D"keyring=3Djwt-myboard:jwt_pub.pem"

Shiny! Being able to have multiple keyrings is a great feature.

>
> scripts/config --set-str CONFIG_CRYPTO_PUBLIC_KEYS \
> 		"__ENV_myfitkey __ENV_myjwtkey"
>
>> 2. Add a simplified PKCS7 validation function that relies on:
>>    a. Knowing which public key to use in advance, rather than
>>       determining it by walking the ASN.1 data.
>>    b. The last $KEY_LEN_BYTES of the PKCS7 blob holds the raw
>>       RFC4880=C2=A75.2.2 signature bytes that Barebox already knows how =
to
>>       verify.
>>=20
>> 3. Add a "dps-open" subcommand to veritysetup that only requires the
>>    partition to open and a name for the dm-verity device:
>>=20
>>    veritysetup dps-open /dev/disk0.root os
>>=20
>>    Based on the partition type UUID, we would then locate the
>>    corresponding -verity and -verity-sig partitions, parse the verity
>>    superblock, validate the signature and then create the dm-verity
>>    device.
>
> This makes sense, even if there is no decision yet for
> https://github.com/uapi-group/specifications/issues/167

Ehm, yeah. I have lots of thoughts about the response to this
issue. Maybe over a beer sometime :)

> I would suggest we hardcode (and document) that in case there are
> multiple candidates, the ones closest after the root partition are taken?

I think this is a great approach. Simple, yet seems like it solves all
the common setups.

>> Some other thoughts for the future (I have done no research here, so
>> some of this might already exist in Barebox and I just haven't
>> stumbled across it):
>>=20
>> - Similar to the automounter, it would be good to have an
>>   "auto-dps-verityer" that will do the equivalent of `veritysetup
>>   dps-open` on the DPS partitions matching the current architecture.
>>=20
>> - Having the ability to tag a partition as trusted, which could then
>>   be used to tag filesystems as such.
>
> This would mesh nicely with security policies. We can allow board code
> to tag device files and then mounting them would be allowed even if
> SCONFIG_FS_UNTRUSTED is disabled per currently active security policy.
>
>> - Having a build-time option that limits booting to only be allowed
>>   from trusted filesystems.
>
> Ye, for users without security policies, a build-time option would be apt.

No no, forget that - just I suggested that someone who already owns a
2kW electric nailgun should buy a hammer :)

I just watched your talk and Security policies sound really great!

Is there any information/examples on how to use JWTs to dynamically
switch into a developer/rma mode?

> Cheers,
> Ahmad
>
>>=20
>> Tobias Waldekranz (11):
>>   dm: Add helper to manage a lower device
>>   dm: linear: Refactor to make use of the generalized cdev management
>>   dm: verity: Add transparent integrity checking target
>>   dm: verity: Add helper to parse superblock information
>>   commands: veritysetup: Create dm-verity devices
>>   ci: pytest: Open up testfs to more consumers than the FIT test
>>   ci: pytest: Enable testfs feature on malta boards
>>   ci: pytest: Generate test data for dm-verity
>>   test: pytest: add basic dm-verity test
>>   ci: pytest: Centralize feature discovery to a separate step
>>   ci: pytest: Enable device-mapper labgrid tests
>>=20
>>  .github/workflows/test-labgrid-pytest.yml     |  26 +-
>>  arch/mips/configs/qemu-malta_defconfig        |   4 +
>>  commands/Kconfig                              |  10 +
>>  commands/Makefile                             |   1 +
>>  commands/veritysetup.c                        | 123 +++++
>>  .../boards/configs/enable_dm_testing.config   |   9 +
>>  drivers/block/dm/Kconfig                      |   7 +
>>  drivers/block/dm/Makefile                     |   1 +
>>  drivers/block/dm/dm-core.c                    | 118 ++++
>>  drivers/block/dm/dm-linear.c                  |  64 +--
>>  drivers/block/dm/dm-target.h                  |  34 ++
>>  drivers/block/dm/dm-verity.c                  | 517 ++++++++++++++++++
>>  include/device-mapper.h                       |   5 +
>>  scripts/generate_testfs.sh                    |  64 ++-
>>  test/mips/be@qemu-malta_defconfig.yaml        |   1 +
>>  test/mips/qemu-malta64el_defconfig.yaml       |   1 +
>>  test/py/test_dm.py                            |  38 ++
>>  test/py/test_fit.py                           |   4 +-
>>  test/riscv/qemu-virt64@rv64i_defconfig.yaml   |   1 +
>>  test/riscv/qemu@virt32_defconfig.yaml         |   1 +
>>  20 files changed, 968 insertions(+), 61 deletions(-)
>>  create mode 100644 commands/veritysetup.c
>>  create mode 100644 common/boards/configs/enable_dm_testing.config
>>  create mode 100644 drivers/block/dm/dm-verity.c
>>  create mode 100644 test/py/test_dm.py
>>=20
>
>
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



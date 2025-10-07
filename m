Delivery-date: Tue, 07 Oct 2025 11:06:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63dz-005Bu2-07
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 11:06:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63dy-0000Bs-9c
	for lore@pengutronix.de; Tue, 07 Oct 2025 11:06:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U8deaOAwspU+RiwubEOX15OP31zitQjcCN2ZlkcUtZQ=; b=u/AIOWenEtfQM1N03UqWlwV7n+
	4nQ5VjCw8x0hu17wEzV1B2uZVxhHKnCpnaT0u85mDWeH7QKqkXuZY2pielEdPXGITCTyu3v8UmDxC
	ISZj+bEFxXkhcrbgNIZNd6xCo0OnabRtmmgb/FBKDYmLuBhOPwJ3okd8CsfsNgmIDxVOPSFtvp4v1
	P/oQFauKIX3DCTOpD4tiCyZrOvHTN3zxj04cyFJ7kRCyD2oWKzgMkV2ObJ5DKQTcaetpvaFoeZ909
	3ksIm7xvA9Y+ZFySLRMF53702KkZCbbunF+8beDuvjGdxEFx3ABnquArNbMtLHzL9ymrVVXjhlP2l
	zcKC+J8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63dW-00000001fIb-0gge;
	Tue, 07 Oct 2025 09:05:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63dT-00000001fHd-0LY7
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 09:05:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v63dR-00007D-Kn; Tue, 07 Oct 2025 11:05:29 +0200
Message-ID: <3e45fde4-a263-4826-aafe-42f41bd46c26@pengutronix.de>
Date: Tue, 7 Oct 2025 11:05:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250918074455.891780-1-tobias@waldekranz.com>
Content-Language: en-US
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_020531_125687_4FFBF44E 
X-CRM114-Status: GOOD (  35.83  )
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

On 18.09.25 09:43, Tobias Waldekranz wrote:
> This series adds initial support for dm-verity. Notably, it does not
> include any support for validation of any root hash signature. As
> such, practical use in a production setting is still limited, unless
> you have some other way of securely determining that the root hash is
> valid.
> 
> 3/11 is where the action is.
> 
> TL;DR: What follows is just a discussion about the future - it has
>        nothing to do with the contents of this series.

Thanks for pointing out the shed for I come with color.

> Once this is in place, signature validation is next on my TODO. The
> kernel accepts a PKCS7 signature for this purpose. This is therefore
> also what Discoverable Partitions Specification (DPS) provides in its
> <arch>-<part>-verity-sig partitions, which contain a NUL-padded JSON
> document like this:
> 
> {
> 	"roothash": "0123456789abcdef...",
> 	"certificateFingerprint": "0123456789abcdef..",
> 	"signature": "MIIINQYJKo..."
> }
> 
> To avoid having to integrate full ASN.1 + X509 parsing in Barebox, my
> plan is:

We've been piecewise importing crypto primitives from the Linux kernel
so far, but I've been thinking if we shouldn't take the leap and import
mbedtls, but we haven't had the need so far. Sascha is not opposed, if
there's a good use case for it.

> 1. Add support for (optionally) storing a certificate fingerprint
>    along with a `struct public_key`. So at build time, we can note the
>    fingerprint of keys that we include in the builtin keystore.
> 
>    We could also support parsing fingerprints from a DT. Not sure if
>    this is needed.

ECDSA support in barebox afaik doesn't have a DT representation and
going forward CONFIG_CRYPTO_PUBLIC_KEYS is the standard way to pass keys
into barebox.

Jonas (Cc'd) is working right now in a backwards-compatible manner of
attaching meta-data to keys, e.g.:

export myfitkey="keyring=fit,hint=myhint:pkcs11:token=foo,bar;object=bl"
export myjwtkey="keyring=jwt-myboard:jwt_pub.pem"


scripts/config --set-str CONFIG_CRYPTO_PUBLIC_KEYS \
		"__ENV_myfitkey __ENV_myjwtkey"

> 2. Add a simplified PKCS7 validation function that relies on:
>    a. Knowing which public key to use in advance, rather than
>       determining it by walking the ASN.1 data.
>    b. The last $KEY_LEN_BYTES of the PKCS7 blob holds the raw
>       RFC4880§5.2.2 signature bytes that Barebox already knows how to
>       verify.
> 
> 3. Add a "dps-open" subcommand to veritysetup that only requires the
>    partition to open and a name for the dm-verity device:
> 
>    veritysetup dps-open /dev/disk0.root os
> 
>    Based on the partition type UUID, we would then locate the
>    corresponding -verity and -verity-sig partitions, parse the verity
>    superblock, validate the signature and then create the dm-verity
>    device.

This makes sense, even if there is no decision yet for
https://github.com/uapi-group/specifications/issues/167

I would suggest we hardcode (and document) that in case there are
multiple candidates, the ones closest after the root partition are taken?

> Some other thoughts for the future (I have done no research here, so
> some of this might already exist in Barebox and I just haven't
> stumbled across it):
> 
> - Similar to the automounter, it would be good to have an
>   "auto-dps-verityer" that will do the equivalent of `veritysetup
>   dps-open` on the DPS partitions matching the current architecture.
> 
> - Having the ability to tag a partition as trusted, which could then
>   be used to tag filesystems as such.

This would mesh nicely with security policies. We can allow board code
to tag device files and then mounting them would be allowed even if
SCONFIG_FS_UNTRUSTED is disabled per currently active security policy.

> - Having a build-time option that limits booting to only be allowed
>   from trusted filesystems.

Ye, for users without security policies, a build-time option would be apt.

Cheers,
Ahmad

> 
> Tobias Waldekranz (11):
>   dm: Add helper to manage a lower device
>   dm: linear: Refactor to make use of the generalized cdev management
>   dm: verity: Add transparent integrity checking target
>   dm: verity: Add helper to parse superblock information
>   commands: veritysetup: Create dm-verity devices
>   ci: pytest: Open up testfs to more consumers than the FIT test
>   ci: pytest: Enable testfs feature on malta boards
>   ci: pytest: Generate test data for dm-verity
>   test: pytest: add basic dm-verity test
>   ci: pytest: Centralize feature discovery to a separate step
>   ci: pytest: Enable device-mapper labgrid tests
> 
>  .github/workflows/test-labgrid-pytest.yml     |  26 +-
>  arch/mips/configs/qemu-malta_defconfig        |   4 +
>  commands/Kconfig                              |  10 +
>  commands/Makefile                             |   1 +
>  commands/veritysetup.c                        | 123 +++++
>  .../boards/configs/enable_dm_testing.config   |   9 +
>  drivers/block/dm/Kconfig                      |   7 +
>  drivers/block/dm/Makefile                     |   1 +
>  drivers/block/dm/dm-core.c                    | 118 ++++
>  drivers/block/dm/dm-linear.c                  |  64 +--
>  drivers/block/dm/dm-target.h                  |  34 ++
>  drivers/block/dm/dm-verity.c                  | 517 ++++++++++++++++++
>  include/device-mapper.h                       |   5 +
>  scripts/generate_testfs.sh                    |  64 ++-
>  test/mips/be@qemu-malta_defconfig.yaml        |   1 +
>  test/mips/qemu-malta64el_defconfig.yaml       |   1 +
>  test/py/test_dm.py                            |  38 ++
>  test/py/test_fit.py                           |   4 +-
>  test/riscv/qemu-virt64@rv64i_defconfig.yaml   |   1 +
>  test/riscv/qemu@virt32_defconfig.yaml         |   1 +
>  20 files changed, 968 insertions(+), 61 deletions(-)
>  create mode 100644 commands/veritysetup.c
>  create mode 100644 common/boards/configs/enable_dm_testing.config
>  create mode 100644 drivers/block/dm/dm-verity.c
>  create mode 100644 test/py/test_dm.py
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Thu, 07 Nov 2024 10:20:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8ygN-005rra-2T
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 10:20:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8ygO-0002Ua-0q
	for lore@pengutronix.de; Thu, 07 Nov 2024 10:20:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L7X6PqzNOZsoT2/EAksGujTgdEnBXrg3RNIxn21mO9M=; b=eYverrNhOC2VQntN2AP4N13EEJ
	4F7G5Iy9/GqcOMF8VOWrPrWYiz1rNqkWuOgTSTCku7FPBG19GB01bHqgcSeYzrpl5qvn41w6WuIrG
	tLYLBwCXQDwkNJvcdPKbmJRnLXQqBd5Gq3aeP4rS5ou5akGepZkOpPBiQXTWfiljn/Fwp9oDYnXf2
	Z3ZgJ2vsIrIz9Sj3YN2aespVyTIZe798hxUAbqBYkDLH9Jv6zXcMOV6m1/pLa+f/khyLnmlC3GWc3
	Vut1HO3X+dgStEM09WBoc/B/hg4Vt87xjdE51BAbGnvSAFTXHWSh4Fl1ZRi0cWH76mOuV1qKU/sVg
	qO5ALfgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yfx-00000006Gvq-12bx;
	Thu, 07 Nov 2024 09:19:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yfu-00000006GvC-225Y
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 09:19:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8yfs-0002Qc-UK; Thu, 07 Nov 2024 10:19:33 +0100
Message-ID: <ed49b6bd-d44c-4727-b403-35e902ac5ca7@pengutronix.de>
Date: Thu, 7 Nov 2024 10:19:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20241106-fix-sha256-assembly-v1-0-ad1ac961f15f@pengutronix.de>
 <86a81980-3811-4c2e-b85b-12cff2370634@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <86a81980-3811-4c2e-b85b-12cff2370634@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_011934_716140_892CCE42 
X-CRM114-Status: GOOD (  31.00  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] arm: crypto: sha256: fix generation of thumb2
 assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefan,

On 07.11.24 10:12, Stefan Kerkmann wrote:
> Hi Sascha,
> 
> On 06.11.24 17:34, Stefan Kerkmann wrote:
>> The checked in `sha256-core.S_shipped` assembly file has a thumb2
>> specific workaround applied[1]. This fix wasn't backported to the perl
>> script `sha256-armv4.pl` used to generate the assembly, thus when the
>> script is run it would regenerate the buggy code.
>>
>> In-tree builds were not affected as the assembly file already exists in
>> the source tree. However in the context of an out-of-tree build (make
>> O=xyz) the file isn't present from the pov of make - triggering a
>> regeneration. This happens by default during Yocto builds - leading to a
>> broken sha256 sum function on ARMv7 compiled with Thumb2 support. The
>> bug expresses itself not in crashes but wrong sha256 sums.
> 
> I just (re-)tested this part without the patch applied, and I'm unable to
> reproduce it in a cleanly checked out state of my BSP. The full chain of events
> and conditions that lead to the regeneration of the file is thus not fully
> understood (yet) — but it clearly happened for me.

Try manually touching arch/arch/crypto/sha256-armv4.pl, so it's more
recent than sha256-core.S_shipped. The modification timestamps after a
git checkout order are non-deterministic and that's probably what bites you.

The kernel used to consult an environment variable to determine whether
to rebuild the shipped files exactly to avoid this.

In recent kernel versions, this has been replaced by unconditionally
running the Perl script. I don't know what's the reason behind that.

Cheers,
Ahmad

> 
> Here is the output of a CI[1] run with the assembly file (forcefully) generated
> from the script, that shoes the errors I ran into:
> 
>   test_digests_sha12:153: mismatch calculating sha224-asm(zeroes7):
>   	got: c56f57826fa8cc1cae10a3450b90162677ba55cdbaa3d2a72810853e
>   	but: fbf6df85218ac5632461a8a17c6f294e6f35264cbfc0a9774a4f665b expected
>   test_digests_sha12:153: mismatch calculating sha224-asm(one32):
>   	got: 3a81d42a638cf434f5b002ead1252be963880bd3eec627a8b3278bb4
>   	but: 343cb3950305e6e6331e294b0a4925739d09ecbd2b43a2fc87c09941 expected
>   test_digests_sha12:153: mismatch calculating sha224-asm(inc4097):
>   	got: 2e6565a91ff0e4f0d316067ad66eaa3b76d71317171adfd0ec6bbcd4
>   	but: 6596b5dcfbd857f4246d6b94508b8a1a5b715a4f644a0c1e7d54c4f7 expected
>   test_digests_sha12:164: mismatch calculating sha256-asm(zeroes7):
>   	got: 71ab8ff93158c3b8863460dac03e9049bd5d3ec1a2ec4a1ba6e434d0fd33eb5f
>   	but: 837885c8f8091aeaeb9ec3c3f85a6ff470a415e610b8ba3e49f9b33c9cf9d619 expected
>   test_digests_sha12:164: mismatch calculating sha256-asm(one32):
>   	got: bcbd77ba0128aed7df96f75788fefa5e8da2501bfd3e0fe14753d4b5c27b1564
>   	but: 01d0fabd251fcbbe2b93b4b927b26ad2a1a99077152e45ded1e678afa45dbec5 expected
>   test_digests_sha12:164: mismatch calculating sha256-asm(inc4097):
>   	got: 4dd697b3bf8f7f0630b583356d48dcc7a1c345e62fe189c1d4843a38cd7d59a9
>   	but: 1e973d029df2b2c66cb42a942c5edb45966f02abaff29fe99410e44d271d0efc expected
>   test_digests_sha12:153: mismatch calculating sha224(zeroes7):
>   	got: c56f57826fa8cc1cae10a3450b90162677ba55cdbaa3d2a72810853e
>   	but: fbf6df85218ac5632461a8a17c6f294e6f35264cbfc0a9774a4f665b expected
>   test_digests_sha12:153: mismatch calculating sha224(one32):
>   	got: 3a81d42a638cf434f5b002ead1252be963880bd3eec627a8b3278bb4
>   	but: 343cb3950305e6e6331e294b0a4925739d09ecbd2b43a2fc87c09941 expected
>   test_digests_sha12:153: mismatch calculating sha224(inc4097):
>   	got: 2e6565a91ff0e4f0d316067ad66eaa3b76d71317171adfd0ec6bbcd4
>   	but: 6596b5dcfbd857f4246d6b94508b8a1a5b715a4f644a0c1e7d54c4f7 expected
>   test_digests_sha12:164: mismatch calculating sha256(zeroes7):
>   	got: 71ab8ff93158c3b8863460dac03e9049bd5d3ec1a2ec4a1ba6e434d0fd33eb5f
>   	but: 837885c8f8091aeaeb9ec3c3f85a6ff470a415e610b8ba3e49f9b33c9cf9d619 expected
>   test_digests_sha12:164: mismatch calculating sha256(one32):
>   	got: bcbd77ba0128aed7df96f75788fefa5e8da2501bfd3e0fe14753d4b5c27b1564
>   	but: 01d0fabd251fcbbe2b93b4b927b26ad2a1a99077152e45ded1e678afa45dbec5 expected
>   test_digests_sha12:164: mismatch calculating sha256(inc4097):
>   	got: 4dd697b3bf8f7f0630b583356d48dcc7a1c345e62fe189c1d4843a38cd7d59a9
>   	but: 1e973d029df2b2c66cb42a942c5edb45966f02abaff29fe99410e44d271d0efc expected
>   ERROR: digest: failed 12 out of 45 tests
> 
> [1]: https://github.com/KarlK90/barebox/actions/runs/11704376345/job/32596699159
> 
> 
> So the patch is still valid, but this paragraph should be replaced with:
> 
> Under rare circumstances, in my case it was a Yocto build of barebox from an
> external source tree, the assembly file was regenerated. Leading to a broken
> sha256 sum function on ARMv7 compiled with Thumb2 support. The bug expressed
> itself not in crashes but wrong sha256 sums.
> 
> Should I send a v2 for the updated message?
> 
>> The mentioned problem in[1] was fixed and explained further in upstream
>> commit[2]. Thus this series updates the script and generated assembly to
>> the most recent Kernel commit[3].
>>
>> To better catch regressions in the future the existing digest tests now
>> exercise the optimized implementations for ARMv5/v6/v7/v8 and the ARMv7
>> test binaries are compiled in thumb2 mode.
>>
>> [1]: b73bc6e303 (arm: crypto: fix SHA256 shipped assembler code, 2018-10-05)
>> [2]: 69216a545cf8 (crypto: sha256/arm - fix crash bug in Thumb2 build, 2019-02-16)
>> [3]: 54781938ec34 (crypto: arm/sha256-neon - avoid ADRL pseudo instruction, 2020-09-16)
>>
>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
>> ---
>> Stefan Kerkmann (7):
>>       arm: crypto: sha256: fix generation of thumb2 assembly
>>       arm: configs: multi_v5_v6_defconfig: move rpi1 armv6 targets
>>       arm: configs: multi_v5_v6_defconfig: enable arm optimized sha1/sha256 digest
>>       arm: configs: multi_v7_defconfig: compile for thumb2
>>       arm: configs: multi_v7_defconfig: enable arm optimized sha256 digest
>>       arm: configs: multi_v8_defconfig: enable arm optimized sha1/sha256 digest
>>       test: arm: rpi: run tests against multi_v5_v6_defconfig
>>
>>  .github/workflows/test-labgrid-pytest.yml          |  4 ++
>>  arch/arm/configs/multi_v5_v6_defconfig             |  6 ++-
>>  arch/arm/configs/multi_v7_defconfig                |  7 +--
>>  arch/arm/configs/multi_v8_defconfig                |  5 +-
>>  arch/arm/crypto/sha256-armv4.pl                    | 25 ++++++----
>>  arch/arm/crypto/sha256-core.S_shipped              | 55 ++++++++++++++++++----
>>  ...yaml => qemu-raspi0@multi_v5_v6_defconfig.yaml} |  0
>>  ...ml => qemu-raspi1ap@multi_v5_v6_defconfig.yaml} |  0
>>  8 files changed, 74 insertions(+), 28 deletions(-)
>> ---
>> base-commit: d9f7f6d930069df35e28fedb35719bfd12fbd6e4
>> change-id: 20241106-fix-sha256-assembly-ad3d25bf5a9f
>>
>> Best regards,
> 
> Cheers,
> Stefan
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



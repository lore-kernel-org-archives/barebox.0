Delivery-date: Thu, 07 Nov 2024 15:06:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t939N-005wkw-0D
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 15:06:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t939N-0006Ya-89
	for lore@pengutronix.de; Thu, 07 Nov 2024 15:06:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4L7oM9R1HdmBt5OG3n9KYarTfVgzh+JrUso1K0dU3cI=; b=XDLJhQsx71Qsz8A7f48cKFHTuP
	oetdmw2WKG7ul7qSFIGEQLGZANmlR1SaMDWGOFnd9gLXg/7l3Yzk5KDQE7hn0CPuS7fBwP09PRjiw
	sGJocTWPetmAxoAV1gbyJkIsmQrSTodt3S42vnhylbKm1Ziu5/eU/cnqHQsMa7IdsE0yMQB8bZ+L4
	/aiEBF9Ead07dWPIB7thISwl+bpgdtLbxDltva+abjWBuvmaLtlnWZEubDdZO5zP8tdvS7jLD5yWf
	hhfWWsQRfcD37nvgCzlr2bEV1K6q5dffU7/YclTYa8hf5sr1QVsy3ScnHjgpg5VF4mpHygPkxmyQW
	0di9UhHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t938r-00000007E6Z-3FlQ;
	Thu, 07 Nov 2024 14:05:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t935k-00000007DXb-0oE7
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 14:02:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935g-0005tZ-1D; Thu, 07 Nov 2024 15:02:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935f-002T9F-2S;
	Thu, 07 Nov 2024 15:02:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935f-00EWBz-2F;
	Thu, 07 Nov 2024 15:02:27 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 07 Nov 2024 15:02:18 +0100
Message-Id: <20241107-fix-sha256-assembly-v2-0-5fdb418f7f54@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGvILGcC/32NQQqDMBBFryKzboqTNoJd9R7iIpqJDrRRMjYo4
 t2beoAu3+f/93cQikwCj2KHSImFp5BBXwroRxsGUuwygy71HbGslOdVyWi1qZQVoXf32pR1N6d
 N542tPeTlHCnXTmvTZh5Zlilu50nCX/rfl1CVWYq2ryv0aPxzpjB8ljgFXq+OoD2O4wtgMBSAu
 wAAAA==
X-Change-ID: 20241106-fix-sha256-assembly-ad3d25bf5a9f
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_060232_441436_7EFED8F5 
X-CRM114-Status: GOOD (  12.30  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/7] arm: crypto: sha256: fix generation of thumb2
 assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The checked in `sha256-core.S_shipped` assembly file has a thumb2
specific workaround applied[1]. This fix wasn't backported to the perl
script `sha256-armv4.pl` used to generate the assembly, thus when the
script is run it would regenerate the buggy code.

Under rare circumstances the modification timestamp of `sha256-armv4.pl`
differs enough from `sha256-core.S_shipped` that make triggers a
regeneration - leading to a broken sha256 digest on ARMv7 compiled in
Thumb2 mode. In my case it was a Yocto build of barebox from an external
source tree. Either the git checkout/clone process produced different
timestamps, as these are non-deterministic, or I accidentally touched
the file in another way. The bug expressed itself not in crashes but
wrong sha256 sums.

The mentioned problem in[1] was fixed and explained further in upstream
kernel commit[2]. Thus this commit updates the script and generated
assembly to the most recent kernel commit[3].

To better catch regressions in the future the existing digest tests now
exercise the optimized implementations for ARMv5/v6/v7/v8 and the ARMv7
test binaries are compiled in thumb2 mode.

[1]: b73bc6e303 (arm: crypto: fix SHA256 shipped assembler code, 2018-10-05)
[2]: 69216a545cf8 (crypto: sha256/arm - fix crash bug in Thumb2 build, 2019-02-16)
[3]: 54781938ec34 (crypto: arm/sha256-neon - avoid ADRL pseudo instruction, 2020-09-16)

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Changes in v2:
- Updated the root cause, no functional changes
- Link to v1: https://lore.kernel.org/r/20241106-fix-sha256-assembly-v1-0-ad1ac961f15f@pengutronix.de

---
Stefan Kerkmann (7):
      arm: crypto: sha256: fix generation of thumb2 assembly
      arm: configs: multi_v5_v6_defconfig: move rpi1 armv6 targets
      arm: configs: multi_v5_v6_defconfig: enable arm optimized sha1/sha256 digest
      arm: configs: multi_v7_defconfig: compile for thumb2
      arm: configs: multi_v7_defconfig: enable arm optimized sha256 digest
      arm: configs: multi_v8_defconfig: enable arm optimized sha1/sha256 digest
      test: arm: rpi: run tests against multi_v5_v6_defconfig

 .github/workflows/test-labgrid-pytest.yml          |  4 ++
 arch/arm/configs/multi_v5_v6_defconfig             |  6 ++-
 arch/arm/configs/multi_v7_defconfig                |  7 +--
 arch/arm/configs/multi_v8_defconfig                |  5 +-
 arch/arm/crypto/sha256-armv4.pl                    | 25 ++++++----
 arch/arm/crypto/sha256-core.S_shipped              | 55 ++++++++++++++++++----
 ...yaml => qemu-raspi0@multi_v5_v6_defconfig.yaml} |  0
 ...ml => qemu-raspi1ap@multi_v5_v6_defconfig.yaml} |  0
 8 files changed, 74 insertions(+), 28 deletions(-)
---
base-commit: d9f7f6d930069df35e28fedb35719bfd12fbd6e4
change-id: 20241106-fix-sha256-assembly-ad3d25bf5a9f

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>




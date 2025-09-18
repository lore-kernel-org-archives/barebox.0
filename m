Delivery-date: Thu, 18 Sep 2025 09:45:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L0-004NyG-2i
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9Ky-0001m2-QS
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=W6PngAva7pgFQZw/2kpADmCgKB1uVGQAOUWXmxTSTIw=; b=A20e16PxiuN7Lv6/K9brn0ipkq
	JpVhtJd9+N8xqDBzGXAeqrrgtQVsMF76rzrEO8qHlyqb7TTkdihbTZvrR+SBoLQCQInfCzYNJqQyE
	4vJ2cU09gzxF3RJbaVzPnAib5dkeZQ2gnq+E3OZ7nZoOJ8ETRxUImcMSzrEEyOqIaB4F0b9iH42Hb
	+CSx9mpxTmK+5HvkjZAZQXtETOK/jg2N+UbZZJ8dLL29GoZ7jcTnShrpByWjSL7TOfiKh1Q1p5COL
	8qzIz0wMlcyjTENd5MG1dQlBIXpIApBdl8UzNQ8aHi7DOOW5QJVgD3kQt4+E3RPcaEIs9VO9yyarV
	S6ENlKAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KM-0000000GaOu-2RT1;
	Thu, 18 Sep 2025 07:45:14 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KI-0000000GaLH-2wp0
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:12 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-b07c081660aso111494766b.0
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181508; x=1758786308; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W6PngAva7pgFQZw/2kpADmCgKB1uVGQAOUWXmxTSTIw=;
        b=0KSEFu0sYfblrTO89BUycOWLSlB1LmsIIw+QFIiLkTGM0OWtKcSPEuaxVo64faRfYS
         YXwDXjhgKkeg3gP+3PUxCYBtnK6q1KfNFp69FV9rxWuufk/0CG4ENMAO+Y+G5Rr/ZxSq
         zy5k5gJsffU7KoHW3PqWCnFn+kIKBvP6UeLbroenBf7LVZK1ZqElymPmlwzFgcqxJ8p8
         DEIUWEtwkBxw3iHdbKGXuh70yCbSqD+wLI17EJHWfN1Bnye3u/SoMHgaahdsKgP7XJn8
         GHr0R32ZhyrklEwAtgjfQ2qziHnADKLDFGiqXwNJLuqn+2DkF59IW71auCWylUvmT0tb
         b+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181508; x=1758786308;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W6PngAva7pgFQZw/2kpADmCgKB1uVGQAOUWXmxTSTIw=;
        b=rXxKcgDwU/sxGKu0yWd7HbyoNVsNDXMcM7ubzTvME0CxcoyjIp/EACvnMqx27LCev/
         aTURm/Gyq65AyED6fgeARiwBpKCWRa8dqaSDovfGROJU1JUloXWakSO/Du6nGaSrDvff
         P2n95OAgGlvuRDvdidWPEFim+phRvXM1zNm98enjJGRz7WZviqEB5FbXaH4t5DERwXuQ
         t3K4AL8vXaPN4GPJl4oA963XoRviuHIUv4LlOWVD+BboDvReGEJTiak0EKHfM1d7PqT2
         AyApa9TRnmrD5MmVRRdnd8fYDvavSvJuwnUIFDKGRCyqsGKvdae5KmJpFxqQeZ9kWc9F
         l7uw==
X-Gm-Message-State: AOJu0YytmsdUjixBNwFbjaNfRKpM+oWhct0RBI31JG08dZeh8j62CQ3z
	crKMff38EBz6wvP8Y6m+m/rY3DBjFvhaASNY4yeqrImohxdEHF01ZL1AeH9UX7onMJ6oR71TF9r
	tK90E
X-Gm-Gg: ASbGncsYRFEhUTO+6HFI97JfeXAG937mwAH7x3mSEQkD+Gk2PsQ0Vv3GGlKGrqK0TVP
	/Kjx/0TzmjLNj+PwBkbCf7BYmmf6dgk0X/QULrL0DVl7f/ecDQd1Xm2HvpmfCvy5727fMhwWGLL
	NTGUydnb5JZOzdOAvmPrzbU4J5TSqrG/0HhQWmkj0mMoiQUC73hnhspJTMUN0QyxPxpoby2N2Xu
	aKBENpNAvTBz8LcPiARqHNZCF50cWEhUFttgg2HLNwbtP+1cd7mOotg2XfePgJh6n2nSCXpsIqX
	ZnaKL5CYm0/Mu6rYM3e1C8eX7cROgQw6kVgr2LNRvpedz6ncPSWVmFupuC3Dk/vdbNhFaFAQla2
	oMlGopm0LZG4985WpUwmAmXJbD/Q2bA6xOsNukoHJMR/1SH1iHIWCO/JmqylU2RnNL3hF48hE29
	+axJwzp4ft
X-Google-Smtp-Source: AGHT+IFRIjDwLozNiU1M4/PK1Q+Il8Wi562IzgQ/3qOwFariYxRaw4AWMeg4CwR0b0BmnMSQTglU2w==
X-Received: by 2002:a17:906:6a09:b0:b04:a1a4:4bec with SMTP id a640c23a62f3a-b1bc020111bmr593891966b.58.1758181507892;
        Thu, 18 Sep 2025 00:45:07 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.07
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:07 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:10 +0200
Message-ID: <20250918074455.891780-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Wires
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004511_013777_CCB9422B 
X-CRM114-Status: GOOD (  20.18  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/11] dm: verity: Add transparent integrity checking target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds initial support for dm-verity. Notably, it does not
include any support for validation of any root hash signature. As
such, practical use in a production setting is still limited, unless
you have some other way of securely determining that the root hash is
valid.

3/11 is where the action is.

TL;DR: What follows is just a discussion about the future - it has
       nothing to do with the contents of this series.


Once this is in place, signature validation is next on my TODO. The
kernel accepts a PKCS7 signature for this purpose. This is therefore
also what Discoverable Partitions Specification (DPS) provides in its
<arch>-<part>-verity-sig partitions, which contain a NUL-padded JSON
document like this:

{
	"roothash": "0123456789abcdef...",
	"certificateFingerprint": "0123456789abcdef..",
	"signature": "MIIINQYJKo..."
}

To avoid having to integrate full ASN.1 + X509 parsing in Barebox, my
plan is:

1. Add support for (optionally) storing a certificate fingerprint
   along with a `struct public_key`. So at build time, we can note the
   fingerprint of keys that we include in the builtin keystore.

   We could also support parsing fingerprints from a DT. Not sure if
   this is needed.

2. Add a simplified PKCS7 validation function that relies on:
   a. Knowing which public key to use in advance, rather than
      determining it by walking the ASN.1 data.
   b. The last $KEY_LEN_BYTES of the PKCS7 blob holds the raw
      RFC4880§5.2.2 signature bytes that Barebox already knows how to
      verify.

3. Add a "dps-open" subcommand to veritysetup that only requires the
   partition to open and a name for the dm-verity device:

   veritysetup dps-open /dev/disk0.root os

   Based on the partition type UUID, we would then locate the
   corresponding -verity and -verity-sig partitions, parse the verity
   superblock, validate the signature and then create the dm-verity
   device.

Some other thoughts for the future (I have done no research here, so
some of this might already exist in Barebox and I just haven't
stumbled across it):

- Similar to the automounter, it would be good to have an
  "auto-dps-verityer" that will do the equivalent of `veritysetup
  dps-open` on the DPS partitions matching the current architecture.

- Having the ability to tag a partition as trusted, which could then
  be used to tag filesystems as such.

- Having a build-time option that limits booting to only be allowed
  from trusted filesystems.

Tobias Waldekranz (11):
  dm: Add helper to manage a lower device
  dm: linear: Refactor to make use of the generalized cdev management
  dm: verity: Add transparent integrity checking target
  dm: verity: Add helper to parse superblock information
  commands: veritysetup: Create dm-verity devices
  ci: pytest: Open up testfs to more consumers than the FIT test
  ci: pytest: Enable testfs feature on malta boards
  ci: pytest: Generate test data for dm-verity
  test: pytest: add basic dm-verity test
  ci: pytest: Centralize feature discovery to a separate step
  ci: pytest: Enable device-mapper labgrid tests

 .github/workflows/test-labgrid-pytest.yml     |  26 +-
 arch/mips/configs/qemu-malta_defconfig        |   4 +
 commands/Kconfig                              |  10 +
 commands/Makefile                             |   1 +
 commands/veritysetup.c                        | 123 +++++
 .../boards/configs/enable_dm_testing.config   |   9 +
 drivers/block/dm/Kconfig                      |   7 +
 drivers/block/dm/Makefile                     |   1 +
 drivers/block/dm/dm-core.c                    | 118 ++++
 drivers/block/dm/dm-linear.c                  |  64 +--
 drivers/block/dm/dm-target.h                  |  34 ++
 drivers/block/dm/dm-verity.c                  | 517 ++++++++++++++++++
 include/device-mapper.h                       |   5 +
 scripts/generate_testfs.sh                    |  64 ++-
 test/mips/be@qemu-malta_defconfig.yaml        |   1 +
 test/mips/qemu-malta64el_defconfig.yaml       |   1 +
 test/py/test_dm.py                            |  38 ++
 test/py/test_fit.py                           |   4 +-
 test/riscv/qemu-virt64@rv64i_defconfig.yaml   |   1 +
 test/riscv/qemu@virt32_defconfig.yaml         |   1 +
 20 files changed, 968 insertions(+), 61 deletions(-)
 create mode 100644 commands/veritysetup.c
 create mode 100644 common/boards/configs/enable_dm_testing.config
 create mode 100644 drivers/block/dm/dm-verity.c
 create mode 100644 test/py/test_dm.py

-- 
2.43.0




Delivery-date: Mon, 19 Jun 2023 11:53:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBaC-00D38Z-Ia
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 11:53:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBaA-0001su-7a
	for lore@pengutronix.de; Mon, 19 Jun 2023 11:53:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BtbdjmNqQ22XsYleCYGvIAz1/4gjGBX/VsAiOgwfElE=; b=grOxTJ2I+99NaHKPFJMNe6Kek8
	QozpoJHfZ5/DFglYw7xzq7wTBGEICXRceICs+zr1tokgreJ7zS9mO7cr0cRLPR/k87QFLkUuh0+4x
	LyeH8hzqAzQmW4ED5SaL87B9SnP0vX/+13fY7++DdatcCVnYvKkHEjxppUC0E9P3DPUmp/AEHlrES
	j5o3udI8S/EzHKJGHsbGD5yEHgQWPtioRUjS7ECTdlob5SPaNGi1tNpYxmdvHruSS8W2ecUqBi33Q
	Czjkk58Fp11ZCzDfuSRokmKGkeGCwdhhyWfr99dlhhhjRRhQWOfkMCTylPR3d/mhg3+gB95n4Cs/f
	WP8IP3+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZ6-0085Uu-2a;
	Mon, 19 Jun 2023 09:52:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZ3-0085St-1U
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 09:52:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBZ1-0001av-GD; Mon, 19 Jun 2023 11:52:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYz-008Tbr-QN; Mon, 19 Jun 2023 11:52:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYy-0004bi-1G;
	Mon, 19 Jun 2023 11:52:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de
Date: Mon, 19 Jun 2023 11:52:35 +0200
Message-Id: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_025249_503071_F8DF6F66 
X-CRM114-Status: GOOD (  10.97  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/5] test: teach pytest the emulate.pl tricks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

test/emulate.pl duplicates a lot of what labgrid is already doing
in order to instantiate virtualized devices and to allow interactive
use of emulated barebox with the same environment config.

In preparation for phasing out emulate.pl, let's teach pytest how to
replace it. As a first step we add these new pytest options:

  --interactive	start Qemu interactively using labgrid environment
  --dry-run     print Qemu command line that would've been used
  --rng         instaiate RNG device
  --console     instaiate console device
  --blk         instaiate block device
  --qemu=OPT    pass OPT to qemu

The intention is to ultimately move as much as possible of this handling
into labgrid itself, e.g. labgrid already has provisions for fixing up
disk options.

Ahmad Fatoum (5):
  test: add pytest.ini with defaults
  test: have pytest --interactive start interactive Qemu session
  test: lookup qemu binary in path if no tools key exists
  test: add support for passing devices on command line
  test: don't hardcode origin of OVMF.fd

 .github/workflows/test-labgrid-pytest.yml     |  4 -
 pytest.ini                                    |  2 +
 test/arm/a15@multi_v7_defconfig.yaml          |  4 +-
 test/arm/a9@multi_v7_defconfig.yaml           |  4 +-
 test/arm/multi_v8_defconfig.yaml              |  4 +-
 test/arm/qemu-raspi0@multi_v7_defconfig.yaml  |  4 +-
 .../arm/qemu-raspi1ap@multi_v7_defconfig.yaml |  4 +-
 test/arm/qemu-raspi2b@multi_v7_defconfig.yaml |  4 +-
 .../qemu-sabrelite@multi_v7_defconfig.yaml    |  4 +-
 test/arm/virt@multi_v7_defconfig.yaml         |  4 +-
 test/conftest.py                              | 78 +++++++++++++++++
 test/mips/be@qemu-malta_defconfig.yaml        |  4 +-
 test/mips/le@qemu-malta_defconfig.yaml        |  4 +-
 test/mips/qemu-malta64el_defconfig.yaml       |  4 +-
 test/openrisc/generic_defconfig.yaml          |  4 +-
 test/riscv/qemu-virt64@rv64i_defconfig.yaml   |  4 +-
 test/riscv/qemu@virt32_defconfig.yaml         |  4 +-
 test/riscv/sifive@rv64i_defconfig.yaml        |  4 +-
 test/strategy.py                              | 87 ++++++++++++++++++-
 test/x86/pc@efi_defconfig.yaml                | 10 +--
 test/x86/q35@efi_defconfig.yaml               | 10 +--
 test/x86/virtio@efi_defconfig.yaml            | 10 +--
 22 files changed, 187 insertions(+), 74 deletions(-)
 create mode 100644 pytest.ini

-- 
2.39.2




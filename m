Delivery-date: Mon, 26 Jun 2023 11:56:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDixs-004KVs-Dy
	for lore@lore.pengutronix.de; Mon, 26 Jun 2023 11:56:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDixq-0006EM-28
	for lore@pengutronix.de; Mon, 26 Jun 2023 11:56:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GUgmwGVjinJwZCrgHpURiP4qWPP9M0s20/IrDnq53TM=; b=kAmXJD/3eLVGRv2UedS1JbCzwq
	Qpyv2lF6pHiT/fHXmTx5fKPwK6ZkCmAoOzPdQgEn5/5p5msSA2ZF6CJCo6tpWkPFUhnDo87D7rk32
	3jjxkFFTNb+wQsLr1uvnuP5t5b16KX5OK3mnwOmwaYRB0WSQ60QKt1oiy55Ht+lsE9khv6iMZWAk2
	Y1kKg7S8yH7Kag5a0+uZB6t8+Hn/5nGZQ7/to9Vdj4Zux7VDdHaH9L+cPVAf0ql4BIkE9tZ0o0PnC
	8HwMvxeHOXchX+umKWvaYJCpcypRAVCtp/sC9CzCbySiIm9PhFOU4xiMq5fIsF47PdfJ289KXrwOz
	vpafGFjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDiwm-009mhM-25;
	Mon, 26 Jun 2023 09:55:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDiwj-009mgj-0N
	for barebox@lists.infradead.org;
	Mon, 26 Jun 2023 09:55:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDiwh-00065i-QJ; Mon, 26 Jun 2023 11:55:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDiwh-0003mP-JZ; Mon, 26 Jun 2023 11:55:43 +0200
Date: Mon, 26 Jun 2023 11:55:43 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20230626095543.GU18491@pengutronix.de>
References: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_025545_151403_199C8D49 
X-CRM114-Status: GOOD (  20.66  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/5] test: teach pytest the emulate.pl tricks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 19, 2023 at 11:52:35AM +0200, Ahmad Fatoum wrote:
> test/emulate.pl duplicates a lot of what labgrid is already doing
> in order to instantiate virtualized devices and to allow interactive
> use of emulated barebox with the same environment config.
> 
> In preparation for phasing out emulate.pl, let's teach pytest how to
> replace it. As a first step we add these new pytest options:
> 
>   --interactive	start Qemu interactively using labgrid environment
>   --dry-run     print Qemu command line that would've been used
>   --rng         instaiate RNG device
>   --console     instaiate console device
>   --blk         instaiate block device
>   --qemu=OPT    pass OPT to qemu
> 
> The intention is to ultimately move as much as possible of this handling
> into labgrid itself, e.g. labgrid already has provisions for fixing up
> disk options.
> 
> Ahmad Fatoum (5):
>   test: add pytest.ini with defaults
>   test: have pytest --interactive start interactive Qemu session
>   test: lookup qemu binary in path if no tools key exists
>   test: add support for passing devices on command line
>   test: don't hardcode origin of OVMF.fd

Applied, thanks

Sascha

> 
>  .github/workflows/test-labgrid-pytest.yml     |  4 -
>  pytest.ini                                    |  2 +
>  test/arm/a15@multi_v7_defconfig.yaml          |  4 +-
>  test/arm/a9@multi_v7_defconfig.yaml           |  4 +-
>  test/arm/multi_v8_defconfig.yaml              |  4 +-
>  test/arm/qemu-raspi0@multi_v7_defconfig.yaml  |  4 +-
>  .../arm/qemu-raspi1ap@multi_v7_defconfig.yaml |  4 +-
>  test/arm/qemu-raspi2b@multi_v7_defconfig.yaml |  4 +-
>  .../qemu-sabrelite@multi_v7_defconfig.yaml    |  4 +-
>  test/arm/virt@multi_v7_defconfig.yaml         |  4 +-
>  test/conftest.py                              | 78 +++++++++++++++++
>  test/mips/be@qemu-malta_defconfig.yaml        |  4 +-
>  test/mips/le@qemu-malta_defconfig.yaml        |  4 +-
>  test/mips/qemu-malta64el_defconfig.yaml       |  4 +-
>  test/openrisc/generic_defconfig.yaml          |  4 +-
>  test/riscv/qemu-virt64@rv64i_defconfig.yaml   |  4 +-
>  test/riscv/qemu@virt32_defconfig.yaml         |  4 +-
>  test/riscv/sifive@rv64i_defconfig.yaml        |  4 +-
>  test/strategy.py                              | 87 ++++++++++++++++++-
>  test/x86/pc@efi_defconfig.yaml                | 10 +--
>  test/x86/q35@efi_defconfig.yaml               | 10 +--
>  test/x86/virtio@efi_defconfig.yaml            | 10 +--
>  22 files changed, 187 insertions(+), 74 deletions(-)
>  create mode 100644 pytest.ini
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



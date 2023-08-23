Delivery-date: Wed, 23 Aug 2023 08:32:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYhPo-005qEV-G8
	for lore@lore.pengutronix.de; Wed, 23 Aug 2023 08:32:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYhPm-00037i-6v
	for lore@pengutronix.de; Wed, 23 Aug 2023 08:32:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Content-Type:
	MIME-Version:Message-ID:Subject:To:Date:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MfndPG58YEzLmyZEQSS+PassTDynWhlxlKzYAr3P1Qw=; b=gskoj7ssFB8fA/A4Hm4beeOTh4
	uCcIIajxl6odK+TE2JW9+Znfoez0f7a+h7qXOOCzIEALJYOCmYwXC6xDeokCTWk5QHPUprXIxzkbg
	+c6u3gWvtRWct/wiK0HQ2fIVKsnP/1kp9TBGphV/E7Na6hEEdhXHkOfxuM0KmjaUM5ccR6YJAEGB1
	U29X+uXgV08Enx1EAj1bO52sBLdI2LbIHWeY55RZTXaOugyJUZwyTBk8iI0wNWBwd1nrWBUV163+y
	hMhgqJb8zhhISFfWJBAPFx0yv3+/H9tJNrlN/xaCeo9z54AFyowvVejReIFiWZSBWoMphUcVyw3Pi
	CDB8EqHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYhOg-00HOer-20;
	Wed, 23 Aug 2023 06:31:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYhOd-00HOe5-0q
	for barebox@lists.infradead.org;
	Wed, 23 Aug 2023 06:31:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qYhOb-00034q-Sm; Wed, 23 Aug 2023 08:31:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qYhOb-0004np-LD; Wed, 23 Aug 2023 08:31:13 +0200
Date: Wed, 23 Aug 2023 08:31:13 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230823063113.GE16522@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_233115_300186_EFA7C804 
X-CRM114-Status: GOOD (  13.49  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2023.08.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

I am happy to announce barebox-2023.08.0. Writing the release message is
easy this time, there hasn't been much happening since the last release.
The only new feature in this release is the support for the 8GiB
variants of the i.MX8MP DEBIX SOM A. The remaining patches are all
bugfixes and other small improvemtents, see below for a full list.

Have fun!
 Sascha

Ahmad Fatoum (27):
      MAKEALL: source defconfig after determining correct CROSS_COMPILE
      test: add pytest.ini with defaults
      test: have pytest --interactive start interactive Qemu session
      test: lookup qemu binary in path if no tools key exists
      test: add support for passing devices on command line
      test: don't hardcode origin of OVMF.fd
      pbl: allow #include <pbl.h> from assembly
      blspec: support boot /dev/disk0.rootfs to mean boot disk0.rootfs
      Kbuild: include arch/ Makefile before test/ directory
      ci: pytest: have CI build and test ARCH=openrisc
      firmware: fix alignment of firmware images
      firmware: use portable newline escape
      soc: imx: featctrl: add help text for CONFIG_IMX8M_FEATCTRL
      soc: imx: have IMX8M_FEATCTRL select IMX_OCOTP
      Documentation: use current link to bootloader spec spec
      drivers: hab: work-around GCC -Wmaybe-uninitialized false-positive
      usb: gadget: multi: do not double free on error
      commands: usbserial: prevent double free
      usb: gadget: return error on missing UDC
      crypto: clarify relationship of CONFIG_{BOOTM_FITIMAGE_PUBKEY,RSA_KEY}
      scripts: fix pkg-config use for rsatoc/rkimage hosttools
      envfs: fix defaultenv_append_directory macro definition
      test: arm: make multi_v8_defconfig.yaml a symlink to virt@
      sandbox: store stickypage in runtime dir
      param: drop priv from dev_add_param_string_ro
      restart: fix restart_handler_get_by_name documentation
      boards: qemu-virt: apply state/env overlay only if flash exists

Alexander Shiyan (1):
      include/gpiod.h: Fixed path in error string

Assmann Kai (1):
      ARM: zynq: get ps_clk_rate from dt

Christian Melki (1):
      net.c: Don't forget about the first fragment.

Denis Orlov (3):
      usb: storage: fix missing calls to free()
      usb: make sure dma buffers are properly allocated
      nios2: remove arch remains from drivers

Marco Felsch (5):
      usb: misc: onboard_hub: add support for Genesys USB3.1 hub
      ARM: i.MX8MP: Debix: refactor lowlevel setup functions
      ARM: i.MX8MP: Add DEBIX SOM A and SOM A I/O Board support
      ARM: i.MX8MP: Add help text in Kconfig
      ARM64: configs: multi_v8_defconfig: enable onboard usb hub support

Roland Hieber (5):
      Convert License Identifiers to SPDX 3.0 for files originating from LiMon
      doc: dt-bindings: barebox,environment: fix typo
      doc: dt-bindings: improve docs for barebox 'partuuid' property
      doc: user: state: update note about redefining existing partitions
      doc: user: state: document backend references using GPT/MBR partitions

Sascha Hauer (10):
      dts: update to v6.4
      treewide: Print device nodes with %pOF
      Release v2023.07.1
      Merge branch 'for-next/dts'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/pytest'
      Add SPDX License identifier for files originating from LiMon
      test/self/mmu.c: Fix typo in SPDX License Identifier
      scripts: fix pkg-config use for mksimage hosttool
      Release v2023.08.0
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



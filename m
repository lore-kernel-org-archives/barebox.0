Delivery-date: Thu, 28 May 2026 15:08:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSaT2-004kFH-2l
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 15:08:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSaT2-0000r0-5T
	for lore@pengutronix.de; Thu, 28 May 2026 15:08:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:To:Subject:From:Reply-To:Cc:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BxW4sTDkyMDdEMyBXxpE4ExCI5QQGxjCebWxaAWv3nE=; b=nxQIwp8aFewjGQ
	99dEB16YJAy7HdLi4uCZVTwyF4/B9Fdm8IpzABnZwPtEYnw+447lsxGOsarPzSWR0K9PZZBf7iOSA
	iAIPV14k21wE1V8nr9dbV6mUyvHgtiiGPcze8Z9T+5xPqwS+dgN2C4jrl7/yH5ugkPlkRSyOJUbk1
	ZUzL2wSr7IqB22JNI5JmRQI3/CXhGd9uqjjREjB019LULty+6yb1SAmBi7rqrqdV75FwGYWjS3Dga
	4ARMDH4pxIi1EElJ6Ewgrx1AB6pcB9L/bW9hNObsIgpKEOtox7BmqdN4L9fqVMWfxSLRVsubEoc+e
	Zn8ssPhzp4V1B+4G8flg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSaRO-00000005lMb-1fS0;
	Thu, 28 May 2026 13:06:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSaRL-00000005lMD-0RFP
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 13:06:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wSaRJ-0000g8-Gw
	for barebox@lists.infradead.org; Thu, 28 May 2026 15:06:21 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wSaRI-002HOb-2t
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 15:06:21 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wSaRJ-00000003f8m-1YAX
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 15:06:21 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 May 2026 13:06:21 +0000
Message-Id: <E1wSaRJ-00000003f8m-1YAX@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_060623_169337_4347A162 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2026.04.1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

Here comes barebox-2026.04.1. See below for the fixes that went into
this release.

Have Fun!
 Sascha


----------------------------------------------------------------
Ahmad Fatoum (12):
      state: suppress state overwrite warning for barebox DT
      efi: payload: image: exit if kernel image returned
      efi: payload: bootm: fix potential double-unload for image
      efi: gop: use screen_base directly instead of shadow buffer
      kfifo: do not allocate a fifo smaller than 2 bytes
      ARM: dts: stm32mp: stm32mp135-dk: disable button on PA13
      efi: payload: handle NULL return from loadable_view for ramdisk
      fs: fix memory leak in automount_add()
      ci: pytest: bump Debian installer image to 13.5
      serial: ns16550: add missing Linux console names
      of: base: handle of_set_root_node(NULL) correctly
      ARM: uncompress: keep handoff data aligned

Anees Rehman (1):
      ARM: i.MX7: DDR size detection off-by-one in row_max

Chali Anis (1):
      usb: dwc2: host: initialize sub to fix maybe-uninitialized warning

Fabian Pflug (1):
      arm: i.mx: fix error in field return configuration

Jonas Rebmann (2):
      crypto: keytoc: Allow fields to start with underscore
      crypto: ecc: Add Origin-URL to document kernel revision

Lukas Wunner (1):
      crypto: ecdsa - Harden against integer overflows in DIV_ROUND_UP()

Sascha Hauer (15):
      ARM: radxa-rock5t: Disable pcie3x2
      optee: Explicitly ignore OPTEE_RPC_CMD_RPMB_*
      pmdomain: rockchip: inform about missing subdomain support when in use
      ARM: rockchip: atf: add missing newline in message
      optee: skip registration of already known TEE bus devices
      v2026.04.0: Move migration guide to correct place
      fs: set linux.bootargs.rootopts only when existing
      ARM: fix wrong calculation of barebox base
      riscv: fix wrong calculation of barebox base
      ARM: k3: am62x: move stack to end of SRAM
      ARM: k3: am62x: make more space for r5 barebox binary
      ARM: k3: k3-r5_defconfig: limit image size to maximum available space
      fs: jffs2: zero initialize allocated inode
      fs: ubifs: zero initialize allocated inode
      Release v2026.04.1

Stefan Berger (1):
      crypto: ecc - Fix off-by-one missing to clear most significant digit

Thorsten Blum (1):
      crypto: ecc - Streamline alloc_point and remove {alloc,free}_digits_s=
pace

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



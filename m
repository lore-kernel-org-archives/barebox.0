Delivery-date: Wed, 29 Jul 2026 08:30:46 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woxoT-0043Fo-2L
	for lore@lore.pengutronix.de;
	Wed, 29 Jul 2026 08:30:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C22972021BD
	for <lore@pengutronix.de>; Wed, 29 Jul 2026 08:30:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VXRzLyXn;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:To:Subject:From:Reply-To:Cc:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cFu4B3uA3VgFVREyzWmXxGUPOJ9gg1OgbGLhHEnpkW8=; b=VXRzLyXnm4pmrW
	Mvo3z37SWfLnptEAbFgdTCzC9UIgAFeVwNEkKUogDhMLyM84milfQpqgJC2aD1RKAlhpIXtFFa0tl
	X975u7NDjpIxSsyQvPOuz9TaxRNKwHvAQxPDER4NaFyjnNA+NmHW/IXETaObCkmbtakBEPhV8L2Mn
	zMp4KZVZ9jl0WgR59nAv8hv/OsArYDj3D/gRAuOZ/NnkZGWqywftPVtfW6QEbwIiGYt5anxpXdTqx
	INe5EmdrRThsyr9AVThtUntcWnTIc7EMxv/hXIAOTq9UW6qwK7B/gyOa1xeS2xYjWzP0jz0k2CJGY
	S+Ca4/HRCB81oTBnNoYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxn3-000000071jD-0e7F;
	Wed, 29 Jul 2026 06:29:17 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxmy-000000071hr-1KwI
	for barebox@lists.infradead.org;
	Wed, 29 Jul 2026 06:29:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 14019201D4B
	for <barebox@lists.infradead.org>; Wed, 29 Jul 2026 08:29:08 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1woxmt-001q4k-36
	for barebox@lists.infradead.org;
	Wed, 29 Jul 2026 08:29:07 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1woxmt-0000000CLjz-3f4M
	for barebox@lists.infradead.org;
	Wed, 29 Jul 2026 08:29:07 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: v2026.07.0
To: barebox@lists.infradead.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 29 Jul 2026 06:29:07 +0000
Message-Id: <E1woxmt-0000000CLjz-3f4M@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_232912_573809_4275FDE1 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi All, I am happy to announce barebox-2026.07.0. It's a rather
    small release, so nothing much to mention here. Ahmad has continued to cleanup/bugfix
    EFI/EFI-loader support. The public key support has been updated: We now have
    real keyrings where eac [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 T_PDS_OTHER_BAD_TLD    Untrustworthy TLDs
                             [URI: barebox.fit (fit)]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 8m6yz6eqhe3kzrkm8dzx1emm5hp34rok
X-Spamd-Result: default: False [-4.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US]
X-Rspamd-Queue-Id: C22972021BD

Hi All,

I am happy to announce barebox-2026.07.0.

It's a rather small release, so nothing much to mention here. Ahmad has
continued to cleanup/bugfix EFI/EFI-loader support. The public key
support has been updated: We now have real keyrings where each keyring
can either be a key or another keyring containing more keys/keyrings.
One smaller thing that comes in handy sometimes is that barebox can now
create device tree nodes for PCI devices. That makes it possible to
attach runtime information to these nodes which Linux later picks up.
Support for that has been created for adding the MAC address for PCI
ethernet devices to keep it constant between barebox and Linux.

Have Fun!
  Sascha

Migration notes for 2026.07.0:

None

----------------------------------------------------------------
Ahmad Fatoum (22):
      serial: ns16550: fall back to using uart8250/ttyS as Linux console na=
mes
      nvmem: core: Allow sub-register width nvmem_regmap_write()
      regmap: enforce register alignment to regmap::reg_stride
      MIPS: remove non-functional zbarebox.bin target
      ARM: i.MX: prevent use of imx_cpu_type in PBL
      ARM: lib32: bootm: support booting EFI-stubbed kernels without EFI
      efi: loader: release bootm OS staging buffer
      efi: loader: bump memory map key on FreePages
      efi: loader: avoid NULL image file paths
      Documentation: migration-guides: add .0 to migration-2026.06
      ARM: rockchip: hide CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE behind ATF_PASS=
_FDT
      efi: loader: require at least 128 KiB of stack space
      efi: gop: fix rectangle extents passed to fb_damage
      efi: gop: use correct BLT pixel type
      efi: gop: report and use framebuffer stride
      commands: loadx: remove non-existent options from usage string
      misc: clarify deep-probe compatibility for CONFIG_STORAGE_BY_ALIAS
      optee: device: report correct command in enumeration error message
      efi: payload: be explicit about incompatibility with CONFIG_HAVE_OPTEE
      doc: user: barebox: fix name of barebox.fit image
      efi: fix the runtime services table signature
      ci: pytest: test against Debian 13.6.0 image

Alexander Shiyan (1):
      .gitignore: Add *.z generated files

Bastian Krause (1):
      Documentation: user: usb: mention "fastboot erase"

Fabian Pfitzner (1):
      ARM: i.MX: fix fast auth wrong CSF file

Fabian Pflug (2):
      ARM: i.MX: riotboard: add tzasc.h to flashheader
      ARM: i.MX: riotboard: switch to imx6q_barebox_entry

Jan Luebbe (1):
      scripts: bareboxtlv-generator: avoid private key access for public ke=
y extraction

Johannes Schneider (1):
      commands: mmc_extcsd: fix enhanced-area / GPP size display arithmetic

Marco Felsch (1):
      restart: fix restart handler by name selection

Martin Domig (1):
      Makefile: fix collect-policy-dirs undefined variable

Michael Tretter (1):
      Documentation: user: devboot: fix kernel target

Sascha Hauer (20):
      ARM: ARM64: linker: Do not put first function at __image_start
      of: fall back to parent-prefixed encoding when address translation fa=
ils
      pci: fix DT node matching when reg encodes a non-zero bus number
      pci: add pci_is_bridge() helper
      pci: synthesize devicetree nodes for enumerated devices
      ARM: zynq: improve error message
      public keys: make error message more informative
      public keys: make key_name_hint optional
      public keys: rework keyrings as nested containers
      public keys: allow keys to be members of multiple keyrings
      Merge branch 'for-next/arm'
      Merge branch 'for-next/crypto'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/pci'
      ARM: rockchip: tfa: pass NULL fdt when there is none
      dts: update to v7.1-rc7
      Merge branch 'MartinDomig-bugfix/security-policies-makefile'
      Release v2026.07.0

Stefan Kerkmann (4):
      nvmem: snvs_lpgpr: remove unnecessary cfg->name assignment
      ARM: i.MX8M/i.MX7: initialize SNVS glitch detection for all families
      ARM: i.MX7: snvs: rename imx7_snvs_init -> imx7_setup_snvs
      ARM: i.MX6UL: initialize SNVS

Thorsten Scherer (1):
      ARM: Layerscape: Fix typo im documentation

Ulrich =C3=96lmann (3):
      ARM: boards: skov-imx6: fix device tree path of state node
      common: Kconfig: fix typo
      security: Kconfig.policy: fix typos


--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Fri, 20 Nov 2026 15:41:27 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xUPnq-001Td5-2B
	for lore@lore.pengutronix.de;
	Fri, 20 Nov 2026 15:41:27 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CFA9F20188D
	for <lore@pengutronix.de>; Fri, 20 Nov 2026 15:41:22 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SGBPwtP0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Te4TF057;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795185683;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=OClAt9tW7eU9H2O6Fu/PuLHxRbUxW/qg91l99BqErp8=;
	b=Wy1vqWjkDLI7IpAASifI2BRt4no49yzGiFEt0d3rJadE2hkyATH8gFiapT/r+smG8F9XmZ
	8PsI7R6KMiK1XxmzUZhUGccr0Io0YwhJ71iiSvZ3LJlkkkJ6+e4o7y8QMmHsXOBn4kVasV
	G+jMVutCit4ucy7TDPRqLp2KMv1PUwAf8HE8VyC3sy+uunEPWh/OhSzM7Xs9it6byrev+j
	j81dHtMAelGshIsP9m/WHvTLwimA0WNV8j388IdVJ6Y34FyIAldLYxhvvpSifv2/2gzquU
	anAy/WX3vO0+TNLDwwhVe4EVHHpLHKeI6RxJRvYe1dRkHAOyFRR4OwwkKXEEZA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795185683; a=rsa-sha256;
	cv=pass;
	b=bIMlaAMXoF6xP0pubuJ+mekODteh9DUMrFmmnYUxQn71tviuEjwVuhsuYG7h7PrZFZxdZl
	PRz0yx3GlndANlK/68ei3ZjTYIcBYP7Nd1OOMK9Kb5N7Si/inTqpBSYcF+9+IYPBpYUOGC
	d+2UqkiVKeV4RE/BmnNnmzhlURrg7fZs6OyQIAXwl8+SQNtFIjdav/2lEasOe3a80xAp+v
	TgkUxLNLIbsugcSoD14VfxSx0fBQduE8zV2utEQSKSzmFZYBQEQOyOxoKlwMHahAXYW2e5
	NKGOeARJluCIJK/78V0YkUNbQn1oG8l5oB0RT4aMvFa4D2NlHKny9bvWLL8g6A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SGBPwtP0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Te4TF057;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:To:Subject:From:Message-ID:Reply-To:Cc
	:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=OClAt9tW7eU9H2O6Fu/PuLHxRbUxW/qg91l99BqErp8=; b=SGBPwtP0+ZG0fBxLyUd8UFiTDz
	M3SmfmEvIM6BbjwXDTgfCa7WkDnWVicXDRpnf/z++P44gmqM3JY+EAeWs6uvgpiVFW6AGQFkornLV
	PT+vbexixaTBWrAoCEU28dCsmg4CDfiPJxni4iqhWoiRpKFCEoxTFLxOBxGj8Ob6v9tvr+j0IKf2K
	bNo4c/oHJp98fdPqZAFXNZ7gIivqt7JuJeL0DgtwyC2524wpcYVaNW3jFkSp0iKn0XNkjgxzGQjTG
	4KXIhYnfXOYpGR859y/XZsImEswh9oyBeKl06yu4dgd1Urqwsi+Ym4ZKNn+Ojuf82o0OCkvUIlLtT
	4Hq8+S2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUPmR-0000000FHPz-0cX5;
	Fri, 20 Nov 2026 14:39:59 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUPmN-0000000FHOU-0kfD
	for barebox@lists.infradead.org;
	Fri, 20 Nov 2026 14:39:57 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5c0a:3200:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 30FFA20188D
	for <barebox@lists.infradead.org>; Fri, 20 Nov 2026 15:39:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795185589;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OClAt9tW7eU9H2O6Fu/PuLHxRbUxW/qg91l99BqErp8=;
	b=Te4TF057KH8HJTyNuTT9qmarA9NF6nLE2DBA2loNtKyaUpPn+DItA0sflKp2nwwlG4deAY
	kMedfpMpLu+5L+gYafruvBlavDTbCv1DjwtCt8Cld9spbS5o19tgsM90T5EhVlxfTWB2wW
	sESs+E0pe84eYHdJXG8ue/x/KGEQetj9jy2Us76TD3TEHxPjxDWkYgM0tAZWsJQfQU0xnj
	q6DiKBJvhMdScBBk+jkbz2CBmlYEzM7UN4ABx3wCZudz2GnBAD/C24KtYAEGLKDw9u7Yav
	USwqLEc4kmPL8ZPIMeoWskFnVK68nMDUZ9bAn8+Oof9cSbF6qso6mXxwWFZFag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795185589;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OClAt9tW7eU9H2O6Fu/PuLHxRbUxW/qg91l99BqErp8=;
	b=Vomb/RQO7S+FXam412cXUTO5Xz34ibEKsoydT/x0fsB1oRVjkvVhS+B5gkX3/DHkJkfM/2
	9XPqIIkxwwCTkeYvzEkdGy83eKdS6jhHbr1rSyrC2Ww8DrfwXC/Qis9Rt9ZuGNWaHyBTol
	fYZ03pG1rkiffU0QC8ZaMVFVatPdu1RB4UKXnv7v/vNbo1jK7ZeOSoDoaAhvyjyy8H5G5w
	mmFxHIcmXuVJSEAzNd9dcri22QN18P6Lhm8kyuxNxygIwXGG3nszxR3MNZ5ora0PK89e3V
	8ZFTZy+CxYOvqZIfqmtFUJjpzAuD3NOppvXJpU0yX00QtOgP9T+rjDKhiFWQPw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795185589; a=rsa-sha256;
	cv=none;
	b=bhablhQTU9+zy8W9kDPtCs9+tViQs2nWuueZruva8bW9KNketQr6mDIh9CquobFMw/A1/y
	xPyLNU5tllbplk7KP5Gn40a7y5bFwdIIPW6219KL/MUONFS3y6X9WixNa2Ug07WLffIkuX
	SZwmSmtwsaOmaqerNA6iKQGNtqsycWdWAxk6amRJfhqCYz7nMJT6Zx7bxY6ZjJOm5VlBbG
	Fc4cBppxdBgTaP/NRGXkUyt3XObaKXb4UStukMfvxdIBwPxAdHFHrIaxSNveYwrmw/zd/2
	rFl1TlMZngYf6LwNhZvQRwzHQd1p/4FPcjpZlouhrVQAMMQCzfcj5Iw60zfxbA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <0e3d7da7-e988-4e7d-8191-40c6f119dfdd@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: v2026.04.3
To: barebox@lists.infradead.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 20 Nov 2026 14:39:48 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_063955_523008_7CDD8E0C 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi All, We have a stable release update: v2026.04.3. - Filesystems:
    many fixes for squashfs and ubootvarfs, plus fixes in ext4, cramfs, FAT,
   NFS, jffs2, envfs and the generic fs layer - USB: stricter descriptor parsing,
    hub fixes, and fixes in the xHCI, [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
                             [URI: fetch-release-mail.py]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
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
X-Spamd-Result: default: False [-57.93 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.52)[97.82%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: CFA9F20188D
X-Rspamd-Server: mx1
X-Stat-Signature: 961b8zgs78xmt1a3fhujkei759wrskpk

Hi All,

We have a stable release update: v2026.04.3.

- Filesystems: many fixes for squashfs and ubootvarfs, plus fixes in
  ext4, cramfs, FAT, NFS, jffs2, envfs and the generic fs layer
- USB: stricter descriptor parsing, hub fixes, and fixes in the xHCI,
  OHCI, musb, dwc2 and gadget drivers
- Network: frame length is now validated, plus DHCP and 9p fixes
- Boot: use-after-free fixes in boot/bootm, and FIT and FDT fixes
- bunzip2: fixes for heap overflows and decompression failures
- MCI: EXT_CSD fixes and an eMMC boot fix for Arria10
- i.MX8M: early clock initialization now matches U-Boot
- Board fixes for phyCORE i.MX6, RPi and the QNAP TS433eU
- EFI loader: fixes to the runtime services and GetTime
- bbremote: about a dozen fixes

----------------------------------------------------------------
Ahmad Fatoum (121):
      ci: pytest: hardcode Debian netinstall ISO version at single place
      common: ratp: send the response of failed commands as well
      common: ratp: gpio: byte-swap the set-direction error code
      scripts: bbremote: fix Controller._handle clash with Thread._handle
      scripts: bbremote: fix mw writing data larger than the path
      scripts: bbremote: report a timeout instead of a traceback
      scripts: bbremote: unpack single values instead of tuples
      scripts: bbremote: print the error of a failed md, mw or i2c command
      scripts: bbremote: fix Ctrl-P in the interactive console
      scripts: bbremote: fix reassembly of single-octet packets
      scripts: bbremote: keep '..' out of the exported directory
      scripts: bbremote: don't choke on -vvv and repeated -w
      scripts: bbremote: report a failed gpio-set-direction
      scripts: bbremote: reject arguments that don't fit the protocol
      scripts: bbremote: don't report a successful reset as an error
      treewide: replace git.pengutronix.de addresses
      sandbox: route malloc_usable_size() through the PBL glue again
      usb: dwc3: imx8mp: check dev_request_mem_resource return with IS_ERR
      defaultenv: bin/devboot: propagate exit status of boot command
      scripts: genenv: make the temporary directory writable
      .mailmap: fix Bruno Produit's author name
      commands: rksecure: exit if invalid integer passed to -b
      block: ramdisk: keep num_blocks in sync with the size
      fs: devfs: reject cdev aliases containing a slash
      video: stm32-ltdc: reset the controller on probe
      ARM: i.MX8MP: variscite-dt8mcustomboard: use i.MX8MP early clock init
      ARM: lib32: bootm: always pass a device tree to barebox images
      net: 9p: client: don't wait forever for a flush
      commands: mkdir: create directories with mode 0777
      usb: gadget: u_serial: don't wait for a host that isn't reading
      sandbox: console: only look for ^\q on consoles used for input
      console: don't unregister a console whose device file is open
      nvmem: core: default to a stride and word size of 1
      of: fdt: fix out-of-bounds read of the root node name
      decompress_bunzip2: fix heap-buffer-overflow on truncated input
      decompress_bunzip2: fix heap overflow on long symbol runs
      fs: skip directory entries whose name does not fit struct dirent
      fs: reject negative lengths in ftruncate()
      fs: ubootvarfs: fix tail relocation length computation
      fs: ubootvarfs: bound environment parsing to the mapped size
      fs: ubootvarfs: let the filesystem own the parsed variables
      fs: ubootvarfs: implement flush
      fs: ubootvarfs: range-check the new size in truncate
      fs: ubootvarfs: do not form pointers past the end of the environment
      fs: ubootvarfs: reject variable names containing '=3D'
      fs: ubootvarfs: handle removal of variables that are still open
      clk: imx: pll14xx: enable PLL output in clk_pll1416x_early_set_rate()
      ARM: i.MX8MM/8MN: clock NOC from SYS_PLL3 in early clock init
      ARM: i.MX8M: feed A53 cores from ARM PLL via CORE_SEL_CFG in early cl=
ock init
      ARM: i.MX8M: source dram_apb from sys_pll2_200m in early clock init
      ARM: i.MX8M: order early clock init like U-Boot
      ARM: rockchip: rk3568-qnap-ts433eu: re-enable combphy0, disable sata2
      ARM: rpi: look up emmc2bus by alias for dma-ranges fixup
      defaultenv: bin/devboot: fix typo in final exit
      net: eth: reset the generated flag for every device in populate_ethad=
dr
      net: cs8900: zero-initialize the eth_device
      net: fec_mpc5200: zero-initialize the eth_device and private data
      net: assign a missing MAC address on receive as well
      kbuild: honour per-target DTC_FLAGS_<stem>
      tests: of_overlay: don't check the error of a missing target
      ci: labgrid-pytest: activate the sandbox allyesconfig console explici=
tly
      fs: efivarfs: skip variables whose name does not fit struct dirent
      ubootvar: reject copies too small for their header
      efi: loader: in-place patch the runtime services on ExitBootServices
      efi: runtime: accept 1:1 mappings in SetVirtualAddressMap
      commands: bthread: don't count console output against printer periods
      of: fdt: fix heap overflow when growing the flattened tree
      commands: of_property: handle of_flatten_dtb() failure
      of: fdt: fix out-of-bounds writes for long names when flattening
      tlv: limit the number of Ethernet addresses
      decompress_bunzip2: stop decoding symbols after input EOF
      decompress_bunzip2: off by one in get_next_block()
      decompress_bunzip2: fix rare decompression failure
      clk: handle get_parent callbacks returning an error
      commands: bthread: disable for EFI payloads without TSC clocksource
      lib: loadable: allow fixing up the address of chained loadables
      bootm: pad chained initrds to a 4-byte boundary
      usb: xhci: reset EP0 after transaction, babble and split errors
      usb: leave a microframe between control transfers
      fs: don't leak the parent path when openat() fails after the lookup
      fs: don't read or write past the end of a file in pread()/pwrite()
      fs: fat: read and write at the position given to pread()/pwrite()
      fs: ext4: don't overflow the group descriptor on the stack
      dma: add dma_xalloc() and dma_xzalloc()
      usb: read the first device descriptor into a buffer large enough
      usb: dwc2: host: don't reset toggles past the end of the toggle arrays
      usb: musb: don't dequeue URBs that have been given back
      usb: ohci: change the NUM_EDs from 8 to 32
      usb: ohci: drop the TDs of a timed out transfer
      net: phy: unregister the bus device in mdiobus_unregister()
      net: usb: ax88179_178a: unregister the MDIO bus on unbind
      usb: gadget: f_mass_storage: don't send padding when stall=3Dn
      usb: gadget: fsl_udc: fix the usage of udc->max_ep
      usb: gadget: fsl_udc: check the endpoint of GET_STATUS requests
      net: validate frame length before parsing headers
      net: dhcp: don't read past the received packet
      fs: nfs: fix double free and leak when reading a directory fails
      fs: nfs: don't let lengths from the server wrap the bounds check
      compiler-clang.h: define __SANITIZE_ADDRESS__ only when undefined
      sandbox: os: remove unused erase_char
      usb: hub: don't free scan entries from under usb_device_list_scan()
      of: reject alias values that are not NUL-terminated
      efi: loader: fix year and month reported by GetTime
      tlv: fix memory leak in __tlv_format() on duplicate parameter
      image-fit: fix digest memory leak in fit_verify_signature()
      CI: add workflow creating GitHub releases for pushed release tags
      mci: don't read past tran_speed_unit[] for reserved units
      mci: zero the EXT_CSD buffer of MMC cards
      ARM: socfpga: arria10: don't read the partition table onto the stack
      ARM: socfpga: arria10: fix eMMC boot after the switch to pbl_bio
      mci: atmel-sdhci: don't ignore errors in the data phase
      mci: atmel-sdhci: pbl: read all requested blocks
      fs: pstore: don't claim uImages
      fs: jffs2: refuse to mount non-MTD devices
      input: virtio_input: don't free poller-enabled beeper on remove
      FIP: don't free the buffer twice when parsing fails
      arch: provide <asm/atomic.h> on all architectures
      powerpc, openrisc: add <asm/pci.h>
      scripts: add fetch-release-mail.py to generate GitHub release notes
      scripts: fetch-release-mail: recognize the migration-master directory
      .mailmap: map Sascha's sha@pengutronix.de address

Alexander Kurz (1):
      ARM: boards: kindle mx50/mx6sl: remove bootm -c option

Ana Bobillo (28):
      fs: squashfs: fail lookup and mount on inode read errors
      fs: squashfs: don't read an inode in use again
      fs: squashfs: return an error pointer from squashfs_get_link()
      fs: squashfs: check the id table against the start of the xattr table
      squashfs: add more sanity checks in id lookup
      squashfs: fix divide error in calculate_skip()
      squashfs: verify inode mode when loading from disk
      Squashfs: check metadata block offset is within range
      squashfs: Add dictionary size range check to prevent shift-out-of-bou=
nds
      Squashfs: check block offset is not negative
      fs: squashfs: don't free the root dentry on unmount
      block: allow block devices without ops in cdev_get_linux_root_and_opt=
s()
      fs: squashfs: free the buffer when a device read fails
      fs: free the fs_device of a failed mount
      fs: use the cached link target in readlinkat()
      fs: squashfs: free the device buffers when there is no decompressor
      fs: squashfs: stop zstd decompression when the input runs out
      fs: squashfs: zero what squashfs_fill_page() didn't copy
      fs: squashfs: keep the file position 64 bit when reading
      fs: squashfs: zero the page buffers when a read fails
      fs: squashfs: refuse a root inode that isn't a directory
      fs: release the file when opening it fails after its open
      usb: keep interface and endpoint counts within what was parsed
      usb: skip endpoint descriptors for endpoint zero
      usb: don't attach an endpoint companion to another interface's endpoi=
nt
      usb: hub: bound the port bitmaps by the number of ports used
      usb: don't store more interfaces or endpoints than there is room for
      usb: refuse devices whose configuration can't be parsed

Corentin Guillevic (1):
      x86: efi: fix objcopy flags for barebox.efi

Gabriel Arnautu (1):
      envfs: validate inode bounds before extraction

Johannes Schneider (1):
      usb: dwc3: gadget: ack pending events while waiting for the halt

Nathan Chancellor (1):
      scripts/dtc: Remove unused dts_version in dtc-lexer.l

Sascha Hauer (20):
      bootm: fit: open FIT images only once per loadable
      FIT: do not cache uncompressed data
      mci: wait for card to leave programming state after block writes
      fs: remove the default automount when a cdev is removed
      fs: track streaming and unknown-size files in dedicated inode fields
      fs: reject inodes whose size the superblock cannot address
      usb: don't keep a dangling root device on enumeration failure
      usb: hub: limit the number of ports to USB_MAXCHILDREN
      boot: fix use-after-free when restoring bootm variables
      bootargs: fix double free in linux_bootargs_get()
      commands: boot: fix use-after-free of overrides taken from globalvars
      fs: cramfs: don't ignore decompression errors
      fs: cramfs: return an error pointer from cramfs_get_link()
      fs: ext4: return an error pointer from ext_get_link()
      fs: legacy: return an error pointer from legacy_get_link()
      usb: hub: cancel pending port scans of a removed device
      commands: boot: list bootm.image in the -o help text again
      Release v2026.04.3

Stefan Kerkmann (7):
      of: overlay: of_overlay_fix_path: skip symbols without __overlay__ no=
de
      tests: of_overlay: add selftests skeleton
      tests: of_overlay: add __symbols__ merging tests
      tests: of_overlay: add fragment application tests
      tests: of_overlay: surpress expected error log message
      ci: labgrid-pytest: migrate allyesconfig manipulation into fragment
      ci: labgrid-pytest: fix test_barebox_no_err for allyesconfig

Stefan Riedmueller (3):
      ARM: dts: imx6: phycore: Add phy-reset-post-delay
      ARM: dts: imx6: phycore: Fix pin settings for ADIN1300 PHY
      ARM: boards: phytec-som-imx6: Add ADIN1300 PHY fixup

Ulrich =C3=96lmann (2):
      include: ocotp.h: add missing include
      commands: sconfig: fix command description

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




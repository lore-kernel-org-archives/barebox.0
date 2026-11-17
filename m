Delivery-date: Tue, 17 Nov 2026 23:20:57 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTRXs-000Z4t-2K
	for lore@lore.pengutronix.de;
	Tue, 17 Nov 2026 23:20:57 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A4307201CD2
	for <lore@pengutronix.de>; Tue, 17 Nov 2026 23:20:52 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uOQMLHSK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=WEEyZTMG;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794954053;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=u6jC/TdLzsVqDSR2RJSgxn4tqATEp9S0iqCgjet2fEY=;
	b=QbaFvKr4Y9pZzRT06wNRi9tVl/s4idy+4Lqac2mQn/DFs1PgbyAR/VVGXb0MuoCnPI3PS/
	smpCDleiZlOXz/2kX2bP9EK+8FUXhukzsxjUnSF7ipkZNuq0BOhkMt9FbW9eGHXaVhOh10
	ocjETQpZn4mQNW5t6Ew1hXvl0e5N1FRdy2e3KoZejjQ6JVEFatN2aNsMWP74EDhmVCTS+A
	5Hea5Do0V1kGTNOuW/MnU4RUU9KdfFbM+Ea3UpclYaT4sFWaO6Bu4EIqEDeXbYUnG8AR4W
	p5GI+lf6paSEAb/nJCpv8pHjebH+6enoXr/YOWljuwvIMpFiVjaaqPGWD09Mmw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794954053; a=rsa-sha256;
	cv=pass;
	b=ApbXbxomKpu5EQQcXuuQWBuv5drgbVrpVvaCzD28dKuaoF7fDIv1UKnPHPkvaeHxDsql7Z
	EFDiDVvwOoVeCxBhRX03XcqBXq8BBu1L/37HBYt162rnw6SrvMtJjdT4lKaxgeWVCp+TCv
	UvdMP1R7gGNcOf58JYC8Wfvwxm2+/qVfD4V0URBINevZ7QE4v3/K90aw2XLHYNV+Wwi4cn
	gPAzOMNvvhDaOYT1x1sZ5K8B0oF9rWqgugY7EQFNUpbCuYZaCv1vqwRIv7XkrPRESBD+k3
	tgtBIa3b7L9TfK9HcLGhm3KbN7vYEoSLkaLSuX7I+JrvQEkVz9QLvl46cYeh0A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uOQMLHSK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=WEEyZTMG;
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
	bh=u6jC/TdLzsVqDSR2RJSgxn4tqATEp9S0iqCgjet2fEY=; b=uOQMLHSKidsE8M7p8iqnV6atWK
	JYQUCROyEWCTJ1VP8mo5AzBN/T0EiXHqNLoY1tWaFYN9fvxeFQIGQQggzgirDrVPthJc1UmFughkt
	WKr/drimHL8hnqavMvCMG5p6KRMXWu+iqBfXHWovd8x2Wh8I4AHKQXbRAYdddWIsbtZw3PpkvQ/rU
	PwY+CY1qwnKmy//bGydhJQu/BJl0sXcWGmpnVzzWEJ85S7R7ggwcOsMzZMiMUDVQC1BcmlY3JMUXn
	SLWFZhqUaYwiilo/m0y4ZEBzCmRxz2gk6yTI+dxLRUpfzalZ2dpfov20bUuzuT+PthuTAddDE2AO3
	wt/o6iRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTRWW-00000007DGb-0dwK;
	Tue, 17 Nov 2026 22:19:32 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTRWP-00000007DF5-0L8V
	for barebox@lists.infradead.org;
	Tue, 17 Nov 2026 22:19:30 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A2EF320062C
	for <barebox@lists.infradead.org>; Tue, 17 Nov 2026 23:19:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794953958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=u6jC/TdLzsVqDSR2RJSgxn4tqATEp9S0iqCgjet2fEY=;
	b=WEEyZTMGOn/A/xk5BGrynzh6DQqoU5ofGifoXyTuZwe8qevgvraHzHS3t4Jesc0vVCa6Rw
	J2amZdwxnbYwzP14BUtjU3UlVF31Oc6HaXtZ7trGrGuA9CT0yIW7TdwUW62zxvtrVrm/Zr
	S9YVLGZ8yLo95aq4hdf9cA5wm9MGvCQkDT54bh9Kn62krr99IKZO10ER+9bEDRt+SEIQ68
	+zGuO2JkHG/1H5bYbefgEfIYBEY21Ww2OYe3rcAAxZFCsFilLVX+YlxvS8VhFWzdVM/YJV
	9XBrQIq4JCtBQz5gjRahCjDQaAs250E5xWY0OCqm2Y5WHiqzEXArRz/7LylrDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794953958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=u6jC/TdLzsVqDSR2RJSgxn4tqATEp9S0iqCgjet2fEY=;
	b=T0mj3mXgRfvT/lNVVgz0hZFsXEA4w3zfp4FJ/o4T1hsaNAn6lHaNVVpjC56BPUEKnKxHgl
	59Qgpao7J6Wk4bJNZL9ATq5ToLVY4HQh1Vbmr2q6COinbBhkmjftyiMMH4qK43XdRlqUxB
	obHSMCpeZ3BXJhdRD1u7+TPpXuA3FAuYaxv+ROpEnr1sUvclJCMs8ZuA/ZqkRcFxlhQWXA
	eWklNSdsax+f7eJbm/zpL38tMqa3XeTrrUYdbZRE4oAQIEaSPYT5eCWp1Bsk2xWoDI1ViX
	oOtW+JYnq5h+ut/NZA8Kk77VqqcAMOoAnHnEX5yz16fEjd/hwLqxKsOgMxfAjg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794953958; a=rsa-sha256;
	cv=none;
	b=cO3k3MRcCvEVlP2/FBD1PUnFoQfsUHCdBv2roOWxa1CmvKl9peh9fe4LbzgHzQrfPTdP++
	qBnKH8TAjHA19Io5SazIMiAdNhfJrQIyfN3jcecl5kWOzxn2lZ5yDd5GyIEp21CZt68hOi
	+2ZVzyyB4P0HHScWywnWCXpMZiKb4VzhMk2SHTbAGy0P6GBHl6zfm6oE57WoEEWPdf7Irp
	Dfoah8m0W0fVDY068BYTquQ3fisDrAD5cz3+uwpCasXuZ5nR2IaOtK4ckIAhSdoR9U1dcq
	UT92i6Q61k3b4JHlDr1kJECnNoA3wpviy9W5mbki/11O4lvFeUh7cCq9ajAz1A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <90927807-a626-4318-b5fd-fda4b8dcf14b@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: v2026.11.0
To: barebox@lists.infradead.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Nov 2026 22:19:16 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_141925_446782_B98B0C33 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi All, I am happy to announce the barebox release for November.
    The largest part of this release is hardening driven by fuzzing. ext4 and
    squashfs gained several bound and sanity checks. USB descriptor parsing has
    been hardened against malicious devices. Network f [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: fetch-release-mail.py]
                             [URI: pengutronix.de]
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
X-Spamd-Result: default: False [-58.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TO_DN_NONE(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: A4307201CD2
X-Rspamd-Server: mx1
X-Stat-Signature: 7gh74pubkpg98u56pehpddsnzrykdys4

Hi All,

I am happy to announce the barebox release for November.

The largest part of this release is hardening driven by fuzzing. ext4
and squashfs gained several bound and sanity checks. USB descriptor
parsing has been hardened against malicious devices. Network frames are
checked against the packet length more thoroughly. Several heap
overflows have been fixed in the FDT support.

Tobias Waldekranz has added initial LVM support. barebox now parses LVM
metadata and the new lwm command lists volume groups and activates
logical volumes.

Agilex 5 now has xload support to load barebox proper from SPI-NOR in
the PBL which means we no longer have to build two barebox images here.

barebox often depends on some additions to the Linux device tree.
Traditionally full device trees have been compiled into the barebox
binary. With this release the barebox additions can be compiled as
an overlay which is then applied to an externally provided device tree.
This is currently used on STM32MP, but could be extended to other
SoCs as needed.

Have Fun!
  Sascha

Migration notes for v2026.11.0
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Generated MAC addresses now depend on the network device name
-------------------------------------------------------------

With ``CONFIG_NET_ETHADDR_FROM_MACHINE_ID`` enabled, barebox derives the MAC
address of a network device without one from the machine ID and the
hostname. Network devices used to be told apart by adding their number to
the derived address, which only works as long as all of them are named
``ethX``. Now that network devices may be named otherwise, like ``usb0`` of
the new CDC EEM gadget, the device name is hashed in instead.

This changes the generated MAC address of every network device, so hosts
that knew a board by its previous address, e.g. a DHCP server handing out
a fixed lease, will see a new one. Addresses set by board code, NVMEM or
the environment are not affected.

Deep probe is now the default on STM32MP13 and STM32MP15
--------------------------------------------------------

barebox now enables deep probe for every ``st,stm32mp1xx`` compatible, even
over ``barebox,disable-deep-probe``. Report to the mailing list if that
breaks your board.

devboot artifacts follow the boot net naming
--------------------------------------------

devboot now looks up ``user-linux-<hostname>`` and
``user-initramfs-<hostname>`` instead of ``user-image-<hostname>`` and
``user-initrd-<hostname>``, so the same files work for ``boot net``.

FIT default configuration wins
------------------------------

When several FIT configurations match the barebox device tree equally
well, the one named by ``default`` is now chosen instead of the first

Device tree node names are compared case-sensitively
----------------------------------------------------

Lookups by node name, including unit address, and alias stems are now
case-sensitive, as in Linux.

-------------------------------------8<--------------------------------

Ahmad Fatoum (191):
      of: use of_node_name_eq() for comparing node names
      of: add of_node_is_type() and use it for device_type comparisons
      of: compare node names case-sensitively
      ci: labgrid-pytest: exercise the security policy configurator targets
      kbuild: drop unused build-time policy-list generation
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
      scripts: bbremote: drop the Python 2 leftovers
      scripts: bbremote: don't report a successful reset as an error
      Documentation: user: document the remaining bbremote subcommands
      common: boards: drop the duplicate BOARD_QEMU_VIRT
      ARM: stm32mp: provide the BSEC MAC address as an nvmem cell
      of: overlay: apply built-in overlays to the tree barebox is given
      scripts/dtc: import fdtoverlay
      kbuild: give overlays the node paths of a base device tree
      kbuild: apply built-in overlays to their base device tree
      ARM: qemu-virt: apply the flash overlays through the overlay table
      ARM: stm32mp: describe the barebox additions as built-in overlays
      kbuild: allow building the device trees in dts/ by name
      ARM: lxa-mc1: describe the barebox additions as a built-in overlay
      ARM: stm32mp: look the SoC code up in a match table
      ARM: stm32mp: enable deep probe for every STM32MP
      scripts: genenv: make the temporary directory writable
      commands: rksecure: exit if invalid integer passed to -b
      firmware-zynqmp: don't ignore the kstrtouint() result in parse_reg()
      include: compiler: make __must_check a yes-op
      malloc: add __free() cleanup handlers
      test: self: add cleanup selftest
      sandbox: power: register power device without a DT node
      video: stm32-ltdc: reset the controller on probe
      clk: imx: pll14xx: hit 393216000 and 361267200 Hz exactly
      ARM: lib32: bootm: always pass a device tree to barebox images
      scripts: keytoc: mark the key hash as possibly unused
      scripts: keytoc: support stand-alone ECDSA keys
      Documentation: document built-in public keys and keytoc
      scripts: keytoc: add symbol=3D to name stand-alone keys
      test: self: jwt: switch to the snakeoil RSA 4096 key
      test: py: fit: sign the test image with the snakeoil RSA 4096 key
      test: remove the development RSA 2048 key
      test: self: make REGENERATE_KEYTOC work for out-of-tree builds
      ci: labgrid-pytest: check that shipped files are up to date
      pstore: ram: make the RAM backend depend on OFTREE
      include: linux/slab.h: add kmalloc_obj() and friends
      include: linux/spinlock.h: add raw_spinlock_t
      include: add linux/kmsg_dump.h
      lib: reed_solomon: clean up whitespace damage
      lib: reed_solomon: export the symbols next to their definitions
      lib: reed_solomon: update to Linux v7.2
      pstore: ram: clean up whitespace
      pstore: ram: move the zone definitions into ram_internal.h
      pstore: ram: define the driver ahead of ramoops_register_dummy()
      pstore: update to Linux v7.2
      pstore: ram: show dmesg records without a valid header
      pstore: ram_core: reset zones only when writing to them
      pstore: ram: enable ramoops without a device tree node by default
      pstore: ram: add a RAM retention test mode
      fs: skip directory entries whose name does not fit struct dirent
      fs: reject negative lengths in ftruncate()
      fs: ubootvarfs: range-check the new size in truncate
      fs: ubootvarfs: do not form pointers past the end of the environment
      fs: ubootvarfs: reject variable names containing '=3D'
      fs: ubootvarfs: handle removal of variables that are still open
      sandbox: hostfile: keep "syscon" compatible on the stickypage
      bootm: define LINUX_BOOTARGS_BOOTM_EARLY/LATE in <bootm.h>
      FIT: prefer the default configuration when several match equally well
      test: py: add test for fit cmdline parameter order
      efi: payload: ignore ESP state.dtb if device tree is populated
      kbuild: dtc: introduce empty fallback device tree
      efi: payload: export device tree in barebox-dtb EFI variable
      Documentation: efi: describe device tree handling
      net: eth: reset the generated flag for every device in populate_ethad=
dr
      net: cs8900: zero-initialize the eth_device
      net: fec_mpc5200: zero-initialize the eth_device and private data
      net: assign a missing MAC address on receive as well
      net: eth: allow drivers to choose the network device name
      net: derive generated MAC addresses from the device name
      net: make net_alloc_packet return NULL on OOM
      net: add simple sk_buff implementation
      usb: gadget: add USB ethernet link layer (u_ether)
      usb: gadget: add CDC EEM (Ethernet Emulation Model) function driver
      usb: gadget: multi: add CDC EEM function support
      net: usb: usbnet: support drivers without MDIO bus
      net: usb: usbnet: handle devices without PHY and MAC address
      net: usb: usbnet: support sk_buff based rx/tx fixups
      usb: add module_usb_driver()
      net: usb: import cdc_eem.c from Linux
      net: usb: usbnet: take the endpoints from the matched interface
      treewide: avoid clang -Wempty-body warning
      images: remove unused FIT.ITS rule
      blspec: allow devicetree-overlay to be specified multiple times
      nvmem: core: add nvmem_cell_nbits()
      fs: efivarfs: skip variables whose name does not fit struct dirent
      commands: truncate: report errors from ftruncate()
      of: reject alias values that are not NUL-terminated
      ubootvar: reject copies too small for their header
      efi: loader: in-place patch the runtime services on ExitBootServices
      efi: runtime: accept 1:1 mappings in SetVirtualAddressMap
      .mailmap: map Sascha's sha@pengutronix.de address
      scripts: add fetch-release-mail.py to generate GitHub release notes
      CI: add workflow creating GitHub releases for pushed release tags
      Documentation: migration-guides: turn migration-master into directory
      scripts: fetch-release-mail: recognize the migration-master directory
      commands: bthread: don't count console output against printer periods
      ci: labgrid-pytest: enable full.config
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
      checkpatch: import as-is from Linux v7.3-rc7
      checkpatch: detect the barebox top-level directory
      checkpatch: treat printf like printk
      checkpatch: count strdup and xstrdup as allocation functions
      checkpatch: drop ENOSYS warning
      checkpatch: look up DT bindings in dts/Bindings as well
      checkpatch: don't ask for MAINTAINERS updates
      checkpatch: allow DT bindings and code in the same patch
      checkpatch: don't enable --strict for networking code
      checkpatch: accept Origin-URL comments
      checkpatch: accept the barebox vendor prefix
      checkpatch: accept the %pJP format specifier
      checkpatch: drop logging checks based on Linux behaviour
      checkpatch: don't ask for comments on lock definitions
      checkpatch: don't suggest APIs that barebox lacks
      checkpatch: only look up commits named in Fixes: tags
      checkpatch: skip the device trees imported from Linux
      usb: xhci: reset EP0 after transaction, babble and split errors
      usb: leave a microframe between control transfers
      fs: don't read or write past the end of a file in pread()/pwrite()
      fs: fat: read and write at the position given to pread()/pwrite()
      fs: ext4: don't overflow the group descriptor on the stack
      usb: hub: don't free scan entries from under usb_device_list_scan()
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
      scripts: qemu_interactive: don't activate the QEMUDriver
      test: Containerfile: update labgrid to current master
      test: strategy: drop the QEMU states superseded by qemu_interactive.py
      compiler-clang.h: define __SANITIZE_ADDRESS__ only when undefined
      sandbox: os: remove unused erase_char
      test: Containerfile: update GCC and LLVM to newest versions
      test: Containerfile: build the musl OpenSSL from the 4.x series
      defaultenv: devboot: name module CPIO after hostname, not arch
      defaultenv: devboot: adopt same variable names as in /env/boot/net
      mci: don't read past tran_speed_unit[] for reserved units
      mci: don't leak a struct mci_data per data command
      mci: zero the EXT_CSD buffer of MMC cards
      mci: sdhci: reset the CMD and DATA lines after data errors
      ARM: socfpga: arria10: don't read the partition table onto the stack
      ARM: socfpga: arria10: fix eMMC boot after the switch to pbl_bio
      mci: atmel-sdhci: don't ignore errors in the data phase
      mci: atmel-sdhci: pbl: read all requested blocks
      mci: cadence: allocate the PHY parameters along with the private data
      tee: optee: improve error message for unprogrammed auth key
      efi: loader: disk: don't install a file system on raw disks
      fs: pstore: don't claim uImages
      fs: jffs2: refuse to mount non-MTD devices
      bootsource: point bootsource_set() kernel-doc at /chosen
      kbuild: don't expect a Kbuild file in dts/src
      input: virtio_input: don't free poller-enabled beeper on remove
      FIP: don't free the buffer twice when parsing fails
      arch: provide <asm/atomic.h> on all architectures
      powerpc, openrisc: add <asm/pci.h>

Alexander Kurz (2):
      ARM: boards: kindle mx50/mx6sl: remove bootm -c option
      ARM: i.MX: do kindle-mx50 defconfig maintenance

Ana Bobillo (56):
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
      fs: squashfs: zero the page buffers when a read fails
      fs: squashfs: free the device buffers when there is no decompressor
      fs: squashfs: stop zstd decompression when the input runs out
      fs: squashfs: zero what squashfs_fill_page() didn't copy
      fs: squashfs: keep the file position 64 bit when reading
      fs: release the file when opening it fails after its open
      fs: squashfs: refuse a root inode that isn't a directory
      fs: squashfs: add fuzz test
      test: Containerfile: add squashfs-tools
      test: py: add squashfs test
      ubi: fastmap: check PEB numbers read from the fastmap
      ubi: fastmap: bound the size of a volume's EBA table
      ubi: vtbl: check the size of a static volume's last LEB
      fs: ext4: validate the group descriptor size
      fs: ext4: validate the inode size
      fs: ext4: validate inode numbers
      fs: ext4: fix the triple indirect block lookup
      fs: ext4: reject file blocks beyond what an inode can map
      fs: ext4: compute block and sector numbers in 64 bit
      fs: ext4: fix holes in indirect block maps
      fs: ext4: check the depth of extent tree nodes
      fs: ext4: fix reading holes at the start of extent trees
      fs: ext4: read unwritten extents as holes
      fs: ext4: bound the length of symlinks
      fs: ext4: read directories one block at a time
      fs: ext4: free the mount data when mounting fails
      fs: close the directory when opendir() fails
      fs: ext4: reject a root inode that is not a directory
      ubi: attach: count fastmap PEBs in self_check_ai()
      test: self: add UBI attach tests
      fs: share the squashfs fuzz test with other file systems
      fs: ext4: add fuzz test
      test: py: share the squashfs test with other file systems
      test: py: add ext4 test
      usb: keep interface and endpoint counts within what was parsed
      usb: skip endpoint descriptors for endpoint zero
      usb: don't attach an endpoint companion to another interface's endpoi=
nt
      usb: hub: bound the port bitmaps by the number of ports used
      usb: don't store more interfaces or endpoints than there is room for
      usb: refuse devices whose configuration can't be parsed
      usb: add a fuzz test for the configuration descriptor parser

Christian Berry (1):
      nvme: check for readiness more quickly to speed up boot

Johannes Schneider (1):
      usb: dwc3: gadget: ack pending events while waiting for the halt

Michael Tretter (20):
      arm: socfpga: agilex5: define QSPI flash registers
      arm: socfpga: mailbox_s10: add wrapper for RSU status
      arm: socfpga: mailbox_s10: add wrapper for CONFIG_STATUS
      mci: cadence: adjust name of reset line to dt binding
      crypto: make sha384 and sha512 available in PBL
      PBL: rename sha256.c to generic sha.c
      PBL: add oneshot helper for sha384 and sha512
      arm: socfpga: agilex5: select GPIOLIB
      arm: socfpga: axe5-eagle: drop hard-coded PHY reset in board code
      mtd: spi-nor: drop requirement for device field
      mtd: spi-nor: enable module in PBL
      mtd: spi-nor: cadence: extract common part for use in PBL
      mtd: spi-nor: cadence: add a PBL driver
      arm: socfpga: agilex5: add bl33 xload support
      arm: socfpga: agilex5: separate load and start of bl33
      arm: socfpga: agilex5: enable xload for bl33
      arm: socfpga: agilex5: initialize QSPI flash in PBL
      arm: socfpga: agilex5: add agilex5_barebox_entry_xload
      arm: socfpga: axe5-eagle: move lowlevel init to separate function
      arm: socfpga: axe5-eagle: build FSBL without piggy data

Nathan Chancellor (1):
      scripts/dtc: Remove unused dts_version in dtc-lexer.l

Sascha Hauer (71):
      Merge remote-tracking branch 'github/pr/68' into for-next/github/pr/6=
8/of-compare-node-names-case-sensitively
      Merge remote-tracking branch 'github/pr/70' into for-next/github/pr/7=
0/ci-labgrid-pytest-exercise-the-security-policy-configurator-targets
      Merge remote-tracking branch 'github/pr/75' into for-next/github/pr/7=
5/ratp
      dts: update to v7.3-rc3
      dts: update to v7.3-rc4
      test: check-security-policies: mark the source tree safe for git
      clk: imx: pll14xx: use register defines consistently
      clk: imx: pll14xx: Drop wrong shifting
      clk: imx: pll14xx: Use FIELD_GET/FIELD_PREP
      treewide: drop PRE_IMAGE linker script hook
      ARM/RISC-V: pbl.lds: drop ALIGN before _text and assert entry at start
      dts: update to v7.3-rc5
      ARM: rockchip: move to the load address with the MMU enabled
      ARM: rockchip: boards: leave moving to the load address to atf.c
      ARM: rockchip: pack the device tree passed to TF-A and OP-TEE
      dts: update to v7.3-rc6
      Merge remote-tracking branch 'github/pr/81' into for-next/github/pr/8=
1/overhaul-pstore-ramoops-support-and-sync-with-linux
      bootm: fit: open FIT images only once per loadable
      FIT: do not cache uncompressed data
      dts: update to v7.3-rc7
      dma: add dma_xalloc() and dma_xzalloc()
      treewide: use dma_xalloc()/dma_xzalloc() where the result isn't check=
ed
      dma: let dma_alloc() and dma_zalloc() fail
      Merge branch 'for-next/cleanup-malloc-free'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/eem'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/fit'
      Merge branch 'for-next/fs'
      Merge branch 'for-next/github/pr/68/of-compare-node-names-case-sensit=
ively'
      Merge branch 'for-next/github/pr/70/ci-labgrid-pytest-exercise-the-se=
curity-policy-configurator-targets'
      Merge branch 'for-next/github/pr/72/treewide-avoid-clang-wempty-body-=
warning'
      Merge branch 'for-next/github/pr/73/describe-the-barebox-additions-as=
-a-built-in-overlay'
      Merge branch 'for-next/github/pr/75/ratp'
      Merge branch 'for-next/github/pr/80/fix-support-for-standalone-keys'
      Merge branch 'for-next/github/pr/81/overhaul-pstore-ramoops-support-a=
nd-sync-with-linux'
      Merge branch 'for-next/lvm'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/of-overlay'
      Merge branch 'for-next/rockchip'
      Merge remote-tracking branch 'github/pr/89'
      Merge branch 'for-next/socfpga'
      Merge remote-tracking branch 'github/pr/95'
      Merge remote-tracking branch 'github/pr/91'
      Merge remote-tracking branch 'github/pr/90'
      Merge remote-tracking branch 'github/pr/94'
      Merge remote-tracking branch 'github/pr/98'
      Merge remote-tracking branch 'github/pr/107'
      Merge remote-tracking branch 'github/pr/105'
      Merge remote-tracking branch 'github/pr/106'
      Merge remote-tracking branch 'github/pr/104'
      Merge remote-tracking branch 'github/pr/103'
      Merge remote-tracking branch 'github/pr/102'
      boot: fix use-after-free when restoring bootm variables
      bootargs: fix double free in linux_bootargs_get()
      commands: boot: fix use-after-free of overrides taken from globalvars
      commands: boot: list bootm.image in the -o help text again
      Merge remote-tracking branch 'github/pr/92'
      fs: cramfs: don't ignore decompression errors
      fs: cramfs: return an error pointer from cramfs_get_link()
      fs: ext4: return an error pointer from ext_get_link()
      fs: legacy: return an error pointer from legacy_get_link()
      fs: ubifs: don't free the symlink target twice
      fs: jffs2: don't free the symlink target twice
      Merge remote-tracking branch 'github/pr/112'
      Merge remote-tracking branch 'github/pr/113'
      Merge remote-tracking branch 'github/pr/114'
      Merge remote-tracking branch 'github/pr/116'
      Merge remote-tracking branch 'barebox-ghsa-c7qr-8rm7-6ch6/anabobilo/u=
sb-hardening'
      Merge remote-tracking branch 'github/pr/119'
      Release v2026.11.0

Stefan Kerkmann (8):
      of: overlay: of_overlay_fix_path: skip symbols without __overlay__ no=
de
      of: overlay: fix_path/apply_symbols: add more debugging calls
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

Thomas Bonnefille (3):
      bootm: add fitimage command line to bootargs
      test: py: add test for fit cmdline parameter
      FIT: add cmdline to whitelist of non-hashed properties

Tobias Waldekranz (5):
      dm: lvm: Initial Logical Volume Management support
      dm: lvm: Add fuzz testers for metadata parser and binary headers
      test: self: lvm: Add tests for metadata parser and binary headers
      commands: lvm: inspect VGs, activate LVs
      test: py: lvm: Add basic LV activation test


--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




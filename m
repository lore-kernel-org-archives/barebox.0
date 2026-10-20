Delivery-date: Tue, 20 Oct 2026 16:39:10 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJAze-00140f-0p
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 16:39:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1D597201EE7
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 16:39:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=R4zzISzZ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=A2fuLC6i;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792507146; a=rsa-sha256;
	cv=pass;
	b=BBR+9hLYcc0iO451h5rcSgOAHyPOqGiEDiuyHHzNcUdj02WycNX0vLEBaLMGMUGRK1R9XW
	GLYTsu+PnlZlB2cerI3B7xlNwegkXp8n3TF6bgZz57X8ctyzYiLq7uweB0KsJzJdWck7PW
	BdkuJ5gOo/gKJtNz7+Ij5Ovxeuzq/j9ZjC4FiAyogWO7xAOlWZkKGep/RQUj5F2Jzyl+ZE
	EDA3ot0itVb5rCuKPYNXrsPmwpUdrDKlSmS+h5ib98hfZmFV56yMoWo9sUxa9MhxxrOKle
	tks+aLu7l9NkPNbDg5F//fhXHPudazx/GOEQeKdB/I6bADYLV4EfQfROqzMPtQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=R4zzISzZ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=A2fuLC6i;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792507146;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=RmQyuApY7fI2cjcCZiG4VkjKr+It4sUTUYGhMK++3Xo=;
	b=gBN0xCJV1QlaFanRi+jSbZuKt3+KwF9tRRfgOERVQdM26Eyzmai6poU1YiDAY7ViYOaO6I
	C06UQ2qMgYFpHJ9dlNAw43J6Zi3DNHyhPUxWwhaCAeeDIGSUiMWsEz9QuCjTEGtwb6aofw
	z5befroaLPo60F+O58fRCHNz640dY4SLt7EQn9gIfDNDxb0Z+jkaQ/T7qGfy6hEJv7T5bR
	aSitY5E7QHmarT706TIuOYFeYLB1GP59wHmzz7BBla8v91VOhYpUieXchMWCStTsRxPw7Q
	JOoW5i4/BRu7h7s2HbO4thRLAvX76647oNaHY00YFwdEadH34SBYHgmDOqEFvg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:To:Subject:From:Message-ID:Reply-To:Cc
	:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RmQyuApY7fI2cjcCZiG4VkjKr+It4sUTUYGhMK++3Xo=; b=R4zzISzZjwSLkQ
	dKCQH9IDp/52W3N5kqMGJRV8igual9oJt5IpKs2rULKPTSN2M9If7+qFJjqkcdXB0MfWi+GrvhnkC
	lM1HpNNPBMuE6kvNFBoTcv/I1we7X29quEnTGBvMuwfmfVSItVWwcwBJF6VwfunwFvGy9rFS+wvQ1
	Cxu0FGI1w1YxuKUqwaMYjIJZ5/6seMsBMaMGq+uH465a1xEUZ2BF80p27+lA5IaJbGnEJDh9N8oWj
	dYvCjbW4CvsqY3ELhoVvnxeDIXgJxEQ5NIXgwAVC9LXip5WTwrihVEcZXzwvYP0wQYO7KzIjfHAMc
	x0SiDwhsBm7tReovtYIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAy3-00000009y7G-2IxG;
	Tue, 20 Oct 2026 14:37:31 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAxz-00000009y5v-1cMZ
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 14:37:29 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5B8082018A0
	for <barebox@lists.infradead.org>; Tue, 20 Oct 2026 16:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792507041;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RmQyuApY7fI2cjcCZiG4VkjKr+It4sUTUYGhMK++3Xo=;
	b=A2fuLC6ii4oXiEww3ez44qLHzyTsaO/81FyPuXcgsmMtnA3BgXUylkKhVedcy4Ms+F5nCO
	ww3A8sCLe7SywQvZbMKBJd9NVxWpFCEWja81rE6DkwC4F8c8YfnIUyshMTv3JxDiTIZDxz
	a1sn3Fx0HGDSIYg83mc0rztLWlQjDrtrkyfQoix7Hvy2m9ODpKYBuRwoX47WV4CIhV1dEV
	uvBCHRwApkwvmPG99rOVBuDKwnKfxgKZ48tRLnSn7hbfRutbJsXvOspOm8bp20rbiLh76U
	duAzbbvnPw1xik8Vs3zK6UBY7CgXjm101KoN/1NhRkgNvDDZPHSD74zK4mhvpQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792507041; a=rsa-sha256;
	cv=none;
	b=Nrx//mZKqKsA3VAwKq3qCOzL/20+CPZv7DPzWEZiAwHnpsgj7MtXYUfINJRiTHe/dUBUt7
	Fk+QaUfuD90ySOD4AiDEm4ufERIhKIR8uVWXj20Qf0OSvTr/GxpN+7Skjhu9gsVyldXwQi
	nvby4JtoqkLsEz5i7BNhdRMKRiWA2GPQDyXQmnud9aO2tjQHD/cdePI/KAybJC79YzVx28
	Qh4lS+LQo5ET3+4DDjXFryRkBljB5yf+iozys1QuShQuvcZg1PspvH9aGc3j0ea5EdNJ36
	JwXDYhLSDZev342w5eNY4QxVnCp1+RR3y6L5pKKW4qeKoNpO0pVclkkjq2ZNug==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792507041;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RmQyuApY7fI2cjcCZiG4VkjKr+It4sUTUYGhMK++3Xo=;
	b=NOUeNTUGxRiX8EMIVMZP0gv+Q5fVg6EHHbOaNlsm8lqXbtwAtytQCveesQ6/aeGbNWOF0y
	Yfl8GDAALpLHKWW8eYn6oAvkhP7lJ+wY1YO+kOFzhxqYQY94asLsFnXNdB8oy0j2Wd9Zk7
	Ne3ojojZ7wgcZu38ISBvLRsrg7b2TA3RhwdYHPth6dTB06kC4+Ubmw/7fzCGUWqGhMz3s8
	MFCXm4XtYpB9f4kaoPC1tDS/e59hAYAXW5cEpSZqmaQR49SPTp/zPTiukDAxRyJW4BcQH7
	dQDLkf0Pitx5sINmraOvXJqCazLBAZqyd2V84WsFeo1RcdievF8aqMY7qyUWkA==
Message-ID: <c372a669-816e-4eec-a7d9-f02dc788e738@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: v2026.10.0
To: barebox@lists.infradead.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Oct 2026 14:37:20 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_073727_739708_F05AC441 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi All, Here comes barebox-2026.10.0 This release brings us
    Raspberry Pi 5 support along with a new Broadcom SDHCI driver. Also new drivers:
    A UEFI USB driver which can UEFI provided USB devices and a PCA9450 PMIC
   driver which is commonl [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1D597201EE7
X-Spamd-Result: default: False [-58.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 8ro1zxgk4ju1517t87w8cg9oc6zfnygr

Hi All,

Here comes barebox-2026.10.0

This release brings us Raspberry Pi 5 support along with a new Broadcom
SDHCI driver. Also new drivers: A UEFI USB driver which can UEFI
provided USB devices and a PCA9450 PMIC driver which is commonly used on
i.MX8 boards.

Ahmad has written a Threat model in which he has written down what we
consider a security issue and what not. It's worth a read, check the
documentation.

Barebox now has a OSS-Fuzz integration which lives in the tree and is
exercised in the CI. The outcome has already led to several patches
also in this release.

Also worth noting barebox can now not only register and initialize USB
devices, but also unregister them when they are gone. While previously
a 'usb' command would only add devices, it now syncs the barebox state
with the hardware state, so also unregisters devices.

As usual, see below for a full list of patches that went into this
release.

Have Fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (186):
      param: fix indirect call through incompatible function pointer
      filetype: fix dead code in RISC-V barebox image detection
      decompress_unlz4: fix heap-buffer-overflow on malformed input
      decompress_bunzip2: fix heap-buffer-overflow on truncated input
      decompress_bunzip2: fix heap overflow on long symbol runs
      jsmn: fix out-of-bounds access in token navigation functions
      partitions: efi: validate the GPT partition entry size
      driver: report registration failure in add_generic_device() and frien=
ds
      commands: nvmem: check device registration for failure
      fs: ubootvarfs: fix tail relocation length computation
      tlv: fix memory leak in __tlv_format() on duplicate parameter
      image-fit: fix digest memory leak in fit_verify_signature()
      treewide: remove dead stores and unused variables
      nvmem: rmem: report invalid protection mode to the caller
      sandbox: use /proc/self/exe instead of realpath(argv[0])
      sandbox: allow use of alternative linkers like ld.lld
      sandbox: support linking external $LIB_FUZZING_ENGINE
      libfuzzer: disable options not required for fuzzing
      tlsf: poison redzones and freed memory under host AddressSanitizer
      fuzzing: use libc malloc for leak detection
      Makefile: find the coverage profile in the build directory
      Makefile: honour $(GENHTML) when generating the HTML report
      Makefile: keep the HTML coverage report working with lcov 2.x
      Documentation: fuzzing: correct the coverage report path
      fuzzing: add automated coverage-check Makefile target
      Documentation: fuzzing: fix fuzzer list and drop leak workaround
      fuzz: allow accepting partial checksums and digests
      fuzzing: add decompression fuzzer
      fuzzing: exercise DTB flatten in fuzz_dtb
      fuzzing: add DTB overlay fuzzer
      fuzzing: add TLV parser fuzzer
      fs: fat: add fuzz test for FAT filesystem
      state: add fuzz tests for raw format
      fuzz: fit: select verification mode from trailing data
      fs: ubootvarfs: bound environment parsing to the mapped size
      fs: ubootvarfs: let the filesystem own the parsed variables
      fs: ubootvarfs: implement flush
      efi: allow building the PE parser without the loader
      efi: validate PE parser input ranges
      efi: add PE parser fuzz test
      of: fdt: remove dead code in fdt_machine_is_compatible
      Documentation: fuzzing: list all fuzzers
      state: fuzz the authenticated raw format as well
      fuzzing: apply the overlay in the DTB overlay fuzzer
      fuzz: fit: exercise the paths reached before authentication
      console: add log_set_max_messages()
      fuzz: don't buffer log messages while fuzzing
      fuzz: set up a fuzz test's device before the first input
      sandbox: os: honor CONFIG_DEBUG_INFO for compiler options
      libfuzzer: config: enable CONFIG_DEBUG_INFO
      fs: fat: propagate actual error code when opening/creating files
      fs: fat: drop stray printf debug output
      fs: fat: use fixed-width 32-bit FatFs types
      fs: fat: flush metadata updates to the block device
      RISC-V: configs: enable CONFIG_DEEP_PROBE_DEFAULT
      RISC-V: reloc: ignore R_RISCV_NONE relocations
      efi: payload: don't fail postcore initcall when image has no device p=
ath
      efi: loader: accept NULL DevicePath in LoadImage when SourceBuffer is=
 given
      efi: devicepath: don't spin on hard drive nodes without a signature
      efi: payload: iomem: use efi_uintn_t for the memory map key
      efi: payload: env: don't execute unmatched network driver glob
      fs: efivarfs: allow creating variables under any GUID in loader mode
      partitions: efi: only warn about valid GPT entries beyond the limit
      efi: loader: fix year and month reported by GetTime
      efi: don't truncate EFI_MEMORY_RUNTIME when setting resource attribut=
es
      ARM: cpu: suppress arm_early_mmu_cache_invalidate if dcache enabled
      ARM: v7r: factor out armv7r_cache_enable
      serial: name the semihosting console
      efi: loader: don't let VarToFile stop the variable file from being wr=
itten
      efi: loader: keep booting when the runtime variable store is unavaila=
ble
      ARM: always call cache_invalidate_stale before enabling D-Cache
      test: qemu: make synthesized features visible to the tests
      ci: labgrid-pytest: give the arm64 target a framebuffer
      ci: labgrid-pytest: run the security policy tests
      test: network: don't tie the mock TFTP test to testfs
      scripts: qemu_interactive: instantiate the virtio NIC explicitly
      ARM: defconfigs: enable the PL061 GPIO and virtio net drivers for virt
      input: gpio_keys: use dev_err_probe() for failed GPIO requests
      block: partitions: don't report a missing medium as an error
      fs: tftp: drop the leftover SELFTEST_TFTP references
      ARM: dts: imx6q-sabrelite-qemu: disable unmodelled peripherals
      ARM: rpi: validate the FDT magic before copying the VideoCore DT
      RISC-V: defconfigs: enable the tftp command
      test: make a few assertions actually assert something
      test: check the boot log for errors, not just critical failures
      test: fit: fail the dry-run test when bootm fails
      test: smbios: drop the unused Debian ISO fixture
      test: declare the network feature for the QEMU virt targets
      ci: labgrid-pytest: build the test images with -Werror
      video: bochs: don't report a missing ISA device as an initcall failure
      ci: labgrid-pytest: activate the sandbox allyesconfig console explici=
tly
      test: py: don't reintroduce line breaks in JSON command output
      treewide: replace inappropriate printk
      virtio: fix out-of-bounds scatterlist array access in virtqueue_add_{=
in,out}buf
      efi: loader: disk: detect the file system type only once
      video: efi_gop: reject Blt-only graphics output
      clk: stm32f4: allow building under COMPILE_TEST and fix the build
      clk: at91: sam9x60-pll: allow building under COMPILE_TEST and fix the=
 build
      clk: composite: return ERR_PTR on registration failure
      clk: fixed-factor: use 64-bit arithmetic in recalc_rate
      clk: imx: pllv3: use 64-bit arithmetic in fractional PLL recalc_rate
      clk: divider: use 64-bit division in _div_round_up and divider_get_val
      clk: divider: round up when searching for the best divider
      clk: divider: fix calculation of maximal parent rate for a given divi=
der
      test: Containerfile: include EDK-II for RISC-V
      fs: efi: don't leak the file info buffer in efifs_truncate()
      kbuild: emit asm-offsets markers as .ascii strings
      scripts: imx9image: fix warnings reported by clang
      kbuild: disable -Wunused-but-set-variable after -Wall
      kbuild: disable -Winitializer-overrides for clang
      ARM64: cache: use WEAK() for v8_flush_l3_cache stub
      common: boot: support passing an argument to a boot script
      defaultenv: boot/devboot: add a devboot boot target
      defaultenv: bin/devboot: clear linux.bootargs.devboot. namespace afte=
r boot
      defaultenv: add optional devboot snippets under /env/devboot/
      Documentation: state: drop stale backend-stridesize claims for circul=
ar storage
      state: warn when direct buckets on block devices are not block aligned
      Documentation: devicetree: barebox,state: require block aligned stride
      ARM: stm32mp: lxa: align state backend-stridesize with other LXA boar=
ds
      commands: bootm: remove -c and -s options
      clock: make udelay(), get_time_ns() and is_timeout() weak aliases
      ARM64: fall back to reading the counter directly in the PBL udelay()
      scripts: clang-runtime-dir.sh: cope with a wrapped compiler
      ci: pytest: hardcode Debian netinstall ISO version at single place
      Documentation: fix inconsistent whitespace
      Documentation: fix reST markup and formatting
      Documentation: update outdated and incorrect information
      Documentation: fix typos, grammar and capitalization
      treewide: replace git.pengutronix.de addresses
      sandbox: route malloc_usable_size() through the PBL glue again
      test: self: free a zero-sized buffer with free_sensitive()
      usb: dwc3: imx8mp: check dev_request_mem_resource return with IS_ERR
      mtd: spi-nor: add GigaDevice GD25LQ128D
      ARM: at91: include linux/types.h in aic.h
      defaultenv: bin/devboot: propagate exit status of boot command
      .mailmap: fix Bruno Produit's author name
      block: ramdisk: keep num_blocks in sync with the size
      fs: devfs: reject cdev aliases containing a slash
      sandbox: keep stickypage in a memfd
      sandbox: keep ASan's C++ runtime out of the libfuzzer link
      scripts: add oss-fuzz.sh build script
      Documentation: fuzzing: document OSS-Fuzz support
      ci: exercise scripts/oss-fuzz.sh in GitHub Actions
      Documentation: security: unnest hardening sections from dm-verity sec=
tion
      Documentation: security: clarify development key insecurity
      Documentation: security: require signature verification to be pinned
      Documentation: security: document trust for builtin devicetree
      Documentation: security: clarify the environment section
      Documentation: security: describe shell and environment as trust boun=
dary
      Documentation: security: document the barebox update attack surface
      Documentation: security: update for barebox dm-verity support
      Documentation: security: add anchors for the different sections
      Documentation: define a barebox threat model
      README, SECURITY.md: link the threat model and security considerations
      ARM: i.MX8MP: variscite-dt8mcustomboard: use i.MX8MP early clock init
      net: 9p: client: don't leave trans_tag uninitialized
      net: 9p: client: don't wait forever for a flush
      commands: mkdir: create directories with mode 0777
      usb: gadget: u_serial: don't wait for a host that isn't reading
      sandbox: console: only look for ^\q on consoles used for input
      console: don't unregister a console whose device file is open
      nvmem: core: default to a stride and word size of 1
      partitions: efi: print LBAs as unsigned
      of: fdt: fix out-of-bounds read of the root node name
      decompress_bunzip2: fix signed overflow in get_bits()
      clk: imx: pll14xx: enable PLL output in clk_pll1416x_early_set_rate()
      ARM: i.MX8MM/8MN: clock NOC from SYS_PLL3 in early clock init
      ARM: i.MX8M: feed A53 cores from ARM PLL via CORE_SEL_CFG in early cl=
ock init
      ARM: i.MX8M: source dram_apb from sys_pll2_200m in early clock init
      ARM: i.MX8M: order early clock init like U-Boot
      ARM: rockchip: rk3568-qnap-ts433eu: re-enable combphy0, disable sata2
      ARM: rpi: look up emmc2bus by alias for dma-ranges fixup
      of: base: use default bus match table when populating /firmware
      Documentation: migration-guides: add heading for v2026.09.0
      defaultenv: bin/devboot: fix typo in final exit
      defaultenv: devboot: use rsinit.bind_modules to bind mount modules
      Documentation: devicetree: document overlays in a FIT image
      test: py: add test for FIT images in global.of.overlay.path
      ARM: zynq: reduce barebox-avnet-zedboard.img size by 21K
      efi: payload: fix inverted efi.secure_boot and efi.secure_mode
      treewide: fix variable names in BAREBOX_MAGICVAR
      treewide: add missing BAREBOX_MAGICVAR for global variables
      treewide: add BAREBOX_MAGICVAR for parameters of fixed-name devices
      Documentation: turn more magic variable literals into references
      ARM: dts: imx93-frdm: allow dummy supplies for the PMIC regulators
      ARM: dts: zii-imx8mq-ultra: move i210 below the PCIe root port

Akari Tsuyukusa (1):
      scripts/dtc: add fdtoverlay to gitignore

Alexander Shiyan (2):
      serial: ns16550: fix memory leak of linux_earlycon_name on probe fail=
ure
      amba: simplify amba_lookup function

Andrei Lalaev (6):
      mci: add driver for Broadcom SDHCI
      ARM: rpi: add Raspberry Pi 5 support
      Documentation: bcm283x: add Raspberry Pi 5 support
      arm: dts: bcm2712-rpi: specify clock frequency for uart
      arm: dts: bcm2712-rpi: disable wifi SDIO
      bcm283x: debug_ll: add Raspberry Pi 5 UART support

Fabian Pflug (6):
      efi: usb: add header for usb-efi
      usb: core: make usb_set_maxpacket_ep public
      drivers: usb: host: efi: add efi io driver
      efi: guid: add guid for usb host controller 2
      test: x86: add test for uefi usb io
      drivers: usb: add usb_add_device to add a device

Florijan Plohl (2):
      defaultenv: apply external environment after board overlays again
      ARM: boards: phytec-som-imx6: Add KSZ9131 PHY support

Gabriel Arnautu (2):
      FIT: return error if signature verification is disabled
      envfs: validate inode bounds before extraction

Michael Tretter (4):
      arm: socfpga: iossm: remove unused num_port
      arm: socfpga: iossm: fix macro
      arm: socfpga: iossm: refactor register access
      arm: socfpga: iossm: wait for PLL lock from handoff table

Sascha Hauer (58):
      extlinux: make variable name consistent
      fs: devfs: remove aliases from the list when freeing them
      fs: remove the default automount when a cdev is removed
      fs: devfs: propagate cdev aliases to the partitions
      fs: devfs: make the default automount reachable under cdev aliases
      usb: don't report device removal after the device name is gone
      fs: devfs: count an open partition as an open device
      block: propagate errors from blockdevice_unregister()
      fs: add cdev_umount_all()
      block: add blockdevice_unregister_removed()
      usb: storage: tear the disk down properly on disconnect
      usb: hub: cancel pending port scans of a removed device
      usb: reuse the addresses of removed devices
      usb: hub: detect disconnected devices
      usb: don't keep a dangling root device on enumeration failure
      usb: hub: limit the number of ports to USB_MAXCHILDREN
      usb: detect unplugged devices on transfer errors
      usb: storage: stop talking to a device that is gone
      dts: update to v7.3-rc1
      fs: track streaming and unknown-size files in dedicated inode fields
      fs: reject inodes whose size the superblock cannot address
      x86: efi_defconfig: enable the EFI USB I/O protocol driver
      mci: atmel_mci: improve timeout error message
      mci: wait for card to leave programming state after block writes
      Release v2026.10.

Stefan Kerkmann (1):
      regulator: pca9450: add pmic driver

Stephano Cetola (2):
      extlinux: recognize LINUX as an alias for KERNEL
      extlinux: resolve absolute paths against the partition root

Ulrich =C3=96lmann (2):
      include: ocotp.h: add missing include
      commands: sconfig: fix command description


--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




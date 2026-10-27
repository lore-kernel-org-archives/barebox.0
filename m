Delivery-date: Tue, 27 Oct 2026 14:25:22 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLhB3-003vtd-34
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 14:25:22 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B62AD202928
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 14:25:21 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3bj1MFBO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=B+D5xr6t;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793107522; a=rsa-sha256;
	cv=pass;
	b=BKsIzjYbkn2gXHPvgc8UPHcHrr39rHiJOXkJ+1197Ry8+FSmm2Vlww1c7f8Gnid1PtQzE2
	/cu9vw8OK0FCqyN1cR3p2mH7l7VhXYphMKxTItqJ/dgHyEeEV4W2d7iUFsZhl7ye9tAEkw
	hKR4MM1F9GGRIXkYOEJQ+LnzIXV0U52NlVn3MkRwdQqfPgXDefEhg9GZekQKhqj0tlfSF+
	IrmwkeIpqR0J+mtk/X6FKtlwADf0WEYIzChxenS6hAHzZcGwr3n11TR7UDUKDMvOgVnIiG
	o9GhcOROBwPqaCjvnD6trwc3ye4iuBWuJiioj+028CtO2QryvEvSWJcPAsXsBw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3bj1MFBO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=B+D5xr6t;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107522;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Xg8EMcvuMMQJXOTCl7xfTZup8KobEeBM+qWSjEG8LS0=;
	b=J2NwHPh9+4mf1UunYTnKklZ+s3+cVMMy57Na6Fj8ALGtLnZ5eUbriHqa4KFhQFwORcnsO7
	eQlZNvJYGLrttlo+KNVHd7ZGTpNRndlSdFqzVJgqmVpKMsOyw94aspskcSzF3iAtkgaXt+
	JWz7kjrWK6Ql0a/pDpl1Lhi1nQXeEI50Od6lQI2Nmi9djpFbgHxwWDRXCbEsIrbrXucSjk
	rxR/FzAEKUCcTv4sXXgbeks3qD59dxoYKN1r6l1i5c5+EwPdaYxwrMsVTeKdl95nhY7ISd
	PNUN1R94TW14mqXT3igWc2SChft+DH7mF6ckghbzesxxA5zuglaQD8TS2QEAEg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Xg8EMcvuMMQJXOTCl7xfTZup8KobEeBM+qWSjEG8LS0=; b=3bj1MFBOS2kl/O/64EOTqVF531
	ixGK3Z9wEF743KO/DQml/V3euE6Ri7SIA3Y3xMUgNOBrjd7b+LrQ17NnIL+Fr8p2QgHxSc4WhfWxi
	JvJk3UUYzQ55mrt2S5qxqc7ZMr+WdqOPqjdrXAcdC20QKmc6wB/j93ELLNVAFHsaXBd0sLrjV7Qjb
	AB087c0a9wJfwJeZHFXU/GGLufwK6+B2LEmSWw4T7g3O6GC+/tXXma9yfAVr8wLYB2+WXG3Qluwma
	94U/SBsQx/65tgkS3SyG73UlFM4oO+Yru3hy2LVAZIi7ULzbx6/jaJJ/DAMI94Ddi/rK6dS7LklCQ
	9kyOuPfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh9r-00000004q3k-0z7D;
	Tue, 27 Oct 2026 13:24:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh9n-00000004pzf-2AIw
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 13:24:06 +0000
Received: from ratatoskr.trumtrar.info (unknown [IPv6:2a00:1f:f805:2b01:a03:2f4:308a:7b52])
	(Authenticated sender: str@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 31D68201F14;
	Tue, 27 Oct 2026 14:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Xg8EMcvuMMQJXOTCl7xfTZup8KobEeBM+qWSjEG8LS0=;
	b=B+D5xr6tkv10zadX9RwSbU9IFDtfzinHmfbcyElMdnmxdclH492GNE/xHYvWRiahz28Xfe
	cStYIChDuwgUXaBbNrXQ+bomCBySO7BN6ZLELhndmlJ8a10MaVrD1AknfUHfQc+SEtPv1g
	+Q8+72Vzm4h2nJ2C8V4BHKgmI+m8O8omzm+/TRtiC6tJrwkA6HptaguaIX9IbAob75Wnfn
	FSQCfFgkWwXEyyqLhWoNH4uEpLqgwHKyMRdF+vO/Y+JkiZSMh6W2T7uNYsPVg5KauUnvG4
	EUBeb8PXAWO2lHaLoPkYdsD5bPQ+PfzC1ICOUKhBA8ul9UUOuK2WTK4rKOISFQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793107439; a=rsa-sha256;
	cv=none;
	b=TdOQUm/TqT2xfJ5hszVPKeXelM9poiYFTG8jlRLrkGfBS4ACc07DSh7HgHNbw4WV+CLw6A
	50gj+1KWFQbHFLVgvOhrJFLwDU9B0fL8qQL55T0mKG1lNCZfmEc/WXw9W7yLwCJgD4l52y
	Qov+52deOjQIuKGJOvGl8OfyNe0AGG6xCHFVXUqBEbLcf0+DzpWHDSZ2hhy3eI43jTjGfj
	x30TP/TX5W8IRVMA+5kAkeTq1+wl0yy/UOinOFReVdHb/1zfqp3y3Ndl94O3SnCMAtVPYh
	0UL56cR0l8nGJT335X5d9pcRPp+qHLl61L6QoXDCJQuAyP59RChVJMXjCoEslg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=str@pengutronix.de smtp.mailfrom=s.trumtrar@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Xg8EMcvuMMQJXOTCl7xfTZup8KobEeBM+qWSjEG8LS0=;
	b=BEKWHVgKGNLJH1EEj0Tcl+pWxUfkPZa+b9jygEjn3UghcHJTJ4A/1BNeochDweiszWvLUs
	bzAmja9qSHbQ2Wc2v9u6H0za11phcmFsZNYBeuxwNvaBg+pefnrlnNm7zXi+WYYAGpCGbt
	XtUA4ApoBad5zx2M9H9Yaid8hrFBa+AFs47Wq7tZvdYo0L+Qr2bwrJgtkSaWDbYwpCoP3w
	IAJUFlnyX8dq0YEh6thUzd2YQ+h7Sm7wKM9OBVUvD7ht5S7UQgH4vcFr1eaChbieQ4BA/R
	yGq8W7JZD6p4AlSbs1SQklAJrhHHvSfwN6yFo0PYQzmd77VKmMQly8KLhUUqbA==
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: [PATCH 0/4] Linux bootconfig support
Date: Tue, 27 Oct 2026 14:23:52 +0100
Message-Id: <20261027-v2026-10-0-topic-bootconfig-v1-0-2758d3d9a165@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMwQ6CMAyA4VchPdtkXTJQX8V4gFqgHlayDWJCe
 HeH3v7v8u+QJalkuDc7JNk0q8UKujTAcx8nQX1Vg3e+Jec73M5Ccuiw2KKMg1lhi6NO2MqVAvn
 QB75BPSxJRv387o/n33kd3sLlXMJxfAEwJ6qKfwAAAA==
X-Change-ID: 20261027-v2026-10-0-topic-bootconfig-6e815125a5c9
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4596;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=uEEp8QkphuZY5zkefBpYjAUUeIbwaRiQ6wlCnNv05xM=;
 b=owGbwMvMwCUmtVehiCsuTInxtFoSQ9aDpe8qmgqXcR193Cx9c/mZyR1Jrv5lH+U2P9W1X8D+X
 e/EepmvHaUsDGJcDLJiiiwqCyv4RD0+eEZOE+GCmcPKBDKEgYtTACZyuYPhfynLovPBrCKxHM92
 LRCY/jJ28617nwWFLV6t2GHbwXLd2ZXhr+SiWU0z5og4ZrjENmh41Uz35D14d3vc89xd1kGaK7s
 4mQA=
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=24A1780E1548F0495996140A1ABD20720A5E5622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_062403_725475_A55F9A5E 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Linux reads a boot configuration (bootconfig) from the end
    of the initrd: kernel command line parameters (kernel.*), parameters for
   init (init.*) and the setup of boot-time tracing (ftrace.*), in a st [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Queue-Id: B62AD202928
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: awno4pz4n478s3rfu3sqfg5dpygjk6oy

Linux reads a boot configuration (bootconfig) from the end of the initrd:
kernel command line parameters (kernel.*), parameters for init (init.*)
and the setup of boot-time tracing (ftrace.*), in a structured text
format. Normally tools/bootconfig appends it to the initrd file when that
is built. This series lets barebox append it at boot time, so it can be
chosen per boot without rebuilding the initrd or changing the boot entry.

The bootconfig is a plain text file, given by global.bootm.bootconfig,
bootm -b, the boot override bootm.bootconfig or devboot_bootconfig.
barebox chains it as the last loadable behind all initrds, adds the
footer (size, checksum, magic) and puts "bootconfig" on the kernel
command line. Without an initrd, the bootconfig alone is passed as one.

For example tracing for a single boot with devboot or a boot override:

  # /mnt/tftp/trace.bconf
  ftrace.event.sched.sched_switch.enable
  kernel.trace_buf_size = 4M

  boot -o bootm.bootconfig=/mnt/tftp/trace.bconf mmc

The format follows Linux v7.3, the result is byte-identical to
tools/bootconfig -a. barebox does not parse the bootconfig, the kernel
checks the syntax and reports errors. Importing the parser from Linux
(lib/bootconfig.c) for a command that shows or checks a bootconfig could
follow if that is wanted.

Patch 1 adds loadable_from_buf(), a memory loadable that owns its buffer,
for the bootconfig built at boot time. Patch 2 is the bootm part, patch 3
the boot override, patch 4 the devboot variable.

Tested on QEMU aarch64 virt with dry runs (bootm -d, boot -d, devboot):
with and without an initrd, from global.bootm.bootconfig, bootm -b and
the override, the override replacing the variable and an empty override
removing it; the initrd in memory compared with tools/bootconfig -a of
Linux v7.3 byte for byte. The series builds with and without
CONFIG_BOOTM_BOOTCONFIG.

Example test run:

    barebox@ARM QEMU virt64:/ devboot
    Sourcing /mnt/tftp/str-devboot-virt64
    boot -o bootm.image=str-linux-virt64 -o bootm.bootconfig=str-bootconfig-virt64
    Booting entry 'NixOS 26.05.20261021.da6dc0e (virt64) (/mnt/9p/boot/loader/entries/virt64.conf)'
    blspec: booting NixOS 26.05.20261021.da6dc0e (virt64) from none
    NOTICE: [bootm override active] replacement OS: File(str-linux-virt64)
    NOTICE: [bootm override active] replacement bootconfig: str-bootconfig-virt64

    Loading ARM aarch64 Linux/EFI image 'str-linux-virt64'
    commandline: console=ttyAMA0,115200n8
    init=/nix/store/3kb5cxkdbi7w0pzdk5dn5pd97y20b76i-nixos-system-virt64-26.05.20261021.da6dc0e/init
    console=ttyAMA0,115200 root=fstab loglevel=7 lsm=landlock,yama,bpf bootconfig
    (...)
    [    0.000000] Load bootconfig: 69 bytes 8 nodes
    (...)

    bash-5.3# cat /proc/bootconfig
    ftrace.event.sched.sched_switch.enable = ""
    kernel.trace_buf_size = "4M"
    # Parameters from bootloader:
    # console=ttyAMA0,115200n8 init=/nix/store/71kswz7n3yn5xyhymbvryj4lsds2bqpq-nixos-system-virt64-26.05.20261021.da6dc0e/init
    console=ttyAMA0,115200 ip=dhcp root=fstab loglevel=7 lsm=landlock,yama,bpf bootconfig

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Steffen Trumtrar (4):
      loadable: add loadable_from_buf()
      bootm: append a Linux bootconfig to the initrd
      boot: add bootm.bootconfig override
      defaultenv: devboot: add devboot_bootconfig

 Documentation/user/booting-linux.rst     |  19 +++++
 Documentation/user/devboot.rst           |  22 ++++++
 commands/boot.c                          |   5 +-
 commands/bootm.c                         |  18 ++++-
 common/Kconfig                           |  15 ++++
 common/Makefile                          |   1 +
 common/bootconfig.c                      | 129 +++++++++++++++++++++++++++++++
 common/bootm-overrides.c                 |  23 +++++-
 common/bootm.c                           |  48 +++++++++++-
 defaultenv/defaultenv-2-base/bin/devboot |   6 +-
 include/bootconfig.h                     |  27 +++++++
 include/bootm-overrides.h                |   3 +
 include/bootm.h                          |   6 ++
 include/loadable.h                       |   5 ++
 lib/loadable-mem.c                       |  24 ++++++
 lib/loadable.c                           |   2 +
 16 files changed, 345 insertions(+), 8 deletions(-)
---
base-commit: 5c46c205c8d1a7c57b9dbaa5e516758a6c0a4d80
change-id: 20261027-v2026-10-0-topic-bootconfig-6e815125a5c9

Best regards,
--  
Steffen Trumtrar <s.trumtrar@pengutronix.de>




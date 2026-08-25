Delivery-date: Tue, 25 Aug 2026 02:08:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyeiH-006saX-2t
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 02:08:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 09FC0202078
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 02:08:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BEFxkLgg;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=iGXWjV9K;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hp6Rh4d8Vf6amZtsfYCmCjBbRKB+UGy0SlqSN432L1I=; b=BEFxkLggyBYtFVvMRMOWKrUqcN
	cMCTGoU5O5wmnebnMqAzDPkK5Ocw7MmiUteEeaE5k/MLIT7s/ztnXW4UCWMMWeFmfi2MH3ozrkSpT
	P+3NAkfR3SubtxkH8rMYvdIe2Q1Ei1uljNlN2dNM5EmS9TqXkVM1aBGSnOqvG9qNierWaa0J/otMd
	EZpNUscC/zRcXPCitj9Czu8sVs32AV4e9IEcsCVKANCNn+BfpafuhRjI1Yv6pi2N4hst/yD+OHsmo
	Drp+X1c2yl8vx5WLrOwQavgd3SjBvBeEb+GmHAULWfyq5vIqQ5iw4jlEdte3Q7SLBsnQ78AQPW+c8
	9LxbqqWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyegp-0000000HW2i-3JWH;
	Tue, 25 Aug 2026 00:06:55 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyegm-0000000HW1q-477a
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 00:06:54 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-499840a2575so21031705e9.3
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 17:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787616411; x=1788221211; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=hp6Rh4d8Vf6amZtsfYCmCjBbRKB+UGy0SlqSN432L1I=;
        b=iGXWjV9KbVkuF+ssPbI1QraH6aJfpPeJIuJF9WCk+Xsay5+o7gC451T2Sxcbh94Im4
         ugdnANQY5uuoXoVJuCk4Sa7grqZygBwyS+iaL9riIxoaYl/lNCToKPojQltQ+wtBfLhL
         rYLVnGBEbWqxgY9eUsGjlcnpzdK19eTFISLGneiJykzXbhju1h5GXrlaI5JDkDkCzx5v
         ZxBEtU5FoJ3wmeHc9sG0ekhwMOF7YA4F+LcKoh1cHpciYynGsKQy+qkK6pKIeC8/0IVz
         3hZfO5CyfnwUbfsXxuJHgwJoM1vD1fSnIsb763VFI39PyAbpyJS/END1X5gH7ruW3jpr
         MZ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787616411; x=1788221211;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hp6Rh4d8Vf6amZtsfYCmCjBbRKB+UGy0SlqSN432L1I=;
        b=Or38zZ8LWTThv26mxHwjO9rDK1XBe6jgQey1XS7wY2zpgbqOSi7TRZIrB8/C3PeAux
         fAUo2UC71rHokXGow1gR87OzAVAzR0nlj6YZiFMjJw+r8P/69sOUI5Iw95xnIyUYKU1e
         qr5QKvmz017kxm3KdaUQ/kFEuPzsiHIY18fiXiodeZbIU5MUkX7AcL8KzDTS8OHTXxnW
         r3qY/nOnxQ23C/LsKQ1SIpENQ6/6HnLCVnztgnuuVUCxhshb8hCL/0z0HSmsA2yzhE0C
         Y3Nud21uwR/Los1+3LKxuhDSjZhvSFgsBh+5SBDA9AH7hVOtRY4Wk64TxWNhb6lsb/BP
         2sXg==
X-Gm-Message-State: AFuF++nLM0OWCDr2YLFlpdZJ2Fv6rwnVxMtwmsVEvJDp/yniyC4siNCD
	u8QE21bT+CgUOEdL1g470SjUCiFOKht+3Xw9jaQiAItxD+7aOeITYthDmGwQ8w==
X-Gm-Gg: AR+sD10mYtJGuiuZ+vgoKKVTOW7c8b7kPczKk8RwH9TSI1EcfKGYvfyGhoA+fQBVH8q
	Vt9qbWrxGxLgZM0M6wL1H76tRX1JNniHqM42SYmFascohsSx1wh3d8tfdFNNav9a0gdPlKI3OGA
	fvOccDQw4n587reaL2Ppfi0UpoYsdV2Uo+IetRCuAisjjn0Azu41Z/R5OmkYqIai3WDsDLwo7O7
	G2p6ss+g50GEZ5OuitGpyokG3kMTyESCTGW3RP3MWDMSNrbZtYm1Rz/2c2sEbxmx0TP3dmEbdrK
	LcrGZ4GMXOO0jCj4I+VKDpmLHIqWQ7+jgH/wcCG/FJA1Fx7w0aKZ/VD594vDhqbz1c2jAy2Pu3z
	w31dZ3m/9vKf9q/GEuoO/T2Q6KjSNF/RqVIH9okE1n6OBP1AWWwgQfA/RbbY7jEKKT9rsJNDnPe
	xwtRhUinN/OnE3cQDaGAqLkSJWFNkw43KYaZ3G+ipfhUP9yrNieRh9vpgbuxbHLJZxLtdJZy4+R
	wnSzy5jXRxNHQhir+yVXUqUGHv+FBlVUHCBhvEq3bL2gEWkgXcZqr8sR5S5mRqfZmHA6CQvvjcy
	uVSWdGNM6w==
X-Received: by 2002:a05:600c:46ca:b0:495:5890:8f6c with SMTP id 5b1f17b1804b1-499d6550a0bmr21406415e9.7.1787616410483;
        Mon, 24 Aug 2026 17:06:50 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499d636efa8sm10181285e9.14.2026.08.24.17.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 17:06:48 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v2 0/3] state: generic devicetree-overlay based state node injection
Date: Tue, 25 Aug 2026 02:06:42 +0200
Message-ID: <20260825000645.122086-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_170653_093455_B5273A3A 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Chali Anis Boards that want a "barebox,state" node today
    have exactly one option: carry it in their own, statically compiled-in devicetree
    source. That's fine as long as barebox is built per-board with a maintai
   [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:32d listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Stat-Signature: cj7hkts91cmwhgjrfbea5m38ihpofod9
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::32d:received];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NO_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 09FC0202078

From: Chali Anis <chalianis1@gmail.com>

Boards that want a "barebox,state" node today have exactly one option:
carry it in their own, statically compiled-in devicetree source. That's
fine as long as barebox is built per-board with a maintained dts, but it
is a harder fit for targets that don't have one to begin with: the EFI
payload, deliberately meant to run unmodified across arbitrary
x86/arm64 EFI platforms barebox itself knows nothing about at build
time, and the generic BOARD_ARM_GENERIC_DT ("barebox-dt-2nd") image,
which picks up whatever devicetree a first-stage bootloader or QEMU
hands it in r2 at runtime the same way a Kernel would, rather than
being built against a particular board's dts. Either way there is no
single "board dts" being compiled for a state node to live in.

CONFIG_EXTERNAL_DTS_FRAGMENTS already covers a related need rather well:
an external build system can append dts fragment files to a board's dts
source at build time, scoped to specific boards via a per-dts
preprocessor macro. That remains the more direct choice whenever a
board's own dts is actually part of the build, and this series doesn't
propose changing that. It runs into the same limit as static dts
inclusion for the EFI payload and barebox-dt-2nd cases specifically,
though, since it operates at dts-source/build time on a particular
"main dts" - which neither target, by design, has one of.

This series instead proposes a devicetree *overlay* (.dtso, applied at
runtime via CONFIG_STATE_OVERLAY) for that gap. Applied to whichever
devicetree barebox already ends up live with by boot time - statically
compiled in, EFI-firmware-derived, passed in from a first-stage
bootloader, or the EFI payload's own minimal stub root - it only ever
adds one small node, so it doesn't need a "main dts" to attach to at
build time, and it doesn't need to know a board's memory map or other
devicetree content beyond one stable label (or, for EFI, just a
partition UUID, patch 1) to hook its backend into. In turn, that also
means it never competes with an existing devicetree for ownership,
which the one realistic alternative we considered - loading a full,
standalone state.dtb at runtime - does run into: barebox_register_of()
only accepts a new root if none is registered yet or the incoming tree
is empty, so a real state.dtb collides with whatever root the EFI
payload already registered at boot and is rejected with -EBUSY, and a
rejected tree's /aliases entries never reach the global alias cache
of_alias_get() relies on either.

Happy to discuss trade-offs here, in particular whether it's worth
teaching CONFIG_EXTERNAL_DTS_FRAGMENTS (or a variant of it) to handle
the no-base-dts case instead of adding a separate mechanism - this
series is meant as a concrete starting point for that conversation, not
a claim that overlays are the only reasonable answer.

Patch 1 makes of_state_fixup() able to resolve a partuuid-referenced,
non-hardware-backed backend node, and exports it so it can be called
directly. Patch 2 adds CONFIG_STATE_OVERLAY itself, compiling an
external .dtso into the barebox binary and applying it to the live
devicetree at postcore_initcall time. Patch 3 builds on both to publish
the resolved state description as a UEFI variable once such a node
exists, and makes the standalone state.dtb loading path step aside when
it does, since it's then redundant.

Changes since v1:
- patch 1: fixed the compatible string on the synthesized fixed-partitions
  node ("fixed-partitions", not the barebox-internal
  "barebox,fixed-partitions" alias, which external consumers don't
  recognize), fixed a phandle collision where the synthesized node kept
  the phandle it had in barebox's own live devicetree instead of one
  scoped to the target tree, and resolved non-partuuid backends via the
  reproducible name cached at probe time again instead of recomputing it
  against whatever tree is being fixed up.
- patch 3: publish "BareboxState" under efi_barebox_vendor_guid instead
  of efi_systemd_vendor_guid - it's a barebox-defined variable, not part
  of the systemd-boot loader protocol.
- cover letter: called out BOARD_ARM_GENERIC_DT ("barebox-dt-2nd") as a
  second target that benefits from this alongside the EFI payload, since
  it's in the same "no main dts at build time" situation.

Tested on a Raspberry Pi CM4 natively, and as the EFI payload on a
Jetson Orin NX and under QEMU.

Chali Anis (3):
  state: make of_state_fixup() usable outside common/state/
  state: add CONFIG_STATE_OVERLAY to inject a state node via devicetree
    overlay
  efi: payload: export resolved state as a BareboxState UEFI variable

 .../bindings/barebox/barebox,state.rst        |  9 +++
 Documentation/user/state.rst                  | 32 +++++++++
 common/Kconfig                                | 36 ++++++++++
 common/state/Makefile                         | 20 ++++++
 common/state/state.c                          | 72 +++++++++++++++----
 common/state/state_overlay.c                  | 19 +++++
 efi/payload/init.c                            | 46 +++++++++++-
 include/state.h                               |  5 ++
 8 files changed, 225 insertions(+), 14 deletions(-)
 create mode 100644 common/state/state_overlay.c




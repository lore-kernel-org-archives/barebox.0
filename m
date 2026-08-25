Delivery-date: Tue, 25 Aug 2026 05:07:22 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyhVR-006vbR-2k
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 05:07:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2022F201BD1
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 05:07:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=qCMoww1F;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=aCy9QTpQ;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AUub4xMeb+brPLQ2Gm1MwKwxzCtvlSTnwkA9uA1qG0E=; b=qCMoww1F4D0XOUmVnLEOGGiYI1
	xzmByg/fdgt77QDa6twvDBLAtAem1vbderWwxksN5dHyYbE7KlzEtpmBlsh3buP9AoqD6OUHsyDHC
	QzzyIy/xtvj0Yb/tS2PaTSQumy80ut4bKyb0vluufJ4fBRN4mC4yGY/utHtjoPURUXR0sM9bNXZ9u
	Mb07SPVe4TPkmQGh4zjF5pBv1wHpu5YOeGHl0+P9m4p0I3owqvJOamqXbyg5OD48zEDSULlUnwHD6
	+STKA2xGaxOUYtQuJtGvSccYeHSvahvWhOsPiwGdhDYKWRBjL8Tl5pMlDZEMOHhIKuSKwH819hazW
	Vp5N45Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyhU8-000000004xP-0jo2;
	Tue, 25 Aug 2026 03:06:00 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyhU5-000000004wi-3Hfr
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 03:05:59 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-47f71156e1aso1401576f8f.3
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 20:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787627156; x=1788231956; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=AUub4xMeb+brPLQ2Gm1MwKwxzCtvlSTnwkA9uA1qG0E=;
        b=aCy9QTpQSJf4opmR/ik8uXoTHIpoSJJB4D/q0Fm7/sRotRn8DKTVQn0hTUnQSZapm1
         rxnJ3kTVrMT6QOT97/MS6vVZJGXIQkYtrgr2crCiueh5wWh3VkW1MkvoB6jAQ4gIrStn
         1T7H0s/cl9idPCWB97OuZ8SD9rCnWYCWzXcvP4k1QxBk+rE6HgsCNelzqnIEaNU77IfE
         2Lwvo3pOgC+4/hP0ZTAcvXTLnQtG7Rbyqkc6zqmSYS833T0HrxrijYvbDSBaLgu1JJAj
         p533/4yE8bG6rsCSKbIihuyNgPvCN/j5ElB+/ccX0yc6u1nxXBaf4xSyHpWp7huEcTVe
         ArUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787627156; x=1788231956;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AUub4xMeb+brPLQ2Gm1MwKwxzCtvlSTnwkA9uA1qG0E=;
        b=aagg0PHEuaLn5SxnLFX5C9I+wBa3zxWmeSyvYBMnKfHj1Gg7ug7yUfr9SVN2E3Llwn
         4mvXZHIuLRByjh/tJ1hlqD/tDGfrhmP1wbNXCquM4M2u3+HGQYHuTXx0/U38gvyjr1tk
         CYg5BMMRhQdIcPFi0NOvYALdxAZPbPvy+zO5gz+kiO5dAQqRXpR+WEy100dwDtu4DmdW
         QFJ0vcJsafj64JrZEAvEukRFInfrQeRtEHvVjp2/TU2aHzzHwEYwQhVDOGv4eP6/IK0K
         tSCPcGw8Y744RK8pQZk4+Qnb/RYaMNREq5zj01ojucJ+QP4d7mjeK9hJ/nljLYnZRIDd
         ymUQ==
X-Gm-Message-State: AFuF++mFNuDEf4Nqg4Jqgh527Eb3rvXIi2WnIrtIX7mVTCgGKy24ZIfJ
	b0vBNeFllC71WoPRVHoTOp15JqNeu6snLZuuWtfdf//ydLTQOAQFDW3a
X-Gm-Gg: AR+sD11jSlaojHc3ergi9oPx2RB7y3qjN/Fta+KHvcB5S+BJZYd4XJ15N32dbTY7hRw
	B54TsoGbdRtzHTZCom5JluY5/XHgIMhe8LdJPeQ7ggMh0vja+9nWagm7rIJz4npDSktlPgnVejO
	WYpPbDDd7mVtE/wTOjak9khnfNfPA1s1f4WGiE1Ho6JBPV6kZgCdYaBzAcdJ3MjkxX+FeOxsrcX
	tE7WOrXGcxSE+3etUwZd8+pmWGebp3wiZyhBETMPSGbNurUeJ+MCsy84m5tJB6QS6cSdfM1flPR
	ilVhbTZoqJPW9VB2RxtBFncnGjl44Ofl1pQD3qVTLDg9PBdF1FrlJA8OaFEzUbdUtrED4DSKIH8
	4yAGf1a1ydRUCDTkSj/kaCR7nKdehnQ5E6XNlI1/VAXDegszRmXwYV5IWWM3TLO3czDH/o3PS5O
	+C0eBAiI32T9ot1hh2Zu6T+n058vn5RB8DetNhjo/3xAF3kpzMYJ4mSK38zpZ0BEx7ouQV9EoeL
	M2mH/I4tis5W7/30hNtDNg+XspGXix+73lLEQo7/yM7cfNyusWp8Qcy+zUTZE8aMUFksISp5I4N
	saTDb7wYtJifG6WJR84P
X-Received: by 2002:a05:6000:4304:b0:481:51b5:7503 with SMTP id ffacd0b85a97d-482c817add7mr25209656f8f.7.1787627155638;
        Mon, 24 Aug 2026 20:05:55 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482c9c146f1sm9944021f8f.33.2026.08.24.20.05.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 20:05:53 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v3 0/4] state: generic devicetree-overlay based state node injection
Date: Tue, 25 Aug 2026 05:05:44 +0200
Message-ID: <20260825030548.473672-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_200557_910384_909DB77B 
X-CRM114-Status: GOOD (  23.01  )
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
                             [2a00:1450:4864:20:0:0:0:42b listed in]
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
X-Stat-Signature: jymy955fbns7199os6mqty6r9suqz3iq
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::42b:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 2022F201BD1

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
devicetree at postcore_initcall time - guarding against there being no
live devicetree yet, and refreshing the alias cache once applied. Patch
3 builds on both to publish the resolved state description as a UEFI
variable once such a node exists. Patch 4 makes both of those actually
reachable on x86: no code path there ever registered a live devicetree
root pre-boot to begin with, since that registration only existed for
the EFI_STUB entry point barebox uses on other architectures, not the
EFI_PAYLOAD one x86 uses.

Changes since v1:
- patch 1: fixed the compatible string on the synthesized fixed-partitions
  node ("fixed-partitions", not the barebox-internal
  "barebox,fixed-partitions" alias, which external consumers don't
  recognize), fixed a phandle collision where the synthesized node kept
  the phandle it had in barebox's own live devicetree instead of one
  scoped to the target tree, and resolved non-partuuid backends via the
  reproducible name cached at probe time again instead of recomputing it
  against whatever tree is being fixed up.
- patch 2: state_overlay_apply() now guards against there being no live
  devicetree yet and skips cleanly instead of calling into the overlay
  code with a NULL root, and calls of_alias_scan() afterward so the
  overlay's /aliases entry becomes visible the same way a live overlay
  applied via the interactive of_overlay command already does. Also
  selects CONFIG_OFDEVICE, needed for a live devicetree root to exist
  at all on some targets.
- patch 3: publish "BareboxState" under efi_barebox_vendor_guid instead
  of efi_systemd_vendor_guid - it's a barebox-defined variable, not part
  of the systemd-boot loader protocol. state_to_efivars_export() and
  efi_late_init() are both late_efi_initcall, and within one initcall
  level execution follows definition order in the object file, so
  state_to_efivars_export() is now defined after efi_late_init():
  on boards with no state node in their own static devicetree,
  efi_late_init() is what loads and registers the standalone state.dtb,
  and only once that has had a chance to run does state_by_alias() (used
  here instead of open-coding the equivalent of_find_node_by_alias() +
  state_by_node()) have anything to find.
- patch 4 is new: without it, CONFIG_STATE_OVERLAY silently never had a
  devicetree to apply to on x86, and this series' EFI-payload rationale
  didn't hold up for that architecture in practice.
- cover letter: called out BOARD_ARM_GENERIC_DT ("barebox-dt-2nd") as a
  second target that benefits from this alongside the EFI payload, since
  it's in the same "no main dts at build time" situation.

Tested on a Raspberry Pi CM4 natively, and as the EFI payload on a
Jetson Orin NX and under QEMU (x86, with a partuuid-referenced backend).

Chali Anis (4):
  state: make of_state_fixup() usable outside common/state/
  state: add CONFIG_STATE_OVERLAY to inject a state node via devicetree
    overlay
  efi: payload: export resolved state as a BareboxState UEFI variable
  efi: payload: make CONFIG_STATE_OVERLAY (and BareboxState export) work
    on x86

 .../bindings/barebox/barebox,state.rst        |  9 +++
 Documentation/user/state.rst                  | 32 +++++++++
 common/Kconfig                                | 41 +++++++++++
 common/state/Makefile                         | 20 ++++++
 common/state/state.c                          | 72 +++++++++++++++----
 common/state/state_overlay.c                  | 29 ++++++++
 efi/payload/Makefile                          |  1 +
 efi/payload/init.c                            | 69 +++++++++++++++++-
 include/state.h                               |  5 ++
 9 files changed, 263 insertions(+), 15 deletions(-)
 create mode 100644 common/state/state_overlay.c




Delivery-date: Tue, 25 Aug 2026 17:04:35 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyshW-0076Zw-1F
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 17:04:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8678420249D
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 17:04:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CcnwxFMk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TjvgPdRoSwBmtIMGRlYKT3FzVBOEyVtI8wayrP9V+yw=; b=CcnwxFMkv4EGL4KMLQUZTMEQtC
	TJBK75BX8CoMpmTJBpnV+o6KmJ+6Wfsfv8ZBOgp25Yddjd/oJmC+pkIzZQS3LP0lQCpHgNjDLjOvt
	OviCRAEMMeWupQNtnx5nrzG/+bSIHI8cH/ZaOBby+MrIbYmgglKa+FJxFB/zD/yrvoZ3oA9JGM6r4
	vZ/LTe6JJwshqSbegKYQYPm/wFqDLYHP3rfPGXtx8i1dbd5eMGkbWYAn6zCGqL44bJOjiUsbCRDSV
	lN+rMwd7vUjxzbBcpu9oDCeleCmMAYhUFlaBm3+Ton0Tb7mAycNPDKHmCyOyObCCaI4RnCFjXiI0x
	RPjZi5LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wysft-000000010ii-2MPA;
	Tue, 25 Aug 2026 15:02:53 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wysfn-000000010hk-2Ccs
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 15:02:51 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 230C3203FF8;
	Tue, 25 Aug 2026 17:02:41 +0200 (CEST)
Message-ID: <4462a622-9768-41d9-ad5c-2614954a9aa5@pengutronix.de>
Date: Tue, 25 Aug 2026 17:02:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/4] state: generic devicetree-overlay based state node
 injection
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20260825030548.473672-1-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260825030548.473672-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_080247_724142_DC640FBC 
X-CRM114-Status: GOOD (  49.68  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/25/26 5:05 AM, chalianis1@gmail.com wrote: > From:
    Chali Anis <chalianis1@gmail.com> > > Boards that want a "barebox,state"
   node today have exactly one option: > carry it in their own, statically [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Spamd-Result: default: False [-57.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 8678420249D
X-Rspamd-Server: mx1
X-Stat-Signature: prg7zjcemisbw1bj9zxhmed4i1jp1nj8

Hi,

On 8/25/26 5:05 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Boards that want a "barebox,state" node today have exactly one option:
> carry it in their own, statically compiled-in devicetree source. That's
> fine as long as barebox is built per-board with a maintained dts, but it
> is a harder fit for targets that don't have one to begin with: the EFI
> payload, deliberately meant to run unmodified across arbitrary
> x86/arm64 EFI platforms barebox itself knows nothing about at build
> time, and the generic BOARD_ARM_GENERIC_DT ("barebox-dt-2nd") image,
> which picks up whatever devicetree a first-stage bootloader or QEMU
> hands it in r2 at runtime the same way a Kernel would, rather than
> being built against a particular board's dts. Either way there is no
> single "board dts" being compiled for a state node to live in.

We indeed have nothing for the barebox-dt-2nd.img case, but this image
is meant to be used with a *barebox* device tree, not some random DT
that may use bindings barebox isn't compatible with.

This is intentionally narrower than what the kernel supports: The kernel
will keep supporting old bindings, but barebox will only support the
bindings it ships with.

With that background, barebox-dt-2nd.img should never be called with
some random DT that's not matched to what barebox expects and thus we
can expect that if someone wants a barebox state node they would add it.

As for QEMU, barebox already ships state overlays for it, but these are
built-in and applied early-on.

> 
> CONFIG_EXTERNAL_DTS_FRAGMENTS already covers a related need rather well:
> an external build system can append dts fragment files to a board's dts
> source at build time, scoped to specific boards via a per-dts
> preprocessor macro. That remains the more direct choice whenever a
> board's own dts is actually part of the build, and this series doesn't
> propose changing that. It runs into the same limit as static dts
> inclusion for the EFI payload

As mentioned on IRC, this is a limitation that can be fixed and not some
deliberate choice.

> and barebox-dt-2nd cases specifically,

As elaborated above, I have my reservations about starting barebox with
arbitrary DTs.

> though, since it operates at dts-source/build time on a particular
> "main dts" - which neither target, by design, has one of.

As the EFI payload needs the DT for nothing apart of state, we could
also ship an empty DT and make that extensible via fragments.

FYI, there was discussion when fragments were first added if they should
be overlays instead:

https://lore.barebox.org/barebox/CAMHeXxPZ9on3rZu92H1EeNQj79rUFBRbs5Qre=AS3U7_y=UueQ@mail.gmail.com/

> This series instead proposes a devicetree *overlay* (.dtso, applied at
> runtime via CONFIG_STATE_OVERLAY) for that gap. Applied to whichever
> devicetree barebox already ends up live with by boot time - statically
> compiled in, EFI-firmware-derived, passed in from a first-stage
> bootloader, or the EFI payload's own minimal stub root - it only ever
> adds one small node, so it doesn't need a "main dts" to attach to at
> build time, and it doesn't need to know a board's memory map or other
> devicetree content beyond one stable label (or, for EFI, just a
> partition UUID, patch 1) to hook its backend into.

If we were to allow supplying external overlays at build time that are
applied at runtime, why make it specific to only state?

Also to be a truly generic solution, we need some accounting for
multi-image (what if your build produces both a rpi3 and a rpi4 image
and you want different overlays for each?).

> In turn, that also
> means it never competes with an existing devicetree for ownership,
> which the one realistic alternative we considered - loading a full,
> standalone state.dtb at runtime - does run into: barebox_register_of()
> only accepts a new root if none is registered yet or the incoming tree
> is empty,

It only accepting empty state.dtbs is a bug! It's fixed on master now
though (and in the latest release).

> so a real state.dtb collides with whatever root the EFI
> payload already registered at boot and is rejected with -EBUSY, and a
> rejected tree's /aliases entries never reach the global alias cache
> of_alias_get() relies on either.

This argumentation follows from a bug, so it doesn't say anything to the
merit of this new feature.

> Happy to discuss trade-offs here, in particular whether it's worth
> teaching CONFIG_EXTERNAL_DTS_FRAGMENTS (or a variant of it) to handle
> the no-base-dts case instead of adding a separate mechanism - this
> series is meant as a concrete starting point for that conversation, not
> a claim that overlays are the only reasonable answer.

I appreciate you putting in the effort. As mentioned on IRC, I am in
favor of extending fragments as it meshes with what we already have, but
I agree overlays can cover use cases that fragments don't (while
overlays as implemented here can't cover all users that fragments provide).

> Patch 1 makes of_state_fixup() able to resolve a partuuid-referenced,
> non-hardware-backed backend node, and exports it so it can be called
> directly. Patch 2 adds CONFIG_STATE_OVERLAY itself, compiling an
> external .dtso into the barebox binary and applying it to the live
> devicetree at postcore_initcall time - guarding against there being no
> live devicetree yet, and refreshing the alias cache once applied. Patch
> 3 builds on both to publish the resolved state description as a UEFI
> variable once such a node exists. Patch 4 makes both of those actually
> reachable on x86: no code path there ever registered a live devicetree
> root pre-boot to begin with, since that registration only existed for
> the EFI_STUB entry point barebox uses on other architectures, not the
> EFI_PAYLOAD one x86 uses.


No need to recount the patch commit messages here. If at all, just
include a general description in the cover letter. This mail is already
very verbose, which makes following it a bit hard for me.
> 
> Changes since v1:
> - patch 1: fixed the compatible string on the synthesized fixed-partitions
>   node ("fixed-partitions", not the barebox-internal
>   "barebox,fixed-partitions" alias, which external consumers don't
>   recognize), fixed a phandle collision where the synthesized node kept
>   the phandle it had in barebox's own live devicetree instead of one
>   scoped to the target tree, and resolved non-partuuid backends via the
>   reproducible name cached at probe time again instead of recomputing it
>   against whatever tree is being fixed up.
> - patch 2: state_overlay_apply() now guards against there being no live
>   devicetree yet and skips cleanly instead of calling into the overlay
>   code with a NULL root, and calls of_alias_scan() afterward so the
>   overlay's /aliases entry becomes visible the same way a live overlay
>   applied via the interactive of_overlay command already does. Also
>   selects CONFIG_OFDEVICE, needed for a live devicetree root to exist
>   at all on some targets.
> - patch 3: publish "BareboxState" under efi_barebox_vendor_guid instead
>   of efi_systemd_vendor_guid - it's a barebox-defined variable, not part
>   of the systemd-boot loader protocol. state_to_efivars_export() and
>   efi_late_init() are both late_efi_initcall, and within one initcall
>   level execution follows definition order in the object file, so
>   state_to_efivars_export() is now defined after efi_late_init():
>   on boards with no state node in their own static devicetree,
>   efi_late_init() is what loads and registers the standalone state.dtb,
>   and only once that has had a chance to run does state_by_alias() (used
>   here instead of open-coding the equivalent of_find_node_by_alias() +
>   state_by_node()) have anything to find.
> - patch 4 is new: without it, CONFIG_STATE_OVERLAY silently never had a
>   devicetree to apply to on x86, and this series' EFI-payload rationale
>   didn't hold up for that architecture in practice.
> - cover letter: called out BOARD_ARM_GENERIC_DT ("barebox-dt-2nd") as a
>   second target that benefits from this alongside the EFI payload, since
>   it's in the same "no main dts at build time" situation.

I haven't checked out the earlier versions, so I will just gloss over this.

> Tested on a Raspberry Pi CM4 natively, and as the EFI payload on a
> Jetson Orin NX and under QEMU (x86, with a partuuid-referenced backend).

Thanks. This is useful info.

> 
> Chali Anis (4):
>   state: make of_state_fixup() usable outside common/state/
>   state: add CONFIG_STATE_OVERLAY to inject a state node via devicetree
>     overlay
>   efi: payload: export resolved state as a BareboxState UEFI variable
>   efi: payload: make CONFIG_STATE_OVERLAY (and BareboxState export) work
>     on x86
> 
>  .../bindings/barebox/barebox,state.rst        |  9 +++
>  Documentation/user/state.rst                  | 32 +++++++++
>  common/Kconfig                                | 41 +++++++++++
>  common/state/Makefile                         | 20 ++++++
>  common/state/state.c                          | 72 +++++++++++++++----
>  common/state/state_overlay.c                  | 29 ++++++++
>  efi/payload/Makefile                          |  1 +
>  efi/payload/init.c                            | 69 +++++++++++++++++-
>  include/state.h                               |  5 ++
>  9 files changed, 263 insertions(+), 15 deletions(-)
>  create mode 100644 common/state/state_overlay.c
> 
> 


Cheers,
Ahmad



-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




Delivery-date: Tue, 25 Aug 2026 18:59:10 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyuUP-0078WU-1m
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 18:59:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B8901203FF6
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 18:59:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UHKzoz69;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uf6zmsmNq/1WBGmXzoaOfC8Dj6FGkoczjsgJwNVSLp8=; b=UHKzoz69fICw7kM5iRlkj6k71X
	JvBahMn3PEHDtnm/2OYQSIiVg8lEZdRBvX7SN3HGq87mkqT6XroiB1LYlP0xnh/63XCgfZR8197nK
	2HLtJ9vIReDEdDQM5Us2Pwho9SrV7ibDwqPghSGn5nhZ3TC+ARd1PVlJyi8YuoIUnhozgqYQUCa2Z
	hLPw+E38sHG1xwf+FWkF9pQpNYoLRRunpcmeCymZDCnjJ0I5MQ76mH5zIZntcg0l6KwAuqsPFBPL8
	EtqHoVUEo8YOiIzIBE2ToBv6FdIsnagd4Wlg7pXtkmWZ8fyDZOCvP6u4FolF9bqTV7n1KuqvF1o6s
	sNXyADaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyuSm-00000001AEC-18Ss;
	Tue, 25 Aug 2026 16:57:28 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyuSi-00000001ADP-1jhR
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 16:57:26 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 91742200F47;
	Tue, 25 Aug 2026 18:57:17 +0200 (CEST)
Message-ID: <f71d0ca7-0339-412b-a932-7070feefe28d@pengutronix.de>
Date: Tue, 25 Aug 2026 18:57:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] state: add CONFIG_STATE_OVERLAY to inject a state
 node via devicetree overlay
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20260825030548.473672-1-chalianis1@gmail.com>
 <20260825030548.473672-3-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260825030548.473672-3-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_095724_618283_0A6960A5 
X-CRM114-Status: GOOD (  45.35  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/25/26 5:05 AM, chalianis1@gmail.com wrote: > From:
    Chali Anis <chalianis1@gmail.com> > > Until now, a "barebox,state" node had
    to be part of a board's own, > statically compiled-in devicetree sou [...]
    
 
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
	BAYES_HAM(-3.00)[100.00%];
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
X-Rspamd-Queue-Id: B8901203FF6
X-Rspamd-Server: mx1
X-Stat-Signature: 3hdwy487mh134mje8yobqy79tz1795pm

Hi,

On 8/25/26 5:05 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Until now, a "barebox,state" node had to be part of a board's own,
> statically compiled-in devicetree source. That's a hard requirement
> for external build systems (Yocto, buildroot, ...) that want to add a
> state layout without carrying a board-specific dts patch.

or externally in the ESP.

> Add CONFIG_STATE_OVERLAY, which compiles an externally supplied
> devicetree overlay (.dtso, pointed to by CONFIG_STATE_OVERLAY_DTS)

Why two options?

> into the barebox binary and applies it to barebox's own live
> devicetree at postcore_initcall time, mirroring how
> CONFIG_EXTERNAL_DTS_FRAGMENTS already lets an external build system
> inject plain dts fragments. Once applied, the resulting node is
> picked up by the regular state probing like any statically defined
> one. This selects CONFIG_OF_OVERLAY_LIVE, required so &label
> references in the overlay (e.g. to an existing backend partition)
> resolve against the base devicetree's __symbols__ node.

The cover letter mentions QEMU and board-dt-2nd as benefiting from this,
but OF_OVERLAY_LIVE helps neither of them as the DT comes from outside
barebox.

> Not every target has a live devicetree by postcore_initcall time,
> though, so guard against that explicitly and skip cleanly rather than
> calling into the overlay code with a NULL root. Once applied, call
> of_alias_scan() so the overlay's /aliases entry becomes visible the
> same way a live overlay applied via the interactive of_overlay command
> already does. Also select CONFIG_OFDEVICE: registering a live
> devicetree root at all, on targets with no firmware-supplied one of
> their own, depends on it.

OFDEVICE is not really meant to be selected by generic features, rather
generic features should depend on it if they need it. Architectures /
Platforms are wgi should select OFDEVICE if they want to probe OF devices.

> 
> Assisted-by: Claude Sonnet 5
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  .../bindings/barebox/barebox,state.rst        |  9 ++++
>  Documentation/user/state.rst                  | 32 +++++++++++++++
>  common/Kconfig                                | 41 +++++++++++++++++++
>  common/state/Makefile                         | 20 +++++++++
>  common/state/state_overlay.c                  | 29 +++++++++++++
>  5 files changed, 131 insertions(+)
>  create mode 100644 common/state/state_overlay.c
> 
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> index 390e148a2879..36b1d9acb038 100644
> --- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
> +++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> @@ -23,6 +23,15 @@ Required Properties
>  * additionally a *state* node must have an alias in the ``/aliases`` node pointing
>    to it.
>  
> +.. note:: A *state* node does not have to be part of the board's static
> +   devicetree source. It can instead be added at runtime via a devicetree
> +   overlay, see :ref:`CONFIG_STATE_OVERLAY <state_overlay>`. In that case,
> +   the node referenced by ``backend`` must still exist in the board's own
> +   devicetree source under a stable, well-known *label* (not merely an
> +   ``/aliases`` entry), because overlay phandle resolution works by
> +   resolving ``&label`` references against the base devicetree's
> +   ``__symbols__`` node, which requires ``CONFIG_OF_OVERLAY_LIVE``.

As mentioned above, this is not enough. If it's an external DT,
CONFIG_OF_OVERLAY_LIVE won't help.

> +
>  .. _barebox,state_magic:
>  
>  The ``magic`` property is a unique number which identifies the *state* variable
> diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
> index d97ba4e9f157..a03670dfa68e 100644
> --- a/Documentation/user/state.rst
> +++ b/Documentation/user/state.rst
> @@ -759,6 +759,38 @@ content, its backend-type and *state* variable layout.
>  		};
>  	};
>  
> +.. _state_overlay:
> +
> +Devicetree Overlay based State Node
> +------------------------------------
> +
> +Normally the *state* node is part of the board's own, statically compiled-in
> +devicetree source. ``CONFIG_STATE_OVERLAY`` allows a *state* node to instead
> +be added at runtime, via a devicetree overlay that is compiled into the
> +barebox binary and applied to barebox's own live devicetree during boot.
> +Once applied, the resulting node is picked up by the regular *state* probing
> +just like a statically defined one, and is fixed up into whatever devicetree
> +barebox eventually boots (internal or external), without requiring any
> +board-specific code.
> +
> +This is primarily meant for use by an external build system (Yocto,
> +buildroot, ...) that wants to inject a state layout without patching the
> +board's dts: set ``CONFIG_STATE_OVERLAY=y`` and point
> +``CONFIG_STATE_OVERLAY_DTS`` at the ``.dtso`` overlay file's path, similar to
> +how ``CONFIG_EXTERNAL_DTS_FRAGMENTS`` works for regular dts fragments. As
> +with that option, it's not intended to be set in barebox's own defconfig
> +files.
> +
> +Because the overlay is applied to barebox's *live* devicetree, its
> +``backend`` phandle can only resolve references to nodes that already exist
> +in the board's own devicetree source, and only if that devicetree carries a
> +``__symbols__`` node - i.e. ``CONFIG_OF_OVERLAY_LIVE`` must be enabled
> +(``CONFIG_STATE_OVERLAY`` selects it automatically). This means the
> +referenced backend node needs a stable, well-known *label* defined in the
> +board's own devicetree source, not merely an ``/aliases`` entry - the
> +overlay itself then only needs to add the *state* node and its alias,
> +referencing that existing label.

Thanks for including docs.

> +
>  Frontend
>  --------
>  
> diff --git a/common/Kconfig b/common/Kconfig
> index 85df7f7daec6..abe7d100150c 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1351,6 +1351,47 @@ config STATE_BACKWARD_COMPATIBLE
>  	  compatibility with the state framework of barebox <= v2016.08.0. Newer
>  	  revisions expect an additional 'meta header' and fail otherwise.
>  
> +config STATE_OVERLAY
> +	bool "apply an external devicetree overlay to add a state node"
> +	depends on STATE
> +	select OF_OVERLAY
> +	select OF_OVERLAY_LIVE
> +	select OFDEVICE
> +	help
> +	  Compile an externally supplied devicetree overlay (.dtso) into the
> +	  barebox binary and apply it to barebox's own live devicetree at
> +	  boot, in order to add a "barebox,state" node (and its /aliases
> +	  entry) that isn't part of the board's own compiled-in devicetree.
> +
> +	  This selects CONFIG_OF_OVERLAY_LIVE, required so the board's own
> +	  built-in devicetree carries a __symbols__ node, needed to resolve
> +	  &label references from the overlay back into the base devicetree
> +	  (e.g. a reference to a backend partition already defined in the
> +	  board's static dts).
> +
> +	  This also selects CONFIG_OFDEVICE: registering a live devicetree
> +	  root at all, on targets with no firmware-supplied one of their
> +	  own, depends on it.
> +
> +	  See CONFIG_STATE_OVERLAY_DTS to specify the overlay source file.

As mentioned above, unclear to me why we need two options.

> +
> +config STATE_OVERLAY_DTS
> +	string "external state overlay .dtso file"
> +	depends on STATE_OVERLAY
> +	help
> +	  Path to a devicetree overlay source file (.dtso) that will be
> +	  compiled and linked into the barebox image and applied to the
> +	  live devicetree at boot to add a "barebox,state" node.
> +
> +	  As with CONFIG_EXTERNAL_DTS_FRAGMENTS, this is not intended to be
> +	  put into Barebox's defconfig files. It's an external build
> +	  system's job, like Yocto or buildroot, to inject a state overlay
> +	  file from outside the Barebox source tree.
> +
> +	  Any backend node referenced from the overlay via &label must
> +	  already exist in the board's own devicetree source, under a
> +	  stable, well-known label (not merely an /aliases entry).



> +
>  config BOOTCHOOSER
>  	bool "bootchooser infrastructure"
>  	select BOOT
> diff --git a/common/state/Makefile b/common/state/Makefile
> index 93215dd06921..a906c66a0747 100644
> --- a/common/state/Makefile
> +++ b/common/state/Makefile
> @@ -7,3 +7,23 @@ obj-y += backend_format_raw.o
>  obj-y += backend_storage.o
>  obj-y += backend_bucket_direct.o
>  obj-$(CONFIG_MTD) += backend_bucket_circular.o
> +
> +# External state devicetree overlay
> +# ---------------------------------------------------------------------------
> +state-overlay-dts := $(call remove_quotes,$(CONFIG_STATE_OVERLAY_DTS))
> +
> +ifdef CONFIG_STATE_OVERLAY
> +ifeq ($(state-overlay-dts),)
> +$(error CONFIG_STATE_OVERLAY is enabled but CONFIG_STATE_OVERLAY_DTS is empty)
> +endif
> +ifeq ($(wildcard $(state-overlay-dts)),)
> +$(error CONFIG_STATE_OVERLAY_DTS="$(state-overlay-dts)" does not exist)
> +endif
> +
> +obj-y += state_overlay.o state-overlay.dtbo.o
> +
> +$(obj)/state-overlay.dtbo: $(state-overlay-dts) $(DTC) FORCE
> +	$(call if_changed_dep,dtc)
> +endif
> +
> +clean-files += *.dtbo *.dtbo.S .*.dtso
> diff --git a/common/state/state_overlay.c b/common/state/state_overlay.c
> new file mode 100644
> index 000000000000..b3f68eaea4b2
> --- /dev/null
> +++ b/common/state/state_overlay.c
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#include <common.h>
> +#include <init.h>
> +#include <of.h>
> +#include <linux/err.h>
> +
> +extern char __dtbo_state_overlay_start[];
> +
> +static int state_overlay_apply(void)
> +{
> +	struct device_node *root = of_get_root_node();
> +	int ret;
> +
> +	if (!root) {
> +		pr_err("no live devicetree yet, skipping state overlay\n");
> +		return 0;
> +	}
> +
> +	ret = of_overlay_apply_dtbo(root, __dtbo_state_overlay_start);
> +	if (ret) {
> +		pr_err("failed to apply state overlay: %pe\n", ERR_PTR(ret));
> +		return ret;
> +	}
> +
> +	of_alias_scan();
> +
> +	return 0;
> +}
> +postcore_initcall(state_overlay_apply);

This can be used to apply arbitrary overlay content, so the option name
should probably not be state specific.

Cheers,
Ahmad

> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




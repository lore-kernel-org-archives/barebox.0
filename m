Delivery-date: Tue, 25 Aug 2026 05:07:19 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyhVO-006vaT-1r
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 05:07:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C98552018C1
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 05:07:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YC1tougY;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=HmRKVF3Z;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MwOy7sOIcGodHeCm4i0QOXYM6uSRvH9DeW9vgnSDYIY=; b=YC1tougYniGEM9QbCZ4nh2lsto
	SLfLi3iysiC9MD/bHBnx0BYQV9QajSaJ668vd/eIUR1nD44r8Zil8GBlHP5WLHl20NlvbzLICvLLo
	HOq2L3nenkaXJTgb1bYod2h0fkTmiAHurceWR28dD53Wn5RzMFhgjc/vSCBz3cYtGttDSVv8I2Z89
	ZMnzwvSfaZPutKZIEjeypjTaMMKlh40lEatvlBPFDD6P1GYoR3Q/PhN7t0iiTBzVdpneWDI/JglBC
	xPwqWbxyhJz7sCoC5wmWdku+ka1vayJIYpIxYGlHPoF5T0i0RdI+IUGDlpfbesw+vpiyjTZ3UXQvJ
	ZyADnzZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyhUE-000000004zP-46QU;
	Tue, 25 Aug 2026 03:06:07 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyhUB-000000004y3-48ma
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 03:06:05 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-493b966dd74so19322445e9.3
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 20:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787627162; x=1788231962; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MwOy7sOIcGodHeCm4i0QOXYM6uSRvH9DeW9vgnSDYIY=;
        b=HmRKVF3ZuanMJzwbaPZduONBhuqUDfufkqTqybBMvh5QYvQRnQHPkytGAgyN53N6qx
         kIVqmO20oiTU4eppPUgCeroZy/tyPClnqm5v6IrbB4V03x6o5odd8Ac9p5RR4mzParrQ
         bNUIE6kQcT7aVFBGccnSVFrX9TF33anKOAFdAqNS8An2DX4HRF4jL1gTPDnzK5iA4mwj
         dZvQmeUf11wFY4/2VGco+4evf7kEhgbf5F2yR2+HTny6pYyfueEI5zFVSrrDnNbhK9BV
         c6H+mRl0VdCt+9/hQLb3bjoqVBLNxVJXVZl7op+QGDTk+j99SsoUxYe1hMwwOgl2uJT8
         UVtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787627162; x=1788231962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=MwOy7sOIcGodHeCm4i0QOXYM6uSRvH9DeW9vgnSDYIY=;
        b=iyy1pInpSni77B6ro02fohfxkBcWdEDS20IPt2rvICqdnx0wrQMZerVS/mr7a8I1T7
         O9a3sLPXxBzbdKX+Dtm/Of0BiRKPbZN/3aciXEwQfBmcYFvfrXvNRm/TQv6yQlDds0Iy
         BkagUv40P1FBsTbCOe7gR+SvP+ZYkN7lQVlQMk0Pw1XKejWmK2bzmoC6qeuhgxNH557P
         ud046Ssck0CCEqvW9fOnARgNuCI0HnoFYAylRZ2k9A6EXj8+t2IYn7x8Yc0xfmUvcLJH
         TMxZE5s6pgZkZ6P5fheMXxCpjs3m3qYgBeNc20m9TbFD6dfU2/L9XrWm40JEKsSEAWl9
         Cv6w==
X-Gm-Message-State: AFuF++k1v5srWnpUvFuoEf8MFwdjaZerb1QId/xQJENQAmZRjvVS6BU/
	WJTwiWo1ntAL4wpZoq9h7FQ9h54M3thXPn4rStKdffjUkT+Zq8/oglyu
X-Gm-Gg: AR+sD12htM1eNkSPoeH09TvEqYWkRYJoP+pH0DO+TIWf2QjB+PTfr9/cHO3bD0TVaKm
	SpxLAFB2j9IbpFc5DgEp9SeOeFzeZJOwY4cIIAyS2aDBd9fa/WqYsV6ZJiuL9i4NcsTX4/9phOc
	05Wov+6eiQaWdJO7wZoNMNUif/1UVN0ylKXYPMLYneugl9/nnx4SjsbOhaK2/j3lrGl4UClA99g
	qbzOOt/1yD2qeEbBpCJE0nljF8LcMwFJs0TZJ14Gu5oFu9QK4jQhdrRh9zlRBAdwtVMfLHsL99w
	ZtSyORxXGytwivWctqacqexY1U61oUXa6PKQyQRItOR28iLzUe1+PwfsqPGq+ypO4yIj7XWFZlW
	JgzJzERSmVntZO+2vrQwZrdavlDFQv1KQ/zgnQOE9PPPZIDQQz9BFxYbam8K8IzcjB998geOCao
	EUK8NfrbLCQZs8UmKORxPjzcna6ZVZcsfHrF1kXuQnnt7kLihUxlGwwzKAziVASlQYwvHc5O+aP
	imLFcGztBHgkbsfp9hwq5ywsrqzmOwyHNFLibqoK+MlPthWlV9/uWjIzlaKT6n/soKQwZ1vHVri
	+daHgzwTVQ==
X-Received: by 2002:a05:600c:64c6:b0:498:1595:be7b with SMTP id 5b1f17b1804b1-499c19c707amr266158465e9.4.1787627161983;
        Mon, 24 Aug 2026 20:06:01 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482c9c146f1sm9944021f8f.33.2026.08.24.20.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 20:06:00 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v3 2/4] state: add CONFIG_STATE_OVERLAY to inject a state node via devicetree overlay
Date: Tue, 25 Aug 2026 05:05:46 +0200
Message-ID: <20260825030548.473672-3-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260825030548.473672-1-chalianis1@gmail.com>
References: <20260825030548.473672-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_200604_081001_C233A27E 
X-CRM114-Status: GOOD (  24.83  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Chali Anis Until now, a "barebox,state" node had to
   be part of a board's own, statically compiled-in devicetree source. That's
    a hard requirement for external build systems (Yocto, buildroot, ...) that
    want to a [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:336 listed in]
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
X-Stat-Signature: 8hipgw3nhc7puof97aimzhna9rkwu6ef
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::336:received];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: C98552018C1

From: Chali Anis <chalianis1@gmail.com>

Until now, a "barebox,state" node had to be part of a board's own,
statically compiled-in devicetree source. That's a hard requirement
for external build systems (Yocto, buildroot, ...) that want to add a
state layout without carrying a board-specific dts patch.

Add CONFIG_STATE_OVERLAY, which compiles an externally supplied
devicetree overlay (.dtso, pointed to by CONFIG_STATE_OVERLAY_DTS)
into the barebox binary and applies it to barebox's own live
devicetree at postcore_initcall time, mirroring how
CONFIG_EXTERNAL_DTS_FRAGMENTS already lets an external build system
inject plain dts fragments. Once applied, the resulting node is
picked up by the regular state probing like any statically defined
one. This selects CONFIG_OF_OVERLAY_LIVE, required so &label
references in the overlay (e.g. to an existing backend partition)
resolve against the base devicetree's __symbols__ node.

Not every target has a live devicetree by postcore_initcall time,
though, so guard against that explicitly and skip cleanly rather than
calling into the overlay code with a NULL root. Once applied, call
of_alias_scan() so the overlay's /aliases entry becomes visible the
same way a live overlay applied via the interactive of_overlay command
already does. Also select CONFIG_OFDEVICE: registering a live
devicetree root at all, on targets with no firmware-supplied one of
their own, depends on it.

Assisted-by: Claude Sonnet 5
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 .../bindings/barebox/barebox,state.rst        |  9 ++++
 Documentation/user/state.rst                  | 32 +++++++++++++++
 common/Kconfig                                | 41 +++++++++++++++++++
 common/state/Makefile                         | 20 +++++++++
 common/state/state_overlay.c                  | 29 +++++++++++++
 5 files changed, 131 insertions(+)
 create mode 100644 common/state/state_overlay.c

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index 390e148a2879..36b1d9acb038 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -23,6 +23,15 @@ Required Properties
 * additionally a *state* node must have an alias in the ``/aliases`` node pointing
   to it.
 
+.. note:: A *state* node does not have to be part of the board's static
+   devicetree source. It can instead be added at runtime via a devicetree
+   overlay, see :ref:`CONFIG_STATE_OVERLAY <state_overlay>`. In that case,
+   the node referenced by ``backend`` must still exist in the board's own
+   devicetree source under a stable, well-known *label* (not merely an
+   ``/aliases`` entry), because overlay phandle resolution works by
+   resolving ``&label`` references against the base devicetree's
+   ``__symbols__`` node, which requires ``CONFIG_OF_OVERLAY_LIVE``.
+
 .. _barebox,state_magic:
 
 The ``magic`` property is a unique number which identifies the *state* variable
diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index d97ba4e9f157..a03670dfa68e 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -759,6 +759,38 @@ content, its backend-type and *state* variable layout.
 		};
 	};
 
+.. _state_overlay:
+
+Devicetree Overlay based State Node
+------------------------------------
+
+Normally the *state* node is part of the board's own, statically compiled-in
+devicetree source. ``CONFIG_STATE_OVERLAY`` allows a *state* node to instead
+be added at runtime, via a devicetree overlay that is compiled into the
+barebox binary and applied to barebox's own live devicetree during boot.
+Once applied, the resulting node is picked up by the regular *state* probing
+just like a statically defined one, and is fixed up into whatever devicetree
+barebox eventually boots (internal or external), without requiring any
+board-specific code.
+
+This is primarily meant for use by an external build system (Yocto,
+buildroot, ...) that wants to inject a state layout without patching the
+board's dts: set ``CONFIG_STATE_OVERLAY=y`` and point
+``CONFIG_STATE_OVERLAY_DTS`` at the ``.dtso`` overlay file's path, similar to
+how ``CONFIG_EXTERNAL_DTS_FRAGMENTS`` works for regular dts fragments. As
+with that option, it's not intended to be set in barebox's own defconfig
+files.
+
+Because the overlay is applied to barebox's *live* devicetree, its
+``backend`` phandle can only resolve references to nodes that already exist
+in the board's own devicetree source, and only if that devicetree carries a
+``__symbols__`` node - i.e. ``CONFIG_OF_OVERLAY_LIVE`` must be enabled
+(``CONFIG_STATE_OVERLAY`` selects it automatically). This means the
+referenced backend node needs a stable, well-known *label* defined in the
+board's own devicetree source, not merely an ``/aliases`` entry - the
+overlay itself then only needs to add the *state* node and its alias,
+referencing that existing label.
+
 Frontend
 --------
 
diff --git a/common/Kconfig b/common/Kconfig
index 85df7f7daec6..abe7d100150c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1351,6 +1351,47 @@ config STATE_BACKWARD_COMPATIBLE
 	  compatibility with the state framework of barebox <= v2016.08.0. Newer
 	  revisions expect an additional 'meta header' and fail otherwise.
 
+config STATE_OVERLAY
+	bool "apply an external devicetree overlay to add a state node"
+	depends on STATE
+	select OF_OVERLAY
+	select OF_OVERLAY_LIVE
+	select OFDEVICE
+	help
+	  Compile an externally supplied devicetree overlay (.dtso) into the
+	  barebox binary and apply it to barebox's own live devicetree at
+	  boot, in order to add a "barebox,state" node (and its /aliases
+	  entry) that isn't part of the board's own compiled-in devicetree.
+
+	  This selects CONFIG_OF_OVERLAY_LIVE, required so the board's own
+	  built-in devicetree carries a __symbols__ node, needed to resolve
+	  &label references from the overlay back into the base devicetree
+	  (e.g. a reference to a backend partition already defined in the
+	  board's static dts).
+
+	  This also selects CONFIG_OFDEVICE: registering a live devicetree
+	  root at all, on targets with no firmware-supplied one of their
+	  own, depends on it.
+
+	  See CONFIG_STATE_OVERLAY_DTS to specify the overlay source file.
+
+config STATE_OVERLAY_DTS
+	string "external state overlay .dtso file"
+	depends on STATE_OVERLAY
+	help
+	  Path to a devicetree overlay source file (.dtso) that will be
+	  compiled and linked into the barebox image and applied to the
+	  live devicetree at boot to add a "barebox,state" node.
+
+	  As with CONFIG_EXTERNAL_DTS_FRAGMENTS, this is not intended to be
+	  put into Barebox's defconfig files. It's an external build
+	  system's job, like Yocto or buildroot, to inject a state overlay
+	  file from outside the Barebox source tree.
+
+	  Any backend node referenced from the overlay via &label must
+	  already exist in the board's own devicetree source, under a
+	  stable, well-known label (not merely an /aliases entry).
+
 config BOOTCHOOSER
 	bool "bootchooser infrastructure"
 	select BOOT
diff --git a/common/state/Makefile b/common/state/Makefile
index 93215dd06921..a906c66a0747 100644
--- a/common/state/Makefile
+++ b/common/state/Makefile
@@ -7,3 +7,23 @@ obj-y += backend_format_raw.o
 obj-y += backend_storage.o
 obj-y += backend_bucket_direct.o
 obj-$(CONFIG_MTD) += backend_bucket_circular.o
+
+# External state devicetree overlay
+# ---------------------------------------------------------------------------
+state-overlay-dts := $(call remove_quotes,$(CONFIG_STATE_OVERLAY_DTS))
+
+ifdef CONFIG_STATE_OVERLAY
+ifeq ($(state-overlay-dts),)
+$(error CONFIG_STATE_OVERLAY is enabled but CONFIG_STATE_OVERLAY_DTS is empty)
+endif
+ifeq ($(wildcard $(state-overlay-dts)),)
+$(error CONFIG_STATE_OVERLAY_DTS="$(state-overlay-dts)" does not exist)
+endif
+
+obj-y += state_overlay.o state-overlay.dtbo.o
+
+$(obj)/state-overlay.dtbo: $(state-overlay-dts) $(DTC) FORCE
+	$(call if_changed_dep,dtc)
+endif
+
+clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/common/state/state_overlay.c b/common/state/state_overlay.c
new file mode 100644
index 000000000000..b3f68eaea4b2
--- /dev/null
+++ b/common/state/state_overlay.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <init.h>
+#include <of.h>
+#include <linux/err.h>
+
+extern char __dtbo_state_overlay_start[];
+
+static int state_overlay_apply(void)
+{
+	struct device_node *root = of_get_root_node();
+	int ret;
+
+	if (!root) {
+		pr_err("no live devicetree yet, skipping state overlay\n");
+		return 0;
+	}
+
+	ret = of_overlay_apply_dtbo(root, __dtbo_state_overlay_start);
+	if (ret) {
+		pr_err("failed to apply state overlay: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+
+	of_alias_scan();
+
+	return 0;
+}
+postcore_initcall(state_overlay_apply);



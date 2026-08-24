Delivery-date: Tue, 25 Aug 2026 01:54:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyeUq-006sQQ-0h
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 01:54:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6A2282006E0
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 01:54:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Jc3gkipt;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=lEeVioJU;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CmCRmNhpK0S5ySZlQDMJvVcUaDMLQiZgacZNXl3u64s=; b=Jc3gkiptSBQDpMWEySzWgHS2WU
	xM0yhNDyE5RHzP6EXCTzgl5HW6E2AFfecK/Xr1iZJP8GOCZ1JXZYLxs6/MwRUV2VXahpHXR1Ukdny
	yezUXVdpDdAZdXgzCjqjmygTUTq2bj/3vdOcKjKavitcdq+LYuI+iELZyf0a+4dqmtLtLUkaVUEH3
	+ETTFSvkNwdY5HDMWHqHSoQ8VDcjDx3mFgKiz8iaGOIH/k90+83EJtV1riL7H84MjZstoQqF969jo
	IfPeeIqQXUQn8dI3skG+hnHB6clfheBRAI/cQNmy4GV9Vyf3NWfcYcBNiMilh5l49nwNkQhuL1/nN
	FiWFW8mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyeTU-0000000HVWM-0JT4;
	Mon, 24 Aug 2026 23:53:08 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyeTR-0000000HVUc-1zAa
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 23:53:06 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-47f92e3c14bso3047504f8f.0
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 16:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787615584; x=1788220384; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CmCRmNhpK0S5ySZlQDMJvVcUaDMLQiZgacZNXl3u64s=;
        b=lEeVioJU4evrFsnVEZuMDJbHX7SB1dFUyAmyo+WS4sVZa6H/ReRxmumICK4xPL0Qzz
         3WGwZ1zd3ww+6bsmx/1JZZ9EjKXd2EZVcOc0TUV7wDCzEQ3lLcpLbm2z+ZCc9LiZyYT/
         KJrByAK20thfgng4DpS1DYwNIxXmT0+hbiDKr2n0eE3GFSw5Ocl2Q9wcUx0nMRQ+8+qE
         AGw5xGtAUAxFULcFhep6ueR3H1zkcXKfyFh2fsQE5yvCEb50dO+Izbys8QzwbJlsbFkK
         snROf54ALo20HBBxrXgndqSJT1Y52YgY0YHvV4lbO36JMTM+I3DSZ/G+A6HS3YM54ZUH
         waCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787615584; x=1788220384;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=CmCRmNhpK0S5ySZlQDMJvVcUaDMLQiZgacZNXl3u64s=;
        b=ENlQngAr5BkO7HlR23XhCiW4mharDDzXMufPqy7Dew+e4QWseIXFo6GWtC5cOPxa0e
         3Cis7143SJz3KHgHEYo2uVis6fThGRRtkH0yslyS9Va8J92m4UMBNS46RYnYZAsAfzvE
         KVNCIsDTB5eNz0Rj8cfUo0NSelnilkOAyqPWzGk7OLKfGdMYRJD8CWDERFpg35U0KFLQ
         0uhcz5MD62lGwzndEmoQRpgbR41ylZJ4CPtEm1yEfX2F7ayTLMB0dHL8VKdC6L7ff72O
         F6yJTrdJMve/JRDc4rXkVZ8pmtZDqtmp6OxPSeJ0KK9lcul0MkfqzuO+BrrqlY4pL9Ft
         tYuw==
X-Gm-Message-State: AFuF++n6IC284zAIKQitLGGcilnouTnTUCZpoSz/Aq+zYEtc42DPph6P
	CJ9UN2YB9FPjtKGAJyQ7r3/D4n/ykNK7Y2cMcWuw6bUtYK2ijXQ99Sv8
X-Gm-Gg: AR+sD13wM0DFmHlPTZwYlwBeEpa46/gRRi8NVAAAdYX4FaSNTWnuN+FGbdO6390bIL+
	z038kEub/xwMiQFzXDTmq340QOTKHYTmnMPP2SL0q9Jdlo7MNbAvcdth/6cQpeFkMiQS0Q1cg6X
	v9jOa1BSu/F7X1+2Z3sUP9c3CKgaSCU/oLM7bnEthCGbdInHZLsfUtONfVX+ExMh1zFVmKo7UtF
	yApIqFuxsBwrkptBzRfXk4dVFYRJgJFEugbMe/vMh8If2BkyVMiFS0HjF6I7Vb7A/YWtJaSR3EZ
	O8u6y0h2eJx1mgx4PS+yFNUpZgkWtE9nqOkGHxKkpzJavmUINoWoJKWhGT+WOVhP7lThBOwTqLZ
	tJ4cr5PSfvw8q9L6H/CVhLjwkSRWVFgTTSa88FpnmMypo8WpYaeWv617rk7zOZ8Ij3eevZL1pVc
	S1sAFG9+QeYdsh/bWy0pyuXSUtuUWP0CpIOAWJyYTylz6BNom42+HzDsBl9c81k/m8Li2cSzzYL
	5QK4KBfOmrVqqQXJ1B0K2NfhDQnJJK5GnIVCa9ry4cX+9K4Hbs8uyzgEfwrIxpH83F1rGOS9tZv
	1clSLILRJw==
X-Received: by 2002:a05:6000:2c12:b0:47f:e770:13e0 with SMTP id ffacd0b85a97d-482d9ee2962mr2520250f8f.7.1787615583528;
        Mon, 24 Aug 2026 16:53:03 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482c9b69a60sm9845153f8f.1.2026.08.24.16.53.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 16:53:01 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v2 2/3] state: add CONFIG_STATE_OVERLAY to inject a state node via devicetree overlay
Date: Tue, 25 Aug 2026 01:52:49 +0200
Message-ID: <20260824235250.94681-3-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260824235250.94681-1-chalianis1@gmail.com>
References: <20260824235250.94681-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_165305_777427_F66AFD16 
X-CRM114-Status: GOOD (  21.55  )
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
                             [2a00:1450:4864:20:0:0:0:42c listed in]
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
X-Stat-Signature: 4yo7r67x7ybmc91mhczy87tjdsn8y8nk
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
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
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::42c:received];
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
X-Rspamd-Queue-Id: 6A2282006E0

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

Assisted-by: Claude Sonnet 5
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 .../bindings/barebox/barebox,state.rst        |  9 +++++
 Documentation/user/state.rst                  | 32 +++++++++++++++++
 common/Kconfig                                | 36 +++++++++++++++++++
 common/state/Makefile                         | 20 +++++++++++
 common/state/state_overlay.c                  | 19 ++++++++++
 5 files changed, 116 insertions(+)
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
index 85df7f7daec6..d557709313c7 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1351,6 +1351,42 @@ config STATE_BACKWARD_COMPATIBLE
 	  compatibility with the state framework of barebox <= v2016.08.0. Newer
 	  revisions expect an additional 'meta header' and fail otherwise.
 
+config STATE_OVERLAY
+	bool "apply an external devicetree overlay to add a state node"
+	depends on STATE
+	select OF_OVERLAY
+	select OF_OVERLAY_LIVE
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
index 000000000000..0c5eef830a16
--- /dev/null
+++ b/common/state/state_overlay.c
@@ -0,0 +1,19 @@
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
+	int ret;
+
+	ret = of_overlay_apply_dtbo(of_get_root_node(), __dtbo_state_overlay_start);
+	if (ret)
+		pr_err("failed to apply state overlay: %pe\n", ERR_PTR(ret));
+
+	return ret;
+}
+postcore_initcall(state_overlay_apply);



Delivery-date: Fri, 20 Feb 2026 09:53:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vtMG7-003i9v-1T
	for lore@lore.pengutronix.de;
	Fri, 20 Feb 2026 09:53:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vtMG7-000235-L2
	for lore@pengutronix.de; Fri, 20 Feb 2026 09:53:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usbHhzKD+ctLRvBsPyKXj8PfXwYWZ4VLiYHuSyCl9qE=; b=y1TZ0zY8FV8+5o
	g4TEjPg+uIbKputDpoPxAK1Ge0DgRE9Cp1NEFg7/96XXCSd463706HLWABh/94CMk9bSNL1DjgD7I
	8JMhZ2vEgRqbz5jtUkUkZt7pG1/xnHsI/KQNIgQVZY8V6FNbuUp3YjoXKM7o+8iS4fX2pb7uqY7Oc
	yEDAD50DCrU+JAHxtjAIacxVyRaEFkKiD7P04jbEVgMWJxr+bx3bp+djkhXKem2sA9x92ow/IGpwz
	5r/ySqLPcdHbM9cjdupim1TjEDBtEjFNMQEu2iBYl+e1Rt65YAwa4DeNzgFPTotj1Fv3DaElf1rlO
	PEdzf5XFciCdBFRfDaUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtMFU-0000000DRjc-0Zz1;
	Fri, 20 Feb 2026 08:52:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtMFQ-0000000DRij-35Gg
	for barebox@lists.infradead.org;
	Fri, 20 Feb 2026 08:52:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1vtMFN-0001xO-9M; Fri, 20 Feb 2026 09:52:25 +0100
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1vtMFL-001iPV-2R;
	Fri, 20 Feb 2026 09:52:25 +0100
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <ejo@pengutronix.de>)
	id 1vtMFN-00000005Z8P-0BqJ;
	Fri, 20 Feb 2026 09:52:25 +0100
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 20 Feb 2026 09:50:55 +0100
Message-ID: <20260220085130.1326621-2-ejo@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260220085130.1326621-1-ejo@pengutronix.de>
References: <20260220085130.1326621-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260220_005228_774635_DD151A86 
X-CRM114-Status: GOOD (  12.50  )
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
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] Documentation: bootchooser: move attempts locking to own section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Boot attempts locking is useful in specific scenarios, but is specialized
enough that it should not obscure the default bootchooser flow description.

Give only brief hints in the main algorithm section and move the full
description to a distinct section with its own anchor. Sharpen the
wording throughout.

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 58 +++++++++++++++---------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index b38bae2c23..669ebf0a47 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -83,28 +83,8 @@ attempts, there is also a built-in mechanism to reset the counters to their defa
 controlled by the
 :ref:`global.bootchooser.reset_attempts <magicvar_global_bootchooser_reset_attempts>`
 variable.
-
-.. _bootchooser,attempts_lock:
-
-Alternatively, counting down the remaining attempts can be disabled by
-locking bootchooser boot attempts.
-This is done by defining a (32-bit) ``attempts_locked`` run-time variable and
-setting its value to ``1`` (usually from userspace).
-
-In scenarios where the system is rebooted too frequently (after the ``remaining_attempts``
-counter is decremented, but before it got incremented again after a successful boot), it can unintentionally fall
-back to the other boot target.
-The ``attempts_locked`` variable can be used to avoid this behavior.
-Bootchooser is prevented from decrementing the ``remaining_attempts`` counter and falling back
-to the other target. It comes with the trade-off that a slot that becomes broken
-over time will no longer be detected as such and will be booted indefinitely.
-
-The variable affects all targets, is optional and its absence is
-interpreted as ``0``, meaning that attempts are decremented normally.
-
-The ``attempts_locked`` variable does not influence which boot target is
-selected, only whether its ``remaining_attempts`` counter is decremented when
-booting.
+Alternatively, the remaining attempts counters can be frozen globally by
+enabling :ref:`boot attempts locking <bootchooser,attempts_lock>`.
 
 If :ref:`global.bootchooser.retry <magicvar_global_bootchooser_retry>`
 is enabled (set to ``1``), the bootchooser
@@ -136,18 +116,38 @@ on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
 This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
 its default value (``reset_attempts``).
 
-An additional option is to use ``attempts_locked``. Normally this should be controlled from
-Linux userspace using the *barebox-state* tool, i.e.::
+An additional option is to use :ref:`boot attempts locking <bootchooser,attempts_lock>`
+to fully disable automatic fallback.
 
-  barebox-state -s bootstate.attempts_locked=1
+.. _bootchooser,attempts_lock:
+
+Boot Attempts Locking
+#####################
+
+In scenarios where the system is rebooted too frequently (after the ``remaining_attempts``
+counter is decremented, but before it is incremented again after a successful boot), it can unintentionally fall
+back to the other boot target.
+This can be avoided by enabling boot attempt locking.
+If enabled, bootchooser is prevented from decrementing the ``remaining_attempts`` counter and falling back
+to the other target. This comes with the trade-off that a slot that becomes broken
+over time will no longer be detected as such and will be booted indefinitely.
+
+Attempts locking can be controlled by an optional (32-bit) ``attempts_locked`` run-time variable.
+Setting its value to ``1`` enables locking for all
+boot targets; setting it to ``0`` disables locking.
 
-It can also be locked from barebox via the :ref:`bootchooser command <command_bootchooser>`::
+The ``attempts_locked`` variable does not influence which boot target is
+selected, only whether the ``remaining_attempts`` counter is decremented on each boot.
 
-  bootchooser -l
+To enable boot attempts locking from Linux userspace using the *barebox-state*
+tool, run::
+
+  barebox-state -s bootstate.attempts_locked=1
 
-or unlocked::
+It can also be controlled from barebox via the :ref:`bootchooser command <command_bootchooser>`::
 
-  bootchooser -L
+  bootchooser -l # lock
+  bootchooser -L # unlock
 
 
 .. _dt-utils: https://git.pengutronix.de/cgit/tools/dt-utils
-- 
2.47.3




Delivery-date: Fri, 20 Feb 2026 09:53:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vtMG5-003i9a-2J
	for lore@lore.pengutronix.de;
	Fri, 20 Feb 2026 09:53:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vtMG5-00022o-Sb
	for lore@pengutronix.de; Fri, 20 Feb 2026 09:53:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bDmLYqOOGB5Fw5BejgqAuS44H1rE7JGZlR1s4aQZRX4=; b=kaxHNlzesWN5n2
	/E2uZDR6hvZkdGInmnkhlOzoxY74LdKwUtT2SznHAP/N8cYnnTWEF2s0xMlWN6JFZHKiHRFJBp32t
	bGQ9ZhdOdzR+fbJyEzhro9O1S2inad9BnKYg0XMGQn1WVGQYMquCGGLHp+A+ZJL7P5k6T8u9MyDQv
	qHoQqOO4t48JD8K2Xj9p314Vpm/V55dCWGZfLm7PGyJcKY+uPJCzgyybc82//tswHrQhkKSstktzA
	vy6dkCyNWqygutql2XxRBZHAFj3YvVyc/a/xlNTotEwskaRBFPZ2FsySa4SocG0feCm2chFI48/C4
	i20oiyCMIG0irXH9/+MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtMFT-0000000DRjW-3UPN;
	Fri, 20 Feb 2026 08:52:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtMFQ-0000000DRii-37IU
	for barebox@lists.infradead.org;
	Fri, 20 Feb 2026 08:52:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1vtMFN-0001xN-94; Fri, 20 Feb 2026 09:52:25 +0100
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1vtMFL-001iPU-2N;
	Fri, 20 Feb 2026 09:52:25 +0100
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <ejo@pengutronix.de>)
	id 1vtMFN-00000005Z8M-06iN;
	Fri, 20 Feb 2026 09:52:25 +0100
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 20 Feb 2026 09:50:54 +0100
Message-ID: <20260220085130.1326621-1-ejo@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260220_005228_776170_4698335A 
X-CRM114-Status: GOOD (  10.51  )
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
Subject: [PATCH 1/2] Documentation: bootchooser: fix grammar and wording for 'attempts_locked'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

* 'variable in the bootstate' is undefined -> replace
* fix and rephrase 'use case' sentence
* fix and rephrase 'trade-off' sentence
* Add missing period after 'avoid this behavior'
* Avoid unclear 'to boot if any'
* fix typo, remove excess whitespace

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 360305e92e..b38bae2c23 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -88,21 +88,23 @@ variable.
 
 Alternatively, counting down the remaining attempts can be disabled by
 locking bootchooser boot attempts.
-This is done by defining a (32-bit) ``attempts_locked`` variable in the
-bootstate and setting its value to ``1`` (usually from userspace).
+This is done by defining a (32-bit) ``attempts_locked`` run-time variable and
+setting its value to ``1`` (usually from userspace).
 
-In scenarios where the system is rebootet too frequently (after the ``remaining_attempts``
-counter is decremented, but before it got incremented again after a successful boot) and falls
-back to the other boot target, the ``attempts_locked`` variable can be used to avoid this behavior
+In scenarios where the system is rebooted too frequently (after the ``remaining_attempts``
+counter is decremented, but before it got incremented again after a successful boot), it can unintentionally fall
+back to the other boot target.
+The ``attempts_locked`` variable can be used to avoid this behavior.
 Bootchooser is prevented from decrementing the ``remaining_attempts`` counter and falling back
-to the other target. It comes with the trade-off that a slot, that becomes broken
-over time, it won't be detected anymore and will be booted indefinitely.
+to the other target. It comes with the trade-off that a slot that becomes broken
+over time will no longer be detected as such and will be booted indefinitely.
 
 The variable affects all targets, is optional and its absence is
 interpreted as ``0``, meaning that attempts are decremented normally.
 
-The ``attempts_locked`` value does not influence the decision on which target
-to boot if any, only whether to decrement the attempts when booting.
+The ``attempts_locked`` variable does not influence which boot target is
+selected, only whether its ``remaining_attempts`` counter is decremented when
+booting.
 
 If :ref:`global.bootchooser.retry <magicvar_global_bootchooser_retry>`
 is enabled (set to ``1``), the bootchooser
@@ -134,12 +136,12 @@ on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
 This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
 its default value (``reset_attempts``).
 
-Another option is to use ``attempts_locked``. Normally this should be controlled from
+An additional option is to use ``attempts_locked``. Normally this should be controlled from
 Linux userspace using the *barebox-state* tool, i.e.::
 
-  barebox-state -s  bootstate.attempts_locked=1
+  barebox-state -s bootstate.attempts_locked=1
 
-It can also be locked via the :ref:`bootchooser command <command_bootchooser>`::
+It can also be locked from barebox via the :ref:`bootchooser command <command_bootchooser>`::
 
   bootchooser -l
 
-- 
2.47.3




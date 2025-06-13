Delivery-date: Fri, 13 Jun 2025 17:21:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ6Dy-006wCZ-0E
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 17:21:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ6Dx-0007i5-Ff
	for lore@pengutronix.de; Fri, 13 Jun 2025 17:21:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5AGw14TnQIjb0s8+R0El/KFrLERkg3MGmDOF6YLq7zM=; b=pr1/N/305UR6OfX6jToOSjov7q
	GIyTruMS9qcKl/rbMFny2KqqVidrigppuauOajKT7r4GC73/VWPc5ss2lcPcq2cmYEYGrMwG5m0CA
	kx0j2trzz98AhxTM2P0B4g17nrT+24gjLbf87PVUTzGpVpBbs9JqVl+81w1HDdtjkTavGCyBRy3sk
	StlY30u4aqbzGjSKqCh3GAw9BxjPMqZqBCQz0PbWPKu3/M7xBqDCjfnbMpgQljbJdNUuGD6JppozM
	ujPDLykXuop1jLgFqQJYY7QMXrpkS58ER77wWmlUgCaLqMkzFs+588zLRVVclg6WzKsj6q+PEFZoP
	MKuY94TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ6DP-0000000GqyT-0CXH;
	Fri, 13 Jun 2025 15:21:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ54r-0000000GczZ-3U56
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 14:08:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lsc@pengutronix.de>)
	id 1uQ54q-00077b-M8; Fri, 13 Jun 2025 16:08:16 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lsc@pengutronix.de>)
	id 1uQ54q-003IuY-1Z;
	Fri, 13 Jun 2025 16:08:16 +0200
Received: from lsc by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <lsc@pengutronix.de>)
	id 1uQ54q-005AGS-1J;
	Fri, 13 Jun 2025 16:08:16 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
Date: Fri, 13 Jun 2025 16:08:04 +0200
Message-Id: <20250613140805.1229525-4-l.schmidt@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250613140805.1229525-1-l.schmidt@pengutronix.de>
References: <20250613140805.1229525-1-l.schmidt@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_070817_900758_85C19909 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] Documentation: bootchooser: add information about slots_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The new slots_locked variable does have influence on
remaining_attempt counter.

Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 351e1d14e1..306443270a 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -77,6 +77,16 @@ no remaining attempts left.
 To prevent ending up in an unbootable system after a number of failed boot
 attempts, there is also a built-in mechanism to reset the counters to their defaults,
 controlled by the ``global.bootchooser.reset_attempts`` variable.
+Alternatively, counting down the remaining attempts can be disabled by
+locking the bootchooser slots.
+This is done by defining a (32-bit) ``slots_locked`` variable in the
+bootstate and setting its value to ``1`` (usually from userspace).
+
+The variable affects all slots, is optional and its absence is
+interpreted as ``0``, meaning that attempts are decremented normally.
+
+The ``slots_locked`` value does not influence the decision on which slot
+to boot if any, only whether to decrement the attempts when booting.
 
 If ``global.bootchooser.retry`` is enabled (set to ``1``), the bootchooser
 algorithm will iterate through all valid boot targets (and decrease their
@@ -107,6 +117,19 @@ on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
 This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
 its default value (``reset_attempts``).
 
+Another option is to use ``slots_locked``.
+Normally this should be controlled from Linux userspace using the *barebox-state* tool, i.e.::
+
+  barebox-state -s  bootstate.slots_locked=1
+
+It can also be locked via the :ref:`bootchooser command <command_bootchooser>`::
+
+  bootchooser -l
+
+or unlocked::
+
+  bootchooser -L
+
 
 .. _dt-utils: https://git.pengutronix.de/cgit/tools/dt-utils
 
-- 
2.39.5




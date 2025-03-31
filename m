Delivery-date: Mon, 31 Mar 2025 14:50:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbC-006ZRz-0L
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:50:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbA-0008O4-K7
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:50:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W92T24cGiG7FHc5qu3kVf6SABxbuU9hlkYi/U0o0gks=; b=hQnniDYOSg8ORO8nz1MrUAbuKp
	pFqybPp/nQLjID+w/1a5fkCH4yyt0tfUwhaAw7aCNckOnNf3TJ4hCKDXl1wLIzy7+NzRJb6/v/sWl
	vWbBaPTW5dg4iD1td+exvZyPIhwgSP9cWhqVmBHrAsagwTwmXDLl/2UjxKvVRZBw/obYP7zn92k9G
	lCdkrjDr31kGa6czXB+VoynhDEw2MmAejSYMqp1Ad3f3O8CJKag2i68SvZpEsjthz+iTZEjqWUTcb
	8zcaxjguVyAB/OwYyoZF4Y1C+BumNOdohp23ZJR6WwON4a839hKMa2iz5HP7zTM6IWz+DXVInG6J7
	qeAdJYRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEal-00000000ODj-084x;
	Mon, 31 Mar 2025 12:50:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEac-00000000O5u-41uY
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:50:09 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tzEaa-0007tJ-Eb; Mon, 31 Mar 2025 14:50:04 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Mon, 31 Mar 2025 14:49:28 +0200
Message-Id: <20250331124932.901033-5-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250331124932.901033-1-bst@pengutronix.de>
References: <20250331124932.901033-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_055007_017557_E2F9398E 
X-CRM114-Status: GOOD (  13.10  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] doc: bootchooser: move global.bootchooser.reset_attempts docs down to other variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I don't see a reason why this variable should be documented elsewhere,
so move it down where the other variables are documented.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index b54e6873bc8..d3469e7480a 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -83,23 +83,7 @@ no remaining attempts left.
 
 To prevent ending up in an unbootable system after a number of failed boot
 attempts, there is also a built-in mechanism to reset the counters to their defaults,
-controlled by the ``global.bootchooser.reset_attempts`` variable. It holds a
-list of space-separated flags. Possible values are:
-
-- empty: counters will never be reset
-- ``power-on``: When bootchooser starts and a power-on reset
-  (``$global.system.reset="POR"``) is detected, the ``remaining_attempts``
-  counters of all enabled targets are reset to their defaults.
-  This means after a power cycle all boot targets will be tried again for the configured number of retries.
-- ``reset``: When bootchooser starts and a generic reset
-  (``$global.system.reset="RST"``) is detected, the ``remaining_attempts``
-  counters of all enabled targets are reset to their defaults.
-  This means that, if the systems reports a generic restart, the
-  ``remaining_attempts`` counters of all enabled targets are reset to
-  their defaults.
-- ``all-zero``: When bootchooser starts and the ``remaining_attempts``
-  counters of all enabled targets are zero, the ``remaining_attempts``
-  counters of all enabled targets are reset to their defaults.
+controlled by the ``global.bootchooser.reset_attempts`` variable.
 
 If ``global.bootchooser.retry`` is enabled (set to ``1``), the bootchooser
 algorithm will iterate through all valid boot targets (and decrease their
@@ -150,7 +134,16 @@ options not specific to any boot target.
   The default priority of a boot target when not overwritten with the target
   specific variable of the same name.
 ``global.bootchooser.reset_attempts``
-  Already described in :ref:`Bootchooser Algorithm <bootchooser,algorithm>`
+  A space-separated list of conditions (checked during bootchooser start) that
+  shall cause the ``remaining_attempts`` counters of all enabled targets to be
+  reset. Possible values:
+
+  * empty: Counters will never be reset.
+  * ``power-on``: If a power-on reset (``$global.system.reset="POR"``) is detected.
+    Happens after a power cycle.
+  * ``reset``: If a generic reset (``$global.system.reset="RST"``) is detected.
+  * ``all-zero``: If the ``remaining_attempts`` counters of all enabled targets
+    are zero.
 ``global.bootchooser.reset_priorities``
   A space-separated list of events that cause *bootchooser* to reset the priorities of
   all boot targets. Possible values:
-- 
2.39.5




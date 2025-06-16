Delivery-date: Mon, 16 Jun 2025 17:28:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRBlH-007xnL-1Y
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 17:28:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRBlG-00020H-Ry
	for lore@pengutronix.de; Mon, 16 Jun 2025 17:28:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Bb4rOLGivWqEoVCUlB2as33QRagtYe8JH8LxY7y6yE=; b=TMSXPGujXDnBIX7qmpCwlb8Lbi
	a/gx8mzUey31AOviTQrogh4W0DvIMp0aFZauqwQz4vs6nmz1kZdtN6311iCfclDajwoCzuvqTU+zY
	9qTENBEXmiLMdz1jqCREXqdykc5n8vKwp/QhYsm1tmHxMJEx0pE8sJsNvySiGOohKmu6t/a0WLI+x
	xdODQYToLigu/jThX5D3ymGkqI/evZ1p0W9YOzldU9LSVRYQJQvAzKGb7DpcjLmAHgr6dfsrT2zb4
	sX+O0zUsCFF8Xoejik12xFUPzfFsTd72BZoGR9auOB+CCHlXmW9X+F9NTgT1Ncq7lPI2on29w3zlw
	mE6YAzuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBkp-00000004s4v-1dKV;
	Mon, 16 Jun 2025 15:28:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBQS-00000004nWW-3v5l
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 15:07:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uRBQP-0007fO-Il; Mon, 16 Jun 2025 17:07:05 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uRBQP-003pFW-14;
	Mon, 16 Jun 2025 17:07:05 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uRBQP-00Gw36-2z;
	Mon, 16 Jun 2025 17:07:05 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
Date: Mon, 16 Jun 2025 17:06:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250616-bootchooser-lock-v2-3-df1f0d118635@pengutronix.de>
References: <20250616-bootchooser-lock-v2-0-df1f0d118635@pengutronix.de>
In-Reply-To: <20250616-bootchooser-lock-v2-0-df1f0d118635@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_080708_978174_0A18D74A 
X-CRM114-Status: GOOD (  11.09  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] Documentation: bootchooser: add information about
 attempts_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The new attempts_locked variable does have influence on
remaining_attempts counter.

While at it, also make mention in the bootstate.dtsi.

Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 23 +++++++++++++++++++++++
 arch/arm/dts/bootstate.dtsi        |  5 +++++
 2 files changed, 28 insertions(+)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 351e1d14e1ead6ba8d329c03c0bc7ed28b523df0..ab0b6c3fc895226f5aa4590944a2cd675a56d985 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -77,6 +77,16 @@ no remaining attempts left.
 To prevent ending up in an unbootable system after a number of failed boot
 attempts, there is also a built-in mechanism to reset the counters to their defaults,
 controlled by the ``global.bootchooser.reset_attempts`` variable.
+Alternatively, counting down the remaining attempts can be disabled by
+locking bootchooser boot attempts.
+This is done by defining a (32-bit) ``attempts_locked`` variable in the
+bootstate and setting its value to ``1`` (usually from userspace).
+
+The variable affects all targets, is optional and its absence is
+interpreted as ``0``, meaning that attempts are decremented normally.
+
+The ``attempts_locked`` value does not influence the decision on which target
+to boot if any, only whether to decrement the attempts when booting.
 
 If ``global.bootchooser.retry`` is enabled (set to ``1``), the bootchooser
 algorithm will iterate through all valid boot targets (and decrease their
@@ -107,6 +117,19 @@ on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
 This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
 its default value (``reset_attempts``).
 
+Another option is to use ``attempts_locked``. Normally this should be controlled from
+Linux userspace using the *barebox-state* tool, i.e.::
+
+  barebox-state -s  bootstate.attempts_locked=1
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
 
diff --git a/arch/arm/dts/bootstate.dtsi b/arch/arm/dts/bootstate.dtsi
index aa767d4e3b966244b01702bbc2bdcd5c95ef7009..733441fb2697b283dc784b00b012e11ad671bb15 100644
--- a/arch/arm/dts/bootstate.dtsi
+++ b/arch/arm/dts/bootstate.dtsi
@@ -42,4 +42,9 @@ last_chosen@10 {
 		reg = <0x10 0x4>;
 		type = "uint32";
 	};
+
+	attempts_locked@14 {
+		reg = <0x14 0x4>;
+		type = "uint32";
+	};
 };

-- 
2.39.5




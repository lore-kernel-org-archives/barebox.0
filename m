Delivery-date: Thu, 19 Jun 2025 10:46:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSAvC-008tBA-1n
	for lore@lore.pengutronix.de;
	Thu, 19 Jun 2025 10:46:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSAvB-0004iJ-KF
	for lore@pengutronix.de; Thu, 19 Jun 2025 10:46:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pkYa+xOmZ+ZK3HKERq0ivZsR8cUvDvACY/FFJjfmAE0=; b=ZBiezM/amBjooMh9wM6VDpnFra
	rLJ3yT3aSwbG8jADvVjWqN1waOzXNOjbM0kV62tY8yJ8RwA2/++ehZYN79E7U1PVrkTzexDFxT/Gl
	Sc0JYldnKHauTZ5+CmJsDpcqypi4b9rmelrOU1PaIw/x0P3wMZf7pf5g9HuFa6hwJpN2pYicO+pah
	l7l0GZjUP6gh2SE5mjzh8BY7RA7C08JGas20QhoCaXeiWSSwY2ZQaNohueiwKo1WpGKsvF4GzbgqD
	2s36jRIZWqC6QtfgPi6nneQsKTCO7Uo1xz8iEFrOukhJJGhPTNuazNr1ZZvXPMYcQGh0zdrgB90gc
	vGRygmJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAuY-0000000CU1U-36ql;
	Thu, 19 Jun 2025 08:46:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAam-0000000CQcV-3zZx
	for barebox@bombadil.infradead.org;
	Thu, 19 Jun 2025 08:25:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=pkYa+xOmZ+ZK3HKERq0ivZsR8cUvDvACY/FFJjfmAE0=; b=TQmwgIRXm0k6mDKF0h7G0EbF5U
	0aESj2rGgY1v6nDqu2SzQYQ0F612dL/OD7nD75EHedyJ+zDilKGt/ruuskUZcrLffospOf802KttN
	qGXaqfKnmnaQjm7EYWrUXytdR1ddBeG6D0mo5vtzqQ56maXSGGsy+f8+u3f79KVT+J9tRuxwx08Ks
	pCUr/G6O5y2p9jX6h1u4z+p6zI5JL5bbLkTW1EtYY5CXCl2vZxL7geiLc5C1K9ulqVJKh2NCnaOiZ
	WNIw8ECDj3PizQC//l95vqVS8QrRojJ3yZI1WXqjynaUPgp3Fmp8e9Avn6RpTohsE/Lw/h29fJqcs
	3L0TRM6w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAak-00000004Nhz-0nqA
	for barebox@lists.infradead.org;
	Thu, 19 Jun 2025 08:25:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAag-0001wz-R9; Thu, 19 Jun 2025 10:25:46 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAag-004Gtx-1v;
	Thu, 19 Jun 2025 10:25:46 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAah-003bEH-0c;
	Thu, 19 Jun 2025 10:25:46 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
Date: Thu, 19 Jun 2025 10:25:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250619-bootchooser-lock-v3-3-fc4ad92c3866@pengutronix.de>
References: <20250619-bootchooser-lock-v3-0-fc4ad92c3866@pengutronix.de>
In-Reply-To: <20250619-bootchooser-lock-v3-0-fc4ad92c3866@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_092550_408056_C33CDEAE 
X-CRM114-Status: GOOD (  13.78  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/4] Documentation: bootchooser: add information about
 attempts_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The new variable behaves quite differently from the already existing
method via reset_attempts. So a proper description, including a use case,
is added to the documentation.
Additionally an example how to add it is added to bootstate.dtsi.

Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 30 ++++++++++++++++++++++++++++++
 arch/arm/dts/bootstate.dtsi        |  5 +++++
 2 files changed, 35 insertions(+)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 351e1d14e1ead6ba8d329c03c0bc7ed28b523df0..1d7ece6c4b1255b41d359d3303daaf78bacfa17a 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -77,6 +77,23 @@ no remaining attempts left.
 To prevent ending up in an unbootable system after a number of failed boot
 attempts, there is also a built-in mechanism to reset the counters to their defaults,
 controlled by the ``global.bootchooser.reset_attempts`` variable.
+Alternatively, counting down the remaining attempts can be disabled by
+locking bootchooser boot attempts.
+This is done by defining a (32-bit) ``attempts_locked`` variable in the
+bootstate and setting its value to ``1`` (usually from userspace).
+
+In scenarios where the system is rebootet too frequently (after the ``remaining_attempts``
+counter is decremented, but before it got incremented again after a successful boot) and falls
+back to the other boot target, the ``attempts_locked`` variable can be used to avoid this behavior
+Bootchooser is prevented from decrementing the ``remaining_attempts`` counter and falling back
+to the other target. It comes with the trade-off that a slot, that becomes broken
+over time, it won't be detected anymore and will be booted indefinitely.
+
+The variable affects all targets, is optional and its absence is
+interpreted as ``0``, meaning that attempts are decremented normally.
+
+The ``attempts_locked`` value does not influence the decision on which target
+to boot if any, only whether to decrement the attempts when booting.
 
 If ``global.bootchooser.retry`` is enabled (set to ``1``), the bootchooser
 algorithm will iterate through all valid boot targets (and decrease their
@@ -107,6 +124,19 @@ on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
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




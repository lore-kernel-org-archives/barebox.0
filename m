Delivery-date: Mon, 28 Sep 2026 13:33:17 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9bh-007H0F-2f
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:33:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4FE332001C8
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:33:17 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MtoCQGMj;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=CUjYDzJj;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GDhhidXY;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790595197;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=zRlo4En+3OjPz0POxoqa7/HmRAgrHDc00WpzO4O7q/0=;
	b=S5wKa3Fra8nfhPLxMpSO15GeIBOTJqUdYeCbbFz8k3kNK4+JsWid0uerb/BdfChvGx66Ju
	pYcslmWEsAnBMlc5s9zZJeZJ0dRIB89MSMnIfZCc8LaMLUt4DBNy8AB9+qnDdLS146fOsG
	FTEUbvH+6ibwD2hxwWlZGsMby713sQSGmPhrAqMVq3tPtPCbF6MR9Sm+naWHqN0ytxjuNY
	U/hpbCgHluW9DO3FbHgrvYZunNC+Tk9kYQCAjmIoj1vClnlr7cBJytSzKqJ5+quhI8tv/i
	UcKNTbQvuRJN+wOyJ6RvdsGzmzOVO9pCFFHnYtv0fJ+IWZErOco9+vJ5eCImbw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790595197; a=rsa-sha256;
	cv=pass;
	b=UwvDRsq0cxKM8M5pL/6V2SnpvgSZUACfh075HyYJcuNtWfJuYh9Y39VDkqXDXTyTrklkQe
	J21cMW0VFGrgmPoyuxvlX2HUS64hsnyvLYgTsouHtAy2p5LcqcvkZW5YiLC0wemRQ8e6RB
	hCHkjDplM7UH157pnwmeess4slytLhpwVl4kaIB/y1OTic5/j18O+zghDSGCtGIUrepkfM
	qhfZAvcdm2gQ5V2Upx0FTr5cekXbeWS/r8yoU+dKbkYGZ2D5nH6qm407Y9YPhkqTEDUhP+
	cJuDWp4It6IdOekpaGVuVs985DFoRh9p80a+EOLv+KBAuMifB8i3ii+d3/GlvA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MtoCQGMj;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=CUjYDzJj;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GDhhidXY;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zRlo4En+3OjPz0POxoqa7/HmRAgrHDc00WpzO4O7q/0=; b=MtoCQGMjcvW3a+ykJBL07452XS
	Zs3J/ox3MNXX+1N8Uk5CQLXjn+o3cT6P7jI9daHkyaCXcrd0Qqoge2IU33qNs6X7g46jSFMspwgeQ
	ct4CrH1pmRHgRr3rg3QVLujpJyTg9DcxH6MF7RloRtI05drPVC9KEDPfqYtXMR6tL+z/sOj25VIjw
	1Ijg3dioP86kEl/iaDJBHvbQ0zqXpCyB0lVlguEznzoEMrE2qXe51iveWY5On+NeOVuh7XRfp8yCF
	9kSlczdjzH9zz/6e9wTTtNei2Q2gMAB9U3PD70P05H8znEIzFf5DU7BBWyvMS7G55FRXrfJDzYnCn
	g91WMIow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wz-00000000S9B-0X1U;
	Mon, 28 Sep 2026 11:28:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wu-00000000S3N-3Cj7
	for barebox@bombadil.infradead.org;
	Mon, 28 Sep 2026 11:28:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=zRlo4En+3OjPz0POxoqa7/HmRAgrHDc00WpzO4O7q/0=; b=CUjYDzJjW08/m35Me0nNJnrNJS
	0PgGFYUIPMfUiBNZAyiZwBpQbDDykvvQ5LqB6upiwkMRhon268JGX3SvrgMLNYPPjKSd3M4Jdqfkt
	jOHueJcy4bbVVdEMNS2wa38MJrS7q1QomuKGSQWABsqqmqLXAAqFPJY6til5dLQv+TT+VRLedBkCH
	OFxGow8cfvrGJEJ0WPBCPM36yt3y70jBXkZbB32J7nqhdyviog4bTOov4pd672pckgIC22UBiot/y
	mC3K9et8swHFE+qEa3m2j1J0+bRclAJbb41INEi8bPJaMf+hPBZl+yMTJDhtunbO5IBojQAMMQoBq
	lzryyNkg==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xB9Wr-00000001PmY-2SYO
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:19 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 17506201F18;
	Mon, 28 Sep 2026 13:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zRlo4En+3OjPz0POxoqa7/HmRAgrHDc00WpzO4O7q/0=;
	b=GDhhidXY6Z4/XckoQDuwYccSqAs2O4GQdm4tSvU0hmZ0sCt/D0YeRBpGE3ODZvhsIcf30k
	Lr7md+c8meseB43j7EWWc0KtdbFqq+aP3ZxwlVZIiYXXxwPrrprYo1RBIMs0vD0mEry+bf
	AbPVABdWi9vUelWAhQG7bZem0WCV8JXUQWbqhCHg4E8Xg+hg9/fMDUQo5HBC+Fxl4ry0v9
	UMOT+QENOmWzIVczE4nWrGHl/teQu3SZs7WC6zvinkWaFhlXcdVUdi1PuV8KJStZi8TMwD
	NLmIxlHjbQXvVpGLxFE0qqP/ofvYoe+WkAsDxwnbmm33BN2EYK0I54QasHNbnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zRlo4En+3OjPz0POxoqa7/HmRAgrHDc00WpzO4O7q/0=;
	b=LCuUV9CG8OimVuNyB/Ht0cXzyVBCKv/YKOFHAMshLi/GVG+YOtGCD2aACFlzwSoBZ8w5mF
	py8PoYvgCQ0/fsBivYOJi/GSmvgFCfCgMdA0QYYA2yc15j4Liuqowv0ivccmn5wN0lt5JW
	0vvtJMup958BwkiYGFhhHbHae8WbCHDmLaJtZlcO4kyRoN7Ut8OO4PQbvQVIrtLnDzWedO
	aLHIH0Y7C4XiY9E8/CqZCXDZeEuHGvoX2/jsD/Xg1bgk3MwI+fiHk7Pn0vUWmbfn9GumdG
	WxGX/JWf+qAbXvDg5IQ/dYuDok+ehkut3Uc4O6cz3KrtaiB6d32DMhXk+JXfwA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594891; a=rsa-sha256;
	cv=none;
	b=Y47YIe5rxD6tgeuZQSXb0deFwjMvT9UQNgkM5hmySs2/q2NV4AW2CvJ7kVUAYLF+RjfwdN
	41Ui85XBUKRgsUrmSm9IRB7313UddMK5f0v8qu47ipYbDPsKoe8uvULBGtmR++lgA1q60o
	W9LIzlJWBgXOLaOMsy3Cv8HZrRKLxWp3ruEOik5MU/S8Z5zZCwpD3ceWJvizOsbJIoHglr
	SflHarZGFp99lzjR9odH9QUfaeOizHJ5NJ9JjeMeW+DwM8MlFseKrPB70nL8iuKdSDP7Xz
	BG3MeQ2wPB9PK1o6WxF+aRwfsK5Vs19wVKxgRaWvCOHkiEvNKmLo9JMDqYRzPg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id F194C74D09C;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 10/11] Documentation: define a barebox threat model
Date: Mon, 28 Sep 2026 13:27:05 +0200
Message-ID: <20260928112731.1271094-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_122817_968263_F0A7B7BD 
X-CRM114-Status: GOOD (  38.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The security considerations
    chapter is written for integrators and tells them what to configure. Security
    researchers may not know how barebox is integrated, so let's document what
    we count as a security vulnerability and what's a normal bug. 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,m:a.fatoum@barebox.org,s:lore@pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 4FE332001C8
X-Stat-Signature: ctfkt1r7999uafbzte3zgyukkwbwabrh

From: Ahmad Fatoum <a.fatoum@barebox.org>

The security considerations chapter is written for integrators and
tells them what to configure.

Security researchers may not know how barebox is integrated, so let's
document what we count as a security vulnerability and what's a normal
bug.

The structure follows Linux's Documentation/process/threat-model.rst:
what barebox is responsible for, what it assumes about earlier boot
stages and the integrator, what it protects against when these
assumptions hold, and which problems are not vulnerabilities.

Security policies get their own section: a feature the active policy
denies can't be reached on a locked-down system, so a bug in it isn't
a vulnerability.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/threat-model.rst | 297 ++++++++++++++++++++++++++++
 Documentation/user/user-manual.rst  |   1 +
 2 files changed, 298 insertions(+)
 create mode 100644 Documentation/user/threat-model.rst

diff --git a/Documentation/user/threat-model.rst b/Documentation/user/threat-model.rst
new file mode 100644
index 000000000000..d15e1bda63b8
--- /dev/null
+++ b/Documentation/user/threat-model.rst
@@ -0,0 +1,297 @@
+.. _threat_model:
+
+The barebox threat model
+========================
+
+It is not necessarily self-explanatory what barebox does and does not protect
+against. This makes it hard to tell security bugs from ordinary ones, and to
+know who is responsible for what: barebox, the boot stages before it or the
+integrator who configures it.
+
+This document describes what barebox is responsible for, so that
+vulnerabilities can be told apart from ordinary bugs. For how to configure
+barebox securely, see :ref:`security`.
+
+barebox's responsibilities
+--------------------------
+
+barebox is one stage in a boot chain. In a verified boot chain, it must only
+start software it has verified, and only use configuration that the previous
+stage verified together with barebox itself.
+
+barebox trusts the previous boot stage and everything it verified as part of
+the barebox image. This includes the :ref:`prebootloader <pbl>`, barebox
+proper, the :ref:`internal devicetree <internal_devicetree>`, the built-in
+environment, the compiled-in public keys and security policies, and firmware
+like OP-TEE that the prebootloader installs at a higher privilege level. If
+any of these is left unverified, barebox can't make up for it.
+
+.. note::
+
+     The previous stage may verify only the prebootloader, as the i.MX8M boot
+     ROM does. The prebootloader then checks barebox proper and external
+     firmware against hashes built into it before using them to extend the
+     chain of trust.
+
+barebox also assumes that the hardware works as documented: the mask ROM
+verifies what it's documented to verify, fuses read back as programmed, the
+secure world stays isolated from the normal world and peripherals respect
+their documented register ranges. barebox doesn't currently defend against
+attacks on the hardware itself, like fault injection or side channels.
+
+Everything barebox reads at runtime is untrusted. This includes partition
+tables and file systems, boot images and boot entries, devicetree overlays,
+firmware and update images, environment or state on storage media and input
+from console, network or USB. Of these, barebox can only authenticate FIT
+images, HMAC-protected state, signed TLVs and JSON Web Tokens, and only if
+it is configured to require it.
+
+The integrator decides which of these inputs barebox uses at all and what it
+accepts from them: at build time via Kconfig and at runtime via security
+policies. barebox's defaults are made for convenient development, so a
+system is only locked down if it's configured that way; :ref:`security`
+describes how.
+
+Security policies
+^^^^^^^^^^^^^^^^^
+
+A :ref:`security policy <use_security-policies>` is a set of ``SCONFIG_``
+options compiled into barebox. Board code or ``CONFIG_SECURITY_POLICY_INIT``
+selects one at runtime. The active policy decides, among others, whether
+barebox may
+
+* read input from the console (``SCONFIG_CONSOLE_INPUT``) and
+  offer an interactive shell (``SCONFIG_SHELL_INTERACTIVE``),
+
+* load an environment from storage media (``SCONFIG_ENVIRONMENT_LOAD``),
+
+* mount file systems other than devfs and ramfs (``SCONFIG_FS_EXTERNAL``),
+
+* boot images without a valid signature (``SCONFIG_BOOT_UNSIGNED_IMAGES``),
+
+* be remote-controlled over RATP (``SCONFIG_RATP``), accept fastboot OEM
+  commands (``SCONFIG_FASTBOOT_CMD_OEM``) or act as a USB gadget at all
+  (``SCONFIG_USB_GADGET``).
+
+A locked-down system should deny all of these by default and allow them only
+after authentication, e.g. with a device-bound unlock token as described in
+:ref:`Run-time configuration <runtime_configuration>`. A bug in a denied
+feature then can't be reached. Before reporting a bug in one of these
+features as a vulnerability, check whether it can still be reached with the
+feature denied. A way to get around the policy and use a denied feature is a
+vulnerability.
+
+Protections
+^^^^^^^^^^^
+
+If the `Assumptions`_ below hold, barebox guarantees the following:
+
+* **Verified hand-over**: barebox only starts or passes on what a trusted key
+  has signed: the kernel, initramfs, devicetree, overlays and firmware in a
+  FIT image whose configuration signature was verified, with
+  :ref:`global.bootm.verify <magicvar_global_bootm_verify>` pinned to
+  ``signature``.
+
+* **Verified configuration**: the verified image, not untrusted input,
+  decides what barebox boots, what it tells the kernel and whether it
+  verifies images. The only exception is where the configuration explicitly
+  leaves a choice open, like which of a FIT's signed configurations to boot.
+
+* **Memory safety against untrusted input**: parsing untrusted input necessary
+  for booting from storage media or the console doesn't corrupt memory, so an
+  attacker can't use it to run their own code.
+
+* **Policy enforcement**: a feature the active security policy denies can't
+  be used.
+
+A bug that breaks one of these guarantees is a vulnerability. A bug that can
+only be exploited after another guarantee is already broken is just a
+weakness. barebox also has hardening measures that keep some classes of bugs
+from crossing a security boundary, but a failure of these extra protections
+alone is not a vulnerability.
+
+Assumptions
+-----------
+
+barebox relies on the integrator to ensure the following. barebox can't
+check them, and if one doesn't hold, no barebox configuration can make up
+for it.
+
+**barebox is authenticated before it is executed**
+   An earlier stage (the mask ROM or another bootloader, like ARM Trusted
+   Firmware) verifies the barebox image, and the board is locked down so an
+   unverified barebox won't run. Restricting who may update barebox is only
+   defence in depth.
+
+**The devicetree is authenticated together with barebox**
+   Keys under ``/signature`` in the internal devicetree are trusted just like
+   compiled-in keys and can sign any FIT configuration. So whoever controls
+   the devicetree controls what barebox accepts. The devicetree must be built
+   into the barebox image or come from a stage that verified it, e.g. ARM
+   Trusted Firmware loading it from a verified FIP.
+
+**Only the built-in environment configures barebox**
+   Global variables decide what is booted, what the kernel is told and,
+   unless signature checking is pinned, whether images are verified at all.
+   The environment sets these variables, so only the environment built into
+   the verified image may be used; see
+   :ref:`Disabling the non-builtin environment <disabling_env>`.
+
+**Only authorized users reach the shell**
+   The shell is the administrative interface. It can be reached over a
+   serial console, the :ref:`network console <network_console>`, the RATP
+   protocol used by bbremote, or fastboot, whose ``oem exec`` command is as
+   powerful as the shell. Commands that write a partition, set a variable or
+   apply an overlay do so without further checks.
+   See :ref:`Disabling the shell <disabling_shell>` for more information.
+
+**Files barebox is told to load reside in trusted storage**
+   Some data is only referenced by name, not included. For example, a
+   devicetree overlay in a signed FIT may have an ``fpga-region`` node with a
+   ``firmware-name`` property. barebox loads that file from
+   ``global.firmware.path`` and programs it into the FPGA. The signature
+   covers the name, not the file, so such paths must point at trusted
+   storage, e.g. the built-in environment or a file system protected by other
+   means, like dm-verity with a signed root hash.
+
+**barebox is configured securely**
+   Beyond the above, barebox must be configured securely at build time via
+   Kconfig and at runtime via
+   :ref:`security policies <use_security-policies>`, as described in
+   :ref:`security`. A bug that only affects a configuration that chapter
+   advises against isn't a vulnerability.
+
+What classes of problems are not considered vulnerabilities
+-----------------------------------------------------------
+
+The following classes of problems are **not** considered barebox
+vulnerabilities. They should still be reported where barebox could do
+better, so they can be fixed where reasonably possible, but they are handled
+like any regular bug:
+
+* **Configuration**:
+
+  * outdated versions: integrators must keep barebox up to date. A
+    vulnerability must be shown to affect the latest release or one of the
+    long term stable releases listed in ``SECURITY.md``.
+
+  * build-level: builds that lack the verification they rely on, e.g.
+    ``CONFIG_BOOTM_FITIMAGE`` without ``CONFIG_BOOTM_FITIMAGE_SIGNATURE``, or
+    with a security policy denying something the build can't enforce. Also
+    options documented as lowering security, in particular everything
+    ``CONFIG_INSECURE`` enables, and code that only exists for development or
+    debugging, like the sandbox architecture's host interfaces, fuzzing
+    harnesses or development keys.
+
+  * runtime-level: a security policy that was configured to allow what should
+    be denied in a verified boot setup, e.g. ``SCONFIG_BOOT_UNSIGNED_IMAGES``
+    or ``SCONFIG_SHELL_INTERACTIVE`` in a lockdown policy, or no policy selected
+    at all on a build that then permits everything
+    (``CONFIG_SECURITY_POLICY_DEFAULT_PERMISSIVE``). Also
+    :ref:`global.bootm.verify <magicvar_global_bootm_verify>` set to anything
+    but ``signature``, or not pinned to it.
+
+  * a barebox image, devicetree or environment the previous boot stage
+    didn't authenticate; see `Assumptions`_.
+
+  * barebox proper running in the secure world, because OP-TEE isn't
+    started from the prebootloader; see :ref:`loading_firmware`.
+
+  * boot entries referencing a FIT:
+    :ref:`bootloader spec <bootloader_spec>` entries and
+    :ref:`extlinux.conf <extlinux_conf>` files come from a file system
+    barebox can't verify. Pointing them at a signed FIT doesn't make the boot
+    trustworthy; see
+    :ref:`Avoiding use of file systems <avoiding_filesystems>`.
+
+* **Excess of initial privileges**:
+
+  Anything an attacker can do if they already have the access it requires:
+
+  * an image with a signature barebox accepts. Whoever can create one
+    already has the signing key, so a bug that can only be reached this way
+    doesn't bypass verification.
+
+  * anything done from the shell or via a global variable set from a loaded
+    environment.
+
+  * anything that follows from controlling the devicetree, which carries
+    the keys.
+
+  * anything done through a feature the active security policy allows, e.g.
+    flashing a partition via fastboot on a system whose policy permits
+    fastboot OEM commands.
+
+  * a bug in the barebox environment parser:
+    The environment can contain scripts, and there is no way to sign an
+    environment that isn't built in. An attacker can just add an init
+    script instead of attacking the parser.
+
+  * a bug in an unsigned kernel image format:
+    Kernel images should be placed in a signed container. An attacker who
+    can modify a kernel image without breaking a signature can simply make
+    it run their own code once barebox starts it. There is no need to attack
+    the kernel header barebox parses.
+
+  * a bug in a feature that the documentation calls
+    unsuitable for verified boot and that can be disabled at build time or
+    runtime, but wasn't.
+    For an example, see
+    :ref:`avoiding use of file systems <avoiding_filesystems>`.
+
+* **Selecting among signed configurations**:
+
+  A FIT signature covers the configuration it's in, but not the ``default``
+  property that picks a configuration when barebox isn't told which one to
+  boot. Booting a different signed configuration of the same FIT is
+  therefore not a bypass; see :ref:`pinning_fit_config`.
+
+* **Update images**:
+
+  :ref:`barebox_update <update>` and fastboot's ``flash`` command don't
+  authenticate anything. Their checks, e.g. that the image is for the right
+  board, only exist to avoid bricking the board. The previous boot stage,
+  not barebox, verifies what gets installed.
+
+* **Network boot**:
+
+  The network isn't meant to be used in verified boot setups, and booting
+  over it is not a verified boot path. DHCP options, the hostname and files
+  fetched via TFTP or NFS are as untrusted as any other input and the barebox
+  network stack implementation is not hardened against adversaries.
+
+* **Denial of service by way of a boot image**:
+
+  barebox tries to reject malformed images, but an image that makes barebox
+  hang, panic or refuse to boot isn't a vulnerability: whoever can supply
+  such an image can just as well prevent booting by erasing it. Memory
+  corruption is still in scope, as it can let an attacker run their own
+  code.
+
+* **Hardening failures**:
+
+  * a missing bounds or argument check whose only effect is that a
+    malformed image is rejected later than it could have been.
+
+  * bypassing a defence in depth measure without showing how to exploit it
+    further.
+
+* **Random information leaks**:
+
+  Small amounts of memory the attacker can't choose reaching the console,
+  e.g. through unterminated strings, structure padding or printed memory
+  addresses.
+
+* **Physical access**:
+
+  A verified boot chain is meant to hold up even when the attacker has the
+  device in hand. So everything barebox reads over its external interfaces
+  (storage media, USB and the serial console) is in scope, no matter how the
+  attacker got access. Attacks that bypass or modify the hardware are out of
+  scope: fault injection, debug ports like JTAG that the integrator should have
+  fused off, or replacing the storage barebox itself is loaded from, which the
+  previous boot stage must detect.
+
+Report vulnerabilities to security@barebox.org as described in
+``SECURITY.md``. Everything else is welcome on the mailing list; see
+:ref:`feedback`.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index b312f60e8187..296422475bbd 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -30,6 +30,7 @@ Contents:
    devboot
    bootchooser
    remote-control
+   threat-model
    security
    security-policies
    reset-reason
-- 
2.47.3




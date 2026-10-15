Delivery-date: Thu, 15 Oct 2026 13:04:48 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJGS-00DtTY-1t
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:04:48 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0A352201ADE
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:04:48 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=D626YqTp;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Ej4V7W2s;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FYd0cqah;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792062288; a=rsa-sha256;
	cv=pass;
	b=Xw/FgW+XNtUhJW4htI5koQddwpUut6u9MD+lc+zxkH4L1JEa+D3lvi9fOgQjVah61x4t6s
	36OCNZuUcSeIpmfS/u1K6c6Dh6qppVK35Z2zAFnGLpm6K3WRxP/dzJRW9koupxblIsDKhH
	I29eOzDRE4/KLpzNjUNkcQyGjjpDJTjJ34rlzRU8aXEaQzUrMBOiBGhEzxO1/9a/yjDP+H
	3xDzN+MBGQ8ba9U5Cl1P2u82PFJWem/pEp4Y9f98i3/6JSOB2q8sP2UCSamPjyRidpm92o
	+WWAK+WFlG0wbMli6x5S09lUG+Cd25wXTl77N8wfyM/qk2QA87dzpQxN1NFl8Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=D626YqTp;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Ej4V7W2s;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FYd0cqah;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062288;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=sb9ghZt5KKmu91pKQOxBx2SXn5jnNwoB7ojtq4q6qu8=;
	b=dDmpiK3HwmJYAeM/SIECCCD+W1ttbDLHvDeLh7HVnepoCzZX91VESbZROEuKg2OoANGnA+
	ETlJ4+9Mx5c1b0jG1wk1xoDLABB9f+pW7emppxXHCerWV4ixSW/PyP9D2SiQA/I7Q2Zk7E
	uRXdyGlZhvuyx9nUrwIWnZHWgkWc8Fv6E9BGOsOjEHZohKU3CHUj0W29TiGgOusWXp2yRU
	nOvu7hZiBYFn8itaXngNCeKBtDwSSmIOyTMpaL6vcE5edIN/hbrDA1Y07pRaTwSYLowRE7
	fEl+y6tajbtKPyikGKVMMM+7OAxVy8Up/LThI7FbEkv3MShbBV5DvcejF9AO2g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sb9ghZt5KKmu91pKQOxBx2SXn5jnNwoB7ojtq4q6qu8=; b=D626YqTpZFOhM2QhuV8+bNv4G6
	xPJYUz6nFJuKmR66BiOjiw7DCRmUDHm7BBvVBlV2+v/UrTiskM91kuM4eo3KWwJVfvQ+I675D94Zv
	WlsviS1XsxRLs/9ZNjYq4PGsV6aLmOLQbH0kB0XYFyYZ+ulsl/qg27x1IbwgffldskhR4YfG88/lC
	aBQeIHTrp2SL+Arrl6CpINI7gc8yxd85+Tj2pzhkfYua0N4HR3K6Br7vHxVP3lJvaOXNNJn0IuaoL
	kO3HmK+81Sf+lc+ZO4MVouZqNkoGK+kcPo722anPYysFiYzuoNBUJygvJEgyUpMGW6y6jeJjW+0lm
	CBwite1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJFP-0000000HWHQ-3zCQ;
	Thu, 15 Oct 2026 11:03:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJFO-0000000HWG2-1ltA
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 11:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=sb9ghZt5KKmu91pKQOxBx2SXn5jnNwoB7ojtq4q6qu8=; b=Ej4V7W2sHQ9S5mS2gduBSlzApi
	8xSa7uVc/JiN/jQ0bJzuyZNUR/zEpzub+QILCsTjnSIT8JgB9+kSgXk41JSHUwsvcn0kFr12Upqp8
	b2CZpduk+ZobHrSx2vqrLH3NGmQACEpHE6ANFw/NKFjMo6e4Chjdd1wcuzlH8Bu7NEJbni7kLkxjE
	YnP+pVQKjU7ggd7JlP9IXspwC5RnxoDLUvJ55/55UgkheIWafj8Hs6PHdg+8vzRIkMcyfPQSAcKNf
	rbAE1ItLm3y3UXRSYo/0btVld3t1ldFGWaUPWHD1AXlefJA048QyNUyxPXBVbaZZdkLHOlpPkSp/v
	4gDsBmcw==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHJFJ-00000000Ha5-21NV
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:03:41 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id ADA3F201BBB;
	Thu, 15 Oct 2026 13:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sb9ghZt5KKmu91pKQOxBx2SXn5jnNwoB7ojtq4q6qu8=;
	b=FYd0cqahGt5hHdruFsIDd5FRCikBaGIRc4/0n8/sLZK9vDFfidaAdO84pYB4xIma3qHxSU
	+oFvLiB958/zhWyf6nczaTyL7OfinW38bncOQwdNSNxknrK6JuTn9XVBmtdoBG1fNOmERP
	zi1S1I19NB3HBAGamsL1WkP4n7S8bfxX2rVK1czEHq+ImdneWU5+1Tt/bubh3srFszpPIk
	I385TtGVUj4d50EW+Ukl+dFxzdLJNidv+ci/x9QcBuTvPL1HoQKOhGng3VMAEi9vVQ2x0/
	XmZVm+NvEJW5Wizn84D7OHJ29M5UXlGPGlh8q75z8s+kgzVqg0/+yWn+cLL/hQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792062215; a=rsa-sha256;
	cv=none;
	b=ZpURKsQoRZ8siCphhP1aTVRTP6yuDQdVAJ3GDtTuPlMv69pU0iAX023ZClBbJdPt6axLFP
	uCrjrl08V+Q+hlus1wzYY1xzgT6ptaRbY9GY6CBp2gbjc6A+HbznH32dZFumrb+Vr0MfJ1
	Skav51irMetM708HsIZtwQfsb+49kkn9jEihR2p5nCJCKob1Rz+O+bxmgx1FAS33piDMY2
	jaCTP9z2Cl7l7S/+y4V/xqYfMGSXYZCs2LxTHTsAWpw/cZBqCHYFRmi6LvtgrJ+q/vuuzU
	wCvh2Ux33PhrCyopr/2KbCRKR/1i1HCq4wJdD4eKYdjsxh3yVDX9nLtZJcc2Fg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sb9ghZt5KKmu91pKQOxBx2SXn5jnNwoB7ojtq4q6qu8=;
	b=a/noHUbnS05E6TaRtvHdP6ZW6Ff/KXkcy1ktj0/GFbt+TjhJicFGtKXiuIW+9unThrv/KW
	PuGrYXVuXLoB22F6o8hs+m43OHl0vt6iZSDIsMyyY//gQfUak8XTgUFj1Ua4606WxtWnxs
	qX9B82w+lR8O3jRV0JPmI2wG3xnBwLDZDzJL1L7W6V/4Vx27vxCTHvvoI7dNYO9CBvygXa
	qMDndJJCVBB74PeJvxqmAGYuq+JGNAD55rLNPCG5wZZike5z4nvwFHNpKh0CYH2B/DgvpX
	NlT4rwkZMXd3JVwRT6YngyDj5fj0wy7lIA577YY8lGviiZrO8SJwIUBtZrd57g==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 8E1DD7409AB;
	Thu, 15 Oct 2026 13:03:35 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 2/2] Documentation: migration-guides: turn migration-master into directory
Date: Thu, 15 Oct 2026 13:03:31 +0200
Message-ID: <20261015110335.2285479-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015110335.2285479-1-a.fatoum@pengutronix.de>
References: <20261015110335.2285479-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_120337_704334_0FF64412 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This allows us to avoid conflicts, especially when basing
   on master and targeting merge into next. An extra benefit is that the upcoming
    migration guides are no longer hidden and thus easier to review after a local
    build. 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0A352201ADE
X-Stat-Signature: mm69y1duzmnp663hema9fbh8t3u1mrmz

This allows us to avoid conflicts, especially when basing on master and
targeting merge into next.

An extra benefit is that the upcoming migration guides are no longer
hidden and thus easier to review after a local build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/index.rst      |  1 +
 .../migration-guides/migration-master.rst     | 28 ++++++-------------
 .../migration-master/bootm-cmd.rst            | 20 +++++++++++++
 3 files changed, 30 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master/bootm-cmd.rst

diff --git a/Documentation/migration-guides/index.rst b/Documentation/migration-guides/index.rst
index 5e1a0cfbc7a0..ded638639e1e 100644
--- a/Documentation/migration-guides/index.rst
+++ b/Documentation/migration-guides/index.rst
@@ -12,3 +12,4 @@ causes build errors is generally out-of-scope for these documents.
    :glob:
 
    migration-20*
+   migration-master
diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 715edd5934c0..a5ca0a7f3b46 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -1,22 +1,12 @@
-:orphan:
+Pending changes
+===============
 
-Removal of bootm -c/-s options
-------------------------------
+This sections lists possibly backwards-incompatible changes that have been committed
+to the barebox source tree, but have not yet been included into a release.
+If you have concerns about any of them, now's a good time to reach out to the
+:ref:`mailing list <feedback>`.
 
-The :ref:`command_bootm` options ``-c`` and ``-s`` used to selectively
-enable checksum/hash and signature verification, respectively.
+.. toctree::
+   :glob:
 
-They have been removed in favor of the global toggle
-:ref:`global.bootm.verify <magicvar_global_bootm_verify>`.
-This can be restricted at build-time via setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES``
-or loosened :ref:`at runtime <use_security-policies>`
-via setting ``SCONFIG_BOOT_UNSIGNED_IMAGES``.
-
-The removal is motivated by making it easier to reason about what the active
-verification level is, especially as there are now other uses for verified
-images like when :ref:`global.of.overlay.path <magicvar_global_of_overlay_path>`
-points at a FIT.
-
-Existing users, if any, will fail-secure: The command will now exit with a failure::
-
-  bootm: invalid option -- s
+   migration-master/*
diff --git a/Documentation/migration-guides/migration-master/bootm-cmd.rst b/Documentation/migration-guides/migration-master/bootm-cmd.rst
new file mode 100644
index 000000000000..d82748d4a377
--- /dev/null
+++ b/Documentation/migration-guides/migration-master/bootm-cmd.rst
@@ -0,0 +1,20 @@
+Removal of bootm -c/-s options
+------------------------------
+
+The :ref:`command_bootm` options ``-c`` and ``-s`` used to selectively
+enable checksum/hash and signature verification, respectively.
+
+They have been removed in favor of the global toggle
+:ref:`global.bootm.verify <magicvar_global_bootm_verify>`.
+This can be restricted at build-time via setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES``
+or loosened :ref:`at runtime <use_security-policies>`
+via setting ``SCONFIG_BOOT_UNSIGNED_IMAGES``.
+
+The removal is motivated by making it easier to reason about what the active
+verification level is, especially as there are now other uses for verified
+images like when :ref:`global.of.overlay.path <magicvar_global_of_overlay_path>`
+points at a FIT.
+
+Existing users, if any, will fail-secure: The command will now exit with a failure::
+
+  bootm: invalid option -- s
-- 
2.47.3




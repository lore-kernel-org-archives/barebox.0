Delivery-date: Thu, 15 Oct 2026 11:28:20 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHl6-00DrUu-0M
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:28:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 938092025FA
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:28:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=svuIUM6k;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=IUEPgouY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Wjpm5g2g;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056499; a=rsa-sha256;
	cv=pass;
	b=asq3QFahmrXrujmkzITMeoLMiv5t0+uornZzchlS1MR7oe4SC+xuIMk2g1CUbo4qr1ita8
	nfOSAfFkAT647J7BJjob+ETWVS6zjf8wj4G8/oNxLBEokAQoKWCueM2I9CiIaxrEzatlJL
	ulMs7YkZbeU/DOuGkJKSxOypOPSX8rfC94wbVf1zH+9uWyyVy59kbgVZ2n4NO8kj2dIG4w
	u1BaY1oCyf4KeV0eEjqc1fQ5632lA71VaqaqHoxNqN0qPOZVa+mg1uyJ2Po8eSM2QqlvHA
	hlTW7uemfSAYLLF9lxjbbSnhFi0HEf+QgoM71HMzJIk4aS7r0xe9TFIZ0QJpUg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=svuIUM6k;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=IUEPgouY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Wjpm5g2g;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056499;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=GrCbfw9TbiRCVqNbHNtXFhCYVqbHz1CRfOXpY6f6pgM=;
	b=TucHHGYJkZHSPvtBKBGw96fv6SRl277ssfs5uBYVH/HgvR+2ZmUYg+A6K6Xc0cNe3clNXI
	TJJY3t6ipiUwNBJUMiWf36zz6if8Ricf3q6axMxZJ2GVH6TWeQcgYAZtP1FmfRuU08mGXd
	CroHdzK6k1aJPAIXleqRoyDvv3wCcBpMxkYvl0G459VnlP56E1ehDG3041kcPl5PzSeGxp
	DK9JYb0PT7TIr8fIpIrdm61aPW2mA1U/XxcpBYgiYKL/z0D/gHPyTM1IMHf0yUsULE1evf
	Cs6Xoe9UsdCT0fa5ieYsPOuxjLVVGgAi9B3UmQD1K8qt9EyPPezhyY+ab4CVNQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GrCbfw9TbiRCVqNbHNtXFhCYVqbHz1CRfOXpY6f6pgM=; b=svuIUM6k5FhbFBe/ydm7oMBNEo
	SgGQl2+OwUF+lI+SeUYNX4DEEWJ4Q4Ha8p9ogsuozFBPosP9NTdd3E0/1OIRSgeTf3lw/lanVXfyF
	1b0wXXiLc/mQq6lcgDXStvVLuQ1z6yChoz1FVtGh/OT1RMxMUMrzuV71IEyGVHln1RbmZck7MDUHB
	7+zNEQJ4yQrxBCVJ5txlJWguD8NZxaFeIeUqkVMNDERpHalZ0UIGf02O9GJMSEHtSQ5RH0IwwEyn0
	egpI1vcQiQEW9AZLt27ZUidJRV0Kq+2DwPB/Pi7i1D4JnYkIO3n/7PIknPuF4UOMpDok/hmw1EpA1
	UgOroxAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgG-0000000HFYK-0HSd;
	Thu, 15 Oct 2026 09:23:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgE-0000000HFWy-0wZz
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 09:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GrCbfw9TbiRCVqNbHNtXFhCYVqbHz1CRfOXpY6f6pgM=; b=IUEPgouYNeL93RA3GR+/NkSimS
	+jC2lGVwchUaIL56hF/TVuVJ9xK80WKv9aei0Uu1C2lT7Wqd2ATB47grq0P6FB303voMBOyBOi8/0
	MHDJry9GZIv711HiIYJeKQKh+Ep+4nHkkJwF7XpkSg324JUeS+TTAuwkdSxj5SSCwTKridgnCIUzJ
	hskF7miQwBOg2GFDJf8vGsleDEzy1iBwTFgiKQk87FOIJfKP8mBsoWa27sjYWSnhHzW7JYicIvCQZ
	Dg9HuKenJ/BQKl/O6x11kJ0SzT8ZYGw5h8V148h47edjUz81GQ7xH9HVVpnUu0ZMgeGORLHsDVL2I
	3C5JsdSw==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHHg9-00000000ANe-0hFX
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:23:17 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 82484202615;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GrCbfw9TbiRCVqNbHNtXFhCYVqbHz1CRfOXpY6f6pgM=;
	b=Wjpm5g2gzxEuaKyf7YSCwQOy6unBMKy6QOCdvV+qeNS1SpdzE0ujVDEH7XUeoihINAc++S
	X4kvERJYa99PCSfpHOWnQLmz6UhIGrPnn1AnkGfS/zhC7A3cAivmPxuAm1bukMH4c26++A
	73vk6xoP9oHeWT1tXog00z7XEmnOQKsAOTi6j9CXqq4U1ppgb4D0zE/klBj+eoGzpESux2
	43oxpHvi4W+KN0Defpwx2Ip7DTYCG+Pi1gGOxDAScHtJ1q5Cwp125Z4BIvoC+UWfxkwtP6
	2tOOTszVL9tqYxhDS3GJlif0WGAdppnq9SsbW3gFxeSpEH515q5qIlw4O2mRXA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056191; a=rsa-sha256;
	cv=none;
	b=KojaXD8xHU4h4PXDtUT8V7amoczPd11kDQu34KEqwqftGaofFNU2KqQLcz45Ez/pChemmM
	GDtK94+3Bnjxlj/Xs9S6Li27CgHEjUYVzcoZLg2RcEX3WxIAiT5sBF3hdJ6mdGFOrEs1Vf
	iON1HEpDWZGEZgBfdPc31sQaKzmKGDYFv8Ul6xTRIah8gYymqSs+/OeAZgIXQJTAx2/atJ
	mteJ+NshIzXxBndKMYUphtVjeplyiq894c1X1GInov1M+x7cXIhIO43Cf+ktkNwiZQ0Mco
	0+Sw3XH7vHa5hDCiBMoESpa/JoVv5yufQ/jJ5pjS8631YXSPnpJ23uv8e2hhbA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GrCbfw9TbiRCVqNbHNtXFhCYVqbHz1CRfOXpY6f6pgM=;
	b=DeF3UNXY/fHdiuP+mF6EOz1aJyUoaYXfJNsmvKMHzOjOrQ9oTijM4iKTChS/5FJ5w5aD9F
	4qXL0ZJ1L7I0iQs+RfPTZ7vrtZWGK0tybsNFM/lGSgT8/cNKUFotVTMj+HMhcHZFOE5cXs
	Dwp6AAJoMx1MRrbzcizs76mk3+BfOZwmiz8cvl0jvosgg1CBfpxJVv4vCHlae9GS5FCHQ5
	2z6UN6xk4fFngf9YgzhTo0PZQx4JQTl20hkhWNBEMATubUIak3V1s38Z0yg7VFJ6S1u9qC
	qbH2sLDh5EJ55Dq5jY6eBHB6jOFwUTs9j5zynA3wdTXv+ioJtXZ5kg1mOGcfIQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 642687409AB;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 03/10] common: bootargs: drop legacy bootargs fallback with FLEXIBLE_BOOTARGS
Date: Thu, 15 Oct 2026 11:18:45 +0200
Message-ID: <20261015092308.146516-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092308.146516-1-a.fatoum@pengutronix.de>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_102313_499398_929860B1 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  linux_bootargs_get() falls back to the legacy bootargs environment
    variable whenever the concatenation of all global.linux.bootargs.* variables
    comes out empty. That contradicts the documentation, whi [...] 
 
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_MIXED(0.00)[];
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
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 938092025FA
X-Stat-Signature: pfjzm6887tecmjafjbg9tb5irmorxde3

linux_bootargs_get() falls back to the legacy bootargs environment variable
whenever the concatenation of all global.linux.bootargs.* variables comes
out empty. That contradicts the documentation, which describes bootargs as
the CONFIG_FLEXIBLE_BOOTARGS=n way of passing a command line, and it only
worked until the first boot entry had run: bootscript_boot() registers
global.linux.bootargs.dyn.ip and .dyn.root, and the separator between the
two empty variables made the result non-empty, so the kernel got a command
line consisting of spaces instead.

Drop the fallback and return NULL when there is nothing to pass. All
callers already handle a NULL command line, as the fallback could return
NULL as well.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../migration-guides/migration-master.rst        | 16 ++++++++++++++++
 Documentation/user/booting-linux.rst             |  6 ++++--
 common/bootargs.c                                | 14 ++++++--------
 3 files changed, 26 insertions(+), 10 deletions(-)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 43d0b27bb0fe..815d1732cee4 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -27,3 +27,19 @@ Deep probe is now the default on STM32MP13 and STM32MP15
 barebox now enables deep probe for every ``st,stm32mp1xx`` compatible, even
 over ``barebox,disable-deep-probe``. Report to the mailing list if that
 breaks your board.
+
+Legacy bootargs variable ignored with CONFIG_FLEXIBLE_BOOTARGS
+--------------------------------------------------------------
+
+With ``CONFIG_FLEXIBLE_BOOTARGS`` enabled, the kernel command line used to
+fall back to the legacy ``bootargs`` environment variable whenever the
+concatenation of all ``global.linux.bootargs.*`` variables came out empty.
+This fallback is gone, only the global variables are used now.
+
+The fallback was already mostly unreachable: once a boot entry had run,
+``global.linux.bootargs.dyn.ip`` and ``global.linux.bootargs.dyn.root`` were
+registered and the separator between the two empty variables made the
+concatenation non-empty.
+
+Set ``global.linux.bootargs.base`` instead of ``bootargs``, or disable
+``CONFIG_FLEXIBLE_BOOTARGS`` to keep using the legacy variable.
diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 529d4de5c5b8..1608fc1ea431 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -86,8 +86,10 @@ The simple method to pass bootargs to the kernel is with
 takes the bootargs from the :ref:`bootargs <magicvar_bootargs>` environment variable.
 
 With ``CONFIG_FLEXIBLE_BOOTARGS`` enabled, the bootargs are composed
-from different :ref:`global device<global_device>` variables. All variables beginning
-with ``global.linux.bootargs.`` will be concatenated to the bootargs:
+from different :ref:`global device<global_device>` variables and the
+:ref:`bootargs <magicvar_bootargs>` environment variable is ignored.
+All variables beginning with ``global.linux.bootargs.`` will be concatenated
+to the bootargs:
 
 .. code-block:: sh
 
diff --git a/common/bootargs.c b/common/bootargs.c
index 6373d9ccb1f7..91e92e594876 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -17,12 +17,10 @@ static int linux_bootargs_overwritten;
 /*
  * This returns the Linux bootargs
  *
- * There are two ways to handle bootargs. The old legacy way is to use the
- * 'bootargs' environment variable. The new and more flexible way is to use
- * global variables beginning with "global.linux.bootargs." and
- * "global.linux.mtdparts.". These variables will be concatenated together to
- * the resulting bootargs. If there are no "global.linux.bootargs." variables
- * we fall back to "bootargs"
+ * The bootargs are concatenated from the global variables beginning with
+ * "global.linux.bootargs.", "global.linux.mtdparts." and
+ * "global.linux.blkdevparts.". The legacy 'bootargs' environment variable
+ * is only used by the CONFIG_FLEXIBLE_BOOTARGS=n stub in <bootargs.h>.
  */
 const char *linux_bootargs_get(void)
 {
@@ -35,9 +33,9 @@ const char *linux_bootargs_get(void)
 	linux_bootargs = NULL;
 
 	bootargs = globalvar_get_match("linux.bootargs.", " ");
-	if (!strlen(bootargs)) {
+	if (!*bootargs) {
 		free(bootargs);
-		return getenv("bootargs");
+		return NULL;
 	}
 
 	linux_bootargs = bootargs;
-- 
2.47.3




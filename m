Delivery-date: Wed, 26 Aug 2026 14:21:43 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCdT-007Qnr-09
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:21:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 31CE520227E
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:21:39 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fuARCF10;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0eVQhPB8cDr92+9ZcFvzKTmxM0fR0NzYO0597rmGk58=; b=fuARCF10T7rcHKUg/HMjodhtFZ
	N4E06dEdUfHQqJdUKuFnt9iJDLsu+C5TS1EEILf5nN9XlwcJvaIQ0qZzo28Uu6i46OL3I+pbVm5Ca
	BmKQSStppBem025WbTGywt314ATdAWkBBEfO3A39NOfWUAKu/c5q2Z0kG0TOSe7zV41qIjWqqSABU
	Ukx3u8qoiFlR+pSaoTNjyMX/VQjBDtqgwAK3Qjd078QRnxcHr3OEbcrynRtv5LjcladmPvyvr6H1H
	Y9vBV/xY0iYbaTh4J0g7swubHHv2+mI+dBEBVhHLfcUHE9hP16C31WtGlAIaTKxQzxA6yFw1ml+/C
	8IoDTF7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCbz-00000002Pn0-3OSE;
	Wed, 26 Aug 2026 12:20:12 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCbq-00000002Pi1-3HXx
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:20:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 021AB20203F;
	Wed, 26 Aug 2026 14:19:57 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbk-003RB1-2u;
	Wed, 26 Aug 2026 14:19:56 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbk-0000000CK1K-3O9u;
	Wed, 26 Aug 2026 14:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 1/9] common: bootargs: drop legacy bootargs fallback with FLEXIBLE_BOOTARGS
Date: Wed, 26 Aug 2026 14:17:05 +0200
Message-ID: <20260826121956.2936414-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
References: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_052003_187144_93DDEFA7 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  linux_bootargs_get() falls back to the legacy bootargs environment
    variable whenever the concatenation of all global.linux.bootargs.* variables
    comes out empty. That contradicts the documentation, whi [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: cp5ykn99c84hcfzmezzp3pssst9irq3o
X-Rspamd-Queue-Id: 31CE520227E

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
index d5601ac838c5..c67ea2157f47 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -12,3 +12,19 @@ OP-TEE loading is now only supported
 
 For i.MX6 boards, this can be enabled by enabling
 ``CONFIG_FIRMWARE_IMX6_OPTEE``.
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
index 0f1225681360..95834786b67a 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -84,8 +84,10 @@ The simple method to pass bootargs to the kernel is with
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
index 36528b8b5827..710f74de9629 100644
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
@@ -34,9 +32,9 @@ const char *linux_bootargs_get(void)
 	free(linux_bootargs);
 
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




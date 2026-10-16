Delivery-date: Fri, 16 Oct 2026 08:21:34 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHbJt-00EFBn-2Q
	for lore@lore.pengutronix.de;
	Fri, 16 Oct 2026 08:21:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F40E5202608
	for <lore@pengutronix.de>; Fri, 16 Oct 2026 08:21:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rSG4H3bS;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=casper.20170209 header.b=GAMmwMIP;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=FWQhuUap;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792131693; a=rsa-sha256;
	cv=none;
	b=Hx0NdiXcdMV017Tk1iyrA4G/pTLvX1Fd4It3EBcK+tbmCMhYQRLzoOIkan/mAQ+a9g+1TU
	+bk2rU6rQJNBNNrxZwxucA7MRM7YGsu4BW01j6fdmYsZrN1xbA9oLESKIsxhkUu5gDERtJ
	QZZ4bO5iZyScZv2v6bHOkJC1TjlVanOKaWYzha+KFl7ASE56XNzZcUB9c+yFK9MtGR4fFu
	qk0jFWYQxlcM3txxTkVELHlMQigYoMWknnLLfWZMODVxk/i23JLkFnWv8pQVmcxiq7vato
	LIhDxACZhaBfs1ocJOROVjRi660OX2kWXKbeeua9xtjPipoMmBzITzup9GRToA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rSG4H3bS;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=casper.20170209 header.b=GAMmwMIP;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=FWQhuUap;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792131693;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=GyxSUX2e1nJWVDD4yEgm+4KPWdzpheMOvjj7EFh+ugQ=;
	b=U5CRRJtFXIuQYn1PVaJrpi4Y7lthES7FhEknuayw3hxESKaK9+M/7a8fECvUlI5v2aTint
	xnWGw68w/pxP+E8P7GmQTNuuSNMQU+hCeDiIRRjNSzf5ix9heEgyXhTb2WEnj7qN7KdUzI
	01ye7r+wp2VMFutoZor3uUs+cyY+jr6QkPwO7XzFQh7NaVMf/jinnO0Q2oj2D/0oRTGnoh
	IvoGz5atbM0Y5FnwWZXcJ5HFH/TwMJxKskDoi4NWxe8JWh2mwcvVxx/Vhdutx+Nbx5ArBx
	TxEMAQqNNhOvvAp8hIOJ5vfGeuoCwAOWuCEqcqfZa9FCE8vmMqwOeWFVYuCldQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GyxSUX2e1nJWVDD4yEgm+4KPWdzpheMOvjj7EFh+ugQ=; b=rSG4H3bSYGQRqHP7IpZ6NuGrUG
	Qdcacs9DrTqi+t7TLNwvMUtdG1ShO6iw72SRof+x8vd4yNI/9Y7b6nkiIo72NC7IZUA3z2CRLB/+7
	8+1DCpABrFFi8I45r1kuhF84JdKl9FCDiKuHN1GgAc5qGY3/kVMwSvdpEUBQsaKChtOmTFue93FMi
	IC7qhNFbcXlb4UYJrSzXqwkCNp5GLL58yqzsjcXMYuVDCq5GIfuT7iK4BaMKcukqcD9xakNqEMPUK
	SYKbvJULX0bUqGwKT8Yw8/MisvbgzeHTDwIDpBFz+iJ70Sh7tLAn9niLMDebVQhziTtQWSeycLyk2
	bve2wRZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHbHB-000000026fm-0hQZ;
	Fri, 16 Oct 2026 06:18:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHbH8-000000026ef-43Yj
	for barebox@bombadil.infradead.org;
	Fri, 16 Oct 2026 06:18:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=GyxSUX2e1nJWVDD4yEgm+4KPWdzpheMOvjj7EFh+ugQ=; b=GAMmwMIPLgwHniWTlwVLhKZ9Rj
	FvrQb67h12EwO4D8LgAZEiWe0Yfgelf7HNt3MmMJi8le7CxJtUOFwzXMirFehaqMCx5khKAMwZH83
	eRIzFnQYC2ahFx6mbeWy5zE8MeqSEAHu5RIFtAVg3ccCy1h+cmClv/Lq0V2WR0QNDwYtUdA/q/ST3
	ewyYlS9kV2B22wM1kjETZBACL8mGXuH+nhRmb6v7R4MnnEQj7G6tCZ9jPtCWaIvuagCBNpsPcqnk5
	QD26cLSyJGqqhoWSjjtbWBOL43LAX/n0b8ALafrcMNBmOh4ZLM/0qts3p5fvyv/FsP8bJ/g1iFtqz
	fryg0DyQ==;
Received: from cp2.siel.si ([46.19.12.180])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHbH4-00000001SJb-3xPq
	for barebox@lists.infradead.org;
	Fri, 16 Oct 2026 06:18:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
	Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Unsubscribe-Post:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GyxSUX2e1nJWVDD4yEgm+4KPWdzpheMOvjj7EFh+ugQ=; b=FWQhuUapq8yf9WWeCpXa5752+W
	+fQRYsw5k0y6kjPu8YIsBDSyJH+v7iE2ljrlBs84SxvymAu0wkH4Fp0w0gH/feg0YgMVmEZtJwVUi
	nNjgdJE9tpSXRuud0/BuY/3ypuvGUpe1cfMKAOgxFym3Ux2NyBzxwDfSBRZKoyTMbizuKVL50/jjK
	RcLTnqsSFjT+Je2i/xJws65DO74tTcm8ssYH/ER6vxflR8SQRrMqBut7k+Wa5/EoT6lqvcCnhcXzT
	zY8O2hwsidghCZgZjPJrftTevaVnS5vCQt6VZsIPegFQNnLc8TlpL4Cc0Ew1OVj4N/4MBgH5IbedC
	ENXwTIzg==;
Received: from 86-58-88-254.dynamic.telemach.net ([86.58.88.254]:60304 helo=florijan-nb.localdomain)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1xHbFi-00000003fFm-3LDU;
	Fri, 16 Oct 2026 08:17:13 +0200
From: Florijan Plohl <florijan.plohl@norik.com>
To: barebox@lists.infradead.org,
	s.hauer@pengutronix.de
Cc: a.fatoum@pengutronix.de,
	upstream@lists.phytec.de
Subject: [PATCH] defaultenv: apply external environment after board overlays again
Date: Fri, 16 Oct 2026 08:17:11 +0200
Message-ID: <20261016061711.130600-1-florijan.plohl@norik.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp2.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cp2.siel.si: authenticated_id: florijan.plohl@norik.com
X-Authenticated-Sender: cp2.siel.si: florijan.plohl@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_071839_112537_04A86D9F 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 4.0.2 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1236::1:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	FORGED_SENDER(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[norik.com];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=casper.20170209,norik.com:s=default];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	HAS_X_SOURCE(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,norik.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: F40E5202608
X-Stat-Signature: n5n7gw3j1swbuznztcfbja9j9tezjz6f

Since commit 7f1cc5dd869d ("defaultenv: add base and external defaultenv
in pure_initcall"), the environment given with
CONFIG_DEFAULT_ENVIRONMENT_PATH is added before boards add their own
overlays with defaultenv_append_directory(). As overlays are applied in
the order they were added, board overlays now overwrite the external
environment, contrary to Documentation/user/defaultenv-2.rst, and BSPs
can no longer replace a board's default environment files, e.g. its boot
scripts.

Restore the documented order by giving each overlay a priority and
keeping the list sorted by it: the base and board specific overlays are
applied first, followed by CONFIG_DEFAULT_ENVIRONMENT_PATH. Overlays
added at runtime with defaultenv_append_runtime_directory(), like the
QEMU fw_cfg environment, are still applied last, so they keep
overwriting the external environment.

No in-tree board adds its own overlay and sets
CONFIG_DEFAULT_ENVIRONMENT_PATH at the same time, so only out-of-tree
configurations are affected. Add a migration guide entry for them.

Fixes: 7f1cc5dd869d ("defaultenv: add base and external defaultenv in pure_initcall")
Reported-by: Primoz Fiser <primoz.fiser@norik.com>
Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
---
RFC: https://lore.barebox.org/barebox/20261007055953.1001705-1-florijan.plohl@norik.com/

Changes since RFC, following Ahmad's review:
- Fix the order generically in defaultenv.c instead of a per-board
  opt-in
- Keep runtime overlays like QEMU fw_cfg after the external
  environment
- Add a migration guide entry
- Drop the phytec-som-imx6 board patch

Priorities are used, as appending the external environment from
defaultenv_load() would put it after fw_cfg again, and a later initcall
would depend on link and probe order.

Tested in sandbox (external overrides board, /env unchanged without
it, runtime overlay still wins) and on a phyCORE-i.MX6 with the Yocto
BSP environment, not with a real QEMU fw_cfg.

 .../migration-guides/migration-master.rst     | 15 ++++
 Documentation/user/defaultenv-2.rst           |  5 ++
 defaultenv/defaultenv.c                       | 82 ++++++++++++++++---
 3 files changed, 89 insertions(+), 13 deletions(-)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 715edd5934..59b9514997 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -20,3 +20,18 @@ points at a FIT.
 Existing users, if any, will fail-secure: The command will now exit with a failure::
 
   bootm: invalid option -- s
+
+Default environment overlay order
+---------------------------------
+
+Releases since v2026.01.0 applied board specific default environment overlays
+added with ``defaultenv_append_directory()`` after the environment given
+with ``CONFIG_DEFAULT_ENVIRONMENT_PATH`` and thus overwrote its files.
+
+The documented order has been restored: ``CONFIG_DEFAULT_ENVIRONMENT_PATH``
+is applied after the board specific overlays again and can overwrite their
+files. Overlays only available at runtime, like an environment passed via
+QEMU fw_cfg, are still applied last.
+
+BSPs that started to rely on the board specific overlay taking precedence
+need to remove the conflicting files from their external environment.
diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index 719abe2782..78adb69293 100644
--- a/Documentation/user/defaultenv-2.rst
+++ b/Documentation/user/defaultenv-2.rst
@@ -34,6 +34,11 @@ board specific overlay, or overlays, could be at any path, but usually follows
 the form given.  They must be added to a Makefile in ``bbenv-y`` and
 ``defaultenv_append_directory()`` used to add them in board init code.
 
+Overlays that are only available at runtime, like an environment passed
+via QEMU fw_cfg as ``opt/org.barebox.env``, are applied after all of the
+above and can thus also overwrite files from
+``$(CONFIG_DEFAULT_ENVIRONMENT_PATH)``.
+
 Note that not all of the above directories will necessarily be
 included in your default environment, it depends on your barebox
 configuration settings. You can see the configuration variables
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index 573b1f862f..9a7600a7f9 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -24,14 +24,63 @@
 
 static LIST_HEAD(defaultenv_list);
 
+/*
+ * defaultenv_list is kept sorted by ascending priority, overlays of the same
+ * priority stay in the order they were added. defaultenv_load() applies them
+ * in list order, so a file from a later overlay replaces the same file of an
+ * earlier one, unless ENV_FLAG_NO_OVERWRITE is passed.
+ */
+enum defaultenv_prio {
+	/* base and board specific overlays, added with defaultenv_append() */
+	DEFAULTENV_PRIO_BOARD,
+	/* the environment given with CONFIG_DEFAULT_ENVIRONMENT_PATH */
+	DEFAULTENV_PRIO_EXTERNAL,
+	/* overlays added with defaultenv_append_runtime_directory() */
+	DEFAULTENV_PRIO_RUNTIME,
+};
+
 struct defaultenv {
 	struct list_head list;
+	enum defaultenv_prio prio;
 	const char *srcdir;
 	const char *name;
 	void *buf;
 	size_t size;
 };
 
+static void defaultenv_add(struct defaultenv *df)
+{
+	struct defaultenv *pos;
+
+	/*
+	 * Insert behind all entries of the same priority. list_add_sort()
+	 * would insert in front of them and thus reverse the order in which
+	 * overlays of the same priority were added.
+	 */
+	list_for_each_entry(pos, &defaultenv_list, list) {
+		if (pos->prio > df->prio) {
+			list_add_tail(&df->list, &pos->list);
+			return;
+		}
+	}
+
+	list_add_tail(&df->list, &defaultenv_list);
+}
+
+static void __defaultenv_append(void *buf, unsigned int size, const char *name,
+				enum defaultenv_prio prio)
+{
+	struct defaultenv *df;
+
+	df = xzalloc(sizeof(*df));
+	df->buf = buf;
+	df->size = size;
+	df->name = name;
+	df->prio = prio;
+
+	defaultenv_add(df);
+}
+
 /*
  * defaultenv_append - append a envfs buffer to the default environment
  * @buf:	The buffer containing the binary environment. If it is
@@ -39,20 +88,24 @@ struct defaultenv {
  * @size:	The length of the buffer
  *
  * This adds an overlay to the default environment. New files will be created,
- * existing files will be overwritten with the overlay.
+ * existing files will be overwritten with the overlay. The environment given
+ * with CONFIG_DEFAULT_ENVIRONMENT_PATH is applied after all overlays added
+ * with this function and can thus overwrite their files.
  */
 void defaultenv_append(void *buf, unsigned int size, const char *name)
 {
-	struct defaultenv *df;
-
-	df = xzalloc(sizeof(*df));
-	df->buf = buf;
-	df->size = size;
-	df->name = name;
-
-	list_add_tail(&df->list, &defaultenv_list);
+	__defaultenv_append(buf, size, name, DEFAULTENV_PRIO_BOARD);
 }
 
+/*
+ * defaultenv_append_runtime_directory - append a directory to the default
+ *                                       environment
+ * @srcdir:	The directory whose contents should be added
+ *
+ * This adds an overlay that is copied from @srcdir when the default environment
+ * is loaded. It is applied after the environment given with
+ * CONFIG_DEFAULT_ENVIRONMENT_PATH and can thus overwrite its files.
+ */
 void defaultenv_append_runtime_directory(const char *srcdir)
 {
 	struct defaultenv *df;
@@ -60,8 +113,9 @@ void defaultenv_append_runtime_directory(const char *srcdir)
 	df = xzalloc(sizeof(*df));
 	df->srcdir = srcdir;
 	df->name = srcdir;
+	df->prio = DEFAULTENV_PRIO_RUNTIME;
 
-	list_add_tail(&df->list, &defaultenv_list);
+	defaultenv_add(df);
 }
 
 static int defaultenv_load_one(struct defaultenv *df, const char *dir,
@@ -158,10 +212,12 @@ static int defaultenv_init(void)
 
 	/*
 	 * The traditional or external environment given with
-	 * CONFIG_DEFAULT_ENVIRONMENT_PATH.
+	 * CONFIG_DEFAULT_ENVIRONMENT_PATH. It is added here already, but
+	 * still applied after the board specific overlays added later on.
 	 */
-	defaultenv_append((void *)default_environment,
-			default_environment_size, "defaultenv");
+	__defaultenv_append((void *)default_environment,
+			    default_environment_size, "defaultenv",
+			    DEFAULTENV_PRIO_EXTERNAL);
 
 	return 0;
 }
-- 
2.43.0




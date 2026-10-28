Delivery-date: Wed, 28 Oct 2026 10:29:49 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzye-004H6V-2k
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:29:49 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B581C20294C
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:29:48 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LnlxUEpQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Uoe4tGxX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179789; a=rsa-sha256;
	cv=pass;
	b=NsC5MOcYA6h4/zFOz6/zGXmP9c43ZRwH+FR3pr2osE/0kEV6aYuNHgrvfKzOIgV2M8oE+E
	xxMofnFwDEA2hxPAzMrvnPl0hFyReUPoJJLHfD2IlHivZoj3R+KJCzj1LLH4L9W4PY3X1D
	aeTVGwg+GpNF15X9JEo4YdOtKWh6+zGP4pGmg9JAJYhRClp5Y1UyKKgz4Mxta0fKZwbX7o
	RNfrlrd9tj6uinhafXWxoBKOASq1x1RgMsm+p7TOxdWn38cr6S4K5PWsRgwL88XuSaZDWL
	zu4DRaXG5L3F9Ihx3j+LkPL9Rhglne2OYO4GRUqm1FrzpZ5ariDiRHEZVQ2Cvw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LnlxUEpQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Uoe4tGxX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179789;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=1SXgTS18CjIyIY0KkS65lJ8l4BNyMMdYUpqh3UUHKvE=;
	b=e1eGXNYWKu/+PizF+pf9epNU4fTLk9SzcSmiSi/l1Gsc8/hwo5rT6xSfAQ2doETq8qzYht
	Eo+JAb7RSk4QQ6zo0ZKg++KcnBtT/xizSieKMFCN9sOfOju0Iv35GkyWf4PnO2E28Mt8s3
	ZUiydN8X/jqfQC8wxZmCGdtYnaWZd6sgCMW+oZZq118VyHC9Z76zXrnlrUP2p/pg+CCM4j
	iedCZv3Qn20dxydSPSpSwzwBrgzPH64YOE2lO7y/tVmx/v4EMHGw4nbK7A3RCMOefUHAfP
	1ZSfgu6nTzBUDkKf65jHMTLV+uo8ueBsfXmTlb6FWZYvfOGlct60fPSSslmv+Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=1SXgTS18CjIyIY0KkS65lJ8l4BNyMMdYUpqh3UUHKvE=; b=LnlxUEpQKsQJyq
	QngUWrRnSBQ7qCVi/FDObMWj0jW9vFpM3ufodu83OvkfHhloPuSpGc9jz+BpjE2xQWSf34vLNS5cu
	M3L0m2eHMFt9NlUTwFPs320NeezPWxddnd3QlosnR4qLOAIXtTsycNGdgqzOU4SX0bCA+qT3fakjR
	PeXoWcgWLeO8ek0wpiyra/GYGzR0KHQ68CMu8tWNElMBgv/1ERGST2Uixg6COkK3UD3Xo2dtiYNNj
	kiIKAvZ3HxcwsBFIH+y1H4zi+kuYe+mfm8kFjyFrJK0OT3YNDiDGGto8pz5D2UOk5BmDqz8jdOPxj
	LAqZwajqVO+d2qTu5z9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzu4-00000006eVq-3Od5;
	Wed, 28 Oct 2026 09:25:04 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztv-00000006eGx-0lZW
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:59 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0A16920295D;
	Wed, 28 Oct 2026 10:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1SXgTS18CjIyIY0KkS65lJ8l4BNyMMdYUpqh3UUHKvE=;
	b=Uoe4tGxX5bBfQ8SUlXGiDKBy9uqO/yXeFGhOchjDVpL/Q9EY0d4uHspM7oPIg0pXCIE5oz
	btOmVNds/i/cf+r3v03Dk2kR2BqNcCzfC8yYh+mt4pjgx0/kQ04CMM6E5EfFVGjcCL43NU
	97SdPi7w+K6TZ0nK+oHA9nB1+AoapkNBDljg4Gwso50wna9XODmorCIjMN0hCMDVTZT8F9
	RlDj7DIYOFLGgDJWTkIGmC88REALget2JFkSvA9QXZLvQX20m1rTeRZVpKZyR4b54dPAr6
	P6ClROhhO6a7gLEdg4q4R0qdPPUitFRm8m+ceWy4NGGYt05tKfM1wZ+9TbqjRQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179486; a=rsa-sha256;
	cv=none;
	b=NchU6SoMhr71VQO30+wnuqak0PYvBW6NjyFA9I/bV7/2m4AZ5zScxnKAlHFq6OkvAgkDbv
	eTYwxpXpA1JDyInwsbmF/qQrvI9y4rSHMFXrMyKV7n58modMC+n90Y8B5OcarPeSlzg2oY
	RAdCOwSqfjxuP0lzrRHgudc9QoDiN8SVKu99bttjcTqeDuKq7FemyMIPrYqOughnS9422M
	6zCPAnM1gV3/y/VMaUUPPxxtb4qc5cW9ONsYjiP5r/Y1tQH7WTaU6FhWHMw4qpmiGKjmCI
	lrDsIXI80SHDclOCEsiGQP8I+Ev/IWpYAOJpK7QIxLsCH0He2WPYi/OuWpxhYA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1SXgTS18CjIyIY0KkS65lJ8l4BNyMMdYUpqh3UUHKvE=;
	b=G9J/s4hUzNY3tRi27naPOIfnB2ysKRPoIVgoa8aRmvld7P4fEeVhz9S0FlfVg242g4J1Xv
	q7S5G14kPjEmNRDUzCfFLVmDowJX4n/DrWGBEHbeFKEvAhIB/JLRhe6blXr7RytTvg2d9k
	e3bX9qGmYM+EaQKPIOqS1iiVTgxWTM67NZ3r6ezcb7fZRa2f6q0U39T0mDjXMD2/cYtA+o
	rRgJM0l+uk5xamR4sL7oXyCqpexfT9vPrKly1THzuEsWjX9IHpzLrKLPLDL1vAEy0tcnFd
	VzD+X7MwYFHq9nb7BAu9MMFRfewh+ggY/N0lsig1A8VHwf53ewrYLdD+ShQhSQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id E55107420DE;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 14/19] test: self: add devm_ selftest
Date: Wed, 28 Oct 2026 10:14:48 +0100
Message-ID: <20261028092442.3300753-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022455_619868_D7D9E119 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Check alignment,
    zeroing, early devm_kfree() and action order as well as the release points:
    failed probe, remove, unbind of a driver without .remove and unregistering
    a device with children in manage [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B581C20294C
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: p4dghb6kbxrihufp81rfd9zbwzaygs6t

From: Ahmad Fatoum <a.fatoum@barebox.org>

Check alignment, zeroing, early devm_kfree() and action order as well
as the release points: failed probe, remove, unbind of a driver without
.remove and unregistering a device with children in managed memory.
Also check that shutdown runs the actions, but keeps the memory.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/self/Kconfig  |   6 +
 test/self/Makefile |   1 +
 test/self/devres.c | 289 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 296 insertions(+)
 create mode 100644 test/self/devres.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index bdee21f17d7e..e655740c41cb 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -53,6 +53,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_DM
 	select SELFTEST_LVM if BLOCK
 	select SELFTEST_TALLOC
+	select SELFTEST_DEVRES
 	select SELFTEST_BLSPEC if BLSPEC && DEFAULT_ENVIRONMENT
 	help
 	  Selects all self-tests compatible with current configuration
@@ -87,6 +88,11 @@ config SELFTEST_TALLOC
 	help
 	  Tests barebox talloc allocator
 
+config SELFTEST_DEVRES
+	bool "devm_ selftest"
+	help
+	  Tests device-managed resources
+
 config SELFTEST_PRINTF
 	bool "printf selftest"
 	help
diff --git a/test/self/Makefile b/test/self/Makefile
index 0fba7ac56654..337a211d761c 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_SELFTEST_RANGE) += range.o
 obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
 obj-$(CONFIG_SELFTEST_CLEANUP) += cleanup.o
 obj-$(CONFIG_SELFTEST_TALLOC) += talloc.o
+obj-$(CONFIG_SELFTEST_DEVRES) += devres.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 CFLAGS_printf.o += -Wno-format-security -Wno-format
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
diff --git a/test/self/devres.c b/test/self/devres.c
new file mode 100644
index 000000000000..4fdc71064b4a
--- /dev/null
+++ b/test/self/devres.c
@@ -0,0 +1,289 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "devres: " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <dma.h>
+#include <linux/bitmap.h>
+#include <driver.h>
+#include <linux/device.h>
+
+BSELFTEST_GLOBALS();
+
+static bool __selftest_check(bool cond, const char *func, int line)
+{
+	total_tests++;
+	if (cond)
+		return true;
+
+	pr_err("assertion failure at %s:%d\n", func, line);
+
+	failed_tests++;
+	return false;
+}
+#define selftest_check(cond) __selftest_check((cond), __func__, __LINE__)
+
+static char action_log[8];
+static unsigned action_log_len;
+
+static void log_action(void *data)
+{
+	if (action_log_len < sizeof(action_log) - 1)
+		action_log[action_log_len++] = *(char *)data;
+}
+
+static void reset_action_log(void)
+{
+	memset(action_log, 0, sizeof(action_log));
+	action_log_len = 0;
+}
+
+static void test_devres_alloc(void)
+{
+	struct device *dev = device_alloc("devres-test", DEVICE_ID_DYNAMIC);
+	unsigned long *bitmap;
+	const char *cstr;
+	char *str, *buf;
+	int *arr;
+
+	if (selftest_check(register_device(dev) == 0) == false)
+		return;
+
+	buf = devm_kmalloc(dev, 1, GFP_KERNEL);
+	selftest_check(buf && PTR_IS_ALIGNED(buf, DMA_ALIGNMENT));
+	buf[0] = 0xff;
+
+	arr = devm_kzalloc_objs(dev, *arr, 100);
+	selftest_check(arr && PTR_IS_ALIGNED(arr, DMA_ALIGNMENT));
+	selftest_check(memchr_inv(arr, 0, 100 * sizeof(*arr)) == NULL);
+	arr[0] = 42;
+	arr[99] = 42;
+
+	bitmap = devm_bitmap_zalloc(dev, 100, GFP_KERNEL);
+	selftest_check(bitmap && bitmap_empty(bitmap, 100));
+
+	str = devm_kstrdup(dev, "hello", GFP_KERNEL);
+	selftest_check(str && !strcmp(str, "hello"));
+	selftest_check(devm_kstrdup(dev, NULL, GFP_KERNEL) == NULL);
+
+	cstr = devm_kstrdup_const(dev, "const", GFP_KERNEL);
+	selftest_check(cstr && !strcmp(cstr, "const"));
+
+	str = devm_kasprintf(dev, GFP_KERNEL, "%s%d", "test", 123);
+	selftest_check(str && !strcmp(str, "test123"));
+
+	selftest_check(devm_kmalloc(dev, 0, GFP_KERNEL) == ZERO_SIZE_PTR);
+
+	/* Early frees, including the ones that must be no-ops */
+	devm_kfree(dev, arr);
+	devm_kfree(dev, cstr);
+	devm_kfree(dev, NULL);
+	devm_kfree(dev, ZERO_SIZE_PTR);
+
+	selftest_check(buf[0] == 0xff && !strcmp(str, "test123"));
+	selftest_check(dev->devres != NULL);
+
+	unregister_device(dev);
+	selftest_check(dev->devres == NULL);
+	free_device(dev);
+}
+
+static void test_devres_action(void)
+{
+	struct device *dev = device_alloc("devres-test", DEVICE_ID_DYNAMIC);
+	static char a = 'a', b = 'b', c = 'c';
+
+	if (selftest_check(register_device(dev) == 0) == false)
+		return;
+
+	reset_action_log();
+
+	selftest_check(devm_add_action(dev, log_action, &a) == 0);
+	selftest_check(devm_add_action_or_reset(dev, log_action, &b) == 0);
+	selftest_check(devm_add_action(dev, log_action, &c) == 0);
+	selftest_check(action_log_len == 0);
+
+	/* Actions run in reverse order of registration */
+	unregister_device(dev);
+	selftest_check(!strcmp(action_log, "cba"));
+	free_device(dev);
+}
+
+static void test_devres_shutdown(void)
+{
+	struct device *dev = device_alloc("devres-test", DEVICE_ID_DYNAMIC);
+	static char a = 'a', b = 'b';
+	char *buf;
+
+	if (selftest_check(register_device(dev) == 0) == false)
+		return;
+
+	reset_action_log();
+
+	buf = devm_kstrdup(dev, "kept", GFP_KERNEL);
+	selftest_check(devm_add_action(dev, log_action, &a) == 0);
+	selftest_check(devm_add_action(dev, log_action, &b) == 0);
+
+	/* Shutdown runs the actions, but keeps the memory */
+	devres_run_actions(dev);
+	selftest_check(!strcmp(action_log, "ba"));
+	selftest_check(!strcmp(buf, "kept"));
+
+	/* Releasing doesn't run them again */
+	unregister_device(dev);
+	selftest_check(!strcmp(action_log, "ba"));
+	free_device(dev);
+}
+
+static int probe_result;
+static char *probe_buf;
+
+static int devres_test_probe(struct device *dev)
+{
+	static char p = 'p';
+
+	probe_buf = devm_kzalloc(dev, 16, GFP_KERNEL);
+	strcpy(probe_buf, "probed");
+	devm_add_action(dev, log_action, &p);
+
+	return probe_result;
+}
+
+static void devres_test_remove(struct device *dev)
+{
+	static char r = 'r';
+
+	/* Managed resources must still be intact during remove */
+	log_action(&r);
+	selftest_check(!strcmp(probe_buf, "probed"));
+}
+
+static struct driver devres_test_driver = {
+	.name = "devres-test",
+	.probe = devres_test_probe,
+	.remove = devres_test_remove,
+};
+
+static void test_devres_probe(void)
+{
+	struct device *dev;
+
+	if (selftest_check(platform_driver_register(&devres_test_driver) == 0) == false)
+		return;
+
+	/* Failed probe releases everything */
+	reset_action_log();
+	probe_result = -ENODEV;
+	dev = device_alloc("devres-test", DEVICE_ID_DYNAMIC);
+	platform_device_register(dev);
+	selftest_check(dev->driver == NULL);
+	selftest_check(!strcmp(action_log, "p"));
+	selftest_check(dev->devres == NULL);
+	unregister_device(dev);
+	free_device(dev);
+
+	/* Successful probe keeps everything until remove */
+	reset_action_log();
+	probe_result = 0;
+	dev = device_alloc("devres-test", DEVICE_ID_DYNAMIC);
+	platform_device_register(dev);
+	selftest_check(dev->driver == &devres_test_driver);
+	selftest_check(action_log_len == 0);
+	selftest_check(dev->devres != NULL);
+	unregister_device(dev);
+	selftest_check(!strcmp(action_log, "rp"));
+	selftest_check(dev->devres == NULL);
+	free_device(dev);
+
+	unregister_driver(&devres_test_driver);
+}
+
+static int devres_noremove_probe(struct device *dev)
+{
+	static char n = 'n';
+
+	devm_add_action(dev, log_action, &n);
+
+	return 0;
+}
+
+static struct driver devres_noremove_driver = {
+	.name = "devres-noremove",
+	.probe = devres_noremove_probe,
+};
+
+static void test_devres_unbind(void)
+{
+	struct device *dev;
+
+	if (selftest_check(platform_driver_register(&devres_noremove_driver) == 0) == false)
+		return;
+
+	reset_action_log();
+	dev = device_alloc("devres-noremove", DEVICE_ID_DYNAMIC);
+	platform_device_register(dev);
+	selftest_check(dev->driver == &devres_noremove_driver);
+	selftest_check(dev->devres != NULL);
+
+	/* A driver without remove callback releases its resources as well */
+	unregister_driver(&devres_noremove_driver);
+	selftest_check(dev->driver == NULL);
+	selftest_check(dev->devres == NULL);
+	selftest_check(!strcmp(action_log, "n"));
+
+	unregister_device(dev);
+	free_device(dev);
+}
+
+struct devres_parent_priv {
+	struct device child;
+};
+
+static int devres_parent_probe(struct device *dev)
+{
+	struct devres_parent_priv *priv;
+
+	priv = devm_kzalloc_obj(dev, *priv);
+	dev_set_name(&priv->child, "devres-child");
+	priv->child.id = DEVICE_ID_DYNAMIC;
+	priv->child.parent = dev;
+
+	return register_device(&priv->child);
+}
+
+static struct driver devres_parent_driver = {
+	.name = "devres-parent",
+	.probe = devres_parent_probe,
+};
+
+static void test_devres_child(void)
+{
+	struct device *dev;
+
+	if (selftest_check(platform_driver_register(&devres_parent_driver) == 0) == false)
+		return;
+
+	dev = device_alloc("devres-parent", DEVICE_ID_DYNAMIC);
+	platform_device_register(dev);
+	selftest_check(dev->driver == &devres_parent_driver);
+	selftest_check(!list_empty(&dev->children));
+
+	/* The child lives in managed memory and must be unregistered first */
+	unregister_device(dev);
+	selftest_check(dev->devres == NULL);
+	free_device(dev);
+
+	unregister_driver(&devres_parent_driver);
+}
+
+static void test_devres(void)
+{
+	test_devres_alloc();
+	test_devres_action();
+	test_devres_shutdown();
+	test_devres_probe();
+	test_devres_unbind();
+	test_devres_child();
+}
+bselftest(core, test_devres);
-- 
2.47.3




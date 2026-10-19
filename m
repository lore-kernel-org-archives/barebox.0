Delivery-date: Mon, 19 Oct 2026 12:07:24 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xIkH5-000ZN5-2e
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 12:07:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ACAAE20235E
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 12:07:23 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rtYqY3Rf;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LNd0JK0e;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792404444; a=rsa-sha256;
	cv=pass;
	b=eWbqfyFsQzmkr1Z67c8yU3TxPBHxs3Px2Vhnu7EqZV65sYadwCzLc8Ra1pCJFrb0nSQlF4
	93U5N1GRA+4szLWwaoDSDHrQV5jfd8WgXURm9ZNmGck4GyQUoxRHq/8iqM3aqfceHi8XI9
	dWyli8IUIa5hYlNSsNL4eyDBVQpcjhMyKf3r+UrZVExp6Xsj314UnPp+GJxKNoDX+q5y4h
	DTtxvzxO988BvAsWl5heDkybDTI5IURnAJtuGXo4smNbyvEaC6t//C6BdIPctOC5Jgg8RB
	4KRjvB3H4nFbbhnwuNtC5s5vLGsU+YCS2TYmj2xwLi8UK8GScIM/Kr9gk3+UCQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rtYqY3Rf;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LNd0JK0e;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404444;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=m9VLwCrJN/pzNOmFLp8fEXAbjwP9s6LlDTM6mFYScT8=;
	b=PCeL8T34Qs5Ha20h66la6wmhCwbcKy1VDDJ9Mgiwu1qLQ8eSjesI3A1sNhcvHs3RLI7Npo
	HvWpJl9Rvldmm8VIXdm/DlX83E2nrPnP0Cn0A+JlxWEdxtZSAVmOQ4gg1cCopWo9VTSwyH
	MTjFKJHbh/y7lSXqbzkBEHsYX/DymZy+ki8duoWU7+iEHVuW64vkV0BAp8C3XLhnb+3Uiz
	nk+XICNcZcjtuzAHN4QarHP6/mNMtXO1sapdcSIcuF1nkyq0HIKU+wvjbH4SrZsilJZX8c
	0Bi4gtZny3Gct25TCg7TccyHf+0RA/Z1V6bNv1opYtaE1xNzEbJ9ZkryeprLiA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m9VLwCrJN/pzNOmFLp8fEXAbjwP9s6LlDTM6mFYScT8=; b=rtYqY3RfHScydmhZTEHRdSvNps
	mrmO64Ha13UKWOPGfPe0Hdt76ge4BzBLrS7MhtVNBcVy3az/Vc+Wydbbg/9MMZ4GU+hzD7FUkb8oF
	ziwGGRTuVi0UqQfWpEV3OJD2rMhXxDGve2mumQRH+RtuSTTjuFvG0SM5RjYXHEUTKMfuG6lJV8753
	8SEWg40VE270lDKX1G3oVmEbfMcvXgpuazDSdBqbWRzRT8jfzKoQjPBd3d2EyrQZtK+MHfOQ/RRKo
	x27Fl40J7uLooOnvhkR9dUihYpZGUZoF21xCfzKAFWz93dbWUUUrh+BWPQavnLiRxOCzbSW4o23B/
	Z/6BdGrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkG0-000000076YV-3Nc5;
	Mon, 19 Oct 2026 10:06:16 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkFn-000000076Ou-3b6f
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 10:06:15 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4BBA020234A;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m9VLwCrJN/pzNOmFLp8fEXAbjwP9s6LlDTM6mFYScT8=;
	b=LNd0JK0eEyHhJPLOnFfHsDYHOU1tyTgghzoUyS4YA8G44VczrumeLFTWUwVAgOfuyl3WM4
	wmMLnuFnHRu3hM4+bKZBbOhbCMu9ShBWQY9p3f1cfZ1+0wnR7GYgdqtWAKIyLRDXwJ0Wxt
	SUUJ67UUyuAn/B7TSrwK3KGJFyFJKWlSpvUbMou79EZHjSnP0J50HXKWGVn+DxQgPrzndd
	RQ3tQgJR1sIJ7ZVNQKbg+9ACg8pagphdVeuvcZgB0ReYdI0S0WmjCgRRHzN8oX2+1ezmZY
	N6NMFxdaarmYqkTQyCb0n5OeWtC0bBLxu65KQOijYc9eDqAG6LUnYKPrmug6rg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792404356; a=rsa-sha256;
	cv=none;
	b=dEEWKOxDEggWJtDggn5fh7ZojZEqoZC9uv0MizcxUSYLABQHF9R1D0Uu0GZBv4G/egn8Sa
	EVsCi1VWicPKzXFy6/tQKk76WhEtt1OnrXJsY55d3glNb0ld1ekCGaC7wEqxpumZiQeGCu
	B+Yrjj4gE0GyEX1+PGk3kDcOJkoCoRl8RJTEplJ1N3DIIH2YmWsAI8ou+QORiKhQ3ktXsS
	W6PYA8fS1wNyCTCDe9hV6d7bsmIALU6ZU0J6C8vqzcmYxXc8XgPPOyGwuDPykEFaBxM1GI
	zX9itZORgaKL0UYQAbPC5Gt5pqZQwdiWHybicjm1nDF/7XSzxZtLoRASVY29aw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=s.kerkmann@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m9VLwCrJN/pzNOmFLp8fEXAbjwP9s6LlDTM6mFYScT8=;
	b=IuAX0RPP606kkx5yLDLlvZ+gXBQMxp11Hl7hnSomRFdhLoHzvNHbm4P8V3NOEx5Iaf824x
	oJeiJi55PViPioHzjNOCA5DLKg6SGeRFdSG4Qm4+sAy+CQgkuEgg4ZQnbpjZJ291q8hUmg
	dYUY7XwlHkE36RjinUkS9HLR5wwzTTWPnbd7g1aIlnkfd0IJXcSI7vseE7t9yGmxT/47iy
	gd08f0srhkox4DHAZNWZTNgH/HDwi0ghsWWecEqudeIHVsmsFKgF5HL9ZumaaDkZTcxGAx
	a/3gLFzyEucho9sO/OTMB5Iz3L+s1R1CeUwKoVdrsfGojhtASqJYywqKix6d6g==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 2114274175C;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 19 Oct 2026 12:05:46 +0200
Subject: [PATCH v2 3/5] tests: of_overlay: add selftests skeleton
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261019-fix-overlay-v2-3-24e9ff1c0e12@pengutronix.de>
References: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
In-Reply-To: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_030604_577900_49EEFF8A 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add a simple test harness for the upcoming of_overlay selftests.
    Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de> --- test/self/Kconfig
    | 7 +++++++ test/self/Makefile | 1 + test/self/of_overlay.c | 16 ++++++++++++++++
    3 files changed, 24 insertions(+) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
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
X-Rspamd-Queue-Id: ACAAE20235E
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 89rhqfndfjzxz7hidja8h7cfzhcckf8z

Add a simple test harness for the upcoming of_overlay selftests.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 test/self/Kconfig      |  7 +++++++
 test/self/Makefile     |  1 +
 test/self/of_overlay.c | 16 ++++++++++++++++
 3 files changed, 24 insertions(+)

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 75cfcd1570..bdee21f17d 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -35,6 +35,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_CLEANUP
 	select SELFTEST_PROGRESS_NOTIFIER
 	select SELFTEST_OF_MANIPULATION
+	select SELFTEST_OF_OVERLAY
 	select SELFTEST_ENVIRONMENT_VARIABLES if ENVIRONMENT_VARIABLES
 	select SELFTEST_FS_RAMFS if FS_RAMFS
 	select SELFTEST_DIRFD if FS_RAMFS && FS_DEVFS
@@ -97,6 +98,12 @@ config SELFTEST_OF_MANIPULATION
 	help
 	  Tests barebox device tree manipulation functionality
 
+config SELFTEST_OF_OVERLAY
+	bool "OF overlay selftest"
+	select OF_OVERLAY
+	help
+	  Tests devicetree overlay application
+
 config SELFTEST_PROGRESS_NOTIFIER
 	bool "progress notifier selftest"
 
diff --git a/test/self/Makefile b/test/self/Makefile
index c7b5188beb..f912afe5a6 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 CFLAGS_printf.o += -Wno-format-security -Wno-format
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
 obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
+obj-$(CONFIG_SELFTEST_OF_OVERLAY) += of_overlay.o
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
 obj-$(CONFIG_SELFTEST_DIRFD) += dirfd.o
diff --git a/test/self/of_overlay.c b/test/self/of_overlay.c
new file mode 100644
index 0000000000..d60898358f
--- /dev/null
+++ b/test/self/of_overlay.c
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <linux/kernel.h>
+#include <linux/string.h>
+#include <of.h>
+
+BSELFTEST_GLOBALS();
+
+static void test_of_overlay(void)
+{
+}
+bselftest(core, test_of_overlay);

-- 
2.47.3




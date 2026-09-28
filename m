Delivery-date: Mon, 28 Sep 2026 13:28:00 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9Wa-007Gta-2a
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:28:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4D55B2007E1
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:28:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ervTM3l7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GBgvNBwo;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594880;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=6Y+mqfAdKXqp3Q3ftfYOV3dythGosNc3gh3E7QVfy/k=;
	b=ZyefDBU/yo5hBt9sYkWYxa2CzueNWG3OekHz1yQenP1dk9b5XYeWTUtVFzIFFMkT+h6004
	z/S6hxsu+8C0DrHXIswKkb6lTp60CQS9u0nZqC8OcKKUqpP6RG8wZNw5+MSe6Ha4BmBf5N
	iOUZTMa9NmD3sT7XU/myIbP7hDjkl1SSpVW9gHcNXGf+De8MumabrB9cZLNWz7Hxyl7Cd0
	VWXHat75zp0jcEv9P/5RHc7A5pQKJtXSj2lXYSfK0MzVJwo2Uauhbo8rAIktTS0Om5CWad
	SqHd6dwWm/knOlTPrTxKDMS285xhr18BKveGYiS1W9cD89Cq2DQESZb6AlmKhg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790594880; a=rsa-sha256;
	cv=pass;
	b=fTPcYcIBFIDyUZzJizCftWyAPX5PfSo8yBwubF/Z0AlsxfOlgu5rnD76Yqke8/isf6c+Jk
	FnKmAw3R/q+RHPM6BZjA7sFo8BTFnYrT7FZDkMp1hbfIn/k9/AXQO7VKTtV0IuOYmQt1Zy
	mUL2W1eGWJutuuJWnmolLhuXppLANyhmf9NZEi8syrmcR8V3qdc+9KiXPqrtdZF6qvB8wr
	r18484CMawtdQo2lyJF5iQKk5S/qqocx+YWUty2LyP6Gcdpiz6+lCrk/03MyKyUrQh5Twy
	gM6E6jGfIXK/wX710X9qT0uXZDKxkZ/+jerVkNLHoPOMCfbD3qQv5sjZt4ObSg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ervTM3l7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GBgvNBwo;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6Y+mqfAdKXqp3Q3ftfYOV3dythGosNc3gh3E7QVfy/k=; b=ervTM3l7tQrtPuIS7ONp8CNv1s
	i03nrMT0MWKJNkLaqk/C5eq84UN7Il7+uN/E+BwZj8X8WdGyEkHe4tEwRI0CXHjhwU3jfIQD7gkgu
	oIgh8bO+VVIOqTxb5ee8WxykiRVhVyI7AYmx/lschvw2vFfBpX5PiB+Oj7uRk1NV1zbRgXjExuKwU
	bpsDZtgsFhftZv12QMx1fP8h3sGlujxeCXFDaLtBoh8SlWHcCnUfSJioZbjUsj2sp/MNKnpFd2gPQ
	xX0IyworN8rL9W7tgIZD3SOVNQWkWeX2vxncycD54N826XxMoSI74LeNjxhSHZjRpUHFA5OiIoWEU
	qvWKhK1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB8o1-00000000Mzn-1dh7;
	Mon, 28 Sep 2026 10:41:57 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB8ny-00000000Mz2-0O8T
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 10:41:55 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 026012001F2;
	Mon, 28 Sep 2026 12:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790592112;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=6Y+mqfAdKXqp3Q3ftfYOV3dythGosNc3gh3E7QVfy/k=;
	b=GBgvNBwoGsnTp+jm8Gxbj5xXnxbfEQt86DeJdXTsSz17gA/pgxQd0whAr87zytVqpB9TuX
	6g+YFtB+FQGm6Q+zRXiCLDRxDlaoOmAEJPd63p7jFG/eyEYvHA2abX/Nuxg8RFi4LguTIs
	nhgTn+Czmj87Ka4NAD8AcB8V/Ttmz2+LQxD0yhQ/mBZ8smRPiZM5QT4rsKQxXWfHkK/gRc
	JSzQwt41RypCUiwY59b9ibgCnpa5sbBYjNfkQlwezoYN462hVui3Nnr3DMWZKIu4xkpjyf
	TGiG+iNgs0QRYhDrJFqE7o8hR3XKOn70G8U97PY86ueMURzFX6Uh0FGyiJ23Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790592112;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=6Y+mqfAdKXqp3Q3ftfYOV3dythGosNc3gh3E7QVfy/k=;
	b=KdlXcw2i1KPX5Veqj9CP0j0V7KDCuU1xpv4GspjFUG/28mf/04zGHsM2ovGpYMLSf8uSIc
	w14weyO8+pQR1rcipoBM0AbzvVibYOAIgYWaJZRF3qsgOdsh+Zg3es6RFLLl1BbBNrr4ym
	4LffWu4LYi/CbtU1ycDMS9+9Wz81jDBzGrN69uB9wN8PGGetrqx6/8Ym4/gQEkMUPfYz35
	WYakF1PxGmHjHsSGBLuUick0gowtuO4s2rskxuN5TnmZ2jqwVCNfR1GOLl33pJiPxsXifm
	Z6v35IE+uI7r8oSIo/ZDlAhVFqF5PGvt0CMWfDBn78cuE9qlmZyy3bgoV7brmQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790592112; a=rsa-sha256;
	cv=none;
	b=WJc5moknnvKENKYcqJ0deWw4PJfFtHImmw6nQQbqtxwPEsvKW7KiL5i96q4CW52oQs9kqx
	RUEbBoAQ7D/wQxJ0TkO3AmfLLg8SlWKbIYV4zSmTBoqiH172WSwmFGFiNs8a7zQ+BIbOrz
	bg6BQ3uuox1PXktDUKmLqeRsoZHx29ohyblBv501tL+7tAtZe5o4aw2bkIvTSBx023Vl4t
	ki2KKedjam6aTlw1kRuC9jXKKYtFLkoJ5ToAnx0YP8EMwcAwGxCE9x2Zi+fLb9FvO5jG07
	68Mw1iPtP0f4lcghMbCkWDlk1FEtRGqom/l09HXZfUqLW5w/ADs1ZhgxEhTLVg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id E3C9B74D09C;
	Mon, 28 Sep 2026 12:41:51 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] sandbox: power: register power device without a DT node
Date: Mon, 28 Sep 2026 12:41:45 +0200
Message-ID: <20260928104149.1193875-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_034154_290743_59B59C0F 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Since the power driver probes from device tree, sandbox has
    no poweroff or restart handler when started with a --dtb that lacks a barebox,sandbox-power
    node. The poweroff and reset commands will then [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 4D55B2007E1
X-Stat-Signature: 4x4p73bkj8b8d1wmdq7zmgpq88khyg6k

Since the power driver probes from device tree, sandbox has no poweroff
or restart handler when started with a --dtb that lacks a
barebox,sandbox-power node.
The poweroff and reset commands will then end up in hang(), which spins
at 100% CPU until the process is killed.

Let's register the device ourselves when the device tree has no such
node.

Fixes: d2748c1ae720 ("sandbox: poweroff: migrate to driver probed from device tree")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/power.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index 9caaea5be2f0..a95e25b57215 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -2,6 +2,8 @@
 
 #include <common.h>
 #include <driver.h>
+#include <init.h>
+#include <of.h>
 #include <poweroff.h>
 #include <restart.h>
 #include <mach/linux.h>
@@ -68,6 +70,9 @@ static int sandbox_power_probe(struct device *dev)
 	if (IS_ENABLED(CONFIG_SANDBOX_REEXEC))
 		restart_handler_register(&power->rst_reexec);
 
+	if (!dev->of_node)
+		return 0;
+
 	power->reset_source_cell = of_nvmem_cell_get(dev->of_node,
 						     "reset-source");
 	if (IS_ERR(power->reset_source_cell)) {
@@ -100,3 +105,18 @@ static struct driver sandbox_power_drv = {
 	.probe = sandbox_power_probe,
 };
 coredevice_platform_driver(sandbox_power_drv);
+
+/*
+ * A device tree passed with --dtb need not have a sandbox-power node.
+ * Without one, poweroff and reset end in hang(), which busy-loops forever,
+ * so register the device ourselves in this case.
+ */
+static int sandbox_power_fallback(void)
+{
+	if (!of_find_compatible_node(NULL, NULL, "barebox,sandbox-power"))
+		add_generic_device("sandbox-power", DEVICE_ID_SINGLE, NULL, 0,
+				   0, 0, NULL);
+
+	return 0;
+}
+coredevice_initcall(sandbox_power_fallback);
-- 
2.47.3




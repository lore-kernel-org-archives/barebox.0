Delivery-date: Wed, 28 Oct 2026 10:29:48 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzye-004H68-1e
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:29:48 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 60284202921
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:29:48 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ghCyUP4w;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=EPRQ+AZW;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179788; a=rsa-sha256;
	cv=pass;
	b=IMlCw2lVhe7TAwwcp2Nz+uXpA4XyaJU77JebAsbTjwbEUFAxLnJ6HdBXFnyaUZnZRdb54M
	HwC24VGvuW6NLvnqNwx571t4Nv2pIzJIDJXcCcD5kIe69F6EoW2LjBg8p1X6byjUXnLbNf
	R+fRKV1vwZAqhOyTJUTuGO/pD60ENJW05/X6a1EaGOVvkFF5V9iMrVyzLlTkoU16Oqc1YI
	bTKm4OmjsldxSv/pMmT77BE+FircFAXQLoV2Wsbe8ugoiaQJ3NW6XgzknwJlCkIex5BswP
	ZHuGz9KD+vjWcPN07XeI/lCtOXgSorgmN5HnI4zENHU/Pgk4tWVqpMxeidHjtw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ghCyUP4w;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=EPRQ+AZW;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179788;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=N7xuQ+bh0w/Z7NQAUEDRzbZvpP9Ak+RrNjch+ZUfNtg=;
	b=Ept13Ah6oeDKB+v8pZvaAr7MS7Hpt0yLbvJ4pBDhouWvyx9aBzQmjEYgUF7hPjf+d4FZzi
	wn74aXE/QhEOSoPaNqd6oefenuePVLsl008/DXawaZrFz8BVPGsu09pY6cx/wvbfpf0FTz
	TsShqKo/1RzRIaO36iar8Y9LtwEvyBwy7UGlP2aTOBRPqxpSW0Kv+XQVe+JztEf0BrQ+Q/
	tuENTEj8L6+y67+jBs6UFJq0YkKf1JpjwFg4WXnkRZxrFL8/HB7MWoA3aJDpo2S6iylLS0
	L4rTvQXlaXy+u40I5+s7WQE6HQ+8Sf6km2ManMpVD/jYIG4jHyEsqf4/Hm2S+w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=N7xuQ+bh0w/Z7NQAUEDRzbZvpP9Ak+RrNjch+ZUfNtg=; b=ghCyUP4wQNB79V
	+pGbsyoBgl3FvHRn/hIrDUzMNfFvZH6Ve1fZ7edvPDx7fNrrasLugKPeaeLywVIL2Lx1vN/k0bxTA
	F6o8yVjJeAi4L+TqM9vFguxV1cDM8Z5Uqr9t6vr0faEoExZQAHEWqKmIBjCrq9bc0QKxsvAf/WfHw
	RRrQEoDA9lShkd5s/C3HXWV7dFfjpNWptauW+LPDB6x1Vn+syAkp/19m8cW6cLhlQQDLzXtHSsRbi
	+YqiSPPaNeD1QDQ/1paTSPvUUgiHik3S/qRJ+a1rjLGG65SCw/I9N5PFwBX3hT8WU2nftNGjr27ob
	1yMuyExkOeI/a7A7qhfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzu3-00000006eTh-3Gpz;
	Wed, 28 Oct 2026 09:25:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztu-00000006eFy-2OgW
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:58 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D2835202950;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N7xuQ+bh0w/Z7NQAUEDRzbZvpP9Ak+RrNjch+ZUfNtg=;
	b=EPRQ+AZWskTizL5Qou1rxEDsJ4C1PwoPNSkD7e43h6sUTJhnv9pgE3xwHmVf9FZnIDq93y
	EO+3XfrmIK9hNd0stvvpmKHQzO5SumXchM7l1+ip4eiPNxXx7BB787LaCtRFf3B9S2eMXQ
	Yu238ZmAfCn4G1mUVy0qSZ0r/8lvNPh/qIULCRWVkyWrvKmjq8nfI0g6chCX8Z3PETEDLW
	Mjq8GtLfU1lLbK25l5lSm55o9wynyumgJWyDHTRnXDGRBxgjEuEW2fuvY8TtG1JSb5iTOj
	/Sm/mmRzKaLh3BTJ17fStmpFZVNl2k7No71ZQuhK8Sqn+eZRg3NzSim+sDex6w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=Pw83vfZxbK5jAQf3kkTk1uzlE0qXZ78XElNl26qmtm9sknUOxR8X2gyWY2+aKH9Mr7/ohF
	BNHJOP6MWYGCsrudtxbX0skj5UTLytXPcStUBFOAVveaE4VzuLC+tjvIbDcuV93DSAeYSH
	pOI8Wlh6EnEUN/M8OtI8geIKDAaJaHhuerDGKB0a4Z7DOhgHruMg6FmMVg0CkUeircxnUU
	rEIilOmQZICMstJ+j+XsVINUZuCEQwGg+LH4/Zb4kmlG0rwT8xZ5TLiyEA2lzdMbAsUj1m
	iWp1jr4qXfC/FfHRARtlksmiwgUwc4ySZ8ZKxrHGtXTnxqmK/QN55uohs1980A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N7xuQ+bh0w/Z7NQAUEDRzbZvpP9Ak+RrNjch+ZUfNtg=;
	b=Hsqe8AZ0L9HLAD3L73BdI+mwVRCw5vYC26GF2RAtaobqtlHHK773Vk6l8IqGmanTqZvHhu
	WL+fL/wiBuE6FxiiodW23qttoxiXIIMbK9Qds0GvqokqaLtQhrwWj9osyBLIoDCRTMdaXf
	8CYunY1p69LA7ExNdKUP55pt3kBlu/TT/0R6VbU1oyTEvG+GLT4eycJKmGBnV4zHDcz5qJ
	yA+DOYsLnH6LE8lng77Hm92z/OWobZRiVkvWZPHuQipx1HPmhe0bWr63WNuXTb3+sATFw4
	b8sE3oAvrSZzq/w5ztsnXjOGh1Ztg/M8BlrbQ/tx8ONHt4Pduce6nYWLbslbdA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id B877B7420DE;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 10/19] driver: implement devm_ allocation helpers on top of talloc
Date: Wed, 28 Oct 2026 10:14:44 +0100
Message-ID: <20261028092442.3300753-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022455_001687_53B70D91 
X-CRM114-Status: GOOD (  28.01  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> So far, the devm_
    functions were wrappers around kmalloc() and friends that never freed anything.
    Let's implement them for real as talloc children of a per-device context,
    which is freed when probe fa [...] 
 
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
X-Rspamd-Queue-Id: 60284202921
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
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
X-Stat-Signature: 1mx6ssfp5rx3nowdf6hxpacd1tjtn84u

From: Ahmad Fatoum <a.fatoum@barebox.org>

So far, the devm_ functions were wrappers around kmalloc() and friends
that never freed anything. Let's implement them for real as talloc
children of a per-device context, which is freed when probe fails, the
driver is unbound or the device is unregistered.

Like in Linux, device_remove() now releases the context even without a
remove callback, so devunbind checks device_has_remove() instead.

Managed memory is DMA-aligned like kmalloc()'s and can't fail like
xmalloc()'s.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/devunbind.c   |   3 +-
 drivers/base/Makefile  |   1 +
 drivers/base/devres.c  | 147 +++++++++++++++++++++++++++++++++++++++++
 drivers/base/driver.c  |  34 ++++++++--
 include/device.h       |   3 +
 include/driver.h       |  17 ++++-
 include/linux/device.h |  48 ++++++++++----
 7 files changed, 232 insertions(+), 21 deletions(-)
 create mode 100644 drivers/base/devres.c

diff --git a/commands/devunbind.c b/commands/devunbind.c
index 9fd7483210f3..5e6fa91b5ebe 100644
--- a/commands/devunbind.c
+++ b/commands/devunbind.c
@@ -58,12 +58,13 @@ static int do_devunbind(int argc, char *argv[])
 			continue;
 		}
 
-		if (!device_remove(dev)) {
+		if (!device_has_remove(dev)) {
 			printf("no remove callback registered for %s\n", argv[i]);
 			ret = COMMAND_ERROR;
 			continue;
 		}
 
+		device_remove(dev);
 		dev->driver = NULL;
 		list_del_init(&dev->active);
 	}
diff --git a/drivers/base/Makefile b/drivers/base/Makefile
index 94b677eea0bb..e8cdb1f27f23 100644
--- a/drivers/base/Makefile
+++ b/drivers/base/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-y	+= bus.o
 obj-y	+= driver.o
+obj-y	+= devres.o
 obj-y	+= platform.o
 obj-y	+= resource.o
 obj-y	+= class.o
diff --git a/drivers/base/devres.c b/drivers/base/devres.c
new file mode 100644
index 000000000000..26abc47cd997
--- /dev/null
+++ b/drivers/base/devres.c
@@ -0,0 +1,147 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * devres.c - device-managed resources on top of talloc
+ *
+ * Managed resources are children of a per-device talloc context.
+ */
+
+#include <driver.h>
+#include <dma.h>
+#include <talloc.h>
+#include <xfuncs.h>
+#include <stdio.h>
+#include <printf.h>
+#include <linux/device.h>
+#include <linux/overflow.h>
+#include <asm/sections.h>
+
+static void *devres_ctx(struct device *dev)
+{
+	if (!dev->devres)
+		dev->devres = talloc_new(NULL);
+
+	return dev->devres;
+}
+
+/**
+ * devres_release_all() - release all managed resources of a device
+ * @dev: device to release resources of
+ *
+ * Runs all actions and frees all memory registered with devm_ functions
+ * in reverse order of registration.
+ */
+void devres_release_all(struct device *dev)
+{
+	talloc_free(dev->devres);
+	dev->devres = NULL;
+}
+
+/*
+ * Memory must be DMA-safe like kmalloc()'s, so align it within the chunk
+ * and store the chunk pointer in front of it for devm_kfree().
+ */
+static void *devres_alloc(struct device *dev, size_t size)
+{
+	void *chunk, *mem;
+
+	if (!size)
+		return ZERO_SIZE_PTR;
+
+	/* Saturated size_mul()/struct_size() results would wrap in ALIGN() */
+	if (size > SIZE_MAX - 2 * DMA_ALIGNMENT)
+		panic("%s: devm allocation of %zu bytes\n", dev_name(dev), size);
+
+	/* chunk is pointer-aligned, so mem is at most DMA_ALIGNMENT bytes in */
+	chunk = xtalloc_size(devres_ctx(dev),
+			     DMA_ALIGNMENT + ALIGN(size, DMA_ALIGNMENT));
+	mem = PTR_ALIGN(chunk + sizeof(void *), DMA_ALIGNMENT);
+	((void **)mem)[-1] = chunk;
+
+	return mem;
+}
+
+void *devm_kmalloc(struct device *dev, size_t size, gfp_t gfp)
+{
+	return devres_alloc(dev, size);
+}
+EXPORT_SYMBOL(devm_kmalloc);
+
+void *devm_kzalloc(struct device *dev, size_t size, gfp_t gfp)
+{
+	void *mem = devres_alloc(dev, size);
+
+	memset(mem, 0, size);
+
+	return mem;
+}
+EXPORT_SYMBOL(devm_kzalloc);
+
+/**
+ * devm_kfree() - free memory allocated with devm_kmalloc() early
+ * @dev: device the memory was allocated for
+ * @mem: pointer to memory allocated by a devm_ function
+ */
+void devm_kfree(struct device *dev, const void *mem)
+{
+	/* NULL/ZERO_SIZE_PTR or .rodata string from devm_kstrdup_const() */
+	if (ZERO_OR_NULL_PTR(mem) || is_barebox_rodata((ulong)mem))
+		return;
+
+	talloc_free(((void **)mem)[-1]);
+}
+EXPORT_SYMBOL(devm_kfree);
+
+void *devm_kmemdup(struct device *dev, const void *src, size_t len, gfp_t gfp)
+{
+	return memcpy(devres_alloc(dev, len), src, len);
+}
+EXPORT_SYMBOL(devm_kmemdup);
+
+char *devm_kstrdup(struct device *dev, const char *s, gfp_t gfp)
+{
+	if (!s)
+		return NULL;
+
+	return devm_kmemdup(dev, s, strlen(s) + 1, gfp);
+}
+EXPORT_SYMBOL(devm_kstrdup);
+
+const char *devm_kstrdup_const(struct device *dev, const char *s, gfp_t gfp)
+{
+	if (is_barebox_rodata((ulong)s))
+		return s;
+
+	return devm_kstrdup(dev, s, gfp);
+}
+EXPORT_SYMBOL(devm_kstrdup_const);
+
+char *devm_kvasprintf(struct device *dev, gfp_t gfp, const char *fmt,
+		      va_list ap)
+{
+	unsigned int len;
+	va_list aq;
+	char *p;
+
+	va_copy(aq, ap);
+	len = vsnprintf(NULL, 0, fmt, aq) + 1;
+	va_end(aq);
+
+	p = devres_alloc(dev, len);
+	vsnprintf(p, len, fmt, ap);
+
+	return p;
+}
+EXPORT_SYMBOL(devm_kvasprintf);
+
+char *devm_kasprintf(struct device *dev, gfp_t gfp, const char *fmt, ...)
+{
+	va_list ap;
+	char *p;
+
+	va_start(ap, fmt);
+	p = devm_kvasprintf(dev, gfp, fmt, ap);
+	va_end(ap);
+
+	return p;
+}
+EXPORT_SYMBOL(devm_kasprintf);
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 20beb1e9e6fa..e214408e12a3 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -149,6 +149,9 @@ int device_probe(struct device *dev)
 
 	depth--;
 
+	if (ret)
+		devres_release_all(dev);
+
 	switch (ret) {
 	case 0:
 		return 0;
@@ -292,6 +295,8 @@ int register_device(struct device *new_device)
 }
 EXPORT_SYMBOL(register_device);
 
+static bool __device_remove(struct device *dev);
+
 int unregister_device(struct device *old_dev)
 {
 	struct device_alias *alias, *at;
@@ -305,8 +310,9 @@ int unregister_device(struct device *old_dev)
 
 	of_pinctrl_unregister_consumer(old_dev);
 
+	/* Children may live in managed memory, free_device_res() releases it */
 	if (old_dev->driver)
-		device_remove(old_dev);
+		__device_remove(old_dev);
 
 	list_for_each_entry_safe(alias, at, &device_alias_list, list) {
 		if(alias->dev == old_dev)
@@ -353,6 +359,7 @@ EXPORT_SYMBOL(unregister_device);
  */
 void free_device_res(struct device *dev)
 {
+	devres_release_all(dev);
 	devinfo_del(dev, NULL);
 	free(dev->unique_name);
 	dev->unique_name = NULL;
@@ -677,17 +684,32 @@ static dev_remove_op_t get_device_remove(struct device *dev)
 		return NULL;
 }
 
-bool device_remove(struct device *dev)
+static bool __device_remove(struct device *dev)
 {
 	dev_remove_op_t remove = get_device_remove(dev);
-	if (!remove)
-		return false;  /* nothing to do */
 
-	remove(dev);
-	return true;
+	if (remove)
+		remove(dev);
+
+	return remove != NULL;
+}
+
+bool device_remove(struct device *dev)
+{
+	bool ret = __device_remove(dev);
+
+	devres_release_all(dev);
+
+	return ret;
 }
 EXPORT_SYMBOL_GPL(device_remove);
 
+bool device_has_remove(struct device *dev)
+{
+	return get_device_remove(dev) != NULL;
+}
+EXPORT_SYMBOL_GPL(device_has_remove);
+
 static void devices_shutdown(void)
 {
 	struct device *dev;
diff --git a/include/device.h b/include/device.h
index 7abeed9c460f..9d5f57a1c496 100644
--- a/include/device.h
+++ b/include/device.h
@@ -61,6 +61,7 @@ struct of_device_id;
  *          should actually detect client devices.
  * @rescan: Callback to rescan the device.
  * @deferred_probe_reason: If a driver probe is deferred, this stores the last error.
+ * @devres: talloc context of managed resources, see devm_kmalloc().
  */
 struct device {
 	union {
@@ -122,6 +123,8 @@ struct device {
 	void (*rescan)(struct device *);
 
 	char *deferred_probe_reason;
+
+	void *devres;
 };
 
 #define bobj_to_dev(__bobj)	container_of_const(__bobj, struct device, bobject)
diff --git a/include/driver.h b/include/driver.h
index a93da2e06f62..372b1297c6c4 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -78,11 +78,24 @@ int device_probe(struct device *dev);
  *
  * @dev: Device
  *
+ * Runs the bus or driver specific removal code, if any, and releases the
+ * device's managed resources either way.
+ *
  * Returns true if there was any bus or driver specific removal
- * code that was executed and false if the function was a no-op.
+ * code that was executed and false if there was none.
  */
 bool device_remove(struct device *dev);
 
+/**
+ * device_has_remove - Check if a device has removal code to run
+ *
+ * @dev: Device
+ *
+ * Returns true if device_remove() would execute bus or driver specific
+ * removal code for @dev.
+ */
+bool device_has_remove(struct device *dev);
+
 /* detect devices attached to this device (cards, disks,...) */
 int device_detect(struct device *dev);
 int device_detect_by_name(const char *devname);
@@ -98,6 +111,8 @@ static inline void put_device(struct device *dev) {}
 void free_device_res(struct device *dev);
 void free_device(struct device *dev);
 
+void devres_release_all(struct device *dev);
+
 static inline void device_rescan(struct device *dev)
 {
 	if (dev->rescan)
diff --git a/include/linux/device.h b/include/linux/device.h
index e3934b505fe0..0f4f2a40a11d 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -5,24 +5,46 @@
 #include <driver.h>
 #include <linux/slab.h>
 #include <linux/bug.h>
+#include <linux/bitops.h>
+#include <linux/overflow.h>
+#include <stdarg.h>
 #include <mmu.h>
 
 #define device_driver driver
 
-#define __devm_wrapper(fn, dev, ...) ({ BUG_ON(!dev); fn(__VA_ARGS__); })
+/*
+ * Managed memory is DMA-safe and can't fail to allocate. It's freed when
+ * the device is unbound, unregistered or fails to probe.
+ */
+void *devm_kmalloc(struct device *dev, size_t size, gfp_t gfp);
+void *devm_kzalloc(struct device *dev, size_t size, gfp_t gfp);
+void devm_kfree(struct device *dev, const void *mem);
+void *devm_kmemdup(struct device *dev, const void *src, size_t len, gfp_t gfp);
+char *devm_kstrdup(struct device *dev, const char *s, gfp_t gfp);
+const char *devm_kstrdup_const(struct device *dev, const char *s, gfp_t gfp);
+char *devm_kvasprintf(struct device *dev, gfp_t gfp, const char *fmt,
+		      va_list ap);
+char *devm_kasprintf(struct device *dev, gfp_t gfp, const char *fmt, ...)
+	__printf(3, 4);
 
-#define devm_kmalloc(...)		__devm_wrapper(kmalloc, __VA_ARGS__)
-#define devm_kvasprintf(...)		__devm_wrapper(kvasprintf, __VA_ARGS__)
-#define devm_kasprintf(...)		__devm_wrapper(kasprintf, __VA_ARGS__)
-#define devm_kzalloc(...)		__devm_wrapper(kzalloc, __VA_ARGS__)
-#define devm_kmalloc_array(...)		__devm_wrapper(kmalloc_array, __VA_ARGS__)
-#define devm_kcalloc(...)		__devm_wrapper(kcalloc, __VA_ARGS__)
-#define devm_kfree(...)			__devm_wrapper(kfree, __VA_ARGS__)
-#define devm_kstrdup(...)		__devm_wrapper(kstrdup, __VA_ARGS__)
-#define devm_kstrdup_const(...)		__devm_wrapper(kstrdup_const, __VA_ARGS__)
-#define devm_kmemdup(...)		__devm_wrapper(kmemdup, __VA_ARGS__)
-#define devm_bitmap_zalloc(dev, nbits, gfp)	\
-	__devm_wrapper(bitmap_zalloc, dev, nbits)
+static inline void *devm_kmalloc_array(struct device *dev, size_t n,
+				       size_t size, gfp_t gfp)
+{
+	return devm_kmalloc(dev, size_mul(n, size), gfp);
+}
+
+static inline void *devm_kcalloc(struct device *dev, size_t n, size_t size,
+				 gfp_t gfp)
+{
+	return devm_kzalloc(dev, size_mul(n, size), gfp);
+}
+
+static inline unsigned long *devm_bitmap_zalloc(struct device *dev,
+						unsigned int nbits, gfp_t gfp)
+{
+	return devm_kcalloc(dev, BITS_TO_LONGS(nbits), sizeof(unsigned long),
+			    gfp);
+}
 
 #define device_register register_device
 #define device_unregister unregister_device
-- 
2.47.3




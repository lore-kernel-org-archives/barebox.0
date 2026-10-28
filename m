Delivery-date: Wed, 28 Oct 2026 10:29:51 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzyh-004H80-14
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:29:51 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2EC8C2021E3
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:29:51 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3xrqK+ED;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O7IAYQij;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179791; a=rsa-sha256;
	cv=pass;
	b=Ey80LiE3RdpFOzTq6tr2Cu+Z7iJM2yEWE4Ve/qnmk4hfu/5aPniE6bKMbtcPhcHu/PiJA/
	mjs1Pgr8+yy9B6fPTCUr7zu3KOnO4TvDeYPP7nSuZBBwtPADl/sTS2eK/IXanCQFk/kJWj
	x3kSNwCPlcBt5tNoASdSMrIjrH2d3OPvYPojMmLBlyEGs50Q1a99O0JGNKnAeUlhoT/Die
	lXzPHH23WddrAMCeHe1kNlVLbMI0KDF+1yAZ1rm9dN0zxPDdcR0UnUpKUl7UYGyDc0YLfi
	IreYr/6avzvaaoQ8aTDlmM5BNINMB8mAGg6sDL9Y1rtJzdqVLgZVBVAlA6h6sQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3xrqK+ED;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O7IAYQij;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179791;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ekjIPQ7J7XOd+I//vQJ/EMoUThwFAM7t765B1r1TZNo=;
	b=YlGOv/yKgYY7p9Zech7AmB5UWrs4BN5IjdPJzdgYRjaDGBJw4Cl4b+YHXIVUyC/v6LTMXi
	B/78eRWqViwcWn5ep7Tf34yUz6FWl/0hqcr84JGuSQJ/kos0AYBmAbikKZq8Pabhs14nex
	0Gum+FVnLRhiAQv5ABb2Cs1LJM7jyuKjnIQTTrOJETCbvaUZHl0lPqf99bAAPMdZM06osy
	fvDSvRSEnEgnmQsMnc+Se8OiOwExmPAa9x+4WaORJdcWdfhubSxXNfwo2eZBvRT309abjA
	Tw+SeSCU03kgdX5Z4OEaPQ5+g/mvnloo3X4wkMFGLOlZFyF1GuH4Q0UZyy7mBg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=ekjIPQ7J7XOd+I//vQJ/EMoUThwFAM7t765B1r1TZNo=; b=3xrqK+EDV5VCP4
	+GCvpWsBFdP42emDRD1ztzl/zqDNaTYXKzYmWe1E+LpSuWgJUIXuXmU3UWy5N/pbXmvPS1NGOdwWg
	3baRZ4Bmi+VU7jJ7yh8SDKWQn4j+0gEzQVY3C8Zr+BMQLKX1Ys6+EyxH/GEcqzHhl/swN7t4XI4l2
	Pa7rtVkEYnp0QojGUeU7GlQtRuDUq23xp1E16ukoGOcUdMi8F6sG3xftBArDEdlFGEJHYA3fBo0xB
	BC939+7doFdYn2yc4sYLJpPW9HVOixtCT/YGiUZ2sLIj0PFbumyMTtYKZ1UJ4VzXR83AQf9L7WPpH
	DIP2OZU01cG7QmBf7y4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztz-00000006eOA-05nI;
	Wed, 28 Oct 2026 09:24:59 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztu-00000006eG5-2oCd
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:57 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DCB88202953;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ekjIPQ7J7XOd+I//vQJ/EMoUThwFAM7t765B1r1TZNo=;
	b=O7IAYQijYBIoIhhHtGLe6e+0H6PvAjYhaVJUuJPAA/VhU9VdxRMLuwKQwe2hzGFc+n1goD
	qXcn8577Qyrdo0iObOrIxsNMrtB8+q83vcne6gGUIB8tHaDyOb5TtEPnd/dmrlfjWE24qA
	9g3Hj/wa7WPxG8DGXBnCKa+jdHQKa/F3oarh7yZ77XrA+6beTFEodBtRIvmRcP1tenZx2Y
	bY6Lc+l4xY2n0OjRI/Gp8iqcmZYbPZViD3ElxB11GisrcnOhDjN0kcbUPnsJp3dk7Fugnt
	t7z/EGIfho+wkwW7umhM8xhDN8o2lJrcCPXA5aME1kbb+rKY5c+ukjEBgggs4Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=R7i5LzPN+IKC7R2VNQ8o2r2OlKSLUueXz5nM6Lfk7R9IktS8mweyK+xl+jPyBDr9J6QIuy
	UWe0klDbVSB4rn782Ld6cGM2lo6DrLxPd8M+9OvY5JLuRq2xqWlz8+2mVOCzuOCCnejHz0
	X4uatrm2sue7h/orTf4Bn2eGYP2wEtZPFb9TVJ/H4CfhP+5FU+pmuFUcT0g9tXl3VHa3g+
	8cF0NUUVxBSx8NezWgQG1fBm1grq8TMo//Cvb3h9XrBdyqV9PLA6helIf+6FtNXSDIYQo0
	IBho2bYoLRzManwHVdJwpfmJmZHMnjJtjvQne9Co6OZmsU4FptDOJi7TXnoVMw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ekjIPQ7J7XOd+I//vQJ/EMoUThwFAM7t765B1r1TZNo=;
	b=WsCF9ODWy56+iv0DiA0/yGXBaTZzwt2yP23gy1HlPuHt6UHbalzgyqSdsMl6TPnwP0YPew
	jsWu1QgijRQAOKIxthv4gQatT5PmOXsMoAZRYR51GidV/NGu4TAfKzsOVgf++VIJ0s8byS
	Phg3FKLBx6jGaGE3UOyQcOG7T33gc2w6fBfpW5rozKHxjF810iHbcj0zEAlwaa0in8ZYax
	U/wLOpG5L7plaYQKXKuxfRa9oQXCqPfvy9PZ0BObLP86OoYFPUNhTOhZPafVQ2vYRX7jtJ
	ED6bdSBz4Y6wiRcVmSWC4yuf7/OgLOMR9RR6CRl5IMi9ULBLtrinxS30tboxxQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id C323D742F56;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 11/19] devres: Provide kmalloc_obj*-style API for devm_kmalloc
Date: Wed, 28 Oct 2026 10:14:45 +0100
Message-ID: <20261028092442.3300753-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022454_904842_20324C4E 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> This is a port of
    Linux commit 29a86e8818a8b7043643b85b0603eb9f4c225b55: | Author: Kees Cook
    <kees@kernel.org> | AuthorDate: Mon Sep 14 15:32:17 2026 -0700 | | devres:
    Provide kmalloc_obj*-style API for devm_kmalloc | | Mirroring the type-based
    allocation now in use for th [...] 
 
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
X-Rspamd-Queue-Id: 2EC8C2021E3
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
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
X-Stat-Signature: 1awhtjnggue71m8qafd1jqci8gmgpqrj

From: Ahmad Fatoum <a.fatoum@barebox.org>

This is a port of Linux commit 29a86e8818a8b7043643b85b0603eb9f4c225b55:

| Author:     Kees Cook <kees@kernel.org>
| AuthorDate: Mon Sep 14 15:32:17 2026 -0700
|
| devres: Provide kmalloc_obj*-style API for devm_kmalloc
|
| Mirroring the type-based allocation now in use for the kmalloc family of
| APIs, provide the same for the devm_kmalloc family of APIs. This will
| allow for future plumbing of type information (e.g. alignment) into the
| underlying allocations. This immediately gains type check on return
| values (instead of the prior "void *" return type).
|
| Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
| Link: https://patch.msgid.link/20260914223219.901347-2-kees@kernel.org
| Signed-off-by: Kees Cook <kees@kernel.org>

The _flex() variants are left out like for kmalloc_obj(), as barebox
lacks __counted_by(). The kerneldoc drops the NULL on failure, as
managed allocations can't fail.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/device.h | 55 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/include/linux/device.h b/include/linux/device.h
index 0f4f2a40a11d..595abf412180 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -27,6 +27,61 @@ char *devm_kvasprintf(struct device *dev, gfp_t gfp, const char *fmt,
 char *devm_kasprintf(struct device *dev, gfp_t gfp, const char *fmt, ...)
 	__printf(3, 4);
 
+/**
+ * __devm_alloc_objs - Device-managed allocation of objects of a given type
+ * @DEVM_ALLOC: which device-managed size-based allocator to use.
+ * @DEV: device to scope the allocation lifetime to.
+ * @GFP: GFP flags for the allocation.
+ * @TYPE: type to allocate space for.
+ * @COUNT: how many @TYPE objects to allocate.
+ *
+ * Device-managed counterpart of __alloc_objs().
+ * @DEVM_ALLOC takes (@DEV, size, gfp).
+ *
+ * Returns: Newly allocated pointer to (first) @TYPE of @COUNT-many allocated
+ * @TYPE objects.
+ */
+#define __devm_alloc_objs(DEVM_ALLOC, DEV, GFP, TYPE, COUNT)		\
+({									\
+	const size_t __obj_size = size_mul(sizeof(TYPE), COUNT);	\
+	(TYPE *)DEVM_ALLOC(DEV, __obj_size, GFP);			\
+})
+
+/**
+ * devm_kmalloc_obj - Device-managed allocation of a single typed object
+ * @DEV: Device to scope the allocation lifetime to.
+ * @VAR_OR_TYPE: Variable or type to allocate.
+ * @GFP: Optional GFP flags (defaults to %GFP_KERNEL).
+ *
+ * Device-managed counterpart of kmalloc_obj(): the allocation is sized from
+ * @VAR_OR_TYPE and returned as a pointer to that type, not void *.
+ *
+ * Returns: newly allocated pointer to a @VAR_OR_TYPE.
+ */
+#define devm_kmalloc_obj(DEV, VAR_OR_TYPE, ...)				\
+	__devm_alloc_objs(devm_kmalloc, DEV, default_gfp(__VA_ARGS__),	\
+			  typeof(VAR_OR_TYPE), 1)
+
+/**
+ * devm_kmalloc_objs - Device-managed allocation of an array of a typed object
+ * @DEV: Device to scope the allocation lifetime to.
+ * @VAR_OR_TYPE: Variable or type to allocate an array of.
+ * @COUNT: How many elements in the array.
+ * @GFP: Optional GFP flags (defaults to %GFP_KERNEL).
+ *
+ * Returns: newly allocated pointer to an array of @VAR_OR_TYPE.
+ */
+#define devm_kmalloc_objs(DEV, VAR_OR_TYPE, COUNT, ...) \
+	__devm_alloc_objs(devm_kmalloc, DEV, default_gfp(__VA_ARGS__), \
+			  typeof(VAR_OR_TYPE), COUNT)
+
+/* All devm_kzalloc aliases for devm_kmalloc_(obj|objs). */
+#define devm_kzalloc_obj(DEV, P, ...) \
+	__devm_alloc_objs(devm_kzalloc, DEV, default_gfp(__VA_ARGS__), typeof(P), 1)
+#define devm_kzalloc_objs(DEV, P, COUNT, ...) \
+	__devm_alloc_objs(devm_kzalloc, DEV, default_gfp(__VA_ARGS__), \
+			  typeof(P), COUNT)
+
 static inline void *devm_kmalloc_array(struct device *dev, size_t n,
 				       size_t size, gfp_t gfp)
 {
-- 
2.47.3




Delivery-date: Fri, 16 Oct 2026 09:37:28 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHcVM-00EGa2-1R
	for lore@lore.pengutronix.de;
	Fri, 16 Oct 2026 09:37:28 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E5E54202283
	for <lore@pengutronix.de>; Fri, 16 Oct 2026 09:37:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Md7kjApZ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=U7eN6uKN;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=dcZp4ZUA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792136248; a=rsa-sha256;
	cv=fail;
	b=Li681lBgbGKjHVbcp7iXZ6sUThmLYAS4qqCMqzRl5At+0GzaG0KIAxAkzAaAG/O0v0h3Ff
	Bhkjyvf2nBVdrhVViiFFIwRl+VRijQewx5GO3TnYhoCYyWBSHNP1cCMeuTQG2VFzP9my40
	uQC1kayUrjhfcaGalvOs+qBEAHRRKaiO2d4Cm/ZXRvlakJilM3fIbjy0vYhX2oLlIv1jsA
	PzUZxNrrCdr0os1JoED6lsxmXxKmippcdOC9wup/eDGhK70ZRQz1INCDVy7pUEMz3Wtkwu
	/81998sfd2ZY0xWXExdgH47ha/TBdxLI3oLZ3a5u3Bm8TmGspKAH2txgEzypSA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Md7kjApZ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=U7eN6uKN;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=dcZp4ZUA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136248;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=nSJRyZW5dpBcJanyzqa715rslyOV9HBuCUrLiqSjJWg=;
	b=PMf+cKtbKL2vhdbBbWXeVhrBQUNb+9eHCPLIq+LJESECk8ucPJZYWA9h7dtDzjKRH6iH6d
	kVl0Kxzvj4lIPQPlKCrOsxtz89FxkJrRxKsg4C6pH09L6PFNq9Aa0IiAtSuixaOPfHvmLG
	elV7teriQfzZYqLA8tNfnNZMfMEGRxTVmN5eF90rIjrb5gq9Rk4SzEWdTPbFaO7ZfKWbIx
	i1wUkecBUgRcvqarIMEWNu3OPJBwLga+sei3wgfQtGR6Y1afXn1ZDFiGMq8lVdY6YqIj8a
	3z71S9wYvk7ck29aXbdNXcsP9cQ3gOKmPTvKOgzMfckbiIkYmdkGXvjYXz5QiA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nSJRyZW5dpBcJanyzqa715rslyOV9HBuCUrLiqSjJWg=; b=Md7kjApZXtU0jFRsNAkoTYYbsF
	mom068hPL9l8JuN0+WgB+zvQ8XJORzzXd6BnQSAmJVt2ElaTDtzntf7KbHEF2VrWG4OQveZsZRTYE
	zBroB7TLy0cbpHF1rlDLHg0Wg8lH5xMXv2iy7PTXeQRx5FmTo9QgnN+ynV5NtoK+aHkmv5WHoAFfk
	9oHu5HZtCxwm5o9wwe9znVCsDEfee9EPbzC7WYC44lF5n0CYRPlngQVZF4kV60Ydh1LXRgyS/KH/5
	8ogeCrdbauX9+f8MoO2g7bB3zL3MckJ55wpJ/nVY4npJrFIXFADt+6kPIQDB2BcMjLjn1JhI0ahoj
	WQjGBoQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHcUx-00000002F2D-1aOF;
	Fri, 16 Oct 2026 07:37:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHcUw-00000002F1s-04dC
	for barebox@bombadil.infradead.org;
	Fri, 16 Oct 2026 07:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=nSJRyZW5dpBcJanyzqa715rslyOV9HBuCUrLiqSjJWg=; b=U7eN6uKN2LJf6jsNjF9EfZtfYZ
	qTMGMp9msOStGMTr4V/MOw8nmk/DtTmzL695kYva+jz+vjHQRBdeT54PTBbs/kXfQoq1QJXQezqHw
	cOWvd3Hd16/Uj/NGZzabEQc7reoTkM09jJVX3SwasDP4mwWTjFUV3jIU4cUKFMwP+Ys74SyHV4iVT
	Cc7chAr6uCTp5qAj9cih+aJ5pRW9q63SaZqE4ZOftxNIJJKOGxN1W7urWCFXBIZ9Ex665ZraSaP1X
	N1WIXO2VjZd9qn9nk6mHWQT/pn0pwR8rU5zavvQ/DiHTvzwxQZTAqoNfY9wr3CGJ2IvDFGNc+wwRz
	wwY25i3g==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHcUs-00000001Dpb-1Ntv
	for barebox@lists.infradead.org;
	Fri, 16 Oct 2026 07:37:00 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 01422202148;
	Fri, 16 Oct 2026 09:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136216;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nSJRyZW5dpBcJanyzqa715rslyOV9HBuCUrLiqSjJWg=;
	b=dcZp4ZUAx2itRf5XFYq/VG0kVY7WRqDvSAnVQmw1XbzUF51IfXOyvgPA5e5x6oxA2Ewe+e
	TCSkPRFhJyTQHbc3gqy3G4XcsRwI6JG5tLL7A7oUlxa9wHDfwFykvbo/3zXdYb3N5Uj2ae
	oB0rJH6Ou5aymgCsYChSUbHBzJJpOgk+OSeSWLedNQNt3EOMX1FCZcBlwFHwGE1FtGmkbu
	zZNzAAw3lDaNcJpA6f5V/8nVb1H3Ag5L/gqksHf3RXx4/h9fzzxRXkpG6EVlT+Xuxs0SGt
	hZC5wzmoKug/+U47E46dVjg5vZAVEyzQ/aOFv+cL1MHxgz7uyKDhntORQy91Yw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792136216; a=rsa-sha256;
	cv=none;
	b=dbuVD/WIQEeflNREfnvosvIbCIHRjoLh791j7maktys9HewIRN4W1tJ9YgKk5LCv+9hXye
	8jUD1ePAzGbsx9C8FZxCA7GKsdcUV5Fukmaz4nR0f0/7b//IIFF26XHbSs8wnnt1esXoyL
	QBZpV+98pyV2b9X4OdZLgI2XjIJSvpo1QuLVNKnspjPtJMkA+xCkdbk/jW4a9LHzYytD6i
	zpmFPr63m4b8yhMVI9cS3hLpA67vXqwXmXmgHhQ4xXSEPGhzkzMMRPh59Vix3Row6MWlgW
	ETR07XzjtVVjgWhWTuxyhf+oNcEle0ne7QBOuSeDjl6nUVpC3sEmfVG3aeMmwg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136216;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nSJRyZW5dpBcJanyzqa715rslyOV9HBuCUrLiqSjJWg=;
	b=e7U5LPWBBsjnI/RWBFGuPElDqJZaRNr3OvkvjJaz975YUVCyaeJ2/lQD1kNILt6nKouZvY
	FZ5KH4UhYlmEEoFiKyuH6gEnIrSSJVu6X4oFGEKtPolZTEScBAUIlwZI7uyw+iTMouNWVU
	g0IbS/OLoFuGyy0tpFSkfXoGefLZqcvvGVsd2eogPG4YZZGWJM96SOFjL5FWHy1r0kR1Cg
	uwBP2oDax0hiQnt8GtaW+ia3R8kvo94wRe6IEyOcAz0Hkgj2d8UmqjNrG91sBrKhNFWEI+
	5rukb6JmKal3Aqaj6W9RMKkeDsHi70trKtLjIjPnF30NIxL+FV+lQ2ylYLq75A==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Oct 2026 09:36:53 +0200
Subject: [PATCH 1/3] dma: add dma_xalloc() and dma_xzalloc()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261016-dma-alloc-v1-1-31fc7afe3954@pengutronix.de>
References: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
In-Reply-To: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792136215; l=2121;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=LRKTaFb4iXd21WjH2PbbQ1zecyn8/ToJ9LGTXMWtMEw=;
 b=hJqa8Hef+HLeOvS4HetNoPSwxijVh6dltAyejiEemhFk+ZT8zIbNhusZUf6BFYm/Lo78E9xig
 Wi0xIZLkcAMDHNi6Th/XNCQm0vcrRmpDOtvCgoCXcjiENn9cJVAyU3s
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_083659_038290_0BBD4436 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  dma_alloc() and dma_zalloc() are implemented with xmemalign()
    and can't fail, yet many of their callers check for NULL, while others rely
    on them never returning NULL. As a first step towards making dma_alloc()
   and dma_zalloc() fallible like malloc() and calloc(), add dma_xalloc() and
    dma_xzalloc() as counterparts to xmalloc() and xzalloc() for the callers
   that rely [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-56.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,pengutronix.de:s=20260414];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:-];
	DKIM_MIXED(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E5E54202283
X-Stat-Signature: 3ixayfoh57zwckawmuussadttxp3bjsq

dma_alloc() and dma_zalloc() are implemented with xmemalign() and
can't fail, yet many of their callers check for NULL, while others
rely on them never returning NULL.

As a first step towards making dma_alloc() and dma_zalloc() fallible
like malloc() and calloc(), add dma_xalloc() and dma_xzalloc() as
counterparts to xmalloc() and xzalloc() for the callers that rely on
the allocation to always succeed.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/map.c | 17 +++++++++++++++++
 include/dma.h     | 12 ++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index 11671f9f66..806439a05d 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -9,6 +9,12 @@ void *dma_alloc(size_t size)
 }
 EXPORT_SYMBOL(dma_alloc);
 
+void *dma_xalloc(size_t size)
+{
+	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
+}
+EXPORT_SYMBOL(dma_xalloc);
+
 void *dma_zalloc(size_t size)
 {
 	void *buf;
@@ -21,6 +27,17 @@ void *dma_zalloc(size_t size)
 }
 EXPORT_SYMBOL(dma_zalloc);
 
+void *dma_xzalloc(size_t size)
+{
+	void *buf;
+
+	buf = dma_xalloc(size);
+	memset(buf, 0x00, size);
+
+	return buf;
+}
+EXPORT_SYMBOL(dma_xzalloc);
+
 void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
 			     size_t size, enum dma_data_direction dir)
 {
diff --git a/include/dma.h b/include/dma.h
index c285b2095a..600b91c485 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -28,17 +28,29 @@
 
 #ifdef CONFIG_HAS_DMA
 void *dma_alloc(size_t size);
+void *dma_xalloc(size_t size);
 void *dma_zalloc(size_t size);
+void *dma_xzalloc(size_t size);
 #else
 static inline void *dma_alloc(size_t size)
 {
 	return malloc(size);
 }
 
+static inline void *dma_xalloc(size_t size)
+{
+	return xmalloc(size);
+}
+
 static inline void *dma_zalloc(size_t size)
 {
 	return calloc(size, 1);
 }
+
+static inline void *dma_xzalloc(size_t size)
+{
+	return xzalloc(size);
+}
 #endif
 
 static inline void dma_free(void *mem)

-- 
2.47.3




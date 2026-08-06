Delivery-date: Thu, 06 Aug 2026 13:30:05 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wrwIW-000ALZ-2e
	for lore@lore.pengutronix.de;
	Thu, 06 Aug 2026 13:30:05 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6D9F3201FA9
	for <lore@pengutronix.de>; Thu, 06 Aug 2026 13:30:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GsaPLWpH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TqVmExOjm3QymbtxkY/UP6ZXG7T5JD7jdV8GeN9+r7I=; b=GsaPLWpHXZ4CSViKWtKEYejOhA
	o7brJLoPjDmsoBZFnoAGAuJDcl7CuTlsTnlYXwzRn7ECsKJpEld8DbH9xZ1TWxXBV6Krswe21Dxr6
	CBHQqwYPTPXt5szv7pCfGx+Zo0DdKgQMMBypIG6HK1TYEO1s0H4M1fvw4DczggvJr+XW+I0U2HmQQ
	3r8RA+OC5Lh5JyCP18PmMdqDbJJ8HBwY8Asq3uxuV4Ql705nzTp02wxlqSPKUTID+O7y6xHP4PIgI
	x3jEOuSFOiV+/W0injRKGOqT7X/xzNjp6NFSXo1C1djyeJtDQcqpCcd08oe7Z/3P8E0027+nub7iJ
	904r1V9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwHN-00000005eQK-2gTx;
	Thu, 06 Aug 2026 11:28:53 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwHJ-00000005eOk-18ee
	for barebox@lists.infradead.org;
	Thu, 06 Aug 2026 11:28:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DDB05201FA9;
	Thu, 06 Aug 2026 13:28:46 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wrwHG-00056n-2f;
	Thu, 06 Aug 2026 13:28:46 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wrwHG-0000000G2ZJ-3153;
	Thu, 06 Aug 2026 13:28:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 3/3] dma: fix dma_realloc_coherent compile-time error on kvx
Date: Thu,  6 Aug 2026 13:28:03 +0200
Message-ID: <20260806112845.3822400-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260806112845.3822400-1-a.fatoum@pengutronix.de>
References: <20260806112845.3822400-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_042849_459590_643231C4 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  dma_realloc_coherent calls dma_alloc_coherent internally,
   but on kvx. use of dma_alloc_coherent always triggers a compile-time error.
    Turn the compile-time error into a link-time error, so dma_alloc_coherent()
    may be used in common code that's ultimately discarded, regardless of whether
    the architecture actually implements it. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Queue-Id: 6D9F3201FA9
X-Stat-Signature: 8smhcmex6uizmj1zach8io6sqx3fqaz7
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

dma_realloc_coherent calls dma_alloc_coherent internally, but on kvx.
use of dma_alloc_coherent always triggers a compile-time error.

Turn the compile-time error into a link-time error, so
dma_alloc_coherent() may be used in common code that's ultimately
discarded, regardless of whether the architecture actually implements
it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/kvx/include/asm/dma.h | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/arch/kvx/include/asm/dma.h b/arch/kvx/include/asm/dma.h
index 42329331fba9..f1457193c300 100644
--- a/arch/kvx/include/asm/dma.h
+++ b/arch/kvx/include/asm/dma.h
@@ -13,20 +13,18 @@
 struct device;
 
 #define dma_alloc_coherent dma_alloc_coherent
-static inline void *dma_alloc_coherent(struct device *dev,
-				       size_t size, dma_addr_t *dma_handle)
-{
-	BUILD_BUG_ON_MSG(1, "dma_alloc_coherent not supported: "
-			"MMU support is required to map uncached pages");
-	return NULL;
-}
+
+/* dma_alloc_coherent is not supported as MMU support is required to map
+ * uncached pages. To avoid compile-time errors for ultimately unreferenced
+ * code, we declare the prototype here and let the lack of definition cause
+ * a linker error if either function ends up being used.
+ */
+extern void *dma_alloc_coherent(struct device *dev,
+			 size_t size, dma_addr_t *dma_handle);
 
 #define dma_free_coherent dma_free_coherent
-static inline void dma_free_coherent(struct device *dev,
-				     void *mem, dma_addr_t dma_handle,
-				     size_t size)
-{
-	free(mem);
-}
+extern void dma_free_coherent(struct device *dev,
+		       void *mem, dma_addr_t dma_handle,
+		       size_t size);
 
 #endif /* __ASM_DMA_H */
-- 
2.47.3




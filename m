Delivery-date: Fri, 16 Oct 2026 09:38:21 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHcWD-00EGbd-34
	for lore@lore.pengutronix.de;
	Fri, 16 Oct 2026 09:38:21 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6C27E202148
	for <lore@pengutronix.de>; Fri, 16 Oct 2026 09:38:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=n2Q+QNZb;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=aNUqEdFQ;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=MAPd7Fp5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792136301; a=rsa-sha256;
	cv=fail;
	b=XMeotkkvDFOG0MCJYXjGPnQERVV96ZvxL/qxJ5J3Wfmnc+2N1gkIOdCAJxWsX8CJQNCYOP
	/WtQHGv+L6k3hlZSutgBBzsxlB6MuHsQD/4DQ3SdiuGDdr6YQz+rpwjR73sw115JfCmbZv
	HkUJM/+tV9+Ncxh6LeOSX4Fnj1xPCo8OFCDO3WoB1fMdiynKmf1nl2InEbjqqS4AP8xepL
	EEgAocvTn+Gy0BmRUP2Cfeg7yUgwgwIXXb2bCS5KlIH22G3ngop2pj3Oz4Vjluig4sM3p5
	QBrdGJKMQ1eaS3pZRSRQVTGE0UMa1wSxfZd7253paktaLbutL0i8JWtOuDVUFw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=n2Q+QNZb;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=aNUqEdFQ;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=MAPd7Fp5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136301;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Cd9ESjN/6fvtjaczerbztCvrGrlRW9Mt5hSsswi1IWc=;
	b=Ao0h7Xd2Eu7SGRmFc4rjpctZIEbCHN3I2ehnevwvgxjmSibCf2O2Yu7fQSbpwCi+t9i5x3
	zJk62MEsnf1Bz7KNCxEbyD6FllAuGgGNyFqyTLEqsJI+a/YpKRhzUw/CaNxwW3kL8V6KZX
	Ao/ct80RIxq8NYivKAhSns6r/ohzmdhFWZHf2+qrqLXbrb3h6UBrYPTs1ESwu/osd0aEoU
	UN7P87BqcXV+2TyIx5bH8bNAYMWKoIryDJOldHlKORPMtdTGVvKg6G+Sxr7r7TgH+uEImL
	bQUij1HhrPAYpbvWkASF80s48l16LFkqmv3wWHCzoyr/xI2NmQ+3xZt1ZkkAdg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cd9ESjN/6fvtjaczerbztCvrGrlRW9Mt5hSsswi1IWc=; b=n2Q+QNZb5hfrclMSyl3QdfqEWt
	2QJr2sDFT+nfjq8CggqlHmUtHdF0QxT+FUAxsaRpMpCTjenfoyzq7K9gPQjefHxK330MOY5f9wLXx
	AksgHNt/5CsaMw0/WP4ic1OBNZqVF+9XNqf1WG9CpsU+PxvGv3gzuDbsGaQCQAKf3L+17ubrbVhW9
	GYFcSH8zrlkdF/YqP0UroFDZ4HIhoqHP0DlEC2h5KPkprjefTIkn9NbUpreturIHtFC5t7ETdptDF
	isBSv7w5LmC35owiEOXS+lBKY07TrfNF+m7lEYKyU0XmyHs/DnQGEU8lWlkZ/d4tJ2+d41DuZB8F1
	dG6jNoWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHcUy-00000002F2h-2UiE;
	Fri, 16 Oct 2026 07:37:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHcUy-00000002F2B-04oD
	for barebox@bombadil.infradead.org;
	Fri, 16 Oct 2026 07:37:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Cd9ESjN/6fvtjaczerbztCvrGrlRW9Mt5hSsswi1IWc=; b=aNUqEdFQLH4Z/8GMEPoYfAG5CG
	mE+CjLDWOx/nzUAtNoTwikDsTmGl/nyfJ+ud1SOy9/llETAQmBY5qkaUqPtYpcYYDTmV2hZ4re88W
	NHVRnCseFdTjpWFbksH6ZvSNzaXJuII8AiZ6V+zSF8e0lHDfTD99rDo3JVxHhYC5F5hQvWmuK1Xkg
	eyQ+ZodV4JPrGeBayNQ7XHA5sLHoBTKOLe3roUGPsJppX8azsP1Q9ZvzLRmJHZcCRsxfyH/QlXkMq
	fHp3cbOcZ13VSasCL4wDtUI1Y6xtQSoTelvh3Q+PGH+gjIIGdnNWvBuXnv+E51+Qq2pjV7nU5J9Ha
	PuZVCKeg==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHcUs-00000001Dpc-1NtY
	for barebox@lists.infradead.org;
	Fri, 16 Oct 2026 07:37:02 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1DE26202285;
	Fri, 16 Oct 2026 09:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136216;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Cd9ESjN/6fvtjaczerbztCvrGrlRW9Mt5hSsswi1IWc=;
	b=MAPd7Fp5SgFD1idTxassiE1inwaOjFfelwZClJe4NO9JpJnwm7tHSRA77rw/N7aOFr/eKh
	6A2CmN3EWOXCyqGP9Q6BpQQdMx197X1e3pMOvqzYD1mbErmXSQqHzF76jDPH+tBi8aqkzh
	vyyJ+OKAqNs+b1TiR2ovYXnK8nd7Ph2Xv8Zov6k1bvReeRFMj7iGyRCe3u37usosuihMcF
	kufrRwuKIgF8Xiso63uEnFFN/2cmkGA/mKkL7J3el9r6Rkjoj/97OtER0UP1hbRJx5IcDy
	OOEDuZrugFfNk4RVLA2DJEyvzky2QJh/SFZfydtPMYHXCWdKr/PdmY3UCjMinQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792136216; a=rsa-sha256;
	cv=none;
	b=HnKB7PFMKBP5SetXm0+kz3wkWQmSTMdJZQrdc+EvIkSUZWqo9RzObQSon+fVfvRjt63KyP
	UpkIYeK7Q2sXHER6IgO4i/OfFDoh8VMCBz/oDc39y0xSRBs//s8CJlLgcbTwGISwRK+lmU
	vMRN3cFRHDVbPwEaWJKSsNtyhlLzEQ1tzZxvXXd2f7Pv+f400jN9QV8E9eWKEgJSa8tj4M
	pUpGTz+r8H61GuARL5YP3Ck2lO/aOUL6Yrq5DxgPPg5IFqpgPv5sRhhvFaZdrKkY09ASVA
	6jh4M9Uuivd7xwWu9NjKINgTUYDeCpn+hueYpF2quVSTjoWRw2++KWooEXlxEQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136216;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Cd9ESjN/6fvtjaczerbztCvrGrlRW9Mt5hSsswi1IWc=;
	b=LKkQmvufzNzjCpPRZh8tj24gTePj17OoleR0KMY4AiXy2ua5rnosGv17HN8Ub+9oFAD55n
	qjo+mDeuy/ffK4m7eAHWueSLlg1Y6Jabr+nhoAOELux+VZ3L2bGj0ETK1gnkEuAzDUdOma
	J0gn9NDVrtytdJQjhb8abQ73KJeEiPNPlDE9hlCaJRemWzCZp1tgWL9QC2r/6RTcJC9ONC
	NACG6M8OH/hEKYsUGFYyJD/0rViVQfD9+oK9V67fwnWa/fjY1bJJEFjuloc/ptT1PjpE+2
	JG94wKOw0TvCKDGY1WfccuKKebLY3RXQkzCRaEdgvWwz+m2O5Ff7ngczpxKzhQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Oct 2026 09:36:55 +0200
Subject: [PATCH 3/3] dma: let dma_alloc() and dma_zalloc() fail
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261016-dma-alloc-v1-3-31fc7afe3954@pengutronix.de>
References: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
In-Reply-To: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792136215; l=1015;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=pL64/itsmYaPeipAE6ooHe7rP+Fhlr3mitgJ5+sLqGE=;
 b=MzM5VjlqxWF0BteQ4niNyhqQZvZDKOPWIrxTDpoKM8N6gFjC3gXuUSLO71LFdRiuC2bRc2lP8
 a0zKJ9ljNXACV6LOtDq44U8XudSCD5wwwfIsoucbvqXfhE0F/ZuPHUZ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_083659_077614_FD939575 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Now that all callers relying on the allocation to always succeed
    use dma_xalloc() and dma_xzalloc(), implement dma_alloc() with memalign()
    instead of xmemalign(), so it returns NULL on allocation fail [...] 
 
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
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
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
X-Rspamd-Queue-Id: 6C27E202148
X-Stat-Signature: gwe1b68sgd7as9p6wg5eic3yogwr7zgh

Now that all callers relying on the allocation to always succeed use
dma_xalloc() and dma_xzalloc(), implement dma_alloc() with memalign()
instead of xmemalign(), so it returns NULL on allocation failure like
malloc() does, and the callers checking for NULL get to handle it.

dma_zalloc() is implemented with dma_alloc() and already checks for
NULL, and the !CONFIG_HAS_DMA versions are implemented with malloc()
and calloc() already, so they need no changes.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/map.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index 806439a05d..7a476ed044 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -5,7 +5,7 @@
 
 void *dma_alloc(size_t size)
 {
-	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
+	return memalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
 }
 EXPORT_SYMBOL(dma_alloc);
 

-- 
2.47.3




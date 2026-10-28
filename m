Delivery-date: Wed, 28 Oct 2026 10:29:52 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzyi-004H8O-00
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:29:52 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C7E10201E0D
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:29:51 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="v3/bvnGz";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="DDI9n/BZ";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179792; a=rsa-sha256;
	cv=pass;
	b=F+lvk2Zqi+BAOHbtLsAzsMWOMzj4wmzHQjKlhqi9SWqd4e8eLUVyf3c2oARKHLXSuc1Rij
	AV1PfeEA9wrk2TcvN3MSygp3WH7dVo1DP5INL6+3vy2xvhLmg754aCo8G0gihK4sdUvNN5
	3wH/b8JV4h2UyKvFy6ofL3whATkiWad+g2OEkFPknC36lYJ6LTWZKCTjGXvyz7GryYk+EB
	y/QZQnQ6ltakiYmi6dedfRQJoswXLn89WHcVGS5jFEAeUiCd+LJTsAkjhr/rINSWrgCdMK
	tNFQUIa6Vipe8hDx/CFjkGeyuyYLGuTNnCIUSjkQThacKOP6zjBhSzEf6ep3Lg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="v3/bvnGz";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="DDI9n/BZ";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179792;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=x4bpOUcTZLlbdidSnxwjHEEJBlplINueF3h0NfYzpxw=;
	b=WOmXhSJS7hp2zBynidYzIf4uTnfAM0JDK1xKLTzqsPFdu27jqLkiIec9+Lhzgzny3gPYue
	q5lhUIqII91lZexhQG/imoIzT2IIb7gllnVnRBe/68QfOgvg8o+6QymLO1BMbZ1CNkHojX
	qk2ZnKDaEvbBohsGGCZCBPOp5gej6kVgWsrnCevIHfLl7jWiA4sfTtRm4+2PU3ksycKHwo
	ASdaNzfQzP7/Kbljadqjphinv/SDWQnRAeqZULSmKhp1VzzedtZWjLag90wjIIcJ9P+U1C
	IFqDqhytvUY8yOHzbqM54v2/n5rAX2ARfFj4wyIrCP+chZWpAjmVldmPIpx+Pg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=x4bpOUcTZLlbdidSnxwjHEEJBlplINueF3h0NfYzpxw=; b=v3/bvnGzW/LEVS
	ZyiyknIrbLUUTDJGlxWGth12hpDOEwBSMlOLqHV4VkbAeit1iEdgdXa0sGKHF1f3wIa7sANOFvbQn
	5PPJTdBcC0s4u8vrz87LOfy/bLjYFVFILGrAlnivw1GD+SY5uzxJCblsUFB1eS6Fmlr27tbUfAlfF
	RugkJ0Hum4ZYES8sYVwJAOkS7Xmn9MfF+8QHOnhiCOASOvH5MA5PVJuDGJrQ8Q+KPcGZxTTuqIKMx
	N6b65MN5Wg1HFdefL0SjLZ3ouuOcudsjbveybld6ogubqZIPZgqUKnVACtTtKPuYdadDNQyBgPMra
	GjQD5PWPKPZPgGmVWOnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztv-00000006eIc-1l8t;
	Wed, 28 Oct 2026 09:24:55 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztp-00000006eE4-3v5N
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:52 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8AD09202923;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x4bpOUcTZLlbdidSnxwjHEEJBlplINueF3h0NfYzpxw=;
	b=DDI9n/BZtmTnLIJAJASfa08RyiO0b3/UeDCLxbzLoe8ku4LldaqFS+cj0UECB8JHnrGPDW
	fEmULczxFCSoWG//IGUxBY6OuSa9aGHSLUGbPvmsQb6MPrmUCu+8/kNfZYlDIKgGTQdsq5
	5IiFMrdftJW68YyvHerhLYluHIUIgkY2ja+vk1Q4kk7ihVjN3go9b1F4dyW+12l5YRTgKA
	AG6yAl6y9Y61zdSCJu/FjuyapQQZBR536zzd2kTmUi6yGsk7DdNU+zRnReS3yUH5gEaBwr
	22z/3BkJf60ayh9if1PODWUVjn8v+QgPl5duJpbB29fgZTKlgJQZx6zELcroDQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=eD+XuV+3hsSZpaeoeJzcKITpFs05dSHX16PA6NEphaGBH6s9/CBnh1DU4svxYWDoTj1piJ
	ldEIJNvocNFxL9rzpvtPFhhyqZOa1YjhZ+L85zGueRTbppMB38U2rA31sSVnu0bkFqs3fD
	mWjrRHSCqPSPmURdH9LywRHgH+P9NVwLfTv3qz0L1eIBjUfEKlpB0J69FGbM/jwE+JL2PD
	rSO0dTbAhRl6J26oARtmGeDDlCj+dH5/zoY/Z1145TyFkbuoV2oPNleiPSukxBqyfqj0LV
	uCRmUJM+TxNh3/PwP7K71gpxLkdnPTtvGjveozPMJ8ekxi4w03YTRQgd2UrMHA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x4bpOUcTZLlbdidSnxwjHEEJBlplINueF3h0NfYzpxw=;
	b=OQqjBEeK31PzdHfw9vnhcrNJNup9QsJ0Wfi6fbNE4iSOIV5kQZvoa7EGsZ0nUIC0uzDU80
	b/POKE4U4dx7ZlCVvinsKU2YUk12Wuw2nJ8ovqmhZIMx6ct+DH0WPaBMwSNhv065FH7E0A
	EpXsf6hzjAPME1mvsUpQ9X0zQi2fhnbEu1LeDVVczX4gdS6/vwBVHo9DFG/iKsipBOvrv0
	rvBA6RQORsuJch5vrsS1pSiXGVMYaWUVh6YhzmS3APIbCHNuikRX49N7c92sdJE34/VXK9
	nxYoUiXARmzQvd5zDPL7yJqA8I2kTPtyRDSr+WGoxLxt+AHlZ3aEWN8qoSGORg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 6A3B2742F56;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 03/19] talloc: remove unused talloc_steal() and talloc_steal_children()
Date: Wed, 28 Oct 2026 10:14:37 +0100
Message-ID: <20261028092442.3300753-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022450_379384_0BCBF420 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Neither has users
    and devres doesn't reparent, so let's drop them instead of teaching them
   about destructors. Internally, call mem_set_parent() directly, which talloc_steal()
    just wrapped. 
 
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
X-Rspamd-Queue-Id: C7E10201E0D
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
X-Stat-Signature: 38atoqkakb6iaw59h7fpgza7qku9qmpu

From: Ahmad Fatoum <a.fatoum@barebox.org>

Neither has users and devres doesn't reparent, so let's drop them
instead of teaching them about destructors. Internally, call
mem_set_parent() directly, which talloc_steal() just wrapped.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/talloc.h |  2 --
 lib/talloc.c     | 67 ++----------------------------------------------
 2 files changed, 2 insertions(+), 67 deletions(-)

diff --git a/include/talloc.h b/include/talloc.h
index 79a175bd5441..1f2dd346a7c1 100644
--- a/include/talloc.h
+++ b/include/talloc.h
@@ -35,8 +35,6 @@ const char *talloc_strdup_const(const void *parent, const char *str);
 void talloc_free_const(const void *ptr);
 
 void *talloc_parent(const void *mem);
-void talloc_steal(const void *parent, void *mem);
-void talloc_steal_children(const void *parent, void *mem);
 
 size_t talloc_total_blocks(const void *mem);
 
diff --git a/lib/talloc.c b/lib/talloc.c
index a1a7f8f0adc8..2bfbac2e9c29 100644
--- a/lib/talloc.c
+++ b/lib/talloc.c
@@ -34,7 +34,6 @@
 #include <asm/sections.h>
 #include "talloc.h"
 
-// TODO difference between set_parent and steal?
 // TODO use a bit from TLSF for extra safety to differentiate talloc
 // TODO allow leaf nodes (that have no children to be destructors!!)
 #define  is_root(hdr) (!(hdr)->prev)
@@ -69,7 +68,7 @@ static void *talloc_ctx_init(struct talloc *hdr, const void *parent)
 	memset(hdr, 0, sizeof(*hdr));
 
 	mem = hdr2mem(hdr);
-	talloc_steal(parent, mem);
+	mem_set_parent(hdr, mem2hdr(parent));
 	return mem;
 }
 
@@ -261,7 +260,7 @@ void talloc_free(void *mem)
 	if (ZERO_OR_NULL_PTR(mem))
 		return;
 
-	talloc_steal(NULL, mem);
+	mem_set_parent(hdr, NULL);
 
 	__tfree(hdr->child);
 
@@ -335,68 +334,6 @@ void mem_set_parent(struct talloc *hdr, struct talloc *parent_hdr)
 }
 EXPORT_SYMBOL(mem_set_parent);
 
-/**
- * talloc_steal() - Reparent talloc'ed memory chunk
- *
- * @parent: pointer to previously talloc'ed memory chunk from which this
- *          chunk depends, or NULL.
- * @mem: pointer to previously talloc'ed memory chunk.
- *
- * Change the parent of a talloc'ed memory chunk. This will affect the
- * dependencies of the entire subtree rooted at the given chunk.
- */
-void talloc_steal(const void *parent, void *mem)
-{
-	struct talloc *hdr = mem2hdr(mem);
-	struct talloc *parent_hdr = mem2hdr(parent);
-
-	mem_set_parent(hdr, parent_hdr);
-}
-EXPORT_SYMBOL(talloc_steal);
-
-/**
- * talloc_steal_children() - Remove a talloc'ed memory chunk from the dependency tree
- *
- * @parent: pointer to previously talloc'ed memory chunk from which this
- *          chunk's children will depend, or NULL.
- * @mem: pointer to previously talloc'ed memory chunk.
- *
- * Removing a talloc'ed memory chunk from the dependency tree takes care of its
- * children (they will depend on the specified parent).
- */
-void talloc_steal_children(const void *parent, void *mem)
-{
-	struct talloc *hdr = mem2hdr(mem);
-	struct talloc *parent_hdr = mem2hdr(parent);
-
-	if (ZERO_OR_NULL_PTR(hdr))
-		return;
-
-	talloc_steal(NULL, mem);
-
-	if (!hdr->child)
-		return;
-
-	if (parent_hdr) {
-		/* Insert mem children in front of the list of parent children. */
-		if (parent_hdr->child) {
-			struct talloc *last = hdr->child;
-
-			while (last->next)
-				last = last->next;
-
-			parent_hdr->child->prev = last;
-			last->next = parent_hdr->child;
-		}
-
-		parent_hdr->child = hdr->child;
-	}
-
-	hdr->child->parent = parent_hdr;
-	hdr->child = NULL;
-}
-EXPORT_SYMBOL(talloc_steal_children);
-
 size_t talloc_total_blocks(const void *mem)
 {
 	struct talloc *hdr = mem2hdr(mem);
-- 
2.47.3




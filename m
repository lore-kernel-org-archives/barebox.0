Delivery-date: Wed, 30 Sep 2026 10:30:27 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBphr-007zgn-1C
	for lore@lore.pengutronix.de;
	Wed, 30 Sep 2026 10:30:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CB1BB200231
	for <lore@pengutronix.de>; Wed, 30 Sep 2026 10:30:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Z6Q/fARm";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=dxQH4eBA;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZEf3Rfkw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790757027; a=rsa-sha256;
	cv=pass;
	b=IAMuix0QWdW5BodamUyya35Cm4agPWoC+7IpWAymSMRiT3jMhXPGvfPa6x6J7TIqc7lHH6
	rmSNHr/nsmbQJ/DRu7D084WHUgQNe2jxpafEse3irHNvODRAYfWuRL79lvNif8K8kTam47
	aNc/RLZWWMdBfz/j2VwpzYvLqZ6hXmRYOZHmXqhAaEbhNzYIiBcbD4SNIngno01u9UnabD
	w4a8B6DUQxjsDoE/5kXaDKETnMobTC1zItZAoS47BsJfLvbHbx90FcIraYquMszR7aBfso
	OYsRlIIF8xRqU2eQJVvuitv1lEr9jsokHX/3hsFsDKoM/tKI2qukASgM1WdS0g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Z6Q/fARm";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=dxQH4eBA;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZEf3Rfkw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790757027;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=qdBNx9BeaC6bnGnveBU4HyKSM8gHdDC6QxQrCYhZF/Q=;
	b=WWQ2Vc8da83hXYkCfTxMoxJyaL8xuL4CUWsOcAQDRRRYuhAXBSEcM33koCm3eU+KRg4Pv9
	yoHNy6xh/wM8+BFr1Fb4pv4yuWoGuRDWhWMFqyMQsSsZREV/rEmaUT00dIxTvj/HkQdDjT
	x/SeJR8i3TIDuBZI+uWesuBe81Skfa9L1JJxbq2hI+2RcEDtE1NLp0XeIRQEqbrPQvQvow
	Tkl7Q0PC96eTy6O/tH6jtJP9DWuwAeTscbWy1PzLFV9e5xpu5oU2d1BEPnTq4BK3W7V9Tz
	B4H/iHivFFSj0vTqtj6zAoiRZPFcoV7nVp/NiTBFmyoOZuy3zNzNnlQ/qMZARQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qdBNx9BeaC6bnGnveBU4HyKSM8gHdDC6QxQrCYhZF/Q=; b=Z6Q/fARmgsY6F5NFyjhzwc2g2a
	Q844QcA//QMU+nWYH8sZknk+JFqqo+NHHS2qHaEDCv2JsVYlao6Ee3bCWV4kKFGKWzWZoix0ekHqX
	v3gxjCg4L3QknlOuBuC/b0b4y8WlbZ9OoVqEsbPg80raUrZW1PkFwKuTOBcMoi2xG0x5r27o1qYpP
	XbceUrCDW4uA5O3i6sTbGLGi23nUuwJx4w6UcSkFN8ecoz2TgBFAGuwxRACl8O15pDtSW/1lXGERK
	K2LNfdMEKjHqteknchJPdl8B024i2nhKuu8GbGPth/dcvQh1Jwq770m+3lj1lmzzmdglUN22aAP0O
	inX+W+LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpgY-00000005Q9r-2sxN;
	Wed, 30 Sep 2026 08:29:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpgW-00000005Q8n-3Y45
	for barebox@bombadil.infradead.org;
	Wed, 30 Sep 2026 08:29:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=qdBNx9BeaC6bnGnveBU4HyKSM8gHdDC6QxQrCYhZF/Q=; b=dxQH4eBACVZE2I4rQxpQCKV45j
	bN8/D+22dMkWV86KQBInvekN9r52k0kw3xn6utVrX+1p68sQEuauFlrWGvbWw3GtxHVq62TPm2NSA
	ozW9CxXLwbE1lg7HgtBKbShF+hDUoAIec6o0WD9SS2b+iAZMGK9dQhNMIgvN/dfbkdMI6mfUjb9tp
	4zXnzFuophH4znNT8k27J0jomnpDKhJvRUq1BccwaaGRvL1vFycdGxb7aY5EW8tLuPu3HN+Fzfra0
	+sZr3XqM6CdnhqeqMxZyZoKH2VMzrhVwHXVj4P1s7qP8J2lVfEFdgroylQeN7S2Z0Vjp1+mqcwPQr
	jHSeMz9w==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBpgT-00000003Wf2-3jhK
	for barebox@lists.infradead.org;
	Wed, 30 Sep 2026 08:29:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E3264201BC6;
	Wed, 30 Sep 2026 10:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790756938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qdBNx9BeaC6bnGnveBU4HyKSM8gHdDC6QxQrCYhZF/Q=;
	b=ZEf3RfkwEdhony8s4uC4V7RznAFDZQJA6igyrBgC+rxb8FYxqAg27nYrMkoJHi77TAwFNn
	ULO/eOw6+OtN2Drvrq3JKIVh/uV8Q89QQRTh36K9CEnMI7UUYq4VnarPRhfqM5x1Qpl4LC
	ZsbuueigEVg7WsC/PEtOF4ua8yp5hQOGGXwYsIhsBQeJwFOLuny+Sd0noDumRM7wMPLyKZ
	rS5lOatdJ8siq1Jn25/3+a6lasZGDCu7fnyOY8PgWFKi7FB5/g09hDTwFMctXm453qAmrv
	fIxMsR6dcRY3X2obm3cZIEWXV1XkrnnX9dQHesUpCu2R0ZtC4Jay/lwwwO6InA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790756938; a=rsa-sha256;
	cv=none;
	b=er1oJ11QFcuxkwM6phwgZGCWO6cPcLjjXsIK5q8X5Fs0HkbcjwLI6JP4Yvl3OmZMmhcZD2
	Dad1T3jJuP8IhYpz6AMlp8/VkJt+6ZqbeOiqPkqweQic6RMt1Wr+bBPolNzYjjPU5MMWSe
	ZZ+f0Q0LEDKM/bQW5NDDCUTd6+YlfNgqRqX87QBXxISivGvT5XNop5PJMyeh1vPT8AklZZ
	5gRxqKqdYDj/AzkHS7CKFwtmNuBdBYnzEthRPbKRuN3h65sPf6N88cvsRJCBXTqhdxObCc
	HH/NNlLyOt5IgUOV/IXuE5GcjE2Bxrjavi/KsStvJ70KaS+kQ+Dwg1yx/4Dy7g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790756938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qdBNx9BeaC6bnGnveBU4HyKSM8gHdDC6QxQrCYhZF/Q=;
	b=E8FMhjEm1rnIKPw23sM9Me+ght8bmrbLHk3sB23VMGrD4eXxQfTJnsoKvQYzBG5l85uxCo
	TkTMAyoSkRRCI45xNao6J9y19yPXrfSu3/syWf9wNicHSL9P2+O5vNfKCj70de9gdRgCdv
	vaKeCizY9954/S9bHLHQViMJ91+3X56vqK3WQUx9RiINHAvQXCAmyo4uSLroIxZwn046uV
	4BApg7022jTJ8b8h0tkhnrNVcuyuLxQwlyw44EgOcYa3u4vEm+0bxA0vh33pE11pILnKbR
	/A/CIZdhdDO7PKuxzOhM9VPedZTequ2kijUVnnINKrwQZP5q73azZV3u2Y9YDA==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xBpgQ-003Wks-2i;
	Wed, 30 Sep 2026 10:28:58 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 30 Sep 2026 10:28:56 +0200
Subject: [PATCH v2 2/3] PBL: rename sha256.c to generic sha.c
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260930-crypto-pbl-sha384-v2-2-1cedca8ce7c6@pengutronix.de>
References: <20260930-crypto-pbl-sha384-v2-0-1cedca8ce7c6@pengutronix.de>
In-Reply-To: <20260930-crypto-pbl-sha384-v2-0-1cedca8ce7c6@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_092902_136704_9873711F 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Remove the references to SHA-256 to avoid name confusion when
    adding support for SHA-512 and SHA-384. Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
    --- Changes in v2: - New patch --- pbl/Makefile | 2 +- pbl/{sha256.c => sha.c}
    | 2 +- 2 files changed, 2 insertions(+), 2 deletions(-) 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-61.01 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.80)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CB1BB200231
X-Stat-Signature: n1rktiy8kzksau5czwh6rwocs4w5izyh

Remove the references to SHA-256 to avoid name confusion when adding
support for SHA-512 and SHA-384.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

---
Changes in v2:
- New patch
---
 pbl/Makefile            | 2 +-
 pbl/{sha256.c => sha.c} | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/pbl/Makefile b/pbl/Makefile
index 9cbd4816402c..bef313df10cc 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -7,7 +7,7 @@ pbl-$(CONFIG_PBL_CONSTRUCTORS) += ctors.o
 pbl-y += misc.o
 pbl-y += string.o
 pbl-y += malloc.o
-pbl-y += sha256.o
+pbl-y += sha.o
 pbl-$(CONFIG_HAVE_IMAGE_COMPRESSION) += decomp.o
 pbl-$(CONFIG_LIBFDT) += fdt.o
 pbl-$(CONFIG_PBL_CONSOLE) += console.o
diff --git a/pbl/sha256.c b/pbl/sha.c
similarity index 87%
rename from pbl/sha256.c
rename to pbl/sha.c
index 04cc64a77d85..f08e554ea4c8 100644
--- a/pbl/sha256.c
+++ b/pbl/sha.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * pbl_sha256() - one-shot SHA-256 for the PBL, picking the best available
+ * pbl_sha*() - one-shot SHA functions for the PBL, picking the best available
  * implementation.
  */
 

-- 
2.47.3




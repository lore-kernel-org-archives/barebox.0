Delivery-date: Tue, 27 Oct 2026 14:25:22 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLhB3-003vtb-34
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 14:25:22 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B8C8120294C
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 14:25:21 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hG3Ko2H0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Vhk2JCrL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793107522; a=rsa-sha256;
	cv=pass;
	b=bqxr1bFb7Rmp/be66zIegmXk1/TeQZ5FKhBZk2d4lGqWopyyCIcdnq5BKNx4zemvasxKVk
	/5o0dx7I0YBNyFOZDEtfUcMza9HC4V+YLpJ4SAN9j1TpHfsjWlm3GZrFGuKzO55UOX+/jl
	D24E+nubJJh/4zkLW4X3MvhbtFvDDk9MFjmFEXsOgkKVzGqI4gWPapTl+m9609o1v1tls9
	OVXq+liMXlsQpQ+y6vP3c9hQTQWqssjFXcTTNMjL32HxixD8FLpF15AjOtlcW+eovupRKP
	VZwV1TKLIJroArtkC7kWTYJbSj1ZhjJHbpLW+l77kdq2qUY3sLKbrOeWB/7VAw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hG3Ko2H0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Vhk2JCrL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107522;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ll8bxcQUz7J7Hy/aqEwEsTY1cVFnPB0y3bOHadVUSRY=;
	b=d/rF/w46NlI1eEj+uHn9e3Mb5wDfnCsAOvzoYGnKxbNHnM+bsl1UFS3GkmptI3TS6WdAbJ
	3t6jgoCaF7ik2CG/mdfZWqDfRsZD4PCYMV7HVDCaQvGTo3rhnsYY9uNy4Dn8zIAqDzhiOu
	8NFqIPJtbEzglz/juz7/579HcglgJJueBiLPebqsorTQIAjC0wyQ1Nz4iBQwvBXoboGi9U
	PjHqFA94yVVp7xPiW/snTbYR4+xXYT3wFDkMm3iMfr5Zm1oOqcGGxQwHBbA/1Vv0yth4Kl
	rLkhoVRqh0ylVarifoG6cZ4zkIVIJwDTs9Vhlf0SsNDqemBSbMzIfazUlbUnEA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=ll8bxcQUz7J7Hy/aqEwEsTY1cVFnPB0y3bOHadVUSRY=; b=hG3Ko2H0U5ylrT
	CiubWJQadn7pmUxtrAEuwzNyEgz++JtHMPzUHFYFhoxTu6x+t/bae9oVfGEOGMNDUj8DF8495ajL8
	mBvEbI7sVezEjR5xasBwrhpM0uxe+tb6EqMe3Pj0HLioXM+DlI1X0NsyrtRrOkIt3HCMMQzNt9c6r
	vOzp8Bv68AvulT5sv0ttRu2BDAgPhJEd1m1nHHepuoHEDxcP+ki3xwvkJDtfzVkMib/oErnimGOwF
	dfKjvtDIbfBJKzHl7CBLubYgh9iBbdgzjtjAPKhTXFdMs+rze9c4ypYOpF1gEEOMbzi9OwDNzsiWh
	LtIVZEDgci0J7fpwzmfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh9u-00000004q6L-1zg3;
	Tue, 27 Oct 2026 13:24:10 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh9n-00000004pzg-2ENi
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 13:24:07 +0000
Received: from ratatoskr.trumtrar.info (unknown [IPv6:2a00:1f:f805:2b01:a03:2f4:308a:7b52])
	(Authenticated sender: str@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 53B0B202928;
	Tue, 27 Oct 2026 14:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ll8bxcQUz7J7Hy/aqEwEsTY1cVFnPB0y3bOHadVUSRY=;
	b=Vhk2JCrLfmoqZcnOXHd+HaTNI1GGcxrf8H99oBKzNHhuEwIHWAIDTumtRCHWGXNFCHGqFE
	CwukloSDL69eMmefYgeBfZpwZyOKRRosbdZC3RsoFGxTOAA9vIHtpp26SKVgvp2JCveBxw
	IPCDmgWM8T2+oJAKAZX1hbjw3zJQwlY6K4s2DLKZULDTyOIMcUgrT4E/e19uDYiU8Aw8Kg
	cdafwKY8ypVMd3vVY0JuegXkyY4K4gYkVEoXooemxeW4BtZYrGAkCF5TzHroWsgWZIhOkA
	VTER8vjoWDCGOKrKdiUQzaGFwdB/D48/vyUzRdj1lSBYybFlBlTZIIAqSFn4dg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793107439; a=rsa-sha256;
	cv=none;
	b=EVVJ2KL2qD8IsAfCJoejAWnLsvkBWJ0epPuiATC/0awbOKOh6VK5g1nPt9F01avzhJh7z6
	sScKhVpE3dZnQ70jvsAvPqagv7lDR7ebciThH/Zf1wcA6SheGUffiseaDmBxs9bMDg0VOt
	zoITz29Da64MPP0aGPR+SnXfbc3xFdcRtr2PgVmtJq3LCKE7AWKvMo4ZxFgl8S5EAh+mBh
	YZSXOYVQdLZy4rFCoBGwZvSugZ50CBZ5QmTxfosNwcCwKlhdTOhf6BhO60xTRr3FchC9WC
	YhnUa8jPQ8l2Mg5xczq45yCTSx2jxWNCrcUtJRT2ZOEErU/rcM2FcKkD5KbK1A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=str@pengutronix.de smtp.mailfrom=s.trumtrar@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ll8bxcQUz7J7Hy/aqEwEsTY1cVFnPB0y3bOHadVUSRY=;
	b=DvO/E9OOKt3ApJhZHF7XzaZQYLMobeyO8wmeUwDU0rRoZigwg3eycGnmfmAFLqgS3ZF4gB
	IiLGnU7I4aAtA/HjDqUrpd7O0oiFL8LOWobpM72n2TVuXzZ/6u3f8+Fr9Z7jWPQOOq5TTy
	NY70zv3LDPYr6RDIF9/MxsEmV2lfQ30C1iKh9BnTuCIVGU+JnMdPruYqLFjc5OkZjj43Lp
	jD7Mv31UVd9j3RcqxmbcrWBroOlpuHmigE0w6ye+azr9gevEBmPfVaCILF0Bu9rcfbVVxC
	oJbYCcNxMp1mzx1sC+2l8yElxdTnKWhWqP97CD40XOMp8B15iefQUQSni0jPLA==
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 27 Oct 2026 14:23:53 +0100
Subject: [PATCH 1/4] loadable: add loadable_from_buf()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261027-v2026-10-0-topic-bootconfig-v1-1-2758d3d9a165@pengutronix.de>
References: <20261027-v2026-10-0-topic-bootconfig-v1-0-2758d3d9a165@pengutronix.de>
In-Reply-To: <20261027-v2026-10-0-topic-bootconfig-v1-0-2758d3d9a165@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2314;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=r5+rxS+gP9aTPGEVO/DxPRHnYL8esVmsY1ShhQjzX6I=;
 b=owGbwMvMwCUmtVehiCsuTInxtFoSQ9aDpe/Yfm1dskRm5qMFDi1ibm6CZ7+UPryUyXevsPGnx
 KUHmk+/dJSyMIhxMciKKbKoLKzgE/X44Bk5TYQLZg4rE8gQBi5OAZjI7A8M/wv/P2ba1+qxbs7i
 6i9bPLTEb27xMk0+8Tmn+Tr3kwmr5tow/GTkzvjZqNX1fbG/35fwe3/9ek/kzzr5iDewc5/Ezkz
 nDzwA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=24A1780E1548F0495996140A1ABD20720A5E5622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_062403_735912_93AC6D4F 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  loadable_from_mem() leaves the memory to the caller, which
    then has to keep it until the loadable is released, wherever that happens.
    Add a variant that takes ownership of a malloc()ed buffer and free [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Queue-Id: B8C8120294C
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: z68537f7muhrfxk9qcpnmz9tntwygnsh

loadable_from_mem() leaves the memory to the caller, which then has to
keep it until the loadable is released, wherever that happens. Add a
variant that takes ownership of a malloc()ed buffer and frees it on
release, for data generated at boot time.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/loadable.h |  3 +++
 lib/loadable-mem.c | 24 ++++++++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/include/loadable.h b/include/loadable.h
index 9cc89ea458..6ab1692c5d 100644
--- a/include/loadable.h
+++ b/include/loadable.h
@@ -254,6 +254,9 @@ void loadable_release(struct loadable **l);
 __returns_nonnull struct loadable *
 loadable_from_mem(const void *mem, size_t size, enum loadable_type type);
 
+__returns_nonnull struct loadable *
+loadable_from_buf(void *buf, size_t size, enum loadable_type type);
+
 __returns_nonnull struct loadable *
 loadable_from_file(const char *path, enum loadable_type type);
 
diff --git a/lib/loadable-mem.c b/lib/loadable-mem.c
index 4e697acc0b..a7f7bca8db 100644
--- a/lib/loadable-mem.c
+++ b/lib/loadable-mem.c
@@ -8,6 +8,7 @@
 struct mem_loadable_priv {
 	const void *start;
 	size_t size;
+	void *owned;
 };
 
 static int mem_loadable_get_info(struct loadable *l, struct loadable_info *info)
@@ -80,6 +81,7 @@ static void mem_loadable_release(struct loadable *l)
 {
 	struct mem_loadable_priv *priv = l->priv;
 
+	free(priv->owned);
 	free(priv);
 }
 
@@ -125,3 +127,25 @@ struct loadable *loadable_from_mem(const void *mem, size_t size,
 
 	return l;
 }
+
+/**
+ * loadable_from_buf - create a loadable owning a buffer
+ * @buf: buffer allocated with malloc()
+ * @size: size of the buffer in bytes
+ * @type: type of loadable (LOADABLE_KERNEL, LOADABLE_INITRD, etc.)
+ *
+ * Like loadable_from_mem(), but the loadable takes ownership of @buf and
+ * frees it in loadable_release().
+ *
+ * Return: pointer to allocated loadable (never fails due to xzalloc)
+ */
+struct loadable *loadable_from_buf(void *buf, size_t size,
+				   enum loadable_type type)
+{
+	struct loadable *l = loadable_from_mem(buf, size, type);
+	struct mem_loadable_priv *priv = l->priv;
+
+	priv->owned = buf;
+
+	return l;
+}

-- 
2.56.0




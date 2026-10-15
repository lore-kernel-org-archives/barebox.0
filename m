Delivery-date: Thu, 15 Oct 2026 16:09:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHM95-00Dx0Y-30
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 16:09:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5C4EA2027F7
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 16:09:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="gzEq/U7J";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="J6zLCq/p";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792073359; a=rsa-sha256;
	cv=pass;
	b=TtssIx3uIdcSrKXBZPT0Xd3TacM0wRRvnj0EOaNBCtrquwCMl9CYevx2iLnLcPlHQrKtcc
	aoqU4LAy/r9gxP00yKk1+K7GfIfu8rSyWY1YFbJUali082DIVIaUFexy07GHa8snJhS6pI
	R+t7sqpRU1GViMu5CJ2b27lRvxm4GMTzQn6p2vd+yZ3U7P8GMpcS+e1/lCWwoI2Q1apKTm
	TMx5dBDkbP7XgLPfL46E75HvjSNho+yv6N8OR4ldj6ksBm1xtfWVrc1ZSyzNXoZO/FzJ7p
	g/f03uoZtyb3sRea7PTgQ9Znx1XVxuYyiQJhxP0G39PYQhwTvsXq+uuVju0F8w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="gzEq/U7J";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="J6zLCq/p";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073359;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Sy6oJxFe9IXljjHcl/0ujMz+Zj1x9fZ2iGJoxRodIz0=;
	b=GEMLJOqRyD7HncExJMho/UQRbTOD4l5vpKm/0pVg6nVwp9eT02tcBC3yAQsHyyi5bGv0e0
	BqoD8fJJ5KXWWb9nDpr0764d1G/8IbUacUia9u4H3JEkoxdKKwDj1du0IToCknpEdxbFCN
	5DjnaA1ng2GPrf7duROVA669ZdTFSRHIDpex4hxAspvrNrKypqtBZbmK72YQal5B4tjTu0
	Dp+qMLf5sNqE4SvJYOcVO//52q8wWJ4qQmCIwvx6NQW7HimWWFUszX8J0Tni+a2aJtl6vb
	kSn1NUlax/LwHKhXWmo5Y4aw+IMeJGcoh3oY9yJOY2aHYxtUWoScmXfpqH4hYA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sy6oJxFe9IXljjHcl/0ujMz+Zj1x9fZ2iGJoxRodIz0=; b=gzEq/U7JNncZ5IzdRzAoTKrMIa
	CRlsjjG+u4GGv5v8+9qvbAN/2H+ZrMkDIdli5f6lPy4jGBPYOZzTthBL1XBBPfKjM+51nr9Il7nGr
	g0K9Bxsd/yMUylQ6XS06Sl6vGoUgEaWrDG28hkw+iIOwN1nrIGYzc3EO1UNw/EoBaqHIaKxMQtCg8
	5InAt6oC/o6vuqvbBQBaSNRUg9oJjtMsp30PNa8d5jf3tQanizUJZzcJ1x5n3nEFuzKzBwpCPf6Dj
	tadLT4rmOofSPtWhK2tq1BycnAn4kES1s6lx8+7ZA+J9Gd6P4zhBBjOwjWNFSWArsZMI4MI58kdVO
	O757Vt2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM7h-00000000KOs-2A7b;
	Thu, 15 Oct 2026 14:07:57 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM7b-00000000KNq-0gKB
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 14:07:53 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 054672027F7;
	Thu, 15 Oct 2026 16:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073264;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Sy6oJxFe9IXljjHcl/0ujMz+Zj1x9fZ2iGJoxRodIz0=;
	b=J6zLCq/pMwLgNJzQAlH1ARPK9G/oXKPTqLblicJkcsx6Pqm8LmYkbo/tAzwhEsqvsrOX4v
	xAMqutwtpitgfxbqfYFb3tSu3lwraiJ9sMIySsQOe/PVC61W3CIT0HEhvZhlxrLUdOjIZ4
	MQR8nEoMWqAxr39Y7TeRtRiRcNbIUz3O2Algu5S9FXbg1I1wvdQuQ2l0kFemUO6Gluefp/
	SGhuinf9Ou1tUQnrfyHtZGdNg9R2zh2jkZBLl3M0+ImQv5ZSJ2iNBAXQP8L/JxrnLYtyUR
	wO06ol5tXYm3VAIarez944xqbBjRxNY7nKx066In+ZNxzvSEbCcYrEXuj9wv0w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792073264; a=rsa-sha256;
	cv=none;
	b=O4whtO1lLdONOfOA8y+oyZeHUDvkkd0ogTblAdP9+t3FLuWo22bLJqjksjMHdD5SMuzmMV
	bOvv97XGXGYoNHdqz2f4jPEWWeknHWsEmHN6jjDvJPr8w4sSMK7fRcTQYAWikievlYz8DB
	uW0k7bE26Qhp39pBz3xbDeWX9GQ2o0OWAfQCW0m1VhX8rjY5zHvnYg+cFKsd0jtDUlZNP/
	gQJXhnwRAVDgroDoZmJNSa4HnQJ2iFPAUXksuIvJUc4njA5xeG063VkvWpQp+sd8NED7aZ
	w/6Esif0d6M9akbSRqsmCVye9RoOBbWN73kYsPjsC9M1sObxfRV9eAvV0cTEVg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073264;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Sy6oJxFe9IXljjHcl/0ujMz+Zj1x9fZ2iGJoxRodIz0=;
	b=FaEKdBBU+gxsuAcJXXWPkdoC4lSrB74sHbp8205u8T62eDG/riWrdkD7mAp/YHcJRmmqht
	T5Zo88+1vT1FdJO4GLdq/0vWMfBwaTUBpDpmp4CphJwwiiIfD4oUUW+cghv2PQ0ACIAHkk
	CQDGU9UI11YK+Oc7xBAJ/zPi5qjqJ/nJNQXvJ4fjpfszEezjio5+S1E+Khi+AtcA/iTKvd
	L3yAHnRUDMtcTP1CNbqBz9BgDKWYREFn5IsOyLEcGPEWatVqxuv2J6kdYxPPaaRYi59Z+B
	I4TrJ4VTFpBVNT9ED9N3elCDymp3QIkdRY48t3KS+nVIcP3UsycFe/4PYtZGUA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id DFD297415DA;
	Thu, 15 Oct 2026 16:07:43 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] nvmem: core: add nvmem_cell_nbits()
Date: Thu, 15 Oct 2026 16:07:42 +0200
Message-ID: <20261015140743.1214225-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_070751_737899_560196B1 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  A cell with a bits property is narrower than the bytes nvmem_cell_read()
    returns and nvmem_cell_write() doesn't mask the value written to it, so anything
    that doesn't fit spills into the neighbouring [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 5C4EA2027F7
X-Stat-Signature: babojdaz3yoq7kpdk4otztqxomf8rrem

A cell with a bits property is narrower than the bytes nvmem_cell_read()
returns and nvmem_cell_write() doesn't mask the value written to it, so
anything that doesn't fit spills into the neighbouring bits.

A consumer that computes the value it writes back, like a counter, thus
needs to know the width of the cell. Let's add a helper that returns it.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/core.c           | 16 ++++++++++++++++
 include/linux/nvmem-consumer.h |  6 ++++++
 2 files changed, 22 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 79a36bb9b996..9fb7049c0116 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -928,6 +928,22 @@ void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
 }
 EXPORT_SYMBOL_GPL(nvmem_cell_read);
 
+/**
+ * nvmem_cell_nbits() - Get the width of a nvmem cell in bits
+ *
+ * @cell: nvmem cell to be queried.
+ *
+ * Return: the number of bits in the cell, which can be less than its size in
+ * bytes times 8 if the cell has a bits property.
+ */
+unsigned int nvmem_cell_nbits(struct nvmem_cell *cell)
+{
+	struct nvmem_cell_entry *entry = cell->entry;
+
+	return entry->nbits ?: entry->bytes * BITS_PER_BYTE;
+}
+EXPORT_SYMBOL_GPL(nvmem_cell_nbits);
+
 static inline const void *nvmem_cell_prepare_write_buffer(struct nvmem_cell_entry *cell,
 							  const u8 *_buf, int len)
 {
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index ff9b87442852..efce9bb0e593 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -28,6 +28,7 @@ extern struct class nvmem_class;
 struct nvmem_cell *nvmem_cell_get(struct device *dev, const char *name);
 void nvmem_cell_put(struct nvmem_cell *cell);
 void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len);
+unsigned int nvmem_cell_nbits(struct nvmem_cell *cell);
 void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
 			      size_t bytes);
 int nvmem_cell_read_variable_le_u32(struct device *dev, const char *cell_id,
@@ -68,6 +69,11 @@ static inline char *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
 	return ERR_PTR(-EOPNOTSUPP);
 }
 
+static inline unsigned int nvmem_cell_nbits(struct nvmem_cell *cell)
+{
+	return 0;
+}
+
 static inline void *nvmem_cell_get_and_read(struct device_node *np,
 					    const char *cell_name,
 					    size_t bytes)
-- 
2.47.3




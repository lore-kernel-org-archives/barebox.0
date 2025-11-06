Delivery-date: Thu, 06 Nov 2025 16:19:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lT-00Fypx-1k
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lP-0006lo-Tv
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mINezxtk+DT9PW0UZaJ77TInbGo5xGj2HB9T2zIZpWs=; b=lqM/cen6TBE02rEPNLUoOwXawV
	2Fx23y3TtNjRuAYmwDe4e476ltijMUA+mT3W5u0VisbnXzjWYL+6HpHgJccYWMi5zBtuOtvlCs8U7
	q8mhyI3egeDcgxyKtdTaHjP4dI4ajUlNRKqE8Lj6sNfqEtNv4D4wQRH9eLOrmRoatFdxQS+8IazXW
	kL+6suSPZT2fzAaXYfIhxF41U37R273rKqYQnRVzmUThKvLKG1ft/EhMhBj2f1ZxuAGMO4NzrLCCe
	Iqd8YdDldadHeVmJDEwh3dlPs2+2HPlk0A5CtRjYKzbvSwn68VwVjeAbdIRiDvlm+pUChTs3BiZbz
	a2t9KPIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kn-0000000FnQd-1gu9;
	Thu, 06 Nov 2025 15:18:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kf-0000000FnAc-2pIT
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:20 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kZ-0005tl-1H; Thu, 06 Nov 2025 16:18:11 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:18:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-9-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=685; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=5lqNIOnJpJASt2CTS7dgaf468/VyL/y+YjeaFIX8zv4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2aP3e39y0iaV3f42Zx+KG39Z9+K5AM/s3/J717AsO
 TKvafm3wo5SFgYxLgZZMUWWWDU5BSFj/+tmlXaxMHNYmUCGMHBxCsBEetoZ/ic5zllZeGrPHq2f
 X+svGLBVHBO3a4uu33Ls5+LdWxx2fDjO8E+fxUB3ybnFc39+vuajJmKTtOj4+z+2SxmqUoJvV6e
 7GfEAAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071817_751510_18AFFAD0 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 09/17] scripts: bareboxtlv-generator: Increase max_size
 in example schema
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is to accommodate the rather large RSA signatures when using the
example schema to test the signature feature.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 scripts/bareboxtlv-generator/schema-example.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/bareboxtlv-generator/schema-example.yaml b/scripts/bareboxtlv-generator/schema-example.yaml
index b5362ddf58..34ee8b1def 100644
--- a/scripts/bareboxtlv-generator/schema-example.yaml
+++ b/scripts/bareboxtlv-generator/schema-example.yaml
@@ -1,5 +1,5 @@
 magic: 0x61bb95f2
-max_size: 0x100
+max_size: 0x400
 
 tags:
   factory-timestamp:

-- 
2.51.2.535.g419c72cb8a




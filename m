Delivery-date: Tue, 28 Oct 2025 19:04:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3d-00Cll2-1j
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3Z-0001ET-V0
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mINezxtk+DT9PW0UZaJ77TInbGo5xGj2HB9T2zIZpWs=; b=PV9ySElmNXb5jqKQXS9EMINSY/
	txT8xtTBp8oT0IrK+QdVOVAr7xcZhv5scYLnn0oh8fyyWFdLdIwRWPgu9g9yA77SV3Xkb10NZOGVj
	bRe3v5SWDL2k3xhZMqNyROfo4K4Wne5IaSYcg70RmnL37pIlMa9Fu9DwtFhaQQApgwIknDeIWPp9j
	A/FbpyZqXnzxBhfNSUZ32GOjuiXLr6eEvXUfGPwcVeyc3FGblbftA2i3GlN7emCMTE0lSWgqS9VKQ
	lZfH0YX2h7zwgW4BnAtyP3aqbg1YhOOEbzDY0ohX2XN6ZkknNCZZGreWcikGXFLihP+xvpDsI51cE
	AHOH5ztg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2w-0000000GSJB-1X4V;
	Tue, 28 Oct 2025 18:03:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2p-0000000GSBP-2zLT
	for barebox@bombadil.infradead.org;
	Tue, 28 Oct 2025 18:03:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=mINezxtk+DT9PW0UZaJ77TInbGo5xGj2HB9T2zIZpWs=; b=oI+GRYMPJw559FjyWZGs4L+bPp
	4jdGEl0+FBxUISfIlNd7A8RJzBEFEmpm+lWM4N+D3QGAwhS3/RYv/DdnAfG3EeXd0w//w3bYzYyOU
	09tREWhg0ft3fjBPXPwWfdjwYvlbICfZDmaUEW8ORyu830B2MODS/nYZYebn59dOXBx0+uOf2hBQU
	6BG9BSj7fkwY9YIA9GV5tDxuOx77RKm0OShyo/evlou5H5ADTloHt2of2l58w88GqZSKaPpPwhcMz
	n+SkElmB/NwPr0cjLN5lVOvjoMgTQDVHH3MOdplf1IiajMKN7Zdb2y+7f3Griaso7ZEU+AHBXiWrt
	WRLDxEJg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnAz-000000050DS-3OIF
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 17:08:10 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2h-0000PX-7z; Tue, 28 Oct 2025 19:03:35 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-9-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=685; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=5lqNIOnJpJASt2CTS7dgaf468/VyL/y+YjeaFIX8zv4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZC3aoWDieF0j12fmZjMhe82qRbOqTK/zOdRNuflw7
 8sLC2dN7yhlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEzkhgEjwwmv484Me0qS3yz3
 rD8X1N120/dfVh7n3KbYxRM7l9QcrWL4p6xcyaTxdF6vxewIg9sfHt/fdafzRk6S0Q/+PQcbVS+
 68wMA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_170805_895268_4038B060 
X-CRM114-Status: UNSURE (   8.96  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/17] scripts: bareboxtlv-generator: Increase max_size
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




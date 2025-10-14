Delivery-date: Tue, 14 Oct 2025 13:03:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cop-007iGT-15
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 13:03:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cok-0003Db-4H
	for lore@pengutronix.de; Tue, 14 Oct 2025 13:03:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tm8Or6VSZp2QdgVxnGrcbmD+pK9o44JkonUsLh/cgJ4=; b=yp5yYRb0ya3qp6IC15Bhy9bcFu
	TmqNwYr6mlSjr2U3gd8g8ncV7zKCcaJyrNw1g6T/psd7DgLGBUNbvfWEJXbssa36oGnz/IsmFpKb+
	NWe7AOjm7ccYZyX6DqatCy2hyGqnKP0fdtfNwnxvUGD5P/9Mbyg7z9AfrivaArn6NZ0ri0+qljkxs
	bbw5TS5yJ89XUHbPnyvKLq6BV5pCistW+yRkChNoP5pwxgYEJRI7u79EYELXqPo9kp1e/Oj7XUKBr
	xu39V0WdWJi2BpDUcI//Kjq/dOomzZ3kY+7ZLny0NwsJM8vBFIOp5UfrYK3wrZoHfPYYB3SBNyteG
	Sole151w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coA-0000000G0NV-3aDB;
	Tue, 14 Oct 2025 11:03:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co6-0000000G0IH-3WCN
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 11:03:09 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8co5-0002Tj-Du; Tue, 14 Oct 2025 13:03:05 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 13:02:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-tlv-signature-v1-8-7a8aaf95081c@pengutronix.de>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=685; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=GH4+Q1MvbTkrOAuecXpNgMvvM9OifktCvu8kmoVKFbI=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsh4p/tUVCF0k7pP7foNGw4aufuc9P9oN53x6afJ/YuTh
 fSWbrRn6ShlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEzEQZ2RYeOhk01PhQsWSP0r
 +mJ0qER70vW0Oy8F+zmSfNXUTVvuPmJkuM3G/P/36RPNbydFHHz9Zum2k3LTMrk6XXYxr62Wzby
 wlw0A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_040306_878790_6A4EB15D 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/15] scripts: bareboxtlv-generator: Increase max_size in
 example schema
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
2.51.0.297.gca2559c1d6




Delivery-date: Wed, 11 Mar 2026 11:04:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0GQQ-00APHD-2I
	for lore@lore.pengutronix.de;
	Wed, 11 Mar 2026 11:04:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0GQR-0005Me-0n
	for lore@pengutronix.de; Wed, 11 Mar 2026 11:04:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zCW3KKywbqhcFacakieZ3IHRnBonbXj/Ov22XjcVWi8=; b=O4/G60z22KC7My
	f5oSOE/LZBMMeehM5NpDWQVr7+hKRd83TIoFgmhRigu/MjqgNUtMsUFJouuQR0m2eUlTOYaRrY4YL
	UcbEu0/E3G76+urF2WcMfsLIurqn309ESptRKDlinJ4RUkU+3eX2o086kw2a7uPbfDC7G3HIqj3Ak
	NVt95GpGNXnDIFcFFU2+ejzO84JJRR7+nQBcsZnVmsxjyjQTa/PBomhtGW0eQwsMrsHcF12scdkMc
	BqRN43dWPYi1jaTkmHt0GSEz4GbVNO5epSFUbl7zDSKRU44L+zyHnpzJlaR1hIw+vtgKeEAQuW79s
	pWqj246l1xBTdElAQ39w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0GPx-0000000BMkn-1AgT;
	Wed, 11 Mar 2026 10:03:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0GPu-0000000BMjH-3owG
	for barebox@lists.infradead.org;
	Wed, 11 Mar 2026 10:03:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w0GPs-000586-R5; Wed, 11 Mar 2026 11:03:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w0GPr-004q3y-0y;
	Wed, 11 Mar 2026 11:03:48 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w0GPs-0000000Fmau-2FmQ;
	Wed, 11 Mar 2026 11:03:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 11 Mar 2026 11:03:47 +0100
Message-ID: <20260311100347.3761707-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_030350_949507_61E1945A 
X-CRM114-Status: GOOD (  10.78  )
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
Cc: Michael Tretter <m.tretter@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: rk-usb-loader: push header first
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Michael Tretter <m.tretter@pengutronix.de>

Board that have secure boot enabled need the image header to be able
to verify the signature. Boards with secure boot disabled still work
with this patch as tested on a RK3588 board.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rk-usb-loader.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
index c9769d79d3..157bb5ad5c 100644
--- a/scripts/rk-usb-loader.c
+++ b/scripts/rk-usb-loader.c
@@ -256,6 +256,11 @@ static int upload_image(const char *filename)
 		goto err;
 	}
 
+	log_info("Uploading header\n");
+	ret = upload(dev, 0x471, hdr, sizeof(*hdr));
+	if (ret)
+		goto err;
+
 	for (i = 0; i < n_files; i++) {
 		struct newidb_entry *entry = &hdr->entries[i];
 		int foffset, fsize, wIndex;
-- 
2.47.3




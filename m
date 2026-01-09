Delivery-date: Fri, 09 Jan 2026 10:32:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ve8qv-002wN5-11
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 10:32:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ve8qu-00069K-Pl
	for lore@pengutronix.de; Fri, 09 Jan 2026 10:32:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aiPpYsvHtekU46UQtXjNQdNVPs1ISXce5T2Qhni21v4=; b=WbGIB65GX7cAAEpCRQD3Rqw4kZ
	NIrrHnHzcewVz1nOVRP5HwoCwTXiMKpEmYydzFGwqRDmn51jKKPLTuO/4hGEsEp39RSNHEdZNXudi
	RB3/L7InbBUKIPAAbcZUjY4jwey0a1zGeQSJPHN8wTj2MwZcI8qj01PJ+UlP3/K2HUVeiHUPMW6sl
	5QxDOndbpNeeAtmonyAPeg1B/UvWYrVLMFid8BRSbgt8oQ/EG3WYpd3GkpIaE09XFDd7is0Ur4TQc
	R0l/uFBEf6eyTTOQiuQw7a7YnwTqzVCGz15U56JTaIv5MkofZSc0TS+nwhqcEc1WBMR9zYTsNslDg
	zliWPE3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve8qK-000000021PJ-05FU;
	Fri, 09 Jan 2026 09:31:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve8qH-000000021OU-22Lu
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 09:31:38 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1ve8qE-00060l-D2; Fri, 09 Jan 2026 10:31:34 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 09 Jan 2026 10:31:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260109-driveerrata-v1-1-feacda1cd078@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAOHKYGkC/x3MQQqAIBBA0avIrBNGoaiuEi1Ex5qNxRgSiHdPW
 r7F/xUyCVOGVVUQKpz5Sh1mUOBPlw7SHLrBop3Q4KKDcCEScY/TdvQY4uxsQIJe3EKR3/+27a1
 95H20nl0AAAA=
X-Change-ID: 20260109-driveerrata-25c0df8a2d0e
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=847; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=moBQWeRmkOOwsjI7wizBprA3sS69l19OUsPBdkHjSSY=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshMOPXhle6nd/v3l9dtE/0VKzFfQGmlROdqv66Q19V9M
 nwsVZIbO0pZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABNZvIThn9YBvs5d6U/FeLsq
 NzxJe35fbdqDpUl/GV5s79yyvGlmywaGf3pmPEoqac1d7X3b9jzfX/Vy5pHc86vTP8rcdpeTUum
 4yAcA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_013137_529005_1C9D7EF4 
X-CRM114-Status: UNSURE (   8.06  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] common: tlv: drop unused field void *driverata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The "driverata" field in tlv_decoder is a mystery. It is not and never
has been used. Drop the field assuming it has been introduced by
mistake.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 include/tlv/tlv.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/tlv/tlv.h b/include/tlv/tlv.h
index 536f61646c..3941431e92 100644
--- a/include/tlv/tlv.h
+++ b/include/tlv/tlv.h
@@ -43,7 +43,6 @@ extern int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv_mapping
 struct tlv_decoder {
 	u32 magic;
 	const char *signature_keyring;
-	void *driverata;
 	struct tlv_mapping **mappings;
 	struct driver driver;
 	/* private members */

---
base-commit: 15ea9c02849d8e53c69078c88fa6df57dcce864e
change-id: 20260109-driveerrata-25c0df8a2d0e

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>




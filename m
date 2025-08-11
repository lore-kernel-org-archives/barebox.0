Delivery-date: Mon, 11 Aug 2025 14:31:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRg6-009Kro-2z
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:31:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfj-0006qO-DF
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:31:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RnZfyX7hsxncaQq+X8Q5Ofogy6zuTqLSTy+A1e3EJOQ=; b=K+nsCBrA5IsiX7R4SXfRe5rUCy
	jJ2Psjf7KC75qfSED+3FZsPm/ukAhw0rGDcu5LKHGxL/6A5hI6mMNKdbijnSnlagkpIi+5KYpoZBP
	kc8f+00ML1zjyCd8XZcJ5gIhdar8Z65st/6U4c8vkr2t0fC8CnAbgco4u6C9eBLCbXdtAlcowkwWn
	BBP4+Bvv8GL8gCfK/F9b4LLYyDKwvbcqSH20NjfUpZ2UMl4gKx8nBV7t1Xj6TxursCSG/vQF1laE2
	StGm8HMy2/fwhNkMOq9CbY9fuBRnc+CDPFipUxj8AT5iEeFPYQ8arU21ug1dZrg+XqHQHokXBpZlK
	3um9Q8Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReM-00000007ekj-0qqH;
	Mon, 11 Aug 2025 12:29:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdl-00000007dg5-3TFl
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdk-0004WP-EE; Mon, 11 Aug 2025 14:28:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:22 +0200
Message-Id: <20250811122824.1667791-43-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052837_917506_59E18591 
X-CRM114-Status: UNSURE (   6.87  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 42/44] block: define BLK_TYPE_COUNT as last enum blk_type value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This makes it easier for code that consumes this information to size
arrays that hold statistics.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/block.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/block.h b/include/block.h
index b66830c8943e..fc7a0a32fb2d 100644
--- a/include/block.h
+++ b/include/block.h
@@ -28,6 +28,7 @@ enum blk_type {
 	BLK_TYPE_NVME,
 	BLK_TYPE_VIRTUAL,
 	BLK_TYPE_MMC,
+	BLK_TYPE_COUNT,
 };
 
 const char *blk_type_str(enum blk_type);
-- 
2.39.5




Delivery-date: Fri, 26 Jun 2026 10:51:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Hn-00A1CP-2p
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:51:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Hn-0002uf-8J
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:51:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=40T75CEV45a7y/RdEpquRPJ2+wB5XY5us56ARWlRks0=; b=3K1ir5i/MqUJpN+tsr2gvGxggn
	2Wa4opWgcmPMtdTo9v4HjM6Msx29XRTTxfDbojzIQfyfLOf5P1Zph+/aDHXIG0d76IM/eYB/N9Bk0
	ilX4cveF+0ARPCSOW0qW2J4q1Hkcy+DYa9jQNZLWnb5akXs0GeIE1PnkMvftwEFaBXz41fOSYUQ+m
	Z+36UM1AKUQglX3S7a5RzvPOReGPHN0gytvFE0s2eiIodECAuEXDv2CTjJb4YQUxGNXWlGdqO6vdj
	fTBHGkANnPx0RhuOAZMd5PXljUfFrstuBJicWGD7F2IhI+pIF6/HP0BzTFbdQaBUpoVHQyOhX+xMp
	T1U1yNIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ca-0000000AtCi-09Je;
	Fri, 26 Jun 2026 08:46:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CV-0000000At8D-3zYX
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CT-0003ZP-7R; Fri, 26 Jun 2026 10:46:13 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:18 +0200
Message-ID: <20260626084608.1388806-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_025184_5942FC65 
X-CRM114-Status: UNSURE (   9.79  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/26] block: fix wrong type for discard_start/size byte ranges
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When these members were first added, they were loff_t, but then later on
erroneously changed to sector_t/blkcnt_t.

The way they are used is still bogus and will be fixed in the follow-up
commit.

No functional change.

Fixes: 130fbc7f6c67 ("block: use 64-bit types for sector offset and count on all platforms")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/block.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/block.h b/include/block.h
index aeb8e990937b..fa916f8d4ee7 100644
--- a/include/block.h
+++ b/include/block.h
@@ -51,8 +51,8 @@ struct block_device {
 	int rdbufsize;
 	int blkmask;
 
-	sector_t discard_start;
-	blkcnt_t discard_size;
+	loff_t discard_start;
+	loff_t discard_size;
 
 	struct list_head buffered_blocks;
 	struct list_head idle_blocks;
-- 
2.47.3




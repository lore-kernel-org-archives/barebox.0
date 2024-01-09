Delivery-date: Tue, 09 Jan 2024 17:17:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmn-00AUKh-2D
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmm-0000Sz-Nm
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=solVO4CJ4Jpnv+15T3r6rgTG5ypOC9xYSR2yUxk21Gc=; b=iH5fDcG23V9dD5GKfWHFgWhuhF
	bL/PBLetMqqsCQvutxBvOJstA9gv0Sp0vJT4/qs9iJlP2mfPEn7KIlRCzbSZk4O9+OlHb4bA2wSYY
	/0eGMKjWkWv87NCkmst8KFYcC9fcz46ShQim0tnIxPcPIhdTG3UtJzZkZ0zdWWie8ofzoYQcenp35
	13P9Vn6S1bj1FG9P8sqN0IgCrgLuESJkndCQPTlURUJp3ksEhZQ2z5H5T7v1qe3vsUFoOhgM2T+qs
	fcQI9/MH3h81qHPSR/APWGG1mLmmpQuyY6b64lTVxoEPG+EAMePY9wdwe0+uTmZac4Xxfi3RF9o5d
	RWlJpKww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElh-008o1z-0a;
	Tue, 09 Jan 2024 16:15:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElL-008nj0-3A
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007ls-L9; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WD1-TD; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7Rq-2P;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:25 +0100
Message-Id: <20240109161527.3237581-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081536_198460_F85B9B6D 
X-CRM114-Status: UNSURE (   9.93  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 19/21] ARM: Layerscape: LS1028a: extend layerscape image filetype detection for LS1028a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The LS1028a images differ slightly from LS1046a images, extend its
filetype detection accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 43d292c27b..14948db446 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -349,6 +349,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_layerscape_image;
 	if (buf[0] == 0x01ee0100 && buf[1] == 0xaa55aa55)
 		return filetype_layerscape_qspi_image;
+	if (buf[0] == 0xaa55aa55 && buf[1] == 0x80100000)
+		return filetype_layerscape_image;
 
 	if (le32_to_cpu(buf[0]) == 0x00112233 && le32_to_cpu(buf[1]) == 0x1)
 		return filetype_mxs_sd_image;
-- 
2.39.2




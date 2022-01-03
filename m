Delivery-date: Mon, 03 Jan 2022 12:59:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4LzT-009niN-Tw
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 12:59:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4LzS-0003j6-6K
	for lore@pengutronix.de; Mon, 03 Jan 2022 12:59:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66QYyPfUawOpky0+LA5D1uuas8Ku8zirvbDxMogb3u4=; b=fLQg7mzUUJznuW
	2k06iE2ZuHT/WioJ+b4JrzRK9sVUrrgn9vpPdICzM7ohfAakVAR2uFn9HGVBoE2Azk24Bq28X8Md0
	5hwvFVkyDEKrXmYM0NPu5krW0QEPkzDeXCRhdfv2jiaiVpk4mRAHqiXSaPW4law8Z5QOWwA2Ua7Jg
	Tn06exFXD3MDVyRnVTNBo+6A4M6QTyInZUcTs8CdKrw4KsJgiM644K5FzXsTKRJIJORa73YX4/+8D
	Rd016EShwuzrhg9ehKxgMwL0EY/jYUu8WmjJSjQ7kEqeM8czeXFf7H2j4Gf/ZBYI8v/PD4IULb1FS
	Yhu6CG75q7VWR0FwCNLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4Ly9-008vOa-2p; Mon, 03 Jan 2022 11:57:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4Lxy-008vMP-73
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 11:57:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lxp-0003NP-15; Mon, 03 Jan 2022 12:57:21 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lxo-007EWE-II; Mon, 03 Jan 2022 12:57:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 12:57:16 +0100
Message-Id: <20220103115718.1723730-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103115718.1723730-1-a.fatoum@pengutronix.de>
References: <20220103115718.1723730-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_035730_281199_F9E76681 
X-CRM114-Status: GOOD (  11.97  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/5] imx-bbu-nand-fcb: suppress compiler warning about
 uninitialized use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

fw_orig_len is selectively initialized in read_firmware_all. In case
it's left uninitialized, fw_orig will keep it's initial value of NULL.
fw_orig is checked before fw_orig_len use, so there is no use of an
uninitialized variable in practice, but GCC 11.1.1 warns about it
anyway. Give it an initial value of 0 to silence the warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 3b07d539ee6e..bde0b227f81c 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -1155,7 +1155,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	enum filetype filetype;
 	unsigned num_blocks_fw, fw_size;
 	int used = 0;
-	int fw_orig_len;
+	int fw_orig_len = 0;
 	int used_refresh = 0, unused_refresh = 0;
 
 	if (data->image) {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


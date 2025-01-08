Delivery-date: Wed, 08 Jan 2025 12:13:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVU03-000iBL-1H
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 12:13:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVU03-0006gY-A4
	for lore@pengutronix.de; Wed, 08 Jan 2025 12:13:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wnmErqyFRPrTknq9GmOlMvv4UAzXqxzof9mlg/xnB4w=; b=QzKFuAOcsiGPghT50iCSl4huTl
	7MEq/ewZpB1cSHjnHT9V2J+WrxW+wyUa1anEkj93TXPNoN8O4GY/vuQR2Q7Pr62wBURtTGSp7pm/n
	zvMcbsYVBWkkQzLriFU5Ha0nsY8+c6hKdzQ+ObO9EbcHATXAkunkvvYosAWpsHuF3NM7JWl7CkdSW
	zfBe/6b+8Udo7pGQecQX5TvXhxCm/WvYE9ipQ1tnEh5jabBDkhY+o3Le+Xj942RJKh1Glf4ERvvgU
	jlde8XjXiyxxiEZJTmQID5pqMddi2gwd9+uPtUHXVoAs2sy54bVShH7Yd0FS73JFpLiWElEswpKJe
	fCPICgiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVTzh-00000008AAO-3tV8;
	Wed, 08 Jan 2025 11:13:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVTvD-0000000894j-2fzG
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 11:08:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVTvC-0005Oo-6X; Wed, 08 Jan 2025 12:08:22 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVTvB-007VLU-0m;
	Wed, 08 Jan 2025 12:08:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVTvB-0086VI-2x;
	Wed, 08 Jan 2025 12:08:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 Jan 2025 12:08:21 +0100
Message-Id: <20250108110821.1931446-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250108110420.1850995-1-a.fatoum@pengutronix.de>
References: <20250108110420.1850995-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_030823_672293_606136FE 
X-CRM114-Status: GOOD (  10.11  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! mci: imx-esdhc: implement esdhc_poll using sdhci_read32_poll_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's unlikely that timeout_us would expand to something inducing
breakage here, but better safe than sorry.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

---
 include/linux/iopoll.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 36a2541eb4ce..b259109078e4 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -43,7 +43,7 @@
  */
 #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \
-	uint64_t start = timeout_us ? read_poll_get_time_ns() : 0; \
+	uint64_t start = (timeout_us) ? read_poll_get_time_ns() : 0; \
 	for (;;) { \
 		(val) = op(args); \
 		if (cond) \
-- 
2.39.5




Delivery-date: Fri, 15 Mar 2024 15:02:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl88v-007x69-1W
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 15:02:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl88t-0001VE-8Y
	for lore@pengutronix.de; Fri, 15 Mar 2024 15:02:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R6E/qS/JdpRHu2rTR6sHHmcciMLBcV4hMzub0992vyk=; b=dRwm9HTert0OJsNq9hx6ikKxoW
	UfFsnIYCL3pduInNs7ar7eK1OJ+V9Whn0TYXgezg0wFj7/GIcSlSx2rewB5FiFRpJXAKBKIFxIhyw
	U4rcTUWQiLLZTO4rk/TMd+6DMDRUkE8OdMiCvJBK8a9Yq8zs0tiwhMKxJvKwjY+C20iBJy+sG9cWq
	i83MINGb1WzRLmlDW8OPGueIQT87XazLyjHaHtTJj5Y/2S6kVmYnCZOLdQeyG7jk6uiLQD1fWTjRC
	VO9hYrNThhuhq1KzQ/GGWasmZ3pDb5y6SdfLjiAvuU2fOBNFh/g7V9Vzgz60WwFeAn6S1/KUc0xE8
	3DIyXLQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl88E-00000000OtH-1N0F;
	Fri, 15 Mar 2024 14:01:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl880-00000000OlD-3p2W
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 14:01:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rl87z-000817-Nf; Fri, 15 Mar 2024 15:01:43 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 15 Mar 2024 15:00:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-11-df268c2f4907@pengutronix.de>
References: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
In-Reply-To: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=801;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=6HffCgWwA/JgdPLtdvoKFB5mpEvPwg5+zZeityzIOCc=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFK/hOwoUj94pyt0n/Sy/tOL3uyueZ4csmtDrn7WbsPe2
 podAmbrO0pZGMS4GGTFFFki1x7S2Cz8WefL8fMMMHNYmUCGMHBxCsBErhxjZLgU8Er4neMem2MX
 enUN1h9sWMGWa8P7N682YLfsUsaavWwMv5hkajb8upbKnLriWlNYlqDh4tZ65zU75gf8ZtbbPd8
 5kBcA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_070145_151183_B9B285F4 
X-CRM114-Status: UNSURE (   8.98  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 11/14] mci: mci-core: replace value with define
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the newly introduced define for High Speed timing mode instead of
just '1'.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index e825c91c80..ebfd3e9fb8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -683,7 +683,7 @@ static int mmc_change_freq(struct mci *mci)
 
 	cardtype = mci->ext_csd[EXT_CSD_DEVICE_TYPE] & EXT_CSD_CARD_TYPE_MASK;
 
-	err = mci_switch(mci, EXT_CSD_HS_TIMING, 1);
+	err = mci_switch(mci, EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS);
 
 	if (err) {
 		dev_dbg(&mci->dev, "MMC frequency changing failed: %d\n", err);

-- 
2.40.1




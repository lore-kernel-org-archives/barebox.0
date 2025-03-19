Delivery-date: Wed, 19 Mar 2025 16:44:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbD-001Vhg-2d
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 16:44:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbB-000443-Kh
	for lore@pengutronix.de; Wed, 19 Mar 2025 16:44:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pk30KMkJggASoL3+ne8EHcFOu/2jga8+lJDCvARdrGg=; b=dALmQUeIbKSTRCjxkdg8JOmd+O
	JNHjG6l+cjUL6El0zhsItSqV5gA/aylVwnB3nxPiFSD2W7ju5J5JMH9yX9vIKxSn4cWIA6Cbp3vSK
	s7waeF6rfPm1U1/J7edOh1XoPfC2Ik/rXDJj6igGU1AWZUdqz2vI7s+X05MY42ptJmvkev5/nvhFl
	U335S/7BIpaycx2ZooD2B2O0899QbLRLu7EvD4wgDgvkVTOFipoI9XqdAtXN0a116Q3zROzvR/uOR
	juYH1EweW5+6ZQLHeQYuc6ITN61D208epadvkjSDGuXpdwQ0tN1oYQ11Pm6b0LRnBw5x7RnhQNlkh
	ENsKsAnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvai-00000009QaI-0WPT;
	Wed, 19 Mar 2025 15:44:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvNu-00000009ODx-246q
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 15:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNl-0000z6-7j; Wed, 19 Mar 2025 16:31:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-000cAe-1L;
	Wed, 19 Mar 2025 16:31:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-00Awy1-2N;
	Wed, 19 Mar 2025 16:31:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2025 16:30:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-rpmb-v2-2-a8801fb35cd4@pengutronix.de>
References: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
In-Reply-To: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742398260; l=1665;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=y7EHMne6j+Ddk7B7BV/EtuCjHqBA8XAwFLqKh7Ccr9s=;
 b=IysdlR3DT/MxiGbLtWiZCo6yUAXZbA4jvEeegHzHf3uqVY//h7B5P/5uwfSGsYhKZurnbc4VX
 MnsPHPmOMJ1Andtj63axrvVewvmXALrYBzPbvQ3HUD+rKx/xwv2iY9p
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_083110_537407_75DFC3BD 
X-CRM114-Status: GOOD (  12.32  )
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
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 02/10] mci: export some functions for RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Export mci_send_cmd() and mci_blk_part_switch() in preparation for
adding RPMB support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 4 ++--
 include/mci.h          | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 6d8140f7b0..b7ea0df3cb 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -68,7 +68,7 @@ static inline unsigned mci_caps(struct mci *mci)
  * @param data The data according to the command (can be NULL)
  * @return Driver's answer (0 on success)
  */
-static int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data)
+int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data)
 {
 	struct mci_host *host = mci->host;
 
@@ -2030,7 +2030,7 @@ static int sd_send_if_cond(struct mci *mci)
 /**
  * Switch between hardware MMC partitions on demand
  */
-static int mci_blk_part_switch(struct mci_part *part)
+int mci_blk_part_switch(struct mci_part *part)
 {
 	struct mci *mci = part->mci;
 	int ret;
diff --git a/include/mci.h b/include/mci.h
index c6ee6ea50f..8084df813a 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -729,6 +729,8 @@ int mci_execute_tuning(struct mci *mci);
 int mci_send_abort_tuning(struct mci *mci, u32 opcode);
 int mmc_select_timing(struct mci *mci);
 int mci_set_blockcount(struct mci *mci, unsigned int cmdarg);
+int mci_blk_part_switch(struct mci_part *part);
+int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data);
 
 static inline bool mmc_card_hs200(struct mci *mci)
 {

-- 
2.39.5




Delivery-date: Fri, 15 Mar 2024 15:02:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl88s-007x42-1L
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 15:02:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl88q-0001Pp-Vn
	for lore@pengutronix.de; Fri, 15 Mar 2024 15:02:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9/vumGsTdIujzty0a4f7iQiJRM5P69f0ryLP3V6TMzE=; b=bj/c0OUkydh1ZfU9gkWpwELq2c
	ZkrBrq28mZhYyRPcfa/jNjJqFK/aTi4NDwSADSAEkf/rou8RVH9/Fa9EAw3tnE01gNn/cksxeVjdL
	TM0bXanpC8E/mfpHcwptAc3MN1YIqS8eAqw3Il44AX6S56VOOYVnTf4yRteQxQj+nWjGF/IESUlsR
	bWpafE9LCoA9RfVXaN5+cyVklw01oXKznfD8dez9GIZJNgY0YKjKNnBs5bg9Aqhm5fZCE2G1mckiB
	be6WZqUYzcVV9NBc4o+k6z09d5a+kFGN+ofOVSoZy5twQfK3CssgV01uPcNEo27UTv5tm4ZTnSHtC
	Kl3Zx7/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl88A-00000000Oqe-1oT2;
	Fri, 15 Mar 2024 14:01:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl87z-00000000Oje-3ZVg
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 14:01:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rl87y-000817-M4; Fri, 15 Mar 2024 15:01:42 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 15 Mar 2024 15:00:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-6-df268c2f4907@pengutronix.de>
References: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
In-Reply-To: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1170;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=+tBK85NX6ctaVGCMN8e8twgQykmw36d8PUEFAA2GWoU=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFK/hKzwdzY72dNz29eAbekbVo5dIX+mfbsw4+Y5UfZVR
 6+ZSW5z7ChlYRDjYpAVU2SJXHtIY7PwZ50vx88zwMxhZQIZwsDFKQATWSTByHCi/d/PtKfNf147
 P9/063TXj5+V5d+0PG/c9Dt76MnlGS9WMTK0LuArdd6z5dfJxdf1ZcO1nx3gtdXq73PfO9mBcYH
 M6yssAA==
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_070144_064611_1A1EB5F0 
X-CRM114-Status: UNSURE (   9.72  )
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
Subject: [PATCH v3 06/14] mci: core: save the set clock as actual_clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux mmc_host saves the actual_clock set on the HC. Do the same to use
it later.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 2 ++
 include/mci.h          | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 2b39985d5e..6c473d21bf 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -867,6 +867,8 @@ static void mci_set_ios(struct mci *mci)
 	};
 
 	host->set_ios(host, &ios);
+
+	host->actual_clock = host->clock;
 }
 
 /**
diff --git a/include/mci.h b/include/mci.h
index 91460b7ef6..fe0bd26888 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -460,6 +460,7 @@ struct mci_host {
 	unsigned f_min;		/**< host interface lower limit */
 	unsigned f_max;		/**< host interface upper limit */
 	unsigned clock;		/**< Current clock used to talk to the card */
+	unsigned actual_clock;
 	enum mci_bus_width bus_width;	/**< used data bus width to the card */
 	enum mci_timing timing;	/**< used timing specification to the card */
 	unsigned max_req_size;

-- 
2.40.1




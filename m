Delivery-date: Tue, 19 May 2026 16:16:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPLF3-001WRB-2P
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 16:16:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPLF3-0003GE-0r
	for lore@pengutronix.de; Tue, 19 May 2026 16:16:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1Ld9UIYFGgUXTMoaAOConmlwV1s8UqAVbLBCk2YGWE=; b=KhLrlTleL5Kp4j
	WLi42ww9lZAHL5QyQwzbGOV4I50Uu7lywmJQAVEtGLYhh3XF9WvArSznP/riBGdlQTq0mVbWQsiKQ
	uXhNNEmBWHhdDt7mMkOXEiHS07DxrMVIj+AsUYCQuheslWbBAVW9X1zOeP+5ETZnBPq39OiPrvxc2
	vkUIXR9FwHCMMGiFKFlVhJKfXuAxaTkMEsacWzUrRTiVxDy/PMjsDS4CXZh3+YKRsIYZKr1y0SVBY
	0CJBCDIGDFGX3mG/adijGfSysLPelMiUwVyOhwAeR/2Z0sNiU6iUt+5IGMZfMEv9U0082ZRnbQjwB
	uJE+IvkNfcZphIEMm6ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPLDw-00000001mwO-0X25;
	Tue, 19 May 2026 14:15:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPLDs-00000001mut-33Fd
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 14:15:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLDr-00033I-CO; Tue, 19 May 2026 16:15:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLDq-000mG7-2S;
	Tue, 19 May 2026 16:15:03 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLDr-00000005zNJ-0wmB;
	Tue, 19 May 2026 16:15:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 May 2026 16:15:01 +0200
Message-ID: <20260519141502.1427529-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260519141502.1427529-1-s.hauer@pengutronix.de>
References: <20260519141502.1427529-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_071504_765793_1247C6A6 
X-CRM114-Status: GOOD (  14.20  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] mci: sdhci: drop unused re-tuning timer plumbing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

tuning_count and tuning_mode are populated from the host's
CAPABILITIES_1 register at probe time but never consumed. In Linux
they feed an automatic re-tuning timer that periodically re-runs
tuning every N seconds after the controller's re-tuning timer (mode 1)
expires. barebox is a bootloader - tuning runs once at probe and the
controller is then handed to the OS - so the timer infrastructure
doesn't exist and the fields are dead weight.

Drop:
  - tuning_count / tuning_mode struct members
  - SDHCI_TUNING_MODE_1/2/3 defines
  - SDHCI_RETUNING_TIMER_COUNT_MASK / SDHCI_RETUNING_MODE_MASK
  - the dead read into a local tuning_count in sdhci_execute_tuning()
  - the populate block in sdhci_setup_host()

No behavioural change.

Assisted-By: Claude Opus 4.7
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/sdhci.c | 18 ------------------
 drivers/mci/sdhci.h |  7 -------
 2 files changed, 25 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 1b13df8583..861e5c7862 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -311,10 +311,6 @@ int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode)
 {
 	struct mci_host *host = sdhci->mci;
 	int err = 0;
-	unsigned int tuning_count = 0;
-
-	if (sdhci->tuning_mode == SDHCI_TUNING_MODE_1)
-		tuning_count = sdhci->tuning_count;
 
 	/*
 	 * The Host Controller needs tuning in case of SDR104 and DDR50
@@ -1197,19 +1193,5 @@ int sdhci_setup_host(struct sdhci *host)
 	host->tuning_delay = -1;
 	host->tuning_loop_count = MAX_TUNING_LOOP;
 
-	/* Initial value for re-tuning timer count */
-	host->tuning_count = FIELD_GET(SDHCI_RETUNING_TIMER_COUNT_MASK,
-				       host->caps1);
-
-	/*
-	 * In case Re-tuning Timer is not disabled, the actual value of
-	 * re-tuning timer will be 2 ^ (n - 1).
-	 */
-	if (host->tuning_count)
-		host->tuning_count = 1 << (host->tuning_count - 1);
-
-	/* Re-tuning mode supported by the Host Controller */
-	host->tuning_mode = FIELD_GET(SDHCI_RETUNING_MODE_MASK, host->caps1);
-
 	return 0;
 }
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 4a326f9d84..3c678d7999 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -175,9 +175,7 @@
 #define  SDHCI_DRIVER_TYPE_A			0x00000010
 #define  SDHCI_DRIVER_TYPE_C			0x00000020
 #define  SDHCI_DRIVER_TYPE_D			0x00000040
-#define  SDHCI_RETUNING_TIMER_COUNT_MASK	GENMASK(11, 8)
 #define  SDHCI_USE_SDR50_TUNING			0x00002000
-#define  SDHCI_RETUNING_MODE_MASK		GENMASK(15, 14)
 #define  SDHCI_CLOCK_MUL_MASK			GENMASK(23, 16)
 #define  SDHCI_CAN_DO_ADMA3			0x08000000
 #define  SDHCI_SUPPORT_HS400			0x80000000 /* Non-standard */
@@ -278,11 +276,6 @@ struct sdhci {
 	bool read_caps;	/* Capability flags have been read */
 	u32 sdma_boundary;
 
-	unsigned int		tuning_count;	/* Timer count for re-tuning */
-	unsigned int		tuning_mode;	/* Re-tuning mode supported by host */
-#define SDHCI_TUNING_MODE_1	0
-#define SDHCI_TUNING_MODE_2	1
-#define SDHCI_TUNING_MODE_3	2
 	/* Delay (ms) between tuning commands */
 	int			tuning_delay;
 	int			tuning_loop_count;
-- 
2.47.3




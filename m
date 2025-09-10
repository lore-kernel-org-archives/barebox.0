Delivery-date: Wed, 10 Sep 2025 07:43:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwDcB-001LyD-38
	for lore@lore.pengutronix.de;
	Wed, 10 Sep 2025 07:43:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwDcB-00086j-Cr
	for lore@pengutronix.de; Wed, 10 Sep 2025 07:43:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mRIdbPBsT7J2HHOlEB9LvrYdbIqATsdymVOd1cBAhhs=; b=oW7cdmd3yxe5hApT2Ue+RPVSv/
	9czIffh+mGCBez+6lfMCcpbm8lqIJ7YwsWEML5B7xXbm1bSZWjyvlJJZi08iFqKj2GZlmR2FNm2tc
	RSwxbeR4e5UO+VVrl3WyWrkkK6UVfspzunm48i0XfVy6g3CCOpscHBBwkov/RjGFcmnH8bWQiuWb/
	1O2Fbuk0PvZ9qZb/djgmijWYzuQk7Y+qzHQcAxbQd3Qe9I87QMSQXsAMjEk8F4V7yL4Uur/HaEBvh
	U0BE+45QZTP9x9hEjfNwLVm5AMvjYjxefMfYSUoUYlEdbEnaSYrajAFQTNK92VdeAeyDuZK+Al0XY
	Ibk8dlig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwDbQ-0000000CDFj-0gpi;
	Wed, 10 Sep 2025 05:42:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwDbO-0000000CDF2-022Q
	for barebox@lists.infradead.org;
	Wed, 10 Sep 2025 05:42:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uwDbK-0007xg-Lv; Wed, 10 Sep 2025 07:42:38 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 10 Sep 2025 07:42:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250910-v2025-08-0-topic-mvebu-spi-v1-1-c3e57dbb7503@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAMAPwWgC/x3MQQ5AMBBA0avIrE0ybSLKVcSidDALNC2NRNxd2
 f23+TdEDsIR2uKGwEmi7FuGKgsYF7vNjOKyQZOuqFGE6Sskg4TH7mXENfFwYvSCtVW6JleRsgb
 ywAee5PrnXf88L4ZbrBpsAAAA
X-Change-ID: 20250910-v2025-08-0-topic-mvebu-spi-7a1270d501a8
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_224242_057558_412504B0 
X-CRM114-Status: UNSURE (   9.75  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] spi: mvebu: move timekeeping out of hot path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The wait_on_timeout uses get_time_ns for timekeeping. It seems that this
considerably decreases transfer speeds, because the wait_on_timeout loop
gets throttled by the timekeeping.
Moving the timekeeping after the hot path results in ~3x transfer speed.
Keep the wait_on_timeout after the hot path to be sure, that the code
nevertheless waits long enough once.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/spi/mvebu_spi.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
index e220d1f9eeafedd9b2073638ee4fb94e29ff292a..554b73a0936aa0c5fee766714ed8510ba64808ae 100644
--- a/drivers/spi/mvebu_spi.c
+++ b/drivers/spi/mvebu_spi.c
@@ -238,11 +238,15 @@ static int mvebu_spi_setup(struct spi_device *spi)
 
 static inline int mvebu_spi_wait_for_read_ready(struct mvebu_spi *p)
 {
-	int ret;
+	int timeout = 10000;
 
-	ret = wait_on_timeout(100 * USECOND,
-			      readl(p->base + SPI_IF_CTRL) & IF_READ_READY);
-	return ret;
+	while (!(readl(p->base + SPI_IF_CTRL) & IF_READ_READY) && timeout--)
+		;
+	if (timeout)
+		return 0;
+
+	return wait_on_timeout(100 * USECOND,
+				readl(p->base + SPI_IF_CTRL) & IF_READ_READY);
 }
 
 static int mvebu_spi_do_transfer(struct spi_device *spi,

---
base-commit: 4d59215c346398971f1b09824aed6505b771df99
change-id: 20250910-v2025-08-0-topic-mvebu-spi-7a1270d501a8

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>




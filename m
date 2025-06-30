Delivery-date: Mon, 30 Jun 2025 14:01:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWDCq-00Cbph-08
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 14:01:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWDCp-0003xg-Ff
	for lore@pengutronix.de; Mon, 30 Jun 2025 14:01:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zIpAnIsTwGUQvLrMRC+yEnBuwqRyggbs5gcTLokT2k4=; b=c9wtRSeE64i1x2LxQEePQ3fLWm
	Cy3JLNPH7dlady56Fn3HJ7+TNdZsuKxhNXaU+72ebQ+ldCeSXWWXSj0AkqBdweEr+wPojxUEE/WbI
	05sSjUojFg+m36j0JlkcGA2Ti/hoxHBFqQBCuOEh6Va7SictnQvl7UuX6xqTaykzM6ZN7aSQMj+PP
	1dPkecW5pxYugshAVcw3V3oHp/5MQ7yE27XlMgpVRzpiTEZ5sGom1mPlnBQT5gLDq3OUaTiDXi377
	d1bTRmwL3Br0kD+AJznGRECwAXk6dD+gsMLUetoN/nb2MYDQnTP19+aoM1q2fEoRxKzCZsDIilqP9
	exQ2FF8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWDC6-000000027mE-1cwA;
	Mon, 30 Jun 2025 12:01:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWCru-0000000243D-2iFS
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 11:40:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWCrs-0004hF-Uq; Mon, 30 Jun 2025 13:40:12 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWCrs-0065uL-2S;
	Mon, 30 Jun 2025 13:40:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWCrs-0084Sq-24;
	Mon, 30 Jun 2025 13:40:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 30 Jun 2025 13:40:11 +0200
Message-Id: <20250630114011.1923777-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_044014_685492_393C757D 
X-CRM114-Status: GOOD (  12.80  )
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
Subject: [PATCH] mci: imx-esdhc: fix waiting for bus idle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit 02986964885c ("mci: imx-esdhc: implement esdhc_poll using
sdhci_read32_poll_timeout") introduces sdhci_compute_timeout() which
takes a default timeout, but that default timeout is ignored in the
function. Commit bbecd0b7bb7e ("mci: sdhci: add support for
struct mci_data::timeout_ns") then makes use of this function and with
this breaks the polling for DATA0 line by reducing the original 2.5s
timeout to SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS which is 10ms. With this
writing to the card times out during a MMC_CMD_STOP_TRANSMISSION
command, observed on i.MX6ul.

This is a stop-gap solution and mainly a heads-up for Ahmad to look into
this.

- Why does sdhci_compute_timeout() ignore the timeout value? Supposedly
  by accident.
- What about the other users of sdhci_compute_timeout()? Do we want to
  use the default timeout sdhci_compute_timeout() provides, or the
  original timeout without this patch?

Fixes: 02986964885c ("mci: imx-esdhc: implement esdhc_poll using sdhci_read32_poll_timeout")
Fixes: bbecd0b7bb7e ("mci: sdhci: add support for struct mci_data::timeout_ns")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 228f4a9b03..e593891b93 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -393,8 +393,7 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		 * timout / 10 usec since DLA polling can be insecure.
 		 */
 		ret = esdhc_poll(host, SDHCI_PRESENT_STATE, val,
-				 val & PRSSTAT_DAT0,
-				 sdhci_compute_timeout(cmd, NULL, 2500 * MSECOND));
+				 val & PRSSTAT_DAT0, 2500 * MSECOND);
 		if (ret) {
 			dev_err(host->dev, "timeout PRSSTAT_DAT0\n");
 			goto undo_setup_data;
-- 
2.39.5




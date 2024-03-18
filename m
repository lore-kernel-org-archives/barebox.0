Delivery-date: Mon, 18 Mar 2024 12:31:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmBDY-00CHDa-2s
	for lore@lore.pengutronix.de;
	Mon, 18 Mar 2024 12:31:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmBDW-0003PZ-Av
	for lore@pengutronix.de; Mon, 18 Mar 2024 12:31:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TpOJJFmEZ99AxqzLd7WgN1AAF+QDYVrVbgjLaAdyWMw=; b=HvO61MxSa7KZATBX14sAJOas++
	vWtZxTwsH3df4uC02qGzb1GTyy4pcV6YhJwN4pNFVhBienWIV9bBgf2Xx0npsK94F/NDSLo8HzUEt
	DRnrTdcvSAv9utwkRQuZ5G6zXbrIjg/iYbjv5ajx6tAoM+18ynsepbU7dqSRBWr6P03LKzmDnVyeH
	sMOU7CSYu+Z6XeMozwFovZlsxIGN5PYrouxk3UebfFzeIjRRR9glwka0uMFgIk61uF1ewpdpyIcFt
	ijJbM9NiwQpfaC4XP5j5+4ccy8T0SICaqxKYV9pQz9boq2Yeg87iQfr/yaJBQH/2vw9RUQBweuVrD
	hjei4sYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmBD7-00000008NAe-1B1K;
	Mon, 18 Mar 2024 11:31:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA5V-000000087KC-3A0D
	for barebox@bombadil.infradead.org;
	Mon, 18 Mar 2024 10:19:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=TpOJJFmEZ99AxqzLd7WgN1AAF+QDYVrVbgjLaAdyWMw=; b=fuzd2+KVtmPzjfsqY7I59Y6v4Y
	uT99zojUmKp4ngv0+0emYDPRP7Fw13yTi5oJilMx02A24WgdDYQNQJB7MlXpi0i8vUV6EbAA09l1t
	m/cZPrPr51mcdESjre2zjMwhX/zG3hInTW4cZferUIGw2gOPA/vLY2VKTEZoOk9EppUZMCbuk1MjE
	8vFoOUHPR65TlrjI6BTnRNQI9e1KpqDcHEvKKP6xj5BEWk9vTzdTe7KcLim42aerAS/cZ/0RZkkNQ
	ogLuRugY0vh9pu9FQQleACRnTET7wn2kT+B4mMLWSiu5MaijZdZtsDgU1ttH9Xh2dX1SLXHNJF2ww
	H5yE0sZA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA5R-0000000CZpi-3tD6
	for barebox@lists.infradead.org;
	Mon, 18 Mar 2024 10:19:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rmA5Q-0006MJ-3e; Mon, 18 Mar 2024 11:19:20 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 18 Mar 2024 11:18:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-12-48756863add6@pengutronix.de>
References: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
In-Reply-To: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=801;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=eQbQ04JVYH2r93mElXv0veNjdp6geKp1t7xI2uXCC+8=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJ/iIrlMhw+ZrzC8T7HB539py7U/AphEa453CQfK5VW1
 OVgc+FCRykLgxgXg6yYIkvk2kMam4U/63w5fp4BZg4rE8gQBi5OAZjITV9Ghm33Jzb+j36VsDNm
 UlahCa+c5NKkTyprj57+fyRf18az7RXD/5QlUadZfI5yFQeY/Pma6HVL6VmIX3b6myd/JgRav/7
 xkRsA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_101922_306235_14817ED2 
X-CRM114-Status: UNSURE (   9.52  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 12/15] mci: mci-core: replace value with define
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
2.43.2




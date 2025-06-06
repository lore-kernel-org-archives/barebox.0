Delivery-date: Fri, 06 Jun 2025 09:35:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNRcK-004Isl-1s
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 09:35:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNRcJ-0005W1-2n
	for lore@pengutronix.de; Fri, 06 Jun 2025 09:35:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yxbu4Oma+9BPnewSpwgSPAZfiVWCajLa8SidKbqqoLM=; b=IQTJNK0HfiPDODKBKegsG8928F
	HPPnI6M9tvdo+gpGa44HWUuQH29hauIOd85JPBrQ6QVEQx1aKv2jN+0dYgV5g/yemdxCnmZm497nl
	WgZEBooJCo3rbasugnx2AjVfv5oojf1E15AL08BnsvP5hLCINWIVnM861fHoP9fZdiM2xMTridHfn
	ZRua9Tc0uPtxGnVOkWx6X+OFApy2ecUYlz8jTJFs8SPAoxUffsjg3nEnkvgiX632OoiJ2XLAj4Qqn
	QmMw998CJsFxVgwaXGVbPmIsX/qJJIygKoDF9V2rf309KKZVf0Zy8JpGd/aMukDIiNpePsevCKbb4
	iweg2UmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNRbl-0000000HJcm-1H2n;
	Fri, 06 Jun 2025 07:35:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNRYO-0000000HJKk-32rW
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 07:31:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNRYN-00037X-J8; Fri, 06 Jun 2025 09:31:51 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>
Date: Fri,  6 Jun 2025 09:29:37 +0200
Message-Id: <20250606072939.2082971-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606072939.2082971-1-a.fatoum@barebox.org>
References: <20250606072939.2082971-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_003152_762681_DC9D0DFC 
X-CRM114-Status: UNSURE (   8.66  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] firmware: qemu_fw_cfg: register at device initcall level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Registration at postmmu_initcall is too early for automounts to be
created.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/firmware/qemu_fw_cfg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 8928cc5bf2aa..ab34f999ceaa 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -313,4 +313,4 @@ static int qemu_fw_cfg_init(void)
 
 	return of_devices_ensure_probed_by_dev_id(qemu_fw_cfg_of_match);
 }
-postmmu_initcall(qemu_fw_cfg_init);
+device_initcall(qemu_fw_cfg_init);
-- 
2.39.5




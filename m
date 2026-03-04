Delivery-date: Wed, 04 Mar 2026 12:01:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyq-007xQd-0j
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:01:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyp-0005pT-B7
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:01:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WfexGOuQc8pfoFDuw+epvkn7M/QUKrjY7sEDb+Om1sY=; b=NS7Ijrtgui5tzB
	PZO1Mg1dgG8sCZlWYglN0tBtKJoS/k68RftDlf+XPQbFSt8SnF3VtYUtXsOw35DarnYy/YgmmEXMS
	4sOkosqGhMI+idk1Qzbire2TBs7Qj9CXjfd3AVeQ5XHwkNV4Xsf1sJArwfyuDIUIPIyNaDe+2pTuI
	vOY1zRGKLiELmzjd7Ltb03ZYzoMs1QxYIkh0kEv1iCvsVeIXHA6qFgMQErRG5Ntaxv58bKDI3O6s6
	2VhsmumIj5MegMEmvSDu4r6cvULns+QKIb5VLQsmRZc7cF/KVnYjig9igQnm5arA0X9E/a1YNd+wy
	A26fDBTrMtAG9voLBFEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyQ-0000000H2Ay-0XRN;
	Wed, 04 Mar 2026 11:01:02 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyN-0000000H201-3qwa
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=WfexGOuQc8pfoFDuw+epvkn7M/QUKrjY7sEDb+Om1sY=;
	b=M23YTNYa6Ytqtj6ESZJ3WR02+POiYyrZtXxOyKU1AYbCs079rmfVcd+pbg5vJGDEvoJ17WkCgRZnD
	 6iHHTE/+f+0tmN8lXwZhoWbNB1XYZC2gRVxXSnL4r1fzRne7awAaYbJbebfKsBXluTdli1eFwgTFXg
	 Hl4skCS/o8BJBuipcnF35oblGYF+HBVwYS2sVmkbifIqGMz5yChBswMIH/nzOQIAAc7GrfTk3Lz7lN
	 ib3anzmLWCF43XNpFKfVVVFnMErUtPn0g4P6umqPcQ4UVxrxgWqRNNl8v1gKE+3Wwsu4LrFZRgi5St
	 NogHSE8iNXNCteoKAP2oMgG/O+q3tUQ==
X-MSG-ID: 6582f971-17b9-11f1-b532-0050568164d1
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 12:00:10 +0100
Message-ID: <20260304110013.495725-7-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
References: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_030100_103591_D49EECB7 
X-CRM114-Status: UNSURE (   8.89  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] ARM: boards: protonic-rk356x: Use rockchip_bbu_mmc_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This board code will support multiple rockchip SoCs in the rk356x series.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/boards/protonic-rk356x/board.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/protonic-rk356x/board.c b/arch/arm/boards/protonic-rk356x/board.c
index d36f2477fd..1d707bb715 100644
--- a/arch/arm/boards/protonic-rk356x/board.c
+++ b/arch/arm/boards/protonic-rk356x/board.c
@@ -177,8 +177,8 @@ static int prt_rk356x_probe(struct device *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
-	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc1");
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
+	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc1");
 
 	prt_rk356x_process_adc(dev, &model->adc_channels);
 	prt_rk356x_of_fixup_hwrev(dev);
-- 
2.43.0




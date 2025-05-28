Delivery-date: Wed, 28 May 2025 14:04:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWX-001B6a-1l
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWR-00078A-9i
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VGLWWokSDEdSslCBdjAOsgc4+GWejM4ywHZbPIEg3V4=; b=4dDgLZtJAUYm2hkjAhLhhDfLpN
	RmDOatcc+1WOSR3U7SB+DvKsDaOLilKFQ0hdMZZoNUegjDLS14t19czVKe66ogTx2ef7cEnE+yK1n
	+S8pACCHtNW5qMqbNbSjQ19OYh3MOzByAScqXfDqGDp45ZWMUVSgOfI7AaTyvN9+saK7mnRLQsJ16
	5bmuELG+h+dT5D82A9waHHokl7bHaGSHY9Psvv7bJH1pcmADmr0h9aH/D6XVjYT1deGpt6QR01ScE
	k9s4+RZ3KekuPhKP/wfxyQaRyhd6tQXBQRvSkswSFFv9oWup2d9hHRD4p56Jl03A2VFDpabV7Omle
	1LTSSu1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVf-0000000D2yW-1FXs;
	Wed, 28 May 2025 12:03:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUD-0000000D2cG-1wTH
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=VGLWWokSDEdSslCBdjAOsgc4+GWejM4ywHZbPIEg3V4=; b=RO5sy749pvZn8xP6bY3tPXGos/
	A0duGbIB5GroSA18SFcAwkDD7amZMfbpJ4bhVS3r+PPHHrvBHHf2aEDrM/xAyWfQv9cq16nht6umL
	ESr8MrUkrKnAFfPMcpndYFqGBSylFuV8ofgXQy3/OOzvVS87GK02XensQKIST53LTcyP6FmiKE6oH
	F/pe8fJR3pc09ZdW+OWfKT1aEUvs9NJNlfHadnUY4ZnuF891C+ZvDLIVVwC4rYXGjkdi8BfDI6Y2T
	AAMpHfVj+xijeYxMmMpj9ql7lPeotaXJdaF3g4LIbnzHZN+3yPhdoIGrIfZGM16M+YCgG1Kggxcxk
	mkjZGSQw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUA-0000000DauC-1881
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTr-0004W1-3k; Wed, 28 May 2025 14:01:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-000aFd-2y;
	Wed, 28 May 2025 14:01:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1t;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-26-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=967;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=l7VsdzcVCyAmMi+6njrFhmq3XhdUbT6os3l08f5ssGg=;
 b=NNQpo6u3Hx9nLdn/iIiCmSKTJntQH38nuBza96O05L+hyz+yHZkesUByZGeNVR/3mpCQqyWWZ
 2buzTnLb5N8BT78phW2asUnxs0pkomOS/609GI+q46SH1aUQA3cM5so
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130218_526893_D81ED2DC 
X-CRM114-Status: GOOD (  10.96  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 26/31] dma: ti: k3-udma: limit asel to am625
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For reasons currently unknown the asel setting is only needed and
required on am625. It doesn't work on AM62l though.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/ti/k3-udma-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/ti/k3-udma-common.c b/drivers/dma/ti/k3-udma-common.c
index 8661d148aa1324828a168edb5caa496bb7e6da45..49e2396e9b52145fdf325c2e07efe0869f844a1d 100644
--- a/drivers/dma/ti/k3-udma-common.c
+++ b/drivers/dma/ti/k3-udma-common.c
@@ -1102,7 +1102,7 @@ int udma_of_xlate(struct dma *dma, struct of_phandle_args *args)
 	    ep_config->mapped_channel_id >= 0) {
 		ucc->mapped_channel_id = ep_config->mapped_channel_id;
 		ucc->default_flow_id = ep_config->default_flow_id;
-		if (args->args_count == 2)
+		if (of_machine_is_compatible("ti,am625") && args->args_count == 2)
 			ucc->asel = args->args[1];
 	} else {
 		ucc->mapped_channel_id = -1;

-- 
2.39.5




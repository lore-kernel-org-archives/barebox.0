Delivery-date: Fri, 14 Mar 2025 16:15:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6lH-00E3RH-1X
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 16:15:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6lG-0003BQ-Ad
	for lore@pengutronix.de; Fri, 14 Mar 2025 16:15:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yxl8sNT5uyAP/VdDm6/bI0C/U1wWkpquCJy6xXuit1s=; b=yQ8Ry+bSLVQ80DjNBPnbJR0rcK
	xfeu48WWxu+AEn0rzGRvFuyOQIDGHfo2rti4OU2WhbaW206RjbixYPtuII/CeDn7VVLePd/FtcNjA
	nGeMLxVwVW0qjdOXved1CJXuW0WxzVurM2n48i6cHhAGra0GbT4SkJH0fbdAGfc7mVoWDymx+d0d5
	OHQaVfGV3nVH1qwT7adz2ISsEWXuNwSL3S5O0YSJnuReX7quAuFEicufrkIAfTpY5Fztv+eNflUMz
	5mbqLtWOB+LUcrwzPSPvr92UQUmrMKQKnPGJsLI7TSuhVS7qutM301QTdL0tLUZxJqKUjtBu5rnWP
	vbSOLtNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6kl-0000000EWVK-3IZV;
	Fri, 14 Mar 2025 15:15:15 +0000
Received: from zdiv.net ([46.226.106.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6fi-0000000EVdr-11za
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 15:10:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741964998;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yxl8sNT5uyAP/VdDm6/bI0C/U1wWkpquCJy6xXuit1s=;
	b=rINTDYswA4F6KoaMSuAsBPL/kBNRKCx7lpcUsqe6hnNkvnePtVlGpnQMcFLuHtBl8Mz4Bc
	CJ/nl5BnZ6sZyqkd2lwkY9HO6zw1NIJB2oR8Ma13ERSRLaIFEARkgg8UWzO+TycYmNrOYN
	iGSSdXkEuGss554Kp+2avAdB+cHZ5GthuZ1J1UiSyQiby7GrW1XOMgktwkCQDzv3D+tYJ9
	YiPH0Qs6bZkWzIDPthT8iiTEN5JdOT0qUxJ0MzJEqCydumw0Gs2e/zdX79XSD9tsYZJRGv
	hh5/psFtQ51TSZ2rehwyut7jMWqS+9Qx3xLcKUpYZiceJ/22fWmg3mL8c40lcA==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 61753177 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 16:09:58 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 16:09:51 +0100
Message-ID: <20250314150953.21686-3-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314150953.21686-1-jmaselbas@zdiv.net>
References: <20250314104034.13637-1-jmaselbas@zdiv.net>
 <20250314150953.21686-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_081002_541933_D59B2517 
X-CRM114-Status: UNSURE (   9.53  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] dma-devices: k3-udma: use snprintf instead of sprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace the use of sprintf by snprintf, in this case sprintf could not
overflow because the size of uc::name is well chosen to be able to fit
the largest u32 integer.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/dma/ti/k3-udma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index 06f81431be..7e6a08348a 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -2678,7 +2678,7 @@ static int k3_udma_probe(struct device *dev)
 		uc->config.mapped_channel_id = -1;
 		uc->config.default_flow_id = -1;
 		uc->config.dir = DMA_MEM_TO_MEM;
-		sprintf(uc->name, "UDMA chan%d\n", i);
+		snprintf(uc->name, sizeof(uc->name), "UDMA chan%d\n", i);
 		if (!i)
 			uc->in_use = true;
 	}
-- 
2.48.1




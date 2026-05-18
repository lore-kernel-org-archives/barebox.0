Delivery-date: Mon, 18 May 2026 11:28:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuGb-0015FL-0x
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 11:28:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuGa-0005dU-MT
	for lore@pengutronix.de; Mon, 18 May 2026 11:28:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vO0gsXULrSx4WbnPAsaIYy4L0B1yBY904kUcoPKZfC0=; b=uDAyXrlBykNd5YMLOu58Vj60de
	oiqy5RKTy2pm7xxSDdNSjOCfuAv37xUQSWiSGPI9lE16MEip92b/JStSMGXNJevmU9SnC4Sh/y+lC
	IaqhSQKWBkisvKOKEAWAoFneobi1KUBE6YochFvrbsecW99Ma9ruHJCVLcvwZG5eGerw99e/IAARo
	qohQPytw3719v5p1To61vMi7r/XzgoqaywTTVh1KzyITlm/sG/z/c220LAZY+93qdtOKHgqdUD4fG
	1G4OrPruShn28u1bMTvxn2ihhssksxRTmKivt73jCkenpCmHLGe6fVpBrnLUHCMm7gawwgLa7a0xy
	nCuwg8mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFX-0000000F0h0-1yiG;
	Mon, 18 May 2026 09:26:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFK-0000000F0dT-14Dk
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 09:26:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=vO0gsXULrSx4WbnPAsaIYy4L0B1yBY904kUcoPKZfC0=; b=Wh7T42nTB9EOEqndZdMELvexW5
	qtqUZR4j6z9vrMDBu+/85MHpYmvOPpbP4ILEQzbj9zq/3Hgg7ulL6PqvvymEwmEClBKpYPfcjt1EF
	N4aDfd80RL6fPdjf2Bs8pDmF3UTvrCJoEWCxGMRQBjpQOv3M7eaMfsZAhNMtx4vt9FUhf01s4T99D
	R98KN6h/xEnXtnW+lMD85iCoKo7b7y646MCO6KRF5QY6uoH5pKnOpn703cN1XisG08oZYl+EIi0pA
	9WzN76exB/I+soLYCWYhKIxPBOnKZjRYse7b3ZXREsVQ+HpEHq+J8sWtqLLDD2qYFZBrtczn+tY04
	iVaVCKEw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFE-0000000AZNG-2N0u
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 09:26:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFD-0005KL-KR; Mon, 18 May 2026 11:26:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFC-000ZJk-3D;
	Mon, 18 May 2026 11:26:39 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFD-0000000CUMc-254C;
	Mon, 18 May 2026 11:26:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 May 2026 11:26:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-k3-am62x-image-size-fixes-v1-2-ab723d79922d@pengutronix.de>
References: <20260518-k3-am62x-image-size-fixes-v1-0-ab723d79922d@pengutronix.de>
In-Reply-To: <20260518-k3-am62x-image-size-fixes-v1-0-ab723d79922d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779096399; l=1019;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=KF+Z1OSItL057Fgua3Hy/t0BqhFmyTOutKJWB+UosWU=;
 b=p0XK0VXrvucIjeBI6zEzHjHlBsNzRIBLIlYFxJsG+cAqtpf43CVj3X0WdzEJYhI60FuAp2Nh9
 5BHFE18YqRZCEKygyeTY0CfOWFg/ZPDvoIYymrbCoH3WDIMPKkpN7bq
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_102641_085085_C927E706 
X-CRM114-Status: GOOD (  10.60  )
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
Subject: [PATCH 2/3] ARM: k3: am62x: make more space for r5 barebox binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On the AM62x we have 0x3e000 bytes available for the initial r5 barebox
binary and the dmdata. The dmdata is currently hardcoded at offset
0x3a800 in the SRAM leaving only the space below that for the barebox
binary. The dmdata only has a size of 1362 bytes. Let's be generous and
give it 4096 bytes of maximum space, so move it up to 0x3d000 leaving
mode space for the barebox binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.k3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 789f77722a..12538541b0 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -92,7 +92,7 @@ quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
 			$(SYSFW_$(@F)):2:0:0:00040000				\
 			$(SYSFWDATA_am625):18:0:0:00067000			\
 			$$inner							\
-			$(DMDATA_am625):17:16:0:43c3a800			\
+			$(DMDATA_am625):17:16:0:43c3d000			\
 			--key "$(KEY_$(@F))" --out $@
 
 ifdef CONFIG_FIRMWARE_K3_AM62L_OPTEE

-- 
2.47.3




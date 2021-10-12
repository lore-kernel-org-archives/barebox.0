Delivery-date: Tue, 12 Oct 2021 09:35:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCK1-00026H-2r
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:35:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCJz-0005MP-8u
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:35:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pK4+TgQ+33qo3g0X6A5i7piewYTWxg4FKPNdYg+ln/Q=; b=sKp52JjUG8xxDQ
	JVcv0qHTF1CkdHLlFyfDSgQQmCEY7TeMYtBgBOxqRM9CgCCg/gYs/XwEEezKUxm1kT4ypFcQudtF6
	jK7aZdb1GjA8jwL51YAGxLrh0cp1o+YHd03B/+aqS7rNS+oTrrtyjqOqt049Nj/0/+WGPnOUIs6z5
	w4W4ktvQF1Ts8t5xqSFUJFjfXgy/H46ZQWJuTHPPhP638XueqvoPbleE2k1bezSlshWV0/VJ0hgmK
	a3a8701AsYthYLL1PI/a1ILY+30h351J8m7X0+moMKlxDm6hOiLmBCNfVrspzSkj7j7umETybvhh+
	gL1LgKGGE4jH/e3KzlCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCIm-00Bmpy-Mj; Tue, 12 Oct 2021 07:34:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCIP-00BmfV-Vr
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:34:00 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCIM-0004iV-EL; Tue, 12 Oct 2021 09:33:54 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1maCIL-00H5Mu-P6; Tue, 12 Oct 2021 09:33:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Oct 2021 09:33:47 +0200
Message-Id: <20211012073352.4071559-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211012073352.4071559-1-s.hauer@pengutronix.de>
References: <20211012073352.4071559-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_003358_076769_8C5B4568 
X-CRM114-Status: GOOD (  10.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] ARM: Rockchip: rk3568 EVB: use 64bit partition sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ofpart partition fixup will use #address-cells = <2> and #size-cells
= <2>. Use the same in the dts file to make the diff between the live
tree and its fixed version smaller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3568-evb1-v10.dts | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
index bd583015e8..ebfd45ada8 100644
--- a/arch/arm/dts/rk3568-evb1-v10.dts
+++ b/arch/arm/dts/rk3568-evb1-v10.dts
@@ -472,17 +472,17 @@
 
 	partitions {
 		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
+		#address-cells = <2>;
+		#size-cells = <2>;
 
 		partition@8000 {
 			label = "barebox";
-			reg = <0x8000 0x400000>;
+			reg = <0x0 0x8000 0x0 0x400000>;
 		};
 
 		environment_emmc: partition@408000 {
 			label = "barebox-environment";
-			reg = <0x408000 0x8000>;
+			reg = <0x0 0x408000 0x0 0x8000>;
 		};
 	};
 };
@@ -503,17 +503,17 @@
 
 	partitions {
 		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
+		#address-cells = <2>;
+		#size-cells = <2>;
 
 		partition@8000 {
 			label = "barebox";
-			reg = <0x8000 0x400000>;
+			reg = <0x0 0x8000 0x0 0x400000>;
 		};
 
 		environment_sd: partition@408000 {
 			label = "barebox-environment";
-			reg = <0x408000 0x8000>;
+			reg = <0x0 0x408000 0x0 0x8000>;
 		};
 	};
 };
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


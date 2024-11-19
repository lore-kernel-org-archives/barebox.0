Delivery-date: Tue, 19 Nov 2024 09:46:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDJsb-003lVx-0t
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 09:46:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDJsa-0001RA-Ms
	for lore@pengutronix.de; Tue, 19 Nov 2024 09:46:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eQSLLGSkJBOwd0dHSFFoLwQ5FQpyBII+CoPAswbOr2o=; b=ED1MEKgWEWFwP1
	FkMy8iowwCvJMkDNPBdr6jzWCdB929vOMEhnZlVJsEhkCiAgfQMue4mAer+SnkwgxcPsB9YxsWjRB
	480XoE4n9OgWAO+C2DjfljJVQRxVyxvy+F3T9PwgGECCQYjQCBehKsDnluGwK+7kZWgOvEWFL/x98
	hNh59Qo8yMSodEM7JIKqspDUSUx8TF/VVdi6Yp+vKBJ2FGnMYsLU6exwuGyCpwbRYg+njpc3RednY
	m94rnrIFYZSSv4EbtOhmMP49KFOOCj1sb7GfyFaJf3QfZIoOwQ57Vm67I/r+JdyynP/lEEzTMZW6f
	GxZdTl5vhJKOQ8JZJOng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDJs0-0000000BnDC-3m8T;
	Tue, 19 Nov 2024 08:46:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDJry-0000000BnCd-0LZ4
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 08:45:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDJrw-0001FR-K3; Tue, 19 Nov 2024 09:45:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDJrw-001XBV-1O;
	Tue, 19 Nov 2024 09:45:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDJrw-00ApuA-16;
	Tue, 19 Nov 2024 09:45:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 19 Nov 2024 09:45:55 +0100
Message-Id: <20241119084555.2582790-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_004558_116819_00931599 
X-CRM114-Status: GOOD (  10.47  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: i.MX8MP: remove now unneeded DSP reserved mem override
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upstream device tree described a dsp_reserved reserved memory entry
at address 0x9240_0000, which could collide with barebox malloc area in
some configurations.

This node has now been disabled upstream in commit 010dc015b811
("arm64: dts: imx8mp: Disable dsp reserved memory by default"), so we
can simplify our DT a bit by dropping the override.

Device trees that make use of the dsp node will now need to override
it on a barebox board DT level.

Cc: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mp.dtsi | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 4d1f1bf58827..09bd4b2c0356 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -23,15 +23,8 @@ chosen {
 	};
 };
 
-/*
- * The DSP reserved memory will collide with the Barebox malloc area for some
- * DRAM sizes, even though the DSP itself is disabled in most configurations.
- */
-/delete-node/ &dsp_reserved;
 &dsp {
 	barebox,feature-gates = <&feat IMX8M_FEAT_DSP>;
-	/delete-property/ memory-region;
-	status = "disabled";
 };
 
 &edacmc {
-- 
2.39.5




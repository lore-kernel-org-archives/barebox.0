Delivery-date: Mon, 15 Nov 2021 14:04:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbeX-0000AM-Mp
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 14:04:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbeW-000740-QX
	for lore@pengutronix.de; Mon, 15 Nov 2021 14:04:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/0JSiHWEKjnCQzZgLAe6uSYLLt/qrplL/HrUFpOiHU=; b=hl0mO2PC7eArd8
	b0TGAwfatuxMcHzcif6vEfeB9zujUAyniWwZeDNGLxg4vpEJsHvC2EB5Csvj2TDC/JtfEU8zBFjMn
	I/TjlWq7/11jdULbmVAwVw98QMrLOd/RSCmrM7dWOu6V0bxcZKif5bxIFYWnd2/PAOqa9TyOQYabd
	+nECOtZ+zm+u6HRzoQkhinSzXH/+tFD38QHmRXX5Ndhw0of4LOPmVL2FBxMiRTB7fPvY0zLvsUgld
	WN+PuUROK6DCziG6geNb+E38kr6kgKbxxSfwMLEWSNZ8QM1c72yjjhujD9zHPIxjayYQU/mamvPPJ
	4JDWivphtAPgeeunscCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmbd1-00FZDH-BI; Mon, 15 Nov 2021 13:02:31 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmbct-00FZA9-Ae
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 13:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NeGmBh8HDs+GgR3GbrYLH5yR8DELO2VDj3gjLOM6t08=; b=lwHaoZJFxjzrvP0qigwI5FQ93M
 zJN8+T7Tx9IdylI2yVtk+qsD04c3yVPyVSsty9Xs4gw4zBNUevHqgj3XfsK3f4D4fkeSRZpfy/ScM
 /F+5xz5QlaV0vssgus4Ld24aVTYJ/nEAmslISBpNgtTJ3BQopR/BE6aqH76GXTl45rJjM/ln7ptgF
 Sdzug2uOZB2b1vDmFq17UFjUj4vYvKagdtbDuFxzOpkOPYHiQRgljALwCSkcqEiANuf98tZn8oolM
 pyt2kKLBfLd8dC8IYrV1AvjSRwO2qCwbkncwn1RxgOdri/FUVSLW6CGYxmRTXgx3xikr69tMO2lnC
 AJtBxkXA==;
Received: from [89.212.21.243] (port=42168 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1mmbci-00B8Ey-PI; Mon, 15 Nov 2021 14:02:12 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Cc: Y.Bas@phytec.de,
	s.riedmueller@phytec.de
Date: Mon, 15 Nov 2021 14:02:07 +0100
Message-Id: <20211115130208.619443-5-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211115130208.619443-1-andrej.picej@norik.com>
References: <20211115130208.619443-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_050223_730748_FC675386 
X-CRM114-Status: UNSURE (   7.96  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] ARM: dts: imx6qdl: pfla02: allow use of dummy regulators
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The power for the phyFLEX sd cards and ethernet controller are supplied
by the PMIC DA9063 LDOs. There is no barebox driver for the DA9063 to
register regulators. So allow use of dummy-regulators for nodes
depending on DA9063 power supply.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 0653fcc3c..42d243058 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -84,10 +84,10 @@
 &fec {
 	/*
 	 * barebox doesn't have a driver for the PMIC providing the phy-supply
-	 * (dlg,da9063). So remove the phy-supply property and rely on the
-	 * PMIC's reset default which has this supply enabled.
+	 * (dlg,da9063). Allow usage of dummy regulator and rely on the PMIC's
+	 * reset default which has this supply enabled.
 	 */
-	/delete-property/ phy-supply;
+	barebox,allow-dummy-supply;
 };
 
 &gpmi {
@@ -138,10 +138,26 @@
 	pagesize = <32>;
 };
 
+&usdhc2 {
+	/*
+	 * barebox doesn't have a driver for the PMIC providing the vmmc-supply
+	 * (dlg,da9063). Allow usage of dummy regulator and rely on the PMIC's
+	 * reset default which has this supply enabled.
+	 */
+	barebox,allow-dummy-supply;
+};
+
 &usdhc3 {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
+	/*
+	 * barebox doesn't have a driver for the PMIC providing the vmmx-supply
+	 * (dlg,da9063). Allow usage of dummy regulator and rely on the PMIC's
+	 * reset default which has this supply enabled.
+	 */
+	barebox,allow-dummy-supply;
+
 	partition@0 {
 		label = "barebox";
 		reg = <0x0 0xe0000>;
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


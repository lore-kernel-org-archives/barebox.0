Delivery-date: Fri, 19 Nov 2021 10:56:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0dC-000143-KJ
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 10:56:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0dB-0006Tb-89
	for lore@pengutronix.de; Fri, 19 Nov 2021 10:56:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/KPmCDtbUjD+4RbFvvQW7azjsFJSf+t0dZXCYMyoGc=; b=X7c7/qyJsWb4Nd
	AyRcWky6neA9jPBunUSTYjeduke2TZLEFfVUBJzJLXImOUyApdk/pSnbVbkRH3fTZrdL0ErH8715O
	RreWkruyRRzSWDCViEUoirCz/OdZaD67BdOwDnkIQ6aEah/reP+mQ+ycIQGDw3HAPPSnEm41hobl+
	Z2AOg1G8KBB3UxNGrTjmRhhmDHPRAqgWQ2nBVjoWobYCT7g4RQYJfxgMj+6aAa0A/FXpVWNl/clyp
	jM1mtN2gN4Le3kyZ/C1C6q10gYXWQDANFDOPUpcwalnkkt7M593YLMbfNHlbVjwDH/ffMitBsta9M
	K3t1+P+8fi4+kPON00Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo0c0-00A2hc-Az; Fri, 19 Nov 2021 09:55:16 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo0bd-00A2ZL-1U
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 09:54:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=94mwec2BmWv++Z+Wp/d3q+YCU1XP5xdutHW+RkfVkeg=; b=SSURj9nqiKvIvXNTCw5MgN/os6
 bq4NWhLChPSeVlcmnwZAm4XJUx5ObPk5o8dV49ur6LxyZCQjwGgJKNhtCswzN6k35nfmJhJ4mIoft
 1UxyCWRmCrtylgimDk1aX/YAKZKONkxcCXL5natZzz/2kKe9Er+LGF91m9wkLCcoDJAwbeIf0Rb+A
 HiA/UcN2LO6rFieMxAd/nTVBbs0T/PCrOwQYxUXLU+0H+wqNuXx2JU1JKMnzbp/GzkfEZgBX/WckH
 JIX7VOm4zHfJERqMj36vHCOgjFWcEZnfu2Wh3zc8hbhYtTXiccyd2pK+BDmNoY8kagQhTgA2o1ryW
 DQAnC6MA==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:53856
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1mo0bM-00E4Y4-B5
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 10:54:44 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Fri, 19 Nov 2021 10:54:28 +0100
Message-Id: <20211119095429.1905473-6-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211119095429.1905473-1-andrej.picej@norik.com>
References: <20211119095429.1905473-1-andrej.picej@norik.com>
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
X-CRM114-CacheID: sfid-20211119_015453_445995_3B361500 
X-CRM114-Status: UNSURE (   7.51  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/6] ARM: dts: imx6qdl: pfla02: use dummy regulators
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The power for the phyFLEX sd cards and ethernet controller are supplied
by the DA9063 PMIC's LDOs. There is no barebox driver for those LDO
regulators. Thus use dummy-regulators to suppress warning message.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
Changes in v2:
 - move "barebox,allow-dummy-supply" property from regulator consumer to
 regulator provider
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 0653fcc3c..ada160768 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -81,15 +81,6 @@
 	};
 };
 
-&fec {
-	/*
-	 * barebox doesn't have a driver for the PMIC providing the phy-supply
-	 * (dlg,da9063). So remove the phy-supply property and rely on the
-	 * PMIC's reset default which has this supply enabled.
-	 */
-	/delete-property/ phy-supply;
-};
-
 &gpmi {
 	partitions {
 		compatible = "fixed-partitions";
@@ -162,5 +153,8 @@
 		watchdog-priority = <500>;
 		restart-priority = <500>;
 		reset-source-priority = <500>;
+		regulators {
+			barebox,allow-dummy-supply;
+		};
 	};
 };
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


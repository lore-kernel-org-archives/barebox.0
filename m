Delivery-date: Tue, 31 May 2022 18:28:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nw4jW-00GNha-Ap
	for lore@lore.pengutronix.de; Tue, 31 May 2022 18:28:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nw4jU-0000Zx-I9
	for lore@pengutronix.de; Tue, 31 May 2022 18:28:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLTuYMVqX/h9RWCxWkHoDCN+vHMeZR1mjiHJlJVkEKk=; b=Q2prUN8nGyzBze
	PGLvNSa/uw+AzYr/9a+KIf/O/L6uUNvqttuc09ytDOKyCxR5TF7fhodgp4xdueZJbVl5A2MIRtF8u
	svagC/J7NR8NPxV3UTITdSzR7q7QcKhLS4wXe2RcCGBIs2jwwcP14Ih3juDxGfQnvkm/sqBrJlT+V
	MtKhPHdFu9jMKjAQt6JM+RERQtKzuPDxco3AjrdssTisMi0SS88+OpridF9IV46WwwihwrPmtXMR5
	NLBMQWGDpdAbkoLkSsVBDRQQ2TzjnWrTpXa3u0d9Bz7suyWl60HvPzSUL+Ley4f63nDDiXuS36yal
	ARrNNIc47YVIlLYv4PgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw4hk-00Bml1-UR; Tue, 31 May 2022 16:26:49 +0000
Received: from mail-ve1eur03on060e.outbound.protection.outlook.com ([2a01:111:f400:fe09::60e] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw4hf-00Bmfj-1k
	for barebox@lists.infradead.org; Tue, 31 May 2022 16:26:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T9IL9M4tLdlyY3g7x4b+0tlm8mXVvq7yDUqFrmfqPt6blu7w775uWbmjEAyZG1SjEX7oTYig8D354WfdDS3AXGVMG+vNuhZ28Ig4lhLz5se++YfkNVgNX/EAlLMc86vVWrsiwB0T3LL4WUb8xrBRuV5QJfQdFqRwsYOIWLSu8hSEyj4b0hXOMBt5itNsPDKLhAuPvCi4whmu4SQKqsfL0zE7+CUpF+8GlwzhUUCtA5RTB/xxK0FeQRVV5Br+blwSAdkbqefqcCqgSCnbdQYyvYeO7nccEqAoxx4IE3X+TgTEnTkVi1ugZvmTs3rPV8Wokk2cZVMh5Q7KQR74m+UOqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FdQylMF7tQJKvSfz2GdxBUe/N/DaAnAUVNOa4MsSMOc=;
 b=d6OK2YisErGxhv8Pb66bNfwTEhASyQ+Oy16GEtLrcrZUtc3MylLXC5thAAWMFMgl6rNQx9Q3dYzNKyrOsEghi4yIgrzReM4yiQNOubIhWvf79veEwM4WDlYFPwL97c2IQe6PuGIRQc5ID52fFuLWBltCJlvPe4A93rsr4lZPHujLLjnpDGx+V0triotOHPePg/ttMYSGOg0idCH0zXNDrWtYpJz5KHRCfmzyZbPHGMPge0zt2ZkQyrzI6CMm3LORXM3KuSWsOVVp4SGQ6xEQJcf3pyC6T6MG2T2b8w5CrzLIMRNOpv5x4kiaPk7fz8ii0cTSc3kJQJhNvh2YNn9qxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FdQylMF7tQJKvSfz2GdxBUe/N/DaAnAUVNOa4MsSMOc=;
 b=1WClR+4Nfw0lJKneU76GvEGSidMEFUvp02wKWrYTVjYPwhhEs4sEgO0zLbPi2dRFMYA9Uo/Tq0bfjwYIy3EtM0x3+DavfcGI+AlMKPOLPGQFWoXGFmaOkMTu0Ss1wfYA/9AVtf12VmL83IZ56zbn3CUMeZQwMI+3iTblCGJWYcw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by AM6PR08MB3224.eurprd08.prod.outlook.com
 (2603:10a6:209:47::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Tue, 31 May
 2022 16:26:35 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2%3]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 16:26:35 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 31 May 2022 18:26:22 +0200
Message-Id: <20220531162624.245664-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220531162624.245664-1-michael.riesch@wolfvision.net>
References: <20220531162624.245664-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0178.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::22) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2a03d9bf-d8e6-4749-cf20-08da43225473
X-MS-TrafficTypeDiagnostic: AM6PR08MB3224:EE_
X-Microsoft-Antispam-PRVS: 	<AM6PR08MB3224C6D3FC3AE30421A7824DF2DC9@AM6PR08MB3224.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	QaVbrP9ichcRmgLZ0zxtV8RLVbLDq5zrIxsnOUw5Qmoj3hIhnRJpV5GHyhii5RLRiHSloeZk5Rtuy0rB21/5KlwOjWZkfZcDgT70ZAXaKGevFNDnVvExjXu1gnhGjVxx6MoFtILUKO5vLcIia0YWkYyavVCOYngKx0e2AmR4jIJoV40iAPA5OKPENgOGpd1rpGiV0GuVZ8rMPwVVmzzuXYJHc/xNCtqv1/08qCmWM5hmn2AWgycBU03uGb8IrDpFRFvwYTCW6UDMUkFMGmSkOn2SaM8nCjKPecicTt3/x4rCQvypAS9JKgtNe79atBTa76k0b9sHCHlPA8D9XhOS1E9U5ZKeauld6auNTTHouwOEPElDUDKrVNHqVp6iKWv9YwCZMO3s04dOF3z8gDnz5BDsm9GsH4RQwDKArxnPnpl8cTjmXxbn4C1CvhoB1VjcgzyTfAw4R/2KF/i1tIwyEcpn+MKCHOSG7g4xfJoDiXAnvK4X/K8TLsk+XG3eR24RJ6cureLRLVh3y6PH8J915u+xrfa0+BdPkKvZAmhRdjyPPrmbhp4ifB31hlGrIU8AVG/tyGS3epkI8VJrMlP7PEu/b96ZIh95XK9EWXSkDYAB2NYbkqahkMMuGl+Kh0kEGztk4x3mrmqb/MxrIkb07A==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(5660300002)(186003)(86362001)(6666004)(1076003)(6486002)(6916009)(316002)(52116002)(83380400001)(107886003)(44832011)(41300700001)(6506007)(8676002)(4326008)(66946007)(6512007)(2906002)(36756003)(66476007)(66556008)(8936002)(508600001)(38100700002)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?yZt2aHNqIt1URphYBSwhkYY4HneM48eK7PCInuVgcj5ozE8f6rYZReFPkn81?=
 =?us-ascii?Q?jENK2PWlCTx1FjgFE7M9Q3bjp2sb6ObLWqZHF4rIuLs2BQu54mZ0O/dX7uiK?=
 =?us-ascii?Q?riltYYWJM3+7oe9HG9QtHVswIVnpl6Ohg7PJOJu1JFVckDq2ogoeHmvqjxnE?=
 =?us-ascii?Q?1o3eln9XUAMLbA19hIzXSTlgh6od2wiHKcWjT19NGbCyogI4PZzIEzLJbeqq?=
 =?us-ascii?Q?92k1zM4EvfgKfexJ4BK0Ka2QA508Q70cyBOd1ABuiIz5JJ2qij4MrHUvZwy4?=
 =?us-ascii?Q?nhXwRtQMDyjRgZjbqga9mVDYUZfQFny2WSX4DhbHpBCiTp8NIvQTItOtQcMp?=
 =?us-ascii?Q?4rs2bVBFTBP36WtUFLRdT6OeemkII/BcigU8H0PJZZwzAPS8HoVOeMdrWYXi?=
 =?us-ascii?Q?qEl4DNFnZZNCSvUVT2EIVNNjrsomhKlUWJc86kSVGlVRrXyY7wXT0+IUG19b?=
 =?us-ascii?Q?Ijdpmb0oaXO4tMwEaSP20IwTTNjD0Xfa1FmcGRCjuRa9DrVwWgunxa69hIMN?=
 =?us-ascii?Q?8BWAOJ3w4oElpVx8j6QOe1seVXVMacpyc0NHwU3WIP/uQ7nN5MKAOoHtAkYb?=
 =?us-ascii?Q?aUqOcomdCJq+4NQ0Px8bF2mf+z8JIWX4THXO4sqBgAKgoKVGq8s2yFlt4kcl?=
 =?us-ascii?Q?ffzvPl2106znH/1fBTe8cJL9oX04on7qyko1jtuSgmMGwwFWSqZ77w0wJcPa?=
 =?us-ascii?Q?QChXrZ9kzzlFnNBf+Bp0OEXt7JO5G5pmNV3NMXXjizfBsafeZJ1OpupkOsbx?=
 =?us-ascii?Q?QVIY5jDqhD1MYOf/h5Vb2U9Y57DYrwWtuYQZnJ/51JHgaWyNt3KZ5GSB7bqA?=
 =?us-ascii?Q?Va6cyxNx+IP02MVHKdrO4r/UDm/S9MsfQor1vLW2p+iAuC1aGEuxc9fHKqFZ?=
 =?us-ascii?Q?RxddH2JeDS2qwLNk5Nghgme2yfQaZErrJYSd9VSrC6yA10FHoSG9vM6Gdx+M?=
 =?us-ascii?Q?t3Ew/YpM3+XSmnsFGKKAtMcZaCaQKNu7hQ14qM9Ef3atPJq1bXaqXcvuQCMW?=
 =?us-ascii?Q?h6rJ77EWLBnYMIz6EdDJEBeXSUGiufxK5/fp6qqvN2CiimCYq1oqEn1NYNet?=
 =?us-ascii?Q?u+whHYAReczKDSq3WA8ql9gzpBqaOEdvSImoKFlprdzAO9R8VcvjdQRRa4MY?=
 =?us-ascii?Q?CxYXPrePaUPT/Z05x7MoipbwLof6fhnNExpQ0sR+HELTPXJYCTf/bOWSyXCS?=
 =?us-ascii?Q?pr8QFLmcxk8enDL4tGKSG01+azbIlcLkLCznyGnzW9YoQrJ6p19ek8uyh3g6?=
 =?us-ascii?Q?Vp8MNMytfElmZ5g9H3AVqX+ViR2mNmXxxoWMVGdYVeRmoxbS/6SqjqjXQTKw?=
 =?us-ascii?Q?+TBImIHnTpvdx+CgGFghFYqSzXwC8UsAvIqYiZfXVdjGdUms7ajf/e1pghvp?=
 =?us-ascii?Q?xdWRGhHfLk/vpYIflfPpUN54hMh8hBvR6rplCjr6NRcLvxT7A+zpBpgsFJE1?=
 =?us-ascii?Q?LR2Ls5PdhNcyPDhVX0aZ9Ya9QS3gTz1S9ExGFmhVrpjb8UZADFtWaCAHqg12?=
 =?us-ascii?Q?+M2HAjbSPX8l0Rp7Uxs00WfBOfSvum862w4RLSmP8SkWIQo9bMzvdmtIOYzY?=
 =?us-ascii?Q?3EP1gTebUDm7JX6seeJSxJmISfWqavpY6SsNUlObSZvszp5bb9UyOITEfUQC?=
 =?us-ascii?Q?VVwmo7tqUKSq2nBeU/sidwrVNnWHz6ydPrcgdmPVgOnXC6y3qMFfJSvT2+pS?=
 =?us-ascii?Q?9OxgMKRYnoOv++ru2SJQCKu301z6J193MmR7kHtCfSn4rxbm3Cl5n2fb9sCa?=
 =?us-ascii?Q?wasu6XDInKk+1TXSl/Tra7RLds12X+s/M/LSFL08Dd1HTbfX8EhML6gqG4Kt?=
X-MS-Exchange-AntiSpam-MessageData-1: 	EH1omd/at/E/0LLzCeaxT+7SIt/p7YTe/jL1wfql+X1k9CH2Eo3gDOHe
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a03d9bf-d8e6-4749-cf20-08da43225473
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2022 16:26:35.2108
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gBoBWywqDOH2f05fmad26SPDg17Epfp7Hn6+UYEOWx8Sf0IuJwMGva0LDBdFzrRvLVKf3hLyH6tbK386FD4edmIQXYqsvosKb41DsQ/xIvQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3224
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_092643_112403_778A8788 
X-CRM114-Status: UNSURE (   9.24  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] HACK: add device trees for rk3568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Mock sync from Linux v5.19-rc1.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 dts/src/arm64/rockchip/rk3568.dtsi | 23 ++++++++++
 dts/src/arm64/rockchip/rk356x.dtsi | 74 +++++++++++++++++++++++++++++-
 2 files changed, 96 insertions(+), 1 deletion(-)

diff --git a/dts/src/arm64/rockchip/rk3568.dtsi b/dts/src/arm64/rockchip/rk3568.dtsi
index 5b0f528d68..5eafddf62e 100644
--- a/dts/src/arm64/rockchip/rk3568.dtsi
+++ b/dts/src/arm64/rockchip/rk3568.dtsi
@@ -8,6 +8,20 @@
 / {
 	compatible = "rockchip,rk3568";
 
+	sata0: sata@fc000000 {
+		compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
+		reg = <0 0xfc000000 0 0x1000>;
+		clocks = <&cru ACLK_SATA0>, <&cru CLK_SATA0_PMALIVE>,
+			 <&cru CLK_SATA0_RXOOB>;
+		clock-names = "sata", "pmalive", "rxoob";
+		interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+		phys = <&combphy0 PHY_TYPE_SATA>;
+		phy-names = "sata-phy";
+		ports-implemented = <0x1>;
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+	};
+
 	pipe_phy_grf0: syscon@fdc70000 {
 		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
 		reg = <0x0 0xfdc70000 0x0 0x1000>;
@@ -99,6 +113,10 @@
 	};
 };
 
+&pipegrf {
+	compatible = "rockchip,rk3568-pipe-grf", "syscon";
+};
+
 &power {
 	power-domain@RK3568_PD_PIPE {
 		reg = <RK3568_PD_PIPE>;
@@ -114,3 +132,8 @@
 		#power-domain-cells = <0>;
 	};
 };
+
+&usb_host0_xhci {
+	phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
+	phy-names = "usb2-phy", "usb3-phy";
+};
diff --git a/dts/src/arm64/rockchip/rk356x.dtsi b/dts/src/arm64/rockchip/rk356x.dtsi
index 7cdef800cb..1042e68602 100644
--- a/dts/src/arm64/rockchip/rk356x.dtsi
+++ b/dts/src/arm64/rockchip/rk356x.dtsi
@@ -230,6 +230,68 @@
 		};
 	};
 
+	sata1: sata@fc400000 {
+		compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
+		reg = <0 0xfc400000 0 0x1000>;
+		clocks = <&cru ACLK_SATA1>, <&cru CLK_SATA1_PMALIVE>,
+			 <&cru CLK_SATA1_RXOOB>;
+		clock-names = "sata", "pmalive", "rxoob";
+		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
+		phys = <&combphy1 PHY_TYPE_SATA>;
+		phy-names = "sata-phy";
+		ports-implemented = <0x1>;
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+	};
+
+	sata2: sata@fc800000 {
+		compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
+		reg = <0 0xfc800000 0 0x1000>;
+		clocks = <&cru ACLK_SATA2>, <&cru CLK_SATA2_PMALIVE>,
+			 <&cru CLK_SATA2_RXOOB>;
+		clock-names = "sata", "pmalive", "rxoob";
+		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+		phys = <&combphy2 PHY_TYPE_SATA>;
+		phy-names = "sata-phy";
+		ports-implemented = <0x1>;
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+	};
+
+	usb_host0_xhci: usb@fcc00000 {
+		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
+		reg = <0x0 0xfcc00000 0x0 0x400000>;
+		interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
+			 <&cru ACLK_USB3OTG0>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk";
+		dr_mode = "otg";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3568_PD_PIPE>;
+		resets = <&cru SRST_USB3OTG0>;
+		snps,dis_u2_susphy_quirk;
+		status = "disabled";
+	};
+
+	usb_host1_xhci: usb@fd000000 {
+		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
+		reg = <0x0 0xfd000000 0x0 0x400000>;
+		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
+			 <&cru ACLK_USB3OTG1>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk";
+		dr_mode = "host";
+		phys = <&usb2phy0_host>, <&combphy1 PHY_TYPE_USB3>;
+		phy-names = "usb2-phy", "usb3-phy";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3568_PD_PIPE>;
+		resets = <&cru SRST_USB3OTG1>;
+		snps,dis_u2_susphy_quirk;
+		status = "disabled";
+	};
+
 	gic: interrupt-controller@fd400000 {
 		compatible = "arm,gic-v3";
 		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
@@ -297,7 +359,6 @@
 	};
 
 	pipegrf: syscon@fdc50000 {
-		compatible = "rockchip,rk3568-pipe-grf", "syscon";
 		reg = <0x0 0xfdc50000 0x0 0x1000>;
 	};
 
@@ -717,6 +778,17 @@
 		status = "disabled";
 	};
 
+	sfc: spi@fe300000 {
+		compatible = "rockchip,sfc";
+		reg = <0x0 0xfe300000 0x0 0x4000>;
+		interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		pinctrl-0 = <&fspi_pins>;
+		pinctrl-names = "default";
+		status = "disabled";
+	};
+
 	sdhci: mmc@fe310000 {
 		compatible = "rockchip,rk3568-dwcmshc";
 		reg = <0x0 0xfe310000 0x0 0x10000>;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


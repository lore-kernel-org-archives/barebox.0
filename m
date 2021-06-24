Delivery-date: Thu, 24 Jun 2021 18:11:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwRwo-0006FX-60
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 18:11:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwRwm-0001jA-Os
	for lore@pengutronix.de; Thu, 24 Jun 2021 18:11:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ek1BUoKiaqMbBUfNGTZuP4RjC/ZNxPGW4Vwqpo1gR3I=; b=2GsPCRAkjOB9U7
	bl+7sgc1NEmvLmlKr0VKf7mO55YKjFSTSoVvNRzg3lLNxqcuPljzNhyl9VoAtjudGi87bNiSO4ACW
	EyOHWpkJaxUJp2KwdLG8N2dmFxD2SGHCSUuRjVCLmQLdGWrRn7fcr5PfPGd1pcK2qIS/Xyyg61pFX
	7UzZ2Ps8KckMC2AYweL21ltSoJeNkwPdhKSjKpk6nFXyGFe6XIRBx585WwBHhl3vX8HwEkj1P+VoC
	eTK8TtsdiH2n3D9Q/lrw03OymIoqa5UKrrE8EnFCczrU5wEWXjynORQ7H4LQJ6F31FiQqkKBmKQ2p
	pjSPchUwJW/3hEi3igdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwRvL-00FPfr-Ga; Thu, 24 Jun 2021 16:09:51 +0000
Received: from mail-eopbgr60046.outbound.protection.outlook.com ([40.107.6.46]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwRv6-00FPbR-3N
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 16:09:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dJ2SPYise/6t0ame/IIIga4/nFPNHo5wzGkzuK6RLIBhDBZSpHoWTsU5MHPCdShU/FIXTReXBKqam3mIBP4qV9Vegsp9go2Yvqcvx5EeBNATlYOudcLWPju4XICGK/3ufZebebncQR406kUcv0V7eGOjmiEi+Mku/XY1SvDEjD69+GWKBGVhcKdkofJb//e6tbM9NOCI++YyA93JrutQzmheprBbklCi2BWA8tSP1tndq7tIH/5CR0Fb/jMWKF7a6wqjrQlN+JttkdWS+mY5M0Mr3yWB4sPISrFCCiPP/7QD7DSUJ1QevxpE7ER5j2qa8fOR8KhyK/I0v7SLRqN5Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2JXnRY3r+xx5siq6IxHL+/hNH2bgsSmpEun4Jecs2FA=;
 b=AaNeWuOWlKUzmNdfkg4w8T0UTmtMadfqfFAIB9L7jdhZnDjpfZsyUduVJMxPh959oNw1jjqRaYnez1rW+wyRy6ReeYGAwzYkiEVd4GPHLCGH03NoCIoVeOy1d2hTSaCg/klXJz6HfNYhL3OwAK2BK4Ayw0ykUmsFD02Aozn5xYWOqH3CXweu4Ir6mJ+9oBv1YLed+1Wbcv+LBg868iP+xyhGh/E1lHkfBnZ4nPBHNODUxqqwBNGfCfclEjiY5DF6rQplZ3+zM+4cw2lSxDSx/oB3RaSFBx1DHa8ew2Zpve/k0Nv4Gt5nAI+/gdHDaf+BdGlcDTLyHix4fIrEtRQYJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2JXnRY3r+xx5siq6IxHL+/hNH2bgsSmpEun4Jecs2FA=;
 b=eGVbmnj5l2aRdD3ZQqy/UhftH0R0C2Lxdh+ynaGg++EDx3eleg3pWqGKc5j7VIEacQwDoBAJt8gY8TCsfZgJMZbs4pBjAcLwzFT+eKCqqXBfKC1dUdllTPp4q3DgvvGzagP9uMfp6FHUbdpMsaPvwBaUHknix0sriUoDywc9X88=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB8PR08MB5404.eurprd08.prod.outlook.com (2603:10a6:10:117::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19; Thu, 24 Jun
 2021 16:09:35 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd%7]) with mapi id 15.20.4242.024; Thu, 24 Jun 2021
 16:09:35 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Thu, 24 Jun 2021 18:09:15 +0200
Message-Id: <20210624160915.21897-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210624160915.21897-1-michael.riesch@wolfvision.net>
References: <20210624160915.21897-1-michael.riesch@wolfvision.net>
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR07CA0181.eurprd07.prod.outlook.com
 (2603:10a6:802:3e::29) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR07CA0181.eurprd07.prod.outlook.com (2603:10a6:802:3e::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4287.8 via Frontend Transport; Thu, 24 Jun 2021 16:09:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 801dc779-23d1-42b1-d3a4-08d9372a759a
X-MS-TrafficTypeDiagnostic: DB8PR08MB5404:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB54043919527FCC2AB173EE63F2079@DB8PR08MB5404.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bxG0KSC/fa2fz5aczYNaK+yXq+fDkcEzvYvjya9bkNo+hqqndNnVHROIez/rxgvE4ipmrhNqWUcvpzM8t4SYhxnu4wQMl3yIo9aNYfkkBUKg4j879Yel7/BmZ/PIq0WwZ3fTxUAd9obj2+1NDfqjSANCaAX33cX3I1BIiVrGlkYPgq6NbS758PvmHTgTiW5iEmhdvcTqYlpcub1fAcqWSR3hiUqoDFvV5fyOIj5vDzNhNI7+DO4Pt0+pLJkYr9QDKToFdsHiQWC4k5c8KtI619nDG+Go2Xj8giJ+m/eiv5uJ+/PL38YlLAGgxoSrkPAtCAoBYRbBfCC6bvO4VmvJ8h7lt/TB+xuckEIzSY2G1/HAGyOhzcT96OaO/no2UvtedN59pMM+QgeDr1E+QmziMZ6TcrvnMsKgmhXeHT+UWqgD2ZN3k1I2NTiNdQ8KYQDuKUM7YtgAM0LgF2TqrDeoEjzHra1imorC1hGvRg45Fw9DzWZlxvdqiJPe5y4Yk3ZMvBVnT62kdV8nncOKVth4jpAM7UDDpQnv1u2FSe2Ne0QaAOL8Bp5zq33dG8LIpYF0Mtwp1FK5UgeIydjVAi7qKwcMT7vyhJg/5gaQv4PUr9277ytCYYRVOP+e5ucgBjSV848XPP9RD1lw7Ue/xN78uw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(39830400003)(396003)(376002)(366004)(6666004)(956004)(2616005)(36756003)(316002)(6506007)(8676002)(52116002)(6916009)(86362001)(1076003)(186003)(6486002)(26005)(6512007)(107886003)(5660300002)(16526019)(4326008)(38100700002)(38350700002)(2906002)(478600001)(66556008)(8936002)(44832011)(83380400001)(66476007)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dqdJgJ31bAifhBiyxEMwRaWAkpWK+LX60Qu44GX4nj+OaqSIhQ1BzrbvBtja?=
 =?us-ascii?Q?OwRryYKAXF4iUs7tIcrOU0OFBviiTQvdaRgfRwwkgoY8eltgYXp3Y54yKCuq?=
 =?us-ascii?Q?Gf5W5c36z2YY+krANbiClKZ0nmARCUzRnHXXjAefyzIxFIsIn066sfIzlfsy?=
 =?us-ascii?Q?GZ4e9BAnDf5Lj31cvciFGlc1GIhkAhVaMlRd9KkkzfbvU1K6yypGYagJ1pNE?=
 =?us-ascii?Q?6C2DSmN6TlN5BCvs1COUPZw/MUrLS4ebEVGgjH959DJVbmrDbM6x58m97Fvj?=
 =?us-ascii?Q?ic0Vf4yrjGTJPKLgLtZU3poJqHg3tjOpMXBw0c0vWRSBuekA93mTTDd4+7zp?=
 =?us-ascii?Q?qSBYHMgiSuLBKDBg7El4Wpu4gdkXIKfLkm89wJHUh19OOosz2ibtFkAyRI/y?=
 =?us-ascii?Q?5zV4rep9tPI/hJkTqpjSWcoJaJpP19Y7ackWw/YXgG+KAYG1L2XHZbXIBlkF?=
 =?us-ascii?Q?jw+ip2A4dIlIGhaPrQk8AFAGJNFmkczvZoJ1tHF2utKsfryaiDSy13X9bAk3?=
 =?us-ascii?Q?vcaGj27yXunYJxronA/r+mx7gtOQXrcCqoGxms83ST6qMWn+ZdD+Rigg8yCI?=
 =?us-ascii?Q?U+G3PCtEQTf1K9Z5k+9B/rq8y0zz1+kVc8XlSSZkYi9cItjSvMn9nxgOPJoT?=
 =?us-ascii?Q?MBNSizqVQHDv7ggyvL57XnQzFm8jl6nS98EJFgmSkqAWLJig+mjqPynaiVPu?=
 =?us-ascii?Q?UFt5gcrkJl672ZOqftoG/RlDvg01il2+rjct8/6HTYYjFarW5YT5QzkOS5QS?=
 =?us-ascii?Q?XgkpZtezaEBWFdUNCd3IqohZBM+xnIZxdDMwJicbRyfd1POOa2c7FuyQFbTD?=
 =?us-ascii?Q?KWZg0iFVtvhS+DiaMuCr2RKZYGWfzXreqkxkxyfQe+9p3biH3vUiI1A+gW3H?=
 =?us-ascii?Q?NoTUnPb7jfTq5Dq0VsieBxdHqyitbg4+RdCVsFWFibTM+Bupn89UHMDzKNvZ?=
 =?us-ascii?Q?dl+LVOMzuu8IOHizphPfk9GqdR3RUdUe634qfFg6RUFNGpZAKm3HpYWDAghG?=
 =?us-ascii?Q?EPI5n2muIeGeSlh/6Cy+O5N3hpvmD82bb2413K2WotCr3O8Kq+lU9S6q+Arp?=
 =?us-ascii?Q?baHO95L7c3Y7sSqIGZdPEUH45QPoWERFnehCs7YA+Ru6N60wwjsqVhjULl5I?=
 =?us-ascii?Q?Yj1a6C8ubvhf31TStJA10MlOSBNrEw6o7cCdvATAcpdqpnR7s4UXfP6dOjC3?=
 =?us-ascii?Q?w48lpyWQTQzuB30DFqoA1mdmk4kEFEdNZ4XL7r25eWAcYHgsucJLpnLPaijZ?=
 =?us-ascii?Q?5u0nlQfIm87wGATbysjAHeiK8pYvTHHxSze6d9TT/aDHhoeuJpJZJkX7/MlS?=
 =?us-ascii?Q?Z7wep3Nqsvx8RZYIOY4sXChU?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 801dc779-23d1-42b1-d3a4-08d9372a759a
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2021 16:09:35.1640 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hbOwKRHkDiiE4ZHjPirT1V0+aYrOIMyRr7mJvhvi6AnGne+pOyoAC0xfotcH6FuE1fcJ+FICiPDDRGTzSncquCjVlfsWtTdEdNDKmFmFfEw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5404
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_090936_165251_94E6D664 
X-CRM114-Status: UNSURE (   9.23  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 2/2] arm: rk3568-evb1: add support for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
v3:
- no changes

v2:
- add initial version

 arch/arm/dts/rk3568-evb1-v10.dts |  6 +++++-
 arch/arm/dts/rk3568.dtsi         | 12 ++++++++++++
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
index 91e234419..c22692116 100644
--- a/arch/arm/dts/rk3568-evb1-v10.dts
+++ b/arch/arm/dts/rk3568-evb1-v10.dts
@@ -456,6 +456,11 @@
 	};
 };

+&saradc {
+	vref-supply = <&vcca_1v8>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
@@ -579,4 +584,3 @@
 &combphy1_usq {
 	status = "okay";
 };
-
diff --git a/arch/arm/dts/rk3568.dtsi b/arch/arm/dts/rk3568.dtsi
index 3baaec3a8..0f19d3f0c 100644
--- a/arch/arm/dts/rk3568.dtsi
+++ b/arch/arm/dts/rk3568.dtsi
@@ -1030,6 +1030,18 @@
 		status = "disabled";
 	};

+	saradc: saradc@fe720000 {
+		compatible = "rockchip,rk3568-saradc";
+		reg = <0x0 0xfe720000 0x0 0x100>;
+		interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
+		clock-names = "saradc", "apb_pclk";
+		resets = <&cru SRST_P_SARADC>;
+		reset-names = "saradc-apb";
+		#io-channel-cells = <1>;
+		status = "disabled";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3568-pinctrl";
 		rockchip,grf = <&grf>;
--
2.20.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


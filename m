Delivery-date: Wed, 23 Jun 2021 09:54:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvxi6-0007qT-Ca
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 09:54:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvxi5-0000pC-50
	for lore@pengutronix.de; Wed, 23 Jun 2021 09:54:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bu4PaqruKN+2JnL4eu7vvucE8AIZnR1YfWpONq7qCg=; b=wP9y0hnd3Rhu7P
	MpyL+u/JlsSTp/7OzXaoRIBW/Vi0FxUCFjUK9QU+phSGe3IVF26S7TC8FKrw4T5faCbc5gW/ioZDJ
	Um8Ee9kyO6JGWEMHAP8H0y7oUNtGb+ZqFzG5WWLSKI0DufZRGX8ZS9qUp6JRSN+0ADwv18g00+9nz
	OXgRgrlxUuW+/Yi6niUmvyn1LH427kFFYvY6i/0a9L71vsVzJyd9sa+2lvZ2LXw2tLZk6wa+uB5fV
	MWpt9qvBffUmxsjFuVssjTdsQ5f/tsfzIoZkFCIlnRpTjBnN6WUT2PszNvi0umhWNI5efDKevScpa
	Y1XGpU/+VdvYfAcbvM4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvxga-009rth-NW; Wed, 23 Jun 2021 07:52:37 +0000
Received: from mail-eopbgr60060.outbound.protection.outlook.com ([40.107.6.60]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvxgS-009rqp-6K
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 07:52:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QNFfPKmnHjMwNyEiHIAqQCpcllSCPJC5nxqh6vckzJxqJqS0UY+c4DRd1Ypr7jDcDY+agKnVZ3M7AGfeGUjIxzD2KsGSlc5pGazqqBf1nYq1UUiIg2SvIp5aB5ZzEfqu2dHFYhxt3O67mNx67RWntuwA7gmKeyczISgX+Ti4G8rSf8EEnbI7QJWDlF8WUKtNQ1aHouT+Zczv/x5PnrWNBKF75bBa31aB42JAmEb6QOMueNtNXt528KJNU0BDnD0E5LwQmHyzzXlNsMfDvWfniRrJlCfQ7JpVhexHEbiZmx59ziI5wUj9ZKgldmv8ZP9i/LqzLsnWoKzsZL5zhY0YVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lW/FsUA1qxyMJufRP2vkWogitTxp8YNLngDDhLbCxIg=;
 b=PW/lZDWMjPXJUEiBac7VkdR6Z8No3ZuwomLC6uPFiLHiNCx3fJ4H7mvxr29+p9eVIIp9jGqcetiN5fV7Xt2lXHgXCg7TyCW5I6CwoQ8EO6dndRj+iYQ+cxftv/sgH4Io2OSdyfC7Ts/YPJO0qc5hDJtUNf5+RXazDYWjMia0/NiXYwXi8qMMtn0pW3ygD3LaZ/ELE08+Sa+115G2gfe2mPGjZcbeN9rJYCzIs/+CkuiKHweDJ4T7L9QNUPz5u870EwaF8U0e9acEm4XzrQPho9r1LlXwYrl4v/sJpnizQqxMjQMPxlFcu56tk8jGFnprPX7UhobzX6wjnRgh7cnS0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lW/FsUA1qxyMJufRP2vkWogitTxp8YNLngDDhLbCxIg=;
 b=u/cgwyYSjtbAnL04f5sclPR/GiIuzgYwg7hpDcUvYx3lG9TPHXDFNbn5GrIIVBB9LkJNwx7vmrBd5gNmazunl1IBEhJeJbRO2WTzsQcYznGwccI8aXB8qXN1pogIuHDRxFOYzEPOzgne75GhCnE5y/V1oRhotPQqSTetwOVf8y8=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB6028.eurprd08.prod.outlook.com (2603:10a6:10:208::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Wed, 23 Jun
 2021 07:52:23 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd%7]) with mapi id 15.20.4242.024; Wed, 23 Jun 2021
 07:52:23 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 23 Jun 2021 09:52:01 +0200
Message-Id: <20210623075201.5328-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210623075201.5328-1-michael.riesch@wolfvision.net>
References: <20210623075201.5328-1-michael.riesch@wolfvision.net>
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR0802CA0020.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::30) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR0802CA0020.eurprd08.prod.outlook.com (2603:10a6:800:aa::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19 via Frontend
 Transport; Wed, 23 Jun 2021 07:52:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 398f3ebb-7858-4afc-3d50-08d9361bd5c0
X-MS-TrafficTypeDiagnostic: DBBPR08MB6028:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB6028779BE66DFAB25A79C4BCF2089@DBBPR08MB6028.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fzIR7Ox2D2k2vHlxpesm/Bb1hvLT11+ujEeiTZK1SZHKc/b91DP0V6KAYc4SvFnW7edeF5tKxUvxoucrB6gaPvXMhYjzWdP2iOQ0s5POvO+1WCbqL9Z9E/7TGsFsb0+2rhwad7XhzFHS7+gus++0BOiXrCz5HnRzR22psPf1pZNF3wRmY5McWxF3NHEiSh/e/yj8YcMxVn+uFQba9u9x94FRJU+Cy581D96vIJkn2g2qjBkAkUcFwF2ppDaRLqznBUaKBCJQqMj3I68ncmTo30Bhy79XlsZeM1J95zgKZAY0w5VCktTsXSTrO4XMBSrYsjFwPVa8i8HrFTzPUdDPn1tDRzUgmUVMrjnBT5uZ8+jVd34WMB2nN3cXGn19NU4ucrR+N9i5V7w37lQNRLHi2Q1hKqJCAiApty+m0mPA4x4KqQ0nG3Uhf8Uni62teTdGWBs5J9qkBTH1Jy3fbW5fDNMBGf93YlGP3/Q5DIFzV09N6Le89lpiZt4Zn5Eh8g6HletqkGTE50wO87BjgB4LD6T6hUBF0iCALFMX0zhXppEExcnhGfzIr8EJSOGJdCEjkbx7885Te3+y/LdH2HY89Oo3bdDzJih4ZmszL6RQEMQmQLBq60q28Zs+CAbeffdqzRhAwwM4E2gN0UTpc2GRpePTG1IGyjfxq1IVDFDGyNFp6TXVCpnXRqf/HxstxxplhnKrjJ5Ue5dcY4meV31FgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39840400004)(136003)(376002)(366004)(396003)(2616005)(186003)(16526019)(316002)(1076003)(6666004)(5660300002)(52116002)(36756003)(8676002)(26005)(6506007)(956004)(4326008)(107886003)(83380400001)(44832011)(2906002)(66556008)(66946007)(478600001)(6512007)(38100700002)(38350700002)(86362001)(8936002)(6486002)(6916009)(66476007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nR2nzdi6nAncvE73+ZBN7ZxkY75UUP2vAybxHs3Je+RMtMVJBO+PmcBsPWWM?=
 =?us-ascii?Q?F8FmyhQq8DezyKvhaIg76VaGjvsXYwu8y9vnRjZ3sIwP+5zO+PJJRhtnP9Ji?=
 =?us-ascii?Q?D1XZyw7cSBa2mL6Tk5c5spHwLhMcQIGAoiTUyB7IXQEFm0e7/9Mtou+zb8pF?=
 =?us-ascii?Q?vUBGsDiuz6uljBg5K/7JdUC+vNQ4L6A8DivuAQJ3wMXszWscw7fEhnqmb/66?=
 =?us-ascii?Q?IDPauGJY+auG+Nh9LkeDw6xCdjr6FYiBYsXuWjG7MkEhWqNP/TsrB/nOpSIT?=
 =?us-ascii?Q?4OgPpFKdLov3RQVnoqZjh/8gKFZQHEpvMlZWYOaF2sSWi5y7Di+jxySQ2wcM?=
 =?us-ascii?Q?ue4Ayab3EdreGka9ka0Z+NYZYlVaDvoSlyBdcTdtBdlE4NaqckvA+5MBOB0c?=
 =?us-ascii?Q?MQAW6/+TwmZIX1uq+DqGU+PqI6UMJa5rKFOH9omUletiSjAMw6LhviMinAs7?=
 =?us-ascii?Q?Ya443HDlbnI8AYMbEDgWX949BnOjGTiE6NOqk84kXdMyppCB9Zb4maHPdodA?=
 =?us-ascii?Q?umGb8rXRFRRTpS2+z6qROw9kMFS8ni6uAGW4HziK9Ko9kJLiF+SyM42r0e/e?=
 =?us-ascii?Q?CNe2pBi0aeI7Tvwqf+dKqRfwYje6RW2EpQ0NtMIIbGLH8HjSwe79JayB8U4D?=
 =?us-ascii?Q?mdNcbK8TxkzboF37t5X26JoYPtdLQreg/0mpf6arEQwDse1i/N0F2bHFZ6jl?=
 =?us-ascii?Q?XBOcux/IhwnqlV2qOvYj13DDibC8LDK28g2FoNcxKGVUQIMdjL7rkEtZL+Ci?=
 =?us-ascii?Q?bn/XxXlIaOSbY4Ef/3qsQFIyngYYHzDOiJe0C7IUjX1TtyN8CfKNLow0vY2g?=
 =?us-ascii?Q?8ABfil53l4v62Bv8YofEvP1YFIYXUENS9InlJyy4g/ulc99HGrO01U49VSbY?=
 =?us-ascii?Q?8k0bKRjlfdB3sESHW12SXHp+ZJCbNCwtPx9LSNs1zOx3d4pzFCnyeCn13DAK?=
 =?us-ascii?Q?2ADhhgE+nohmGvOa5jFkSlkBD/EAV0ThnuIIrhhCLsICpcc1DjkbOJettvLC?=
 =?us-ascii?Q?Sa1OvrVtpOh0UFv2vWTrzPU3Q9fNa0THZ/eCZXD+Ix7oSDcAQw6IEAt+h5XZ?=
 =?us-ascii?Q?GOIOyIGrRqJIk66wJ7n7AhcgWyffN5N2bf48WrhQTXRGP8+xayZ+VIQPSaT1?=
 =?us-ascii?Q?lB9Wz9bdNbrcrJm2cArLtrArxeNsXcqe8+HRY9HWf56p2zQfSpspy3LH6Hos?=
 =?us-ascii?Q?147zPRi65cg/u6KwGyQob/d2H8dJvGYtB34+6qtTYwx1xZAZ+tjeZviuLOdP?=
 =?us-ascii?Q?DBfizlIK+rlN0QMFHQTnybhQErcZtOQ37lN2iEM+kJSsq2mkVSpcrxpl6vn4?=
 =?us-ascii?Q?7pYbE2nuSjDG6k+mSbxy5H5g?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 398f3ebb-7858-4afc-3d50-08d9361bd5c0
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 07:52:22.9657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MSzEUk16MUmRzdzKWlkdUWLR+1N/n5KWRIguDNar3ZMjzxKS3ljO8XYpItOtY155o6PzBip8HzTwYx9ih0eIC9pG0dpHAq3dQ48igdkLovA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_005228_263183_9BE65DA2 
X-CRM114-Status: UNSURE (   8.02  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] arm: rk3568-evb1: add support for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
v2:
- add initial version

 arch/arm/dts/rk3568-evb1-v10.dts |  5 +++++
 arch/arm/dts/rk3568.dtsi         | 12 ++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
index ca6f9c280..b8b4c85bf 100644
--- a/arch/arm/dts/rk3568-evb1-v10.dts
+++ b/arch/arm/dts/rk3568-evb1-v10.dts
@@ -485,3 +485,8 @@
 &uart2 {
 	status = "okay";
 };
+
+&saradc {
+	vref-supply = <&vcca_1v8>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/rk3568.dtsi b/arch/arm/dts/rk3568.dtsi
index 34d0b8a08..8a75a7e96 100644
--- a/arch/arm/dts/rk3568.dtsi
+++ b/arch/arm/dts/rk3568.dtsi
@@ -817,6 +817,18 @@
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


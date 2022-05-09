Delivery-date: Mon, 09 May 2022 13:38:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1no1iX-0076P2-Qk
	for lore@lore.pengutronix.de; Mon, 09 May 2022 13:38:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1no1iV-0001QX-Ng
	for lore@pengutronix.de; Mon, 09 May 2022 13:38:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujS7KK0Gvv0okmWqTMC+K3JVgFQySPwPJlkshUUJjZY=; b=X6iGi8p6bbLRmG
	Bf9JRIiAMqJvb2XLdMVIz7JUBQMEZQ8Mc/Kt0mE360WWbi7dFDO7U8R+QiklxnIcA2Io642A4x5/L
	6kVai6ThCJJxYdQRaVszcfi4Uq/42cmR5vg532n2Efg6l387tuY4j9QtdN0dcRvts2IjZeZGtc0MB
	53ykEUgHi/dkORRxLxz0o/AxV0SW/BZwQ/E6gNMt2QhU7cjvkuHGO6m18yi3ChMYxX+hA0gyBFwdo
	Y5h1q7y8hKX8wtt5wzibTj72zpX9OOehWiT4muyPu1SlM+Hzb18ualp3PhuZW/dhH3BAGQ4vwMYKd
	0EwCUwsegvvZxPNJKtrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1no1gy-00E86G-Pl; Mon, 09 May 2022 11:36:44 +0000
Received: from mail-db8eur05on2080.outbound.protection.outlook.com
 ([40.107.20.80] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1no1gs-00E84T-Jv
 for barebox@lists.infradead.org; Mon, 09 May 2022 11:36:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=De7lPS+40I128oEyV6ri3wFIPS1cU5WBVc/+UXAedyUpxD1P7VgLPSLVtfF7aN8CYj2rdE9R5fSF6dGO9R+jPn9vzIJwnXNFoLK4R/9rSuyDm2ZSQQvnyKl/egbaY2BqXaQlKr2ciqFeC31izemAmNwrKOf1cMusqBy6+CpOTswfh8QZNH7zBF4LgKUi6kLrrTHwcnMrJG6NUlO7sSF5GdX5biuQhzp0PXYQEsGghAZ3Mtvwc0/dlFYq0D6tt8P4Ec7AWL3n6o7zM3qvYF2NVhk0VShXHHZae/Z5P5X6GVRV2zT5YYyCuf/zMx3fMZAoGbxrwejtqIM6ozxvptzLag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hOswyEtElpWCebDD0fUmKsLqlU30/qXKVvDlyWgo72M=;
 b=SfeNxE89v0bVDY+k+svUBjMVUPTsJm+cBhX5qsVXdLwRdgkYEK1clu9BeIg/cr9TJV6YwdmMgimyosioBscrFkhSrDAM71+Of3OAuQs9ls1CoIrxSuZEvQMCipEBF/rOKj+BlFAB+uSfoW83r9P7mQj+qkM0+MyhHIdaWzcf+4giDi45hgDEKfk3EfPfNiwC3FK/xLydB/a+d1blTSZu00Yj6xteYLk+2EXh9JCzYDh5Zx8RH59KRCHsc9UpGUOnT9FhDysYGYDzJMATX4UgP69wy75fX0l0w12ZxfG/x8PRXYi/wN8BFsZUNNP6nliL6hkh1SKciiTxtQHQoud0bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hOswyEtElpWCebDD0fUmKsLqlU30/qXKVvDlyWgo72M=;
 b=flJwlFB8iDn1IH5joGjewXeTKIFbRazNoRDMI3zshvhd932MceHwtWb1HIRxYmMJLZ1i7unOBDN6aLR0SXQFrLXnVSeekofXhEdHfxZo62QxswCgxkNpzTBYiOgi1vujqrjW7zTd2OdIlwB+fHxLwuCexU/EtcJcqSvBzFNWxow=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4348.eurprd08.prod.outlook.com (2603:10a6:10:cc::10)
 by VI1PR08MB3023.eurprd08.prod.outlook.com (2603:10a6:803:4e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.21; Mon, 9 May
 2022 11:36:31 +0000
Received: from DBBPR08MB4348.eurprd08.prod.outlook.com
 ([fe80::fdf6:eff9:d68:ea9]) by DBBPR08MB4348.eurprd08.prod.outlook.com
 ([fe80::fdf6:eff9:d68:ea9%5]) with mapi id 15.20.5227.023; Mon, 9 May 2022
 11:36:31 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon,  9 May 2022 13:36:18 +0200
Message-Id: <20220509113618.1602657-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220509113618.1602657-1-michael.riesch@wolfvision.net>
References: <20220509113618.1602657-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0111.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::8) To DBBPR08MB4348.eurprd08.prod.outlook.com
 (2603:10a6:10:cc::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eab6e734-c39b-4e8a-1821-08da31b02a00
X-MS-TrafficTypeDiagnostic: VI1PR08MB3023:EE_
X-Microsoft-Antispam-PRVS: <VI1PR08MB3023A7984709B03652D3933CF2C69@VI1PR08MB3023.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8zIObQzM2X3OMsODUFMTIBLKe4txDm6E/TU9GpJKLSI+DXg8z00mm32awODBBllmczewNEkGOn3Hv3AE2zTh9CA5AOEtotwNguB3av2fgYDpIYFxQPg6QpMXCD16hAuOs7R6t+M+7YjEl56yTgCTCwUvLbJ9CgIXv/pNXOZoaqXpaW7ccoQGRZLYUHHyIls+0KX3+mWek6r6qg/nDJEOSEuXAbNQtH2klRynZ+eQV/uv0goforErHzFx6vd3rrBie/2jVLD7+YwBIe7vvDRRds9MtpHzvTnrKx17u73PT0aojFMpQWXQTwMwKriL/yIv4S6qD2mYV7kFoQV1cgESgWa7mSG7ixVnNeTfMqmLSJSdV1AvBksgyLjBLX7OIIcbLwyh0VXvapXm27tL4K044m/7uMOo6fr6k6Dz7bw9aTznvS0X8t86VmqvfDE35oihLMmmMgcoTe5sOYWtdZtvdp8DhifNultThmxLSV6DiYsbVDmmmItzRM1AdzQrhAlSZVG7IsLDdvhFZocLF/llIFrhXkSZll2Cupiqb9I6ZwugJkkPhxrOis3r38xXuoXEv3XLZLOih8oY7NZXSi4nbNJOXahmxmzwT3LJfODHR7Z3uj9FaDbwSWgVciDHZv8jta7Aichquz2Hq5WXvnhoxg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4348.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(54906003)(8936002)(2616005)(4326008)(66556008)(66946007)(6916009)(316002)(66476007)(8676002)(6486002)(38100700002)(107886003)(1076003)(86362001)(6666004)(2906002)(6512007)(6506007)(52116002)(508600001)(36756003)(44832011)(83380400001)(186003)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KKYB9Sbb402SUJeutYd2thcObkPOFMQ3NKlnuqFyPgbJcVE0RxVmiaAY5ojm?=
 =?us-ascii?Q?OyaICfTZIEpu11v2OCv5OmxFD2+t3tjnehDxAZCmX4WWBnNQj85Te3Mc3p66?=
 =?us-ascii?Q?URUsgvwstNqMCpyv0P9SbLQDKEC00rD/wUnYu2lDHowzHwDTc2C88x0k6tQT?=
 =?us-ascii?Q?xyf2PRqDJ1kPo5iFUlCc73bBKSIfCXRBLZ456zjKgwPBrzCp2p4gDN18Doqo?=
 =?us-ascii?Q?N7g/tdoVs4vuS1SSTIx7i9B5+xMQ7jcGpgA+DST/WAZerhvUS9V/u8Q13s/1?=
 =?us-ascii?Q?FFrkX7NEU7Iw/fm0Rli2NIglPe8GrGFU5/kjBjQi4nxmHMfLPOlX7Rz/nKer?=
 =?us-ascii?Q?Rjnqc4o6fSLqFZsWr5TVy6e4pDr46a0R3G4dZU7poVUmuyyOhnDoLnkpV5XE?=
 =?us-ascii?Q?v/R8/lhQCIjgMCrY2lw3/c5zbGi7IPzYn4GQSIrF1ek2KHqj+oGsxW9QDHB1?=
 =?us-ascii?Q?7Ma7BTvcH8BVidYEAgN3F+m4YRYriQHH+QO4sbcvRnKBeUdCNQhFXL1Byeu3?=
 =?us-ascii?Q?NfByXhLSvuIMfpC7esjEkhlqruUbZ+kZJzHSf0qTbqjh4Ci+AQ3yfNtj9Wvz?=
 =?us-ascii?Q?QMM4qA5ETzJXPeMNFqMqINYG6Q4EI7bVgwXoV/CTLYQW8lx1UoTLo/Vv1+Yy?=
 =?us-ascii?Q?ReHt7OjGhTPbXhadUf+4P7JY1Z7wwMK1nc7+r1CJQpgCyrb6jn7OPYeqOHIE?=
 =?us-ascii?Q?oCC3/Rolpoqva6id6R8/hyWq4mSPlQ+snjDjtfkbUFUDGOxMHRfFkyZVMNZd?=
 =?us-ascii?Q?YyugQ3Px//X9JfXA+wXQ75gfGrIDq5vFV+4c/Oj9pyWrW6FifBVZZBLJm4ge?=
 =?us-ascii?Q?KaD+KPKtWM8/Yp1EJJN76uUng5gykrG3cGNmV954ES4zL+EYNV91qZBKll4w?=
 =?us-ascii?Q?gZ6Z0ls5lLNL5JXdVIfUmVaMIx1ys03ga47fE0p9jWt8DyDTRNg9tn0fa9dR?=
 =?us-ascii?Q?D2K/h/pEjPuIOcrvB1vfIqTJsL85QUGoaxfdkqo3XhnbmJEill3KGpRbzjna?=
 =?us-ascii?Q?2wPj7lHDF6TLWCRe2Zt6MDhi8MAdnQcPdjB8ggwPumOT+ArgZmc0cCF1cIH1?=
 =?us-ascii?Q?OMHdRnGQdzhm4YI0dr116WiEEYCytQTb4LWLJC6E+XFF1nOqycLZqlmggohj?=
 =?us-ascii?Q?4eB3xhXZF9tr+aTRLxxGchJA43cdLj6W3y/E5TLW3JytUCOKnAxkwsLqujR/?=
 =?us-ascii?Q?5JpprCLsqes3GP3RVRmjs1lbvra8CSeIyCNTOPbGn4FC1Cqk0mS2zeMUOaPC?=
 =?us-ascii?Q?HYmnr9Nivn4U9b3KmMRLI2gI4xqOypsh0gQm4D+Ktcps/Hv26uP+Df5Tq8Zp?=
 =?us-ascii?Q?n9P/F/6p/bs4ZwBQyWmkjyXdIOc8igdHW++bePxAAWUd0usaKIzNaTO4k9NG?=
 =?us-ascii?Q?s+7rwWyd5+GY0LH+XbINq5e+K+QLw589lYysEMHVFrROe4PWWIoTzBw7wUat?=
 =?us-ascii?Q?OZI+KcN8CKUi2CwZNiN8i6AKcsjHW7SOGC8eoPeYEoNlMLS9w8TZpUXCrjho?=
 =?us-ascii?Q?e94gQppF/np9snA0KYOcmcORWv+XeQX7c8ML6BeQXWf0GE2gXU49GFn1qnWM?=
 =?us-ascii?Q?BES18x11Su2kwAMVFfvn0deCtCgESBoPvheV3sAAgpxw8Zwd1W7CS0GkHqkw?=
 =?us-ascii?Q?sMBOhA8b9kVD3k+9E0RXKz4AeCI74yEfbvyk3mZI9tNjRo1ouGSfhvSiyqtz?=
 =?us-ascii?Q?Wd3eZ0jCCkEIoeEzewbuHDLUX5hMHywuZZllCORqdP9IWsWFSPY1HTG447Ng?=
 =?us-ascii?Q?rJJsTNd+6enzQXCs9cS+CKWT5vgl8mfEnu0W6kvc5XQcQNwUjgRJVhq6gw1d?=
X-MS-Exchange-AntiSpam-MessageData-1: gvJtPKtY5sdllOjqMme1QafuBUEMjef/oftqKlGeB3OQFdF7bu6I0mJp
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: eab6e734-c39b-4e8a-1821-08da31b02a00
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4348.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2022 11:36:31.6250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a7zpz5EAUfSkRy+m0BJvk+z5zJ2sJxTYyYIfHZHyCqz3p1oYO+Z2iO1ZB13g2eawcVWSL8k7iZaqk7rmnq6N76l0ui4y3d8w2h2NhLKomJk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_043638_679863_F175C95A 
X-CRM114-Status: GOOD (  14.98  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] usb: dwc3: align dwc3 clocks with binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The device tree bindings snps,dwc3.yaml and rockchip,dwc3.yaml
specify different clock names. This inconsistency did not matter
in the past as the snps,dwc3 used to be a subnode of the
rockchip,rk3xyz-dwc3 glue node. For the RK356x, however, a
different approach is used and the two nodes are merged.
Therefore, the dwc3 driver must accept both groups of clock names.

This step is a prerequisite for replacing the initial rk3568.dtsi
in arch/arm/dts with the mainline Linux version. For compatibility,
the former is updated accordingly. This also illustrates the
migration from glue node and subnode to a single device tree node.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/dts/rk3568-bpi-r2-pro.dts |  7 +--
 arch/arm/dts/rk3568-evb1-v10.dts   | 14 +++---
 arch/arm/dts/rk3568.dtsi           | 72 ++++++++++--------------------
 drivers/usb/dwc3/core.c            | 50 ++++++++++++++++-----
 4 files changed, 71 insertions(+), 72 deletions(-)

diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts
index db13f00cd0..da76ab64c1 100644
--- a/arch/arm/dts/rk3568-bpi-r2-pro.dts
+++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
@@ -560,16 +560,13 @@
 	status = "okay";
 };
 
-&usbdrd_dwc3 {
+&usb_host0_xhci {
 	dr_mode = "host";
 	extcon = <&usb2phy0>;
-};
-
-&usbdrd30 {
 	status = "okay";
 };
 
-&usbhost30 {
+&usb_host1_xhci {
 	status = "okay";
 };
 
diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
index 4ded9b1735..df5633978d 100644
--- a/arch/arm/dts/rk3568-evb1-v10.dts
+++ b/arch/arm/dts/rk3568-evb1-v10.dts
@@ -547,24 +547,20 @@
 	status = "okay";
 };
 
-&usb_host1_ehci {
+&usb_host0_xhci {
+	extcon = <&usb2phy0>;
 	status = "okay";
 };
 
-&usb_host1_ohci {
+&usb_host1_ehci {
 	status = "okay";
 };
 
-&usbdrd_dwc3 {
-	dr_mode = "otg";
-	extcon = <&usb2phy0>;
-};
-
-&usbdrd30 {
+&usb_host1_ohci {
 	status = "okay";
 };
 
-&usbhost30 {
+&usb_host1_xhci {
 	status = "okay";
 };
 
diff --git a/arch/arm/dts/rk3568.dtsi b/arch/arm/dts/rk3568.dtsi
index 28121dbdf3..3c458754af 100644
--- a/arch/arm/dts/rk3568.dtsi
+++ b/arch/arm/dts/rk3568.dtsi
@@ -198,62 +198,38 @@
 		};
 	};
 
-	usbdrd30: usbdrd {
-		compatible = "rockchip,rk3568-dwc3", "rockchip,rk3399-dwc3";
+	usb_host0_xhci: usb@fcc00000 {
+		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
+		reg = <0x0 0xfcc00000 0x0 0x400000>;
+		interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
-			 <&cru ACLK_USB3OTG0>, <&cru PCLK_PIPE>;
+			 <&cru ACLK_USB3OTG0>;
 		clock-names = "ref_clk", "suspend_clk",
-			      "bus_clk", "pipe_clk";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
+			      "bus_clk";
+		dr_mode = "otg";
+		phys = <&u2phy0_otg>, <&combphy0_us PHY_TYPE_USB3>;
+		phy-names = "usb2-phy", "usb3-phy";
+		phy_type = "utmi_wide";
+		resets = <&cru SRST_USB3OTG0>;
+		snps,dis_u2_susphy_quirk;
 		status = "disabled";
-
-		usbdrd_dwc3: dwc3@fcc00000 {
-			compatible = "snps,dwc3";
-			reg = <0x0 0xfcc00000 0x0 0x400000>;
-			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
-			dr_mode = "otg";
-			phys = <&u2phy0_otg>, <&combphy0_us PHY_TYPE_USB3>;
-			phy-names = "usb2-phy", "usb3-phy";
-			phy_type = "utmi_wide";
-			resets = <&cru SRST_USB3OTG0>;
-			reset-names = "usb3-otg";
-			snps,dis_enblslpm_quirk;
-			snps,dis-u2-freeclk-exists-quirk;
-			snps,dis-del-phy-power-chg-quirk;
-			snps,dis-tx-ipgap-linecheck-quirk;
-			snps,xhci-trb-ent-quirk;
-		};
 	};
 
-	usbhost30: usbhost {
-		compatible = "rockchip,rk3568-dwc3", "rockchip,rk3399-dwc3";
+	usb_host1_xhci: usb@fd000000 {
+		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
+		reg = <0x0 0xfd000000 0x0 0x400000>;
+		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
-			 <&cru ACLK_USB3OTG1>, <&cru PCLK_PIPE>;
+			 <&cru ACLK_USB3OTG1>;
 		clock-names = "ref_clk", "suspend_clk",
-			      "bus_clk", "pipe_clk";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
+			      "bus_clk";
+		dr_mode = "host";
+		phys = <&u2phy0_host>, <&combphy1_usq PHY_TYPE_USB3>;
+		phy-names = "usb2-phy", "usb3-phy";
+		phy_type = "utmi_wide";
+		resets = <&cru SRST_USB3OTG1>;
+		snps,dis_u2_susphy_quirk;
 		status = "disabled";
-
-		usbhost_dwc3: dwc3@fd000000 {
-			compatible = "snps,dwc3";
-			reg = <0x0 0xfd000000 0x0 0x400000>;
-			interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
-			dr_mode = "host";
-			phys = <&u2phy0_host>, <&combphy1_usq PHY_TYPE_USB3>;
-			phy-names = "usb2-phy", "usb3-phy";
-			phy_type = "utmi_wide";
-			resets = <&cru SRST_USB3OTG1>;
-			reset-names = "usb3-host";
-			snps,dis_enblslpm_quirk;
-			snps,dis-u2-freeclk-exists-quirk;
-			snps,dis-del-phy-power-chg-quirk;
-			snps,dis-tx-ipgap-linecheck-quirk;
-			snps,xhci-trb-ent-quirk;
-		};
 	};
 
 	gic: interrupt-controller@fd400000 {
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index fd0ec754e0..30aaef90ac 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -23,6 +23,11 @@
 
 #define DWC3_DEFAULT_AUTOSUSPEND_DELAY	5000 /* ms */
 
+struct dwc3_match_data {
+	const struct clk_bulk_data	*clks;
+	const int			num_clks;
+};
+
 /**
  * dwc3_get_dr_mode - Validates and sets dr_mode
  * @dwc: pointer to our context structure
@@ -326,12 +331,6 @@ err0:
 	return ret;
 }
 
-static const struct clk_bulk_data dwc3_core_clks[] = {
-	{ .id = "ref" },
-	{ .id = "bus_early" },
-	{ .id = "suspend" },
-};
-
 /*
  * dwc3_frame_length_adjustment - Adjusts frame length if required
  * @dwc3: Pointer to our controller context structure
@@ -1098,20 +1097,23 @@ static void dwc3_coresoft_reset(struct dwc3 *dwc)
 
 static int dwc3_probe(struct device_d *dev)
 {
+	const struct dwc3_match_data *match;
 	struct dwc3		*dwc;
 	int			ret;
 
 	dwc = xzalloc(sizeof(*dwc));
 	dev->priv = dwc;
 
-	dwc->clks = xmemdup(dwc3_core_clks, sizeof(dwc3_core_clks));
+	match = device_get_match_data(dev);
+	dwc->clks = xmemdup(match->clks, match->num_clks *
+			    sizeof(struct clk_bulk_data));
 	dwc->dev = dev;
 	dwc->regs = dev_get_mem_region(dwc->dev, 0) + DWC3_GLOBALS_REGS_START;
 
 	dwc3_get_properties(dwc);
 
 	if (dev->device_node) {
-		dwc->num_clks = ARRAY_SIZE(dwc3_core_clks);
+		dwc->num_clks = match->num_clks;
 
 		if (of_find_property(dev->device_node, "clocks", NULL)) {
 			ret = clk_bulk_get(dev, dwc->num_clks, dwc->clks);
@@ -1176,12 +1178,40 @@ static void dwc3_remove(struct device_d *dev)
 	clk_bulk_put(dwc->num_clks, dwc->clks);
 }
 
+static const struct clk_bulk_data dwc3_core_clks[] = {
+	{ .id = "ref" },
+	{ .id = "bus_early" },
+	{ .id = "suspend" },
+};
+
+static const struct dwc3_match_data dwc3_default = {
+	.clks = dwc3_core_clks,
+	.num_clks = ARRAY_SIZE(dwc3_core_clks),
+};
+
+static const struct clk_bulk_data dwc3_core_clks_rk3568[] = {
+	{ .id = "ref_clk" },
+	{ .id = "bus_clk" },
+	{ .id = "suspend_clk" },
+};
+
+static const struct dwc3_match_data dwc3_rk3568 = {
+	.clks = dwc3_core_clks_rk3568,
+	.num_clks = ARRAY_SIZE(dwc3_core_clks_rk3568),
+};
+
 static const struct of_device_id of_dwc3_match[] = {
 	{
-		.compatible = "snps,dwc3"
+		.compatible = "snps,dwc3",
+		.data = &dwc3_default,
+	},
+	{
+		.compatible = "synopsys,dwc3",
+		.data = &dwc3_default,
 	},
 	{
-		.compatible = "synopsys,dwc3"
+		.compatible = "rockchip,rk3568-dwc3",
+		.data = &dwc3_rk3568,
 	},
 	{ },
 };
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


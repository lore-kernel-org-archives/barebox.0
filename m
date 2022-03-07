Delivery-date: Mon, 07 Mar 2022 08:18:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nR7dV-003AzK-CC
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 08:18:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nR7dT-0000eu-Oy
	for lore@pengutronix.de; Mon, 07 Mar 2022 08:18:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qdjyl+Bqgm829Y/OLPWW7sHSnS9PSpGlVODv74d+Wis=; b=itNtxt6MSdAY6+
	OWzkRsja8M1uRTzodiaqdwtMt139f2iLigTi/DCtsAcLOkCgRkIQBmtAvv+L0AudY4DuTlew8g0aM
	xS4eTO9M9jtbxtaYtLOR5SHHEEtok/p9Hku+PW24lA/O7gMnveAlecc9+bDhCoR6O4U/KlKVdNAQE
	BCLgd9uJmiFCYb1F2zPYb3oKL0xsSF2ODQRWw99+6Gb8kpIju5Fmu1+xFx/Q3pPhUNj7hLj2ZyhbS
	05+6zVrjCFf+uj1x8/gt/Ky5NxsUe3O5l1Ejo2jSr8ha6pJM/ghPnHeljRkU2vTflUy2YWU4rQO35
	c/OWekFziKzE79XPqGIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nR7bt-00GGVh-IJ; Mon, 07 Mar 2022 07:16:49 +0000
Received: from mail-db8eur05on2061e.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::61e]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nR7bn-00GGUl-Sc
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 07:16:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P9/WPtPlUDz8S0abhqprAj6oziAcDr0lgo+KGsL1XDurAxRiNGk2ERyhiE3rM+ZbfdEoxDqkWhYCyyUppQtovHrxe2BQeXDNSVZud3IajIPHpxikZskU8F+BFVTcl+ij/VFpQM4QCyCjC3M5bhvjN0mREOcoWHihYJSPpEUK6bCNh2gFvEtqmphrMAIM3G1mQF6FwrTnPudvbkkp/jx5Q59k0jtU5hDiVB2KooWJPIrlpidydVA75WlDaqq6Z15623joOF7Jbb9qZA1veNOr148md2zGlI1TUtgnjVL/IVDxvJUfbNW/HDyLvbvdponikZl/krYXVmXuu/p71rEbXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vEGXrQuYVHn6c6/ykhi1FNcRrrTj9DTBWAesY2lF5BQ=;
 b=kq4uy4lDEKiKMDk4pmiR0Sx31nBV+27rQmqL44ChRJahOK9wF4ctDM+7WSiJUwZ8hRvPMDmYIBFoiG4myEF5add4DJtAsPBiSruP834I4CUL8YQGVhsZ8NETzp9LxXvmzjvaNaKevwNsliC38MfJBlr99ThqBG5lIc1TnyrIu7mjdUhPdKtG9zQC7Y1GkWiYHYGeQXWQ4FLYou0Ugv2fLuKFNAY3VZ8eZnAiKNfrmCimK+yE7zEJeshCOXbSvm8SE9djwdRWGq5M+qylaP5WJ5LPlG9lySj9OwqJg5yUvmOxql+/n/5IdVC7DKmifMLrPCLfTCnieXacbZvE9J/cTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vEGXrQuYVHn6c6/ykhi1FNcRrrTj9DTBWAesY2lF5BQ=;
 b=O1vFS0icie9ghtdfsSiyvjZ4gqvFVcIZ2iY7OnkdhMqrgpb5XNtYhye4hz0FwSUohhimoNAQ0r1Ca2uDbmAZUWvI4G4CR1e87qat8vIl3Wmy5n3G2BD3KIVE1d4Uv3ZFA8LQPmbmBBwCPv6UDUVD1GJtNpXI92S1UsbcQnevi9s=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com (2603:10a6:3:e1::23)
 by AM0PR08MB3793.eurprd08.prod.outlook.com (2603:10a6:208:fc::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Mon, 7 Mar
 2022 07:16:38 +0000
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::f9ee:a333:b115:5049]) by HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::f9ee:a333:b115:5049%4]) with mapi id 15.20.5038.027; Mon, 7 Mar 2022
 07:16:38 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon,  7 Mar 2022 08:16:27 +0100
Message-Id: <20220307071627.346527-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: ZR0P278CA0153.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::20) To HE1PR0802MB2426.eurprd08.prod.outlook.com
 (2603:10a6:3:e1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 65abd952-1ad1-43f8-c59d-08da000a6bbc
X-MS-TrafficTypeDiagnostic: AM0PR08MB3793:EE_
X-Microsoft-Antispam-PRVS: <AM0PR08MB379339AF62883E55F0063599F2089@AM0PR08MB3793.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iZaOFZ8lQd6WFBqj3CAJehLrOeR+srQzdg2AAU2RPNrVTWlAqVo24nNTUuIciTsaF7wgOEcp6HXTDQTQNpVBuVVHxRLOY17dtU6IZWAIOxa9zS6gJ67NqlShFyQ82UZcCVF6C+Y/v8d1IMlEVKq2xo2cSrdjIilYcCB1i3BBx5uVutjz70Ax8ElCqtSjbJDtqYmk4SqjysfJyX7cOMkNznPY3MwCInp91NkmIt3qaeWIyb9Ymf8qahQund5Tv5cLv7c58fcrEsRi1yCqgl0/x9rKK4E9nOVNx6KS5ZvADbRyO3e+rEE3rOQCpxL8Fy6ZUZ8azSuS9QixSPsH+fC7okhPdtVjShQpCLmh4Hh056yNzDps08Nb0AbhD5K5LRR/5KKl/Liy5t8l5aAtXOlLkqDYngG3IDZWL60lDkfnLy9EHHnCxZvCTkLupdJMDTYsp9oxfQIcqdD8YVKn2MmsCUuuYzFMxh4p2GbohwM7A+ryoTIqKhWUvPSkHw5PJLPcVXiLQgO1uegWtFjfDuwzthwGUSLtS8db31vwHP7KayzOsc5uT7he7TrzDMx9hV2vN5v4TjkO8MK2TWFgKiURfJYOwVef7NsnRM+uYQ6xDfA4IuZWXm5GDng+lCrUvgtGfTsM6Vy+U/TMzBvKu/ihgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0802MB2426.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(136003)(366004)(39830400003)(396003)(376002)(346002)(5660300002)(2616005)(52116002)(6506007)(8936002)(38100700002)(186003)(66946007)(83380400001)(107886003)(6512007)(86362001)(2906002)(1076003)(36756003)(44832011)(6666004)(508600001)(6486002)(66556008)(66476007)(8676002)(4326008)(316002)(6916009);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tN0jyy11lWOxMP9/bi6JCNRXcEg0OQzaT0PSCOH+m5LIj7gYjkAg74NVLAOQ?=
 =?us-ascii?Q?KN9fS7xukx412EPU09KgkhfK14x7VOK0ZWUeAELirgwVcvjRz8kH4mCf2XbJ?=
 =?us-ascii?Q?QyhIwChhvXXYiBXSQmYmlKzdUC5rl+YIJL/J2h6PLX578zCv+KIyb4koqfUp?=
 =?us-ascii?Q?a3p92IYssLp2/6zHfS5ZqnCNkRZ2uXVw5p+yhBOI1fU5N2330B68IvK7pMZc?=
 =?us-ascii?Q?t5AmhwoCOtvZ7l7+pAiN/NgvXtfRNdhcJSLgQeEb/o9n/5so2MqYog7Z5nfi?=
 =?us-ascii?Q?8S6h/IbqiU/mUTBE7++xcUHLV170wOsGXh4e92KTT/AdjTWJ5t8+tj9ulihw?=
 =?us-ascii?Q?VDw6r8SkzlMJWwybfdVZTCm/suN09lnne3ZPM+1QP/LUQPx/Dgw41KmIFKbQ?=
 =?us-ascii?Q?bHKO7AlqbFldFY6+dWrW7KzKyvvf9KdPzSpqISS9Xu4E1LpGnivtSYZ4CjjQ?=
 =?us-ascii?Q?+upQei/y+BvyV9vv26ISSw5JV4J/MPxbKGegY2xKBgE+r+h7MBzK29BQHwRQ?=
 =?us-ascii?Q?clvCw2ZMW6lAaXW16rAfm+PA092EtCCaA3vc6Ze8Qdev1cQyyC0xDCCKP7yb?=
 =?us-ascii?Q?GBIBuQ7vLFLL20FO3enpl3WWg+sr0LBiYy1nI5OVDeNHdQtfii9F3wh9NYCS?=
 =?us-ascii?Q?w0wOpnNX4adngTNnCCePKacBFwHtYdvijAGtYtHFAzpQe7TKgFQ36IoyTinT?=
 =?us-ascii?Q?PATEl+b1x/TYJo5ovzETf896BPdjOzqLE/Udo/mBKQm/CwKLtZYdyUyIGFva?=
 =?us-ascii?Q?cRIKJENXweuq4g7O0zmO9EsT1IQ2N4weRnDE8wAD4X9Y+Vclp7HG+aVHL+Pm?=
 =?us-ascii?Q?EgkBzYNvidOItijudt7geZbhABacBaWEELCUSONxnJ8UAJZPqBtFyxy62Sju?=
 =?us-ascii?Q?cf9Vwl+VIRRqQGdnlS3g7gyfbHSjqBjjEfRsxRdduZcBZ++RmNizwBX4Dlsf?=
 =?us-ascii?Q?SjmzryvG3bUbSHBAHPxF+50TVq8MEb/8JhANKRsE+y2qKxqBUIHCqEIbIHJE?=
 =?us-ascii?Q?Jn7yiy0D/pKLLN5ugbjWRA9Rr1JIfNm8LZLAUItk/Nz+jGev7HncAs8hiAcd?=
 =?us-ascii?Q?+V20fZTke1fTtrpPNChGeJCHkrVi4zV2ljLpHL/AjJnutyd2Qzp+3vvzApQj?=
 =?us-ascii?Q?IU03/8ncYHiHsDO4kKyd72ADxzFawznxREnH47CDQZTrfAb44r2wab3aoevY?=
 =?us-ascii?Q?AslOBMAWX0yJAtJoVM6tbIap66R3kgvE8J081QyiCMywbyMJtH9VQrsUtxKx?=
 =?us-ascii?Q?NxfCJYtH8oS2FacrDqwP4K61yHOrJTR1mLDAUqgR6lZFK1eB0s2clnfbyhW5?=
 =?us-ascii?Q?irxLd0tfw8bvRaUWSRibOdOFBVbI31Hrnsbtcwswr+EzHA4I1/FVNK1YIeZ9?=
 =?us-ascii?Q?fGNu4rk00hEq6Rva53Rt9+1LjzccGS6hqDa/9+ryT497TRIKBtbXfPWSEKRn?=
 =?us-ascii?Q?HZ2pB8I0/jOtyMvJekpXe8kn0OJFN6u+6r625FhF6GLKxr6EPNzXc+FyvAsj?=
 =?us-ascii?Q?+e1oy16HfVF3Uiv7SMeRz8zQE5YKN+B93zj1CKxLPcw0Tmwcw3j7raJcq6bZ?=
 =?us-ascii?Q?VD+ICNpqGmQh1gRL6WhDKCwpCiptytRf4IkNrMc6CvRjjnvIZIgitZJkNg68?=
 =?us-ascii?Q?0k+AjYhYOaRhyB85slZ5Zc70nTfVBPRLHQZBBWAXucSycdV6moh6VxRIxGx1?=
 =?us-ascii?Q?lMHCXogKo/zLQyLs1kz8m693xWbNkQcdnZHniEt+WkGHSGRMW85kKEAW54+i?=
 =?us-ascii?Q?1np8pP8I+Q=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 65abd952-1ad1-43f8-c59d-08da000a6bbc
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0802MB2426.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2022 07:16:38.5896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aEjzRh/BDEV8QhnEcO73OaxVaCSg44Bg7ASdw9k91S1Um0XB9/B7sRaccpRSqN8baXWsPJS48MiMryfjJVrW9FQAKxy5ANMi+62ISKji9Z0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3793
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_231644_030983_03B1DE76 
X-CRM114-Status: GOOD (  12.31  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: designware: rockchip: improve support for multiple gmac
 instances
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Do not rely on (board-specific) aliases to distinguish between multiple
(SoC-specific) GMAC instances. Instead, use the base address of the
controllers as is done in the Linux kernel.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/net/designware_rockchip.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index da57ed171..dcf65c9ad 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -21,6 +21,7 @@ struct rk_gmac_ops {
 	void (*set_rmii_speed)(struct eqos *eqos, int speed);
 	void (*set_rgmii_speed)(struct eqos *eqos, int speed);
 	void (*integrated_phy_powerup)(struct eqos *eqos);
+	u32 regs[];
 };
 
 struct eqos_rk_gmac {
@@ -174,6 +175,11 @@ static const struct rk_gmac_ops rk3568_ops = {
 	.set_to_rmii = rk3568_set_to_rmii,
 	.set_rmii_speed = rk3568_set_gmac_speed,
 	.set_rgmii_speed = rk3568_set_gmac_speed,
+	.regs = {
+		0xfe2a0000, /* gmac0 */
+		0xfe010000, /* gmac1 */
+		0x0, /* sentinel */
+	},
 };
 
 static int rk_gmac_powerup(struct eqos *eqos)
@@ -228,7 +234,7 @@ static int eqos_init_rk_gmac(struct device_d *dev, struct eqos *eqos)
 {
 	struct device_node *np = dev->device_node;
 	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
-	int ret;
+	int i = 0, ret;
 	const char *strings;
 
 	priv->dev = dev;
@@ -247,7 +253,15 @@ static int eqos_init_rk_gmac(struct device_d *dev, struct eqos *eqos)
 
 	priv->ops = device_get_match_data(dev);
 
-	priv->bus_id = of_alias_get_id(np, "ethernet");
+	if (dev->num_resources > 0) {
+		while (priv->ops->regs[i]) {
+			if (priv->ops->regs[i] == dev->resource[0].start) {
+				priv->bus_id = i;
+				break;
+			}
+			i++;
+		}
+	}
 
 	priv->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 	if (IS_ERR(priv->grf)) {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


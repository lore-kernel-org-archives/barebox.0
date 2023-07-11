Delivery-date: Tue, 11 Jul 2023 11:12:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ9QU-006zac-Ea
	for lore@lore.pengutronix.de; Tue, 11 Jul 2023 11:12:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ9QR-0006z5-KN
	for lore@pengutronix.de; Tue, 11 Jul 2023 11:12:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WqEjOGjQNA9p9HKgpGt/yBjXbuyZ2Pc2kipBe0iYM94=; b=cEt5jGsbdGTZJn+yImkYRDnQXy
	3rhz6tVF984iPzpKRSdFWUVDCv1oDBxI2LLY1FW8dmGj7Q+kisyLCgnhJiQbwzdA0UHhYp9ZjQpOv
	rdW+SBkCRqwtK/5UC06HRI45ukT7W2h9VaPBIH2NvRxkUmOCxBhxQE61uYFkvPzXACpFGugIIlunh
	d78uuEJrZp62tCO+EYozFly0JCTStK/6lPMzF4zUt6X3cjy9X7nwK/WTfHZwNW4MsPQdNybFtjFtY
	vjxwX04kkK3lojH5d6eUbQDg0mofj0cR8MitudKlJScop93tzfVcDdWnflnpmNP1PeC+ZJtvUL+uo
	HSc1a2LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9PJ-00EFBe-2A;
	Tue, 11 Jul 2023 09:11:41 +0000
Received: from smtpout140.security-mail.net ([85.31.212.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9PE-00EF9w-28
	for barebox@lists.infradead.org;
	Tue, 11 Jul 2023 09:11:38 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id B86919730A9
	for <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689066694;
	bh=CS3kCm5S/hj4QEf+6VTZSDuuHFsF+EE/s/zpmDlx/9Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=3wLnmaHtuOE8bITPpQ9/5S6LKlF4QSCnjxiA99oC5WD1bNT1oRh25RCCVLXlyJjB0
	 IzsXPd7pUpknRVBHQyX0JT5B5ndocNNEJIPgxvUK7yMs3F/ffaAacBwU13m0hnZmeG
	 RiXTumNY352Gp+EtuoJ3NBb2B7QFM9qhbnbzLyVo=
Received: from fx403 (localhost [127.0.0.1]) by fx403.security-mail.net
 (Postfix) with ESMTP id 7FBA9973115 for <barebox@lists.infradead.org>; Tue,
 11 Jul 2023 11:11:34 +0200 (CEST)
Received: from FRA01-PR2-obe.outbound.protection.outlook.com
 (mail-pr2fra01on0102.outbound.protection.outlook.com [104.47.24.102]) by
 fx403.security-mail.net (Postfix) with ESMTPS id B400E9727C4 for
 <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:11:33 +0200 (CEST)
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15) by PR1P264MB1696.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1b3::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Tue, 11 Jul
 2023 09:11:32 +0000
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::657e:fc00:2c5f:a398]) by PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::657e:fc00:2c5f:a398%4]) with mapi id 15.20.6565.028; Tue, 11 Jul
 2023 09:11:32 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <1760a.64ad1cc5.b32e3.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iqm3UC3cwuJ7QU6JKPMmNsBm4tMsovLRspw5j0v0VmYNPM2g17JckltcAtwWiB7mIuF6hoV/1RdxX0t3teTZG3d3tThvnh6y5YmBARZHKVQxsDXLAMnie6hW61fioJc2TqzOFNQgBb1YM4Z4poB11Zq+Amjydz0jwsmtNTE4TifhxASRAVBQstl3Ce2IywlbBow3wtiQ9JuLoPDwbS2nIxtsejRPwXwJ1oUai+8VhXeyMBGBuczuHmX8OU4c+XtpOcAP+T8wGSSkvy0xgcAsdF7Pgu2J/KdT6FrTpHV6MlyPuskoHzKgGzZWU/0A6PR9XsPloNn4w+MMRZ0tRE2+2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WqEjOGjQNA9p9HKgpGt/yBjXbuyZ2Pc2kipBe0iYM94=;
 b=dFofmZrGYeEmjLmkjr9PzXRtKG4avAAF1YoPlyZdKKWgFXE1tMK25ih8kJk0L3f/7z16OgnwjS3ciWKHW2GiHZ0qLfXCWDpI4v2CY8AOAR9DnzlUTlXXk5b/a10vOTY47y7Jn0PPWyG3qfe6U7bSiuT+UCbtTXfbTWXailzhIWTZD676639A1h6i0wbs5NcsEmC/uiHZDS6xg4HIHcRwdfIpzJVSOnswbFnG2QgMTNGajMKGAZBzkdBsYDC433dTKdpURXxtZo53HbP3TRr3uMamTmlKeDB+P884+PQ4ThdWsZWY6UgbAdlo0/ywmaoPfMuquizieNYjFu+Nnvl31g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WqEjOGjQNA9p9HKgpGt/yBjXbuyZ2Pc2kipBe0iYM94=;
 b=vheV/PUhuVVZNDoYvLfBz85+3y4dLGI8z3XR4lORahhKeIYLKNEr1zhT5iDCb7CZ/mEX0UpyBNsitoOAasWsGiFm5pBLasjgcsU/bp0bnLN7jPkRaI5JbakOfaIuOHZ8pQfaYWSD67CN4rHVEZwdnB9FObD71p2Gz9DXKuvq3CeHNsmW9QTnqicVMwmuyukNqVdyKANsh//AWSXkAxp8o+///t/m9xpzFtXJfkt8SnH5LcA1508z07xzXi6PfM22uoV2Vhhz+OUJ6J6P2VYHMCQSFXkBc/8ZlKzx0cZKqd3iJ5swrysj6ujHBdGIZ9ea7H/uVu5pVbRk9kgY3qSxYw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 11 Jul 2023 11:11:22 +0200
Message-ID: <20230711091123.19111-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230711091123.19111-1-jmaselbas@kalray.eu>
References: <20230711091123.19111-1-jmaselbas@kalray.eu>
X-ClientProxiedBy: LO2P265CA0406.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::34) To PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB2606:EE_|PR1P264MB1696:EE_
X-MS-Office365-Filtering-Correlation-Id: 2be7c0ce-f237-4132-ece1-08db81eed18e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w6qj/J57wRi5tQYR39Xe+jPHMmXWijsnq4WCXUanXezirNvJJRn3lYn02wcsmgQQ+kSpc2SbytsxKHxnezwDT3FqLe/5OjxfXUP5yULIjF9gpFT91arRkrKrfHlJPzgWahy3X54nL07jlGojukLMj8r90HlBcnkQ5h5DPVsulPnNPab+tN2ibylVLtTaZuQK9UK/UwW17D806Ttuy/5lNuBRaXuBPpAQGAFgKkZVZgMQUGTIFKwixrmQ240y8tpJKP+RFfPVoX4psp4L36bsCJjtbsdGkhjm+I7yeAewfOXmhEjLsZiEsAv5556fsKIJ67xhlHYD1aRV3JL9l71keB4b8p+TN4063FraD8YWzzeJMjuChJgoO1kFtbj3cSnifin6PV0/Z8MdS+stwT9P8SY0vMDNTL1bFdaHKKv5FPvvTHOWeDTYQRCV9lKoqsl28RVm8Kp3n446d3nv4EOaOb4/7qO9o2vC4jwXJneQVnhFoAu3DOPvjxLTRLNSGlP+Bh43IPA8aA1UTuuviXlxfQtkZ+IWb1zpJIChc3e8AMdtw5yNJII/L0VXFOB4hyokBPa4aezd3uBt39blYFa6Qgjj6f6YGGRHVaj9dElQcgM9b2abN/Kiqh2XXqg08TSM
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(39850400004)(136003)(376002)(366004)(396003)(451199021)(6506007)(41300700001)(38350700002)(1076003)(26005)(107886003)(6512007)(186003)(2616005)(42882007)(478600001)(6486002)(6666004)(83170400001)(52116002)(4326008)(6916009)(38100700002)(66476007)(66556008)(66946007)(316002)(8936002)(5660300002)(8676002)(2906002)(36756003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: yZiYUQwdXW95x9s1VPEODB0qNkYnyflufDGMrHnxh8Whs61ZvZvlRmoGilVoD7XlKKfxLX8AcxtqpjpGhc6qy3S7HaPKBX9hbZZV7HPqRIbeIk8GB7v88k3GsyVNc0g0+wEnayf759476hmBscAZX/CU9uPqMdleJ46EaIi3Tq701KrLMTmiL6it3xTO6PHZJmlll6nQK0lKqlvFwgB61gZBmS3smWsu8IQH0KICtQVG1P6pBie0vdqAesEfZhRUVQHr1pfTv7zpptpeyzNn13UEfmN1uk03sb9Mim90lJAGTiiegupJxYWLsedpgov3zi+XuhA1peC7CjYfuvb8Ga00k6e1LKUViNtiieZO7O12RyKK/ZT0H9tDLMvtKpCSM5orpMe8tPMpFutfrb77jSOpbt60xq1X6G+b7DOQ8etXGtPoIDBcS3LaJTEV4C9QBcH4KELgrL2vYYifhNCE+vzOeBsKwq2N9SnjyP2U8jppLDMBALwckSeDjsftH5iEbyRnODbXG7lRfkfzsOaWy4DCqxk6k9n/1r/Oq05dXkm7lv5zN+iPfC2NIOrObo0lJgfD5dse+zs/zddyPEOCB+pMCopZUU5ridzNnn/ODPtx5YTR5CMNGn6X73ZRxGs9kF8osfV9bIw6+/APPGrofYC08KLzDIanyXFq7pIdUVJ1OYuCABTRb6cVOai+mh0kmrJIkYXZng6gWf8+DRC/zFKtav2cxrHmg/kS0Ae1p6hCviqnl25VkZz5h0rJiR1ucAQKj9JyTDt7uDgm9FNeGi+0kF2LwxWHF9yb3c++LDERzyAaPjlZO5NUCNdHBY+qp2nOm9qseDQie6HqljRIdhHb7PcNp87OrivH0WH95IoexWPQsmJMnBw5EznQtJlFZh8k7rq07rr6JSkLzGP5/9+9S4nY6ahGuU8877Mcx4xYdz/R7pK7NQMepW0qu6k9
 zegd27ulL6kgGxr1pb8+j/+mI/0XUIGVfKGS9xrx3EC0IqIgngjnRN2Uj+J/rK43lSpLnrbYSLmk7EYU0I7QKdIJ0f5ZZmDHXrm9xHe14Iq46e1MNZk4HAZNO9Z2QEe0p5bF+8lBVeG89TPgLqouWUg6OBItU6GydFl2H4rb2Y2jkyr0uAMlponbAAOQzBQnwnl9IQGBEKWj1EhCyuRPUFEkyH/TN2TaZnjywLh6WDTeeee0jA4XNTNdgs5JEbh1hh73/nE9WcEDgPJsOG2q0HENTz4xke1YtOoyt8fl1RLYnxdidHhyxXam7n08KpKf74SMsp/uKRB09CxqAbdUKEIyBY7cZSKLlK1sIuvBNfTp0ciuJMTdT2v2XUY4Pj0GmYWWTonNlw0cyiB3F8Exm8UkVP50CQd/+12rV1Uq4kYnW+alC4uVZuOqySTeVFmhVvdslF9Jf5j40ZKMUZTMx0AmoN0crJ4tGuoMhU7p7/hV6pSPqIFS9x7NZO5FMFZx6/hGJ3oVI6AN5JrB8wwfxvbPux+aT/wo5up219UoRAy3zT9wqAI/xm44ja5QtQE64mj4p5ouaHChxWxsJcFDro+m06sfG11Tq8+WY1jCni5NQemh3dubmyJ0BGJbpKgJ
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 2be7c0ce-f237-4132-ece1-08db81eed18e
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 09:11:32.5126
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VqPQkAJaO78EWRudmdHuCSlAI/TO1M+bL/KqLHHS4BTewxDN/9rB6SpA9FvpJlbL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB1696
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_021136_833033_B331FFCF 
X-CRM114-Status: UNSURE (   7.57  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] soc: kvx: Fix memory leaks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When calling nvmem_cell_get_and_read the resulting memory must be freed.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/soc/kvx/kvx_socinfo.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
index fc7ba1c1b9..496e817755 100644
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ b/drivers/soc/kvx/kvx_socinfo.c
@@ -102,6 +102,7 @@ static int kvx_read_mppa_id(struct device_node *socinfo)
 	ews_val = (ews_val >> 32) | (ews_val << 32);
 	wafer_id = (ews_val >> EWS_WAFER_ID_SHIFT) & EWS_WAFER_ID_MASK;
 	base38_decode(lot_id, ews_val & EWS_LOT_ID_MASK, LOT_ID_STR_LEN);
+	free(cell_val64);
 
 	cell_val32 = (u32 *) nvmem_cell_get_and_read(socinfo, "ft_fuse", 4);
 	if (IS_ERR(cell_val32)) {
@@ -112,6 +113,7 @@ static int kvx_read_mppa_id(struct device_node *socinfo)
 	ft_val = *cell_val32;
 	device_id = (ft_val >> FT_DEVICE_ID_SHIFT) & FT_DEVICE_ID_MASK;
 	base38_decode(&com_ap, (ft_val >> FT_COM_AP_SHIFT) & FT_COM_AP_MASK, 1);
+	free(cell_val32);
 
 	kvx_mppa_id = basprintf("%sA-%d%c-%03d", lot_id, wafer_id, com_ap,
 			       device_id);
-- 
2.17.1








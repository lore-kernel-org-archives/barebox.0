Delivery-date: Mon, 10 Jul 2023 19:31:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIujF-0060vS-8d
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 19:31:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIujC-0002LF-Ea
	for lore@pengutronix.de; Mon, 10 Jul 2023 19:31:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jSNnVLhZNym360LMyTzu4yLs6Lu8NXdQZJAiCzHknc4=; b=reeFK4JwCdFSjuzCmyQQ9vhg5R
	Y8iUylVWyGHi3iSXcLLFa21BKZrcluKpX/PA/NhTCgLIN9S4IcGnL2b9+Tk37PWTgd0yjth17TpUH
	mdlDd4an5j1KsBC9rZmLCPdEnVedL3LaNOorQ8t33gFboLcF5lYgb9pV0fwuV+uhoX0jyJkBizWyD
	bKHfFl7I4py5b+0kCn7/0x9+cRCEdDDpFM6q+WG+wCsORC1T9L+ZlGaavYMl3Q0jU5O1j7eKD/Yde
	XPX2EC9ZBVfg2JOXG1I7HIitjaBI21fM1M8i2eqNdngGSSGX76MrlVUqFUgKOYzAbg9KkwHzhtoEt
	jnnF4Fvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIui7-00CMQF-2Q;
	Mon, 10 Jul 2023 17:30:07 +0000
Received: from mxout.security-mail.net ([85.31.212.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIui4-00CMPm-2C
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 17:30:06 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id C589130F453
	for <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689009758;
	bh=xzM8Gn5qfNG51mtR8ZJSO0iSMXxCzJRJvMyKAmrGCrM=;
	h=From:To:Cc:Subject:Date;
	b=QJe4qZ8uhivlOHLpHEi+ieMv8JVTYFaHP1rHhv+/VH29DTK9ABPXJy5u/GayUM3iQ
	 5y7dJ2CMXen8nzjo7Fi2KsNq4FZ9ZgLBRTFyB+YuNg3qr/WMM4U4IYLKsqUmmCUlVa
	 VRRYjtk84ltHnJfF5ZwvJK4WR0iBigcuzWIX6BU0=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id 876B530F47A for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:22:38 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0103.outbound.protection.outlook.com [104.47.25.103]) by
 fx303.security-mail.net (Postfix) with ESMTPS id C901030ED5B for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:22:37 +0200 (CEST)
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:d9::11)
 by PAZP264MB2894.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1e7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 17:22:36 +0000
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94]) by PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94%4]) with mapi id 15.20.6565.028; Mon, 10 Jul
 2023 17:22:36 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <1744e.64ac3e5d.c729f.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hjx8eoix00bRrMqTAB/zsnWVW63CQ6UYuewcj4eLgLdY9p/w66SRK/s4E55wcHBEJiORfjPDaiLUamf23RBJIPOKmp+c3k8XkwJuZXrYScZG421ZWocvpfxPQCRNDfV3+qqCNVe5KS6LGEhr5mhpzVYQH8HN/fPYLGo4i41IAZod1PiwAkj1rdpTM5X5deGjKF7xcJ4GAXKSX7RBu3jMs6ihEqpd9Zo/47T4MiQi9AEnuEy3WMrsf+8ufVnWKPrtr3qDYmOdDkyA+a+xpxaBc4rnmVxJ4ezuKe+XLKCaHpJN65GdibJIPCfBXW0bbNfPUU4KTSrSv3lTY0Edu7b2Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jSNnVLhZNym360LMyTzu4yLs6Lu8NXdQZJAiCzHknc4=;
 b=c9Stl1eJl/dNEzxP2EJS2QF+3nQOdODzEO5kRmOhmkjtgs1eqATPwV5LknuR10SRDDY2Fo0X93yDZcHnN8uRVbzPK+maqidDpiAyy/9BfDDxCd1/gcpM9Qrs7xs5kw3XDDeRToiNXSYy05k4ghuPXZkJqjks+f9rhxcQFLXGqkbrTiuc/sZhrFPoj/nvvBgHA7FpZtfu6qDmDFppRhiMI/f0fCJYjqVu4y1bXQHg+GGTUe79q7fc2A/Pmpx9kINtfqxBlSsXfoPQTdME3Dd2YzGnwpstXt3qRxZjk35K14L2vCjj3//P6X/Phvp+hr0vQL9u5kSrjJW/x23lBWBQ7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jSNnVLhZNym360LMyTzu4yLs6Lu8NXdQZJAiCzHknc4=;
 b=roMKCh6wdoea/JSrOIrpOiTa+LPFEef76HSWNoOe4Uxgqqfu5qLs/Jsw57sKxQ8stzB26joDYoE//WgHuIdgWbpBiyGlow5ijmPSx3eHO3JsLg3EiwLc5Dq6JJ6/9kE0HcI6S0t3U5UH42Wd7QsBIc4yEVMtcj/H3+8VWT3i2dOoo6DfMTpZyGtPwrMOfyYnZZlGkFq3mJt4S5BRrzI1zWLdYLHm76WzUkmg4aIbiq5oWiB8jr6/nl1n9xpMBdDCfR/gnMJhf2hts4YcRHouBUjsaHziKP4L0OwDAcOq+HE9vWP4WNnIPMSijVc8nNtfX73ftH1Ddm1xfzbll+kbTg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jul 2023 19:22:18 +0200
Message-ID: <20230710172224.26496-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: LO2P123CA0100.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:139::15) To PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:d9::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3751:EE_|PAZP264MB2894:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a700c42-2045-4e28-c28f-08db816a4124
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QDU11qH4EF9Z/aK0OIr4L/whWSXba/9Q1CL0boM2UId8yiSGBEAe1nxIiiUzB5GRuj29kUC9SC/Qe7hOq2lpXu4L/Hnw7Kc6tcsSpgxSzbIozs/wlfa19GSoL5FlhHFq4QM0EVZ2Pf8GuZpH4iPTMMgh1/fVPdMnfEhAnnLkDWY7AhJgGva0DZYf0ugnAKTJLrFH1WAT/goqNKOrSMLvLO064U1Vx59qNGNQfSKR4JNa3OIpbOPMTVlbbs1QskY5cCUPhlHgOnKVHIp5U9PXkFmnUUUm/vF2DUkesdFKZxH9Rc/DVnFP2spOuIHZJbd1UxScv3UzB6eNF/VNXyN+64Sr10xnagAewolXn88rui+PPKBn3pn5jn0A+6+qouH9Aw/CtLzpmUBKUZQF/vMGYMHCaVyzaS01qFfhZhWfp30LhzFKFa9vOtKaTWYvQe1/7jNE8WVR0HjlyTLKDGEFhhAGoCQZ58trixXKxsBEanoA5NdTwwQgl8j7Q37PHiV4nB4x6HXSRm4NaaGHJah48h8BNNstBrcSixwYbGUF8LZiXZJTR8Zwk1063hcL9oubyBkPUSD+xTlVZqrkbynOIOdgOhPek2GrmqOb/9VzsOONogRAVdUDCMxBCJzQnOUx
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(39850400004)(376002)(366004)(346002)(451199021)(186003)(42882007)(26005)(6506007)(2616005)(6512007)(1076003)(107886003)(83380400001)(41300700001)(4326008)(6916009)(4744005)(66556008)(316002)(2906002)(5660300002)(66476007)(8676002)(478600001)(66946007)(8936002)(52116002)(6486002)(6666004)(36756003)(83170400001)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 9AHdiFbW3AOJq4hMuuoOl57oFxcDteGNX+LqFyko33otyIEO+ljjzWmZkUf+KSnPBDjqXD+CpTEdhUDBAXmrsQ+uOBzF6cyD/hXRQAqfZs1BIHf0NESV1WghXP3TRec+EA/n6ObaLs5N7fiVc4owvTNl4P3/86osFXKZUPNOs8imWfvwHR1V7R/UdyBvqH8VH43k7eRQ+G2a7gEhMKIjEjQAY/xGoxhz/GG/inGJCsNTLnLOgReRAWbM77emCcPl/YrrizhVJaN6c1aimLDEPT9Wq+hXpDV66e5XAa6EDBEWkrrI4s5rm69ezMhov4zthzwQvBTw7qDR1hPsTlEvhfYSqyLf11aEH8tRx0ULEFGoiC5zkqcdnNi25fA7pvPxEWLuj9lUsJWDPsuZf1gJO8Yv6d1D8YgppovONjVCP56LyXMW5a95ix2TgEyVddQjiXjqneRS/YRz8P+6Uv54LbvE/WAbcFJa/+/d8LpmfjWUQN5x48ZaHS4MX75+fuD5DRoS5i/jnGgT2oI3NpzLVrvws9lm8dskJdtnylgteK8Uq7sRNbdfcjqQG2E34J7i71QU1FsSofeYuYP+sFwbfritTOjj8nbPTKJwVyp5wgwWbe87K3zGmIV31VPhlwlShOflkaVh8FoU1oq15d3HYW54f9fkj8uj8l6uu0RTPUk9LV/tlzYOR7JHfvG08yAWwZL1Acjb8Q9or8W/1K7xUq4JpoX6Qo/GfIW0nEmLNgp8ePmK5OoLzfXlKvIHnfJUdGsk+0QGbDxQ1lssB9eoXn4xCgsWmU/w2q952MbBSygQztPdJbsRgNcZ0CuIa/mdR9TbX5y2dmX5cc/zOOrYsvW04SGY5x+0YmtAS549IJn6+xfZek+7yArdaFz5lmR1I8uRT/OQFN4MFLZnpc+Rv641E3zCh68fMIR7bPokj2GSfEMIZhzNT4GhmqEblool
 +rKP2KvLcs1g3ugIceYEiohp/e6pZVKJ7TBcLBwC/omBhsyKw8TIB4tMyg3DKGlQTFELo2x0IIhLimm22zlhTC9EqMM2FbuYRJzOzXnwg0tZ56qtMctbQVBe8W86uE480vJ+XQG9704cpFBDgB0MAZcJQR1r0ORLfcPw33bcmz3xW6agSRuKYUTUWmfteLVdZlfjmInH4+v5UkG7eojQcOXX9lBvxsSih/nGj1X/XwU3yybAJTV4OJsBCDuK+oOj88Gy/HkAgAx5exZAAdp7rbcbL74JPEcsrbpOWfxe/NDsVc0ri45i4wb0XDhAA+1TW5Rd3it+d6RpEL9070pOfMsGk4T0k6s08WBeubDhpB+85mY4rm8mSYoG2kqQcaOQGCWFS1lV2OBirF81VA+3oh/CnSChilsUj67gNwBc9xkheVL4aYsEdlTAKZADSFsPS82wS+pubDlylX+BC4A7d68tTkBCdY/StHHD29i91giI6CGNX3n5moDnSTqvY0XTFXwFiG8wwUDAWuJDTsXvr8UCyWtzDyLcNPbRYzgcMSJ8pWYp9GXLGTWLvmXO9oy5yUg+QCaG/uyFaJSvIxruPhmpl8/KPZJ9IBzK3CIJBsY=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a700c42-2045-4e28-c28f-08db816a4124
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 17:22:36.4199
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 66u0xLD35ZYDPsC6hDprlfEc5jUEPzNEULl/Fy37OCXI5s4fbzWvfftr/2K7M4E4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB2894
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_103004_876771_7EE857E3 
X-CRM114-Status: UNSURE (   5.59  )
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
Subject: [PATCH 1/7] mci: sdhci: Add registers defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index fe8c25cb9c..50179de0e6 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -117,6 +117,9 @@
 #define SDHCI_INT_ERROR_ENABLE					0x36
 #define SDHCI_SIGNAL_ENABLE					0x38
 #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
+#define SDHCI_HOST_CONTROL2					0x3E
+#define  SDHCI_CTRL_64BIT_ADDR			BIT(13)
+#define  SDHCI_CTRL_V4_MODE			BIT(12)
 #define SDHCI_CAPABILITIES					0x40
 #define  SDHCI_TIMEOUT_CLK_MASK			GENMASK(5, 0)
 #define  SDHCI_TIMEOUT_CLK_UNIT			0x00000080
@@ -173,6 +176,9 @@
 
 #define  SDHCI_CLOCK_MUL_SHIFT	16
 
+#define SDHCI_ADMA_ADDRESS					0x58
+#define SDHCI_ADMA_ADDRESS_HI					0x5c
+
 #define SDHCI_MMC_BOOT						0xC4
 
 #define SDHCI_MAX_DIV_SPEC_200	256
-- 
2.17.1








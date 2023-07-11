Delivery-date: Tue, 11 Jul 2023 15:42:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJDcz-007FAM-Rw
	for lore@lore.pengutronix.de; Tue, 11 Jul 2023 15:42:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJDcx-00019A-C6
	for lore@pengutronix.de; Tue, 11 Jul 2023 15:42:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ngLFq5sBwoAvfsXCFqYwDSQPMuW2tyYTe7GotX4+JPw=; b=fI1J/ZWZzwzG2Hu8oIf7IcTX55
	OD+TSNjCUMGoQ6E03MQXCXMuGC6qz4tiyoDo54Vxn9ZL8hp5MEHY7cHVkClhNTmDB/aXotO++pmSJ
	1qXaPhzWxDJj72/jqtfx7cvpLPBf2RR37S3r2bthdaeWG3NdqMR3XsxMp6tgHb/Z7mhFgviQGiHu+
	M7OYbQt9UvkpKKGK0ikvp5cNTTIv0I9SjBqQt8BFFdvtWHFMe1gTZkuJZY3v1tEGb4Zm00JXLI2ln
	xxjrZcYlOIIFoyzQB/ST2BfpF+oXXmxZjkr7b/boSBmNYlM9oiP/rnaQrzXfFqLgCeXw2GQ0i0bWE
	BrgSUSZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJDbR-00F0X2-2j;
	Tue, 11 Jul 2023 13:40:29 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJDbN-00F0W1-2I
	for barebox@lists.infradead.org;
	Tue, 11 Jul 2023 13:40:27 +0000
Received: from localhost (fx408.security-mail.net [127.0.0.1])
	by fx408.security-mail.net (Postfix) with ESMTP id F0E17322A6E
	for <barebox@lists.infradead.org>; Tue, 11 Jul 2023 15:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689082823;
	bh=s2/h5KJ7zsxNiJs82/nS2o1vRcH4JG9v5DzW/uSNgEs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Q9ERQOmy7I5+hscIuFmig6JSPy20unP3OtLdzzu4dHWEUS5fNGfCQKcuEYSxbaQG0
	 HCo/IBu4YhS7dAGqwzDg1DZQ2ejAtndPFJfM1LAxbAWOaRoYOW+6rRh5m6Ulyah6ef
	 ANmJHpUJnFHkSBObObBz4krOMV+CuI+Y01+VqBDE=
Received: from fx408 (fx408.security-mail.net [127.0.0.1]) by
 fx408.security-mail.net (Postfix) with ESMTP id C7CDD322A69 for
 <barebox@lists.infradead.org>; Tue, 11 Jul 2023 15:40:22 +0200 (CEST)
Received: from FRA01-PR2-obe.outbound.protection.outlook.com
 (mail-pr2fra01lp0102.outbound.protection.outlook.com [104.47.24.102]) by
 fx408.security-mail.net (Postfix) with ESMTPS id 3DE1F322A22 for
 <barebox@lists.infradead.org>; Tue, 11 Jul 2023 15:40:22 +0200 (CEST)
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15) by PR0P264MB2904.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1d3::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Tue, 11 Jul
 2023 13:40:21 +0000
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::657e:fc00:2c5f:a398]) by PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::657e:fc00:2c5f:a398%4]) with mapi id 15.20.6565.028; Tue, 11 Jul
 2023 13:40:21 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <16f9a.64ad5bc6.3c753.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BOjU6bzBcCzICrjR3GMdPoV+K/bYAfjeVzMoTas9fvYD0BtiwBQ9bYAykawAHRoPiXDCMPC4tbnvw69aP+T942/4/6jmppnwyKHxlicefXiTGlXgJy+ZTo+Bq+x6JFP2g2E0Lo3UUBnOf1uxihOmvKXS7hZxnCMU8/UYEJCRBz6gcasmO/nuwtgD+UbEQJkOEXTDv2vrKD1e0EhLLY8EzONv3zREaxnwNHXEgTQnOVlOro9KhbFnNnehkJ4WzcJak84y8fK9feEFeBotBFMBBadINEanO3BAbGWZcN7kpNe5hMmoK3DDjaBP9WX66l+KPshXM75dXqJOMi24WM3u5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ngLFq5sBwoAvfsXCFqYwDSQPMuW2tyYTe7GotX4+JPw=;
 b=TAnPr9Fj1ZQHBQuXXRWAfaAshxKwOdLgu7EeTUTZmoUT9eyj14yMzdUiqIWMVoycFuuCXI29QEWgmNssqgCfYb7qvMaozAA7PSLXhOZC5f6mkNXChjJ3wq0r0bAKPx7bwFvndFAsTPUlvsQ5kifu+RHkfLEFIEStdfMOjsQcR9Ycjtyr8m3EsT+Fnh6e3zwJPaATRfyvKYCXcvxTsYVxhESgdfR+9UKFgTWvFbgie0QHK9kq1YexawS+UI5BdqHdnJFLZV/u3gIer9DxowBK+z8Dz5CYD+2rqWR48zwtYjRHrhnf2dvjF8401Cb0NkDQ8wjZ64kqO9bOvB9el5KCcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ngLFq5sBwoAvfsXCFqYwDSQPMuW2tyYTe7GotX4+JPw=;
 b=CD3IY+PPLfrrVEAH88T1OREvFxMBvbDSj9hx+PPUiQgp9GyebylN4Iafvs9GSGdl6lm3yuC0bPqlfyNx9f239FkIMOSjmv9x2aGIrT9xQC+EogeEl1bdAa07u/epB73hvtNEuoz5iI+SHJ1ogeTe7m7xbEn1dQmcV7XyC1h/o3DMhzDPYJpLxDnN7PL0ylafWKrHNuD70gAdfRPWZQgyGvy2ZAM06USHBtq31Cc6BNKjDfBaeuudFybcXifj2l1gWPplmkyifqz+z3rQlpg9imjqsy8HeOwc2A3CFL5DukLkZ4qkLQTjr8VTfZZxRfHDg+SaDR615246VyBbsAxaKw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 11 Jul 2023 15:40:13 +0200
Message-ID: <20230711134013.5199-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230710172335.26701-7-jmaselbas@kalray.eu>
References: <20230710172335.26701-7-jmaselbas@kalray.eu>
X-ClientProxiedBy: LO2P265CA0247.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::19) To PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB2606:EE_|PR0P264MB2904:EE_
X-MS-Office365-Filtering-Correlation-Id: 670935ae-e17c-407d-b25e-08db82145eb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xNcTGsPEZoOr013AtoAS1UEwkcdTfJOZo2TtLCGp5rKOYuSwX3heKMa4+4Rjf/Bt63pL9FNMlFNSVuauKRUk4o9MrDCzqlQaXn0I0RAraXiCjVoQMjLZV7h8BV6AiN2m2eGrq954SmTB/nowUTuMl1RXvUx5DiLcyYmySjea8NupfHma1FdIh3K3EH0kg5eWU1TdbC0pSgchXr5cRIlqYZ6TPKof1f3HvnAsTsug2RVTsEQqkCVrfHBqPQ4dUEhUMRN2ffiv8t7N77TagOOgUEVbJXbD9wNQegd/31KAD6PG6rPynVHS/XqaksNhSMm+2MMoUinUUf/Ipway6edXgN9XBZAL6aPhfsId2AWc0mjLv2U5BZQOJWjeGZdO2dGi4lWhcWyem3Sm9CQ+o5s724LOI5iiDSZHKo1S6LDEziZXswXuAg/XjT9O/+8oO3LJjX2K7a8X/cw26HrP8d1moIoLKRvCkj9RjZrZgH0ueG/AHhtpZeARS3WynxTLac9prDxz4aFfEjtcBn4USf/9YuJnhcTp33ibkMUi5yEshs/6KaalFc2sbfhbHrjVi6M9mnfwHxt9V9s4i6eI5tMv7owkwWMiX5CKwdtpaIrH6wqVswfj6dGUZRQkEPWofJ41
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(366004)(396003)(136003)(39850400004)(451199021)(6506007)(41300700001)(38350700002)(107886003)(26005)(1076003)(6512007)(83380400001)(2616005)(186003)(42882007)(478600001)(6666004)(6486002)(83170400001)(52116002)(4326008)(6916009)(66476007)(66556008)(66946007)(38100700002)(316002)(15650500001)(8936002)(8676002)(5660300002)(4744005)(36756003)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: J/3hFOk4UmJegaH43JNdH053Rb7/tWvOcFOvCsaoWtMzOTHCEEtmh2Keh0QxgnV1k42eJkcy4dxVl7/asm8ePi/lckqHMeSGhdO3QssryYlNQby2s8ancS+gJ0z/4BMgPETFGnZiaJccR2eTRYtZMkdN78lkihS5++4GVo3TViA1GzDZ/IjzkdYpVgw3Td7DYVEwz4FkTIKZRTUIB7I1eNznoJWVTrxMgDrXpgH1KGSsPz83C/BY3BbUhk3yVowViOInv9YjOVlJTTfVeqrnUBkJxjT7RcWUgdCqM4CLrjRvEZFcrGZA//+icFOqztqkgvztsEgJjkuY+029uAHYLBdzNoXpEysNwWFsyMA+cfedT/OSojMCEaJ9no8vmoXlSSnvauEVeFSPm9YwxVl0EJa52A2fJfRfWr5IxwK3yNgCYDqjHW66r/RpOCNqiBBAaMMQ+YfSGGo3GDV+af1QOeguV6GVroz4zrKchnnehNET/GFJWw13RMq/en+C3liGCSqmkbB+WL/34T5A/NvBsSO+S/5MNUherfAgnfMKN+j+XDrQY+EnFsI3V25wH9U8nzVk1mZVKofqpHs21+KeRl9x/lC5yvtVYfMFCLDn7PXv2UIQLNgMBO91yHRwcEApwT3VW5YmtL/VVYK7cVn+Ap12TZv3DF81BmgU8kplepw68sK5n/U3TBfKlWfgb72toFxfOjSH3FGAlxxoTO9csimE/atT3mIuvlYQiDXuppZSHMGmpWUSW5ViLTnYxynLYMm1lDk1rNdxfABgHQUUtk0crV5rgWOuAJcmnoup2OvQQoNoWgUIx2xgYaYNDxzQYsuPFJFSBhemvVUX5W7DiB5QddK5YsgCl0GLNsHHLuqxuDlpURF0VdImoHiryflBzvHa4JtM71Eu2LWKMXBr525QMrU6ELkgmsgkWQNlXI8Lo08s11gmm06tSEVd16c/
 uBwlxLkkepEc00IXMy53nsguvRrvb4wrRiBGNSJKJ2DWU1S9n1DUjtKXOULL8JYxaPbFWXX41IJ3XEajA1Y5KhjEpyonFc81+XssIba+p03dW8x1jhINXV07N2uXMrzMAvR0DAyRzzNxuuWaRKLX1ZmQgv+HzMf7uhCPjVNilaPP23unB5bFgWi2Wx9/LfByDiGz0zGy5N9frDihDwNdWOgH9vEkt/CkF5R0+0eFh4HNKjH/iGqTb3NPYfLW9OioPykfR39L1YgP+pcHZcpmGPxxTcvaESXgNQ5ZrPgmVKdEM3T2oKdkPtrEbs7hz99235Aj47xAkEwSoxT6xdewAh5HLGMWSpPop0gOArqN6M6Q7Wvnd5UyHKlFkOh3MqxytaR+mrHYCK+bWlbg+j5uu8jreeqTSgDb66fptRG3CTDS+14KAbtf79on2JsOm+Q0NSWtemSmKbfNNanSoC802rvhtxtwuK4H//VPdoLJk3SDQs+MLHjnsxRkff6WqFUuSikc0UbDLdNYqJ+ZNjb5yBfwd6VOoaYvHFyOyMIq7dxk4h2C0eLvVQYT4JPcsZ1b6OmS+jFP5ekaBC47aUkA/z9rFK9EKFAsegNK8PFUZcYozn0XTNgTw8A2haWWoAJV
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 670935ae-e17c-407d-b25e-08db82145eb0
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 13:40:21.3693
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zq09Z91XEOnMp6yBEoQKbC1j2LqBYJuO2v3mRcuAiZUmeIlwzzmcyP34rZvWRPmr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB2904
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_064026_067727_B3C605D3 
X-CRM114-Status: GOOD (  10.66  )
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
Subject: [PATCH] fixup! mci: sdhci: Force DMA update to the next block
 boundary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

straight copy from Linux didn't worked because the macro SDHCI_DMA_BOUNDARY_512K
(default value of sdhci::sdma_boundary) is not a size but the enum value to be
written in the transfer control register.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 4c8e73d94d..b0b83bfaa9 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -289,8 +289,10 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 		 * some controllers are faulty, don't trust them.
 		 */
 		if (irqstat & SDHCI_INT_DMA) {
+			int boundary_cfg = (sdhci->sdma_boundary >> 12) & 0x7;
+			dma_addr_t boundary_size = 4096 << boundary_cfg;
 			/* Force update to the next DMA block boundary. */
-			dma += sdhci->sdma_boundary;
+			dma = (dma & ~(boundary_size - 1)) + boundary_size;
 
 			/*
 			 * DMA engine has stopped on buffer boundary. Acknowledge
-- 
2.17.1








Delivery-date: Tue, 11 Jul 2023 11:10:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ9O7-006zPV-W6
	for lore@lore.pengutronix.de; Tue, 11 Jul 2023 11:10:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ9O5-0006dS-K4
	for lore@pengutronix.de; Tue, 11 Jul 2023 11:10:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NYkOLEgM0W8Bl6ZiKwClYDZbpEhzmgBaU4ILoD0sYmU=; b=mDFw8xivSVOOYin4KsfVyV4vwP
	2aExo69OuKuDGBupR+HCVNjVU7jjt6skC9aXeUg+B5hr4AgCkfJ02gFYC3DiRXvFKJktLkgM8x9lX
	wokW/tqbjx7KhFMEAUeIbG2+55212ULajni76CXY512CkAkJw2NoaJ2gudmIcMbyg46QPwG07Y7G1
	+4UtLup11GOSMmPJC1NdgI5oIKjHf2Tcy7kj+rwaHXkDDNfxccjST4PTu8b9f5EQHzjJIqfbpNGmw
	CpTffZ52ZNX+/pA0f6Ri3zKR5e+dN2Cl8rDjcMYTUOROSUmtMihH/STzZCwa16EWQ8MrwuMIIfnD7
	Mi5xc6qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9Mg-00EEdt-1q;
	Tue, 11 Jul 2023 09:08:58 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9Md-00EEd2-0s
	for barebox@lists.infradead.org;
	Tue, 11 Jul 2023 09:08:57 +0000
Received: from localhost (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id 6277E35CE74
	for <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689066532;
	bh=UbLHhgdksaJgRJV630P51bYjccPeVg589JAdHOUGDHw=;
	h=From:To:Cc:Subject:Date;
	b=A5JffsJyJWY1bRRCMgGvKLUoqFqDNcA+nzD9eUQtEicBIKUpPdMQLAxJDAgQkRQ1q
	 G+AbGYnOvgj7EUBeW7asVEkx2xm+wNWQ9EO8iT2yVaVpe1IlH7fscqpV+UzU3nigwv
	 +8cb3P/vBmUrNahEm6F0Prl8DUSLlO0CrPE343SQ=
Received: from fx306 (fx306.security-mail.net [127.0.0.1]) by
 fx306.security-mail.net (Postfix) with ESMTP id 3715435CE51 for
 <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:08:52 +0200 (CEST)
Received: from FRA01-PR2-obe.outbound.protection.outlook.com
 (mail-pr2fra01on0103.outbound.protection.outlook.com [104.47.24.103]) by
 fx306.security-mail.net (Postfix) with ESMTPS id 958E535CE82 for
 <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:08:51 +0200 (CEST)
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15) by MRZP264MB1526.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:8::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Tue, 11 Jul
 2023 09:08:50 +0000
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::657e:fc00:2c5f:a398]) by PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::657e:fc00:2c5f:a398%4]) with mapi id 15.20.6565.028; Tue, 11 Jul
 2023 09:08:50 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <61a0.64ad1c23.94919.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lzu91Bo7v6BspncLwhGUEJyfHR/7F+vGvvNHmDL6TR/VNqSUKsBSiYFFsjacfVPwDPPqiBPPu1tkVjCFMrXAN+MHs34LaBCiOj7BRq1YG6bw1Jq+N6gkzNHZyMLICo98bI+mMiyxWOQr6Scd3h+rAh8W/B6yLqU+9DJuxmclXm0bWJc13H47jz4bHYNkWjcgRE0OZvnDeBABKVCYohN2MFnQaSAPK3hACY9yG56cmVweBB6MKUOOX3L40QxCR+ArOluFEuhqeQQbpsg0C0YHoo9BMVLet425la1LQMHw26oWqpEMrIBLDciYwvd5rHKZL6+q7b1KTgjNrzk2W9lW7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NYkOLEgM0W8Bl6ZiKwClYDZbpEhzmgBaU4ILoD0sYmU=;
 b=RWr2qDe+rrR+3HDjSdg+SXPMOMa6b1Sfjp60q2Q6jL+nVphXG4gMqez/G768ZiGH4pjf8YJT38o4Xh0Uag3+l6o+aRNQmrAtqC4eOVFHWn/ERWGQgacUAKsuXzPvBLZfrZTz2w3lwm3lRbuL0TeI15ce6EifzQNIERV6QsmIym74Ms0bFsOVNME4J85USwhRgpIfUvkneyzLnlGlBz6RUrsrP1UoEyGEUkFs3RjRg/szmGaz5FZpHurLgMvzBOTT6H/2ZyvLvpMM1aP4myJg8g7t420vM0PoczK+RNZe1iHwYpG5jVnzpGHzCs4Mln2UaNFrLSk4DxYuYLncpq79Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NYkOLEgM0W8Bl6ZiKwClYDZbpEhzmgBaU4ILoD0sYmU=;
 b=6crTi9tmTXyd+yhtOukrJ/2kpWaSIMs47wVzMjDpHIsZwR13jmQhja09l+fxDr/peMm9YCPqknuPTDDxpn7J7umlkjdgdL9lrO0K0IPhJ52qTj9zGImAcAuOxmDGkYUXU1mLYgCVrJQl1NLP+G40DUeeXg2ySJuSYwe65HbQlFZPkS0eOaJuAQ+rrFijNeGCwZWqUfBg75jIhz9G0gkTpE4s7YNI5ySwkSDofUJXLw5059qwNNmYl7ojUYpZieAon9/+u4PKT0+d5+Z0ycAyZEnIIMlXdesc7E8wxrFMsvV5lzmjBxDuFZGj+cthwOvEkP4NlvwykE6CavQLT6AQDw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 11 Jul 2023 11:08:41 +0200
Message-ID: <20230711090841.18373-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: LO2P123CA0036.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600::24) To PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB2606:EE_|MRZP264MB1526:EE_
X-MS-Office365-Filtering-Correlation-Id: 552abdd1-c28e-4ee1-17c1-08db81ee7128
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3hq7qGmA/gkgV+1YLuncb4ZL12N/paAZ/vQ8N+M71sXNtf86ReFQu33N4lCmE9m6ap3KEW1qfkANMeXqmnKLp3fKDRs5PBnBrzmMCwjhyTHpU44rhdJW+8njxJSiA7V9X4B+1nao1uDLXu8gljYblWCAApiXu1x9ZB8JePzln3xHFHDHlWk6yZfsHKDXT34/PV+lbv98S2APBu45obsEOiQ9qKYRTv5tYV9/FUwb+0CkwHq/QGJVbwK/wLP7ChqHpeFW2wq5vMy0v/2gixkSuxJHM2KSAatQdP2y1/WsMMXBMnfGV/mJ9Y19+aunMundXJi+JHuqdZgbTh6Z8ntPNKjqK4OS3vGdnXveW7g7IArjGeC587/ND7wrnNt542taUAnJYIxw7QFKBm4Wv2doqUP/Nxukg8xTN7fJmsT2IUxwQeh78XlElxhQPFH9lzSerV9CjE/Y8THe1SgmhRuYG+nx7uO1cEVtWwSGSzD99M2lkoE/SumcnR67oQnWCaAv9lmWEdJD0Jf4YbGE3KlVmuMcaVJKddq9vi3QE6/WcsYl6bfZPIKMD2RSN+aCPhJKwfobGDuqR3V5q3X+Ur1y7kJG3QPweg7HfNqhIXE8P1lL+k6SpiQ5zGRlOzfBAzmp
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(451199021)(6506007)(41300700001)(38350700002)(1076003)(26005)(107886003)(6512007)(83380400001)(186003)(2616005)(42882007)(478600001)(6486002)(6666004)(83170400001)(52116002)(4326008)(6916009)(66556008)(66476007)(38100700002)(66946007)(316002)(8936002)(5660300002)(8676002)(4744005)(36756003)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: MhALA5Acp/V9W0Oswo+UQ22fsb9mPl7viULyJb6KQNVRksTA/nxp8/89t7qE5E9VizXUSdfUpeyLgsswROo+2qKjb/+elspV1o4r4EQO1vtAXe1CQ+BEaroSsuEJmWbJqPgXYmWC22dtUfy70pHs7QpaQdkKJRPUaZns/bn+KCSo0KPh/lN8cDoD7s8ahMKJNuVQZa/vaRxGPVcBZGKWeoVztX0mMtBk3rbQe5n6ZkHD09j4IV1b0QPHtRiTuYj+XNoMmzvaj/v4Lt/rSjAY2zc+AGTGRWZe2zmQkFGXD70UN6nMN+X7fzTjlD5qVs0y9/pErtUOsmnPniHvKWUVWJQ0cYYOmRueDXg8nR015UMq9TOfbNqj5sN+y+sgqp53ZXY+0qUTDdGx0tRBIWnsEtCn1YryNkReM233NM7RNeW5IVZ2Fa6nNcWKPBmJtwRW+vA4bxAIRCtV7o5qKKKGZcGiaLQD2DM6h6ccrwRZGSxvqjHycwT8BeckxLXv6YzfvMIJhRwNkPVMmd/WloeVTZ6EKFBVP+Ug2iAHG5jl8BTRRZuIp6E2zBTVUHK3OEk1na9iDW+pp6rZzg+2YFaeJFcw0MTc5n908y5fFR5BiFdpGzeKwtcJBvgJev2XeCbEyzGRQzk8OGY7AMwfbpGWumwRm/j0gKGsAwOmH/cPbIXTqNq7MJmmjwjNPK4IMnJxHcxZwZXAJ+tdbMBOrv3OY4rX41adu8TmBwf58RFcOBhK1RoRe19hlzFAJMaWWL4tHsuuQ0bocFDO/a1glHF/RYAfFoLyVEGHDRwwC+/LVaoMyA5I4MhXEPVTCowTg9Cfo+BELcU/IgbR03/VesWyvmO0WUc3c2VSrAoRzMvkOv8CdAUJ9Y4YEzqVoXzn8ldncQdApCrzfQ35LniygdfldWxXQPONJshLWI1pQEPPPuDfqZBEfcIBv7XdUwBgz8cT
 0Zn1rpVVVcvw+gzoYPOTHDPnKbPs5gRlJE9tRvBf7TwrMQb4qTbZ3YNEgOrdBrbBRtY2XhbvLu2X5eVWPwjfdVDk3q9uTtV6MxnLK33JAtZHDe98NEkIRGz3w5EGYlFlLwIX7ofAht2xtrXV66xgH9kNVorj6x9AXxHH15bNYasKXX8neM0NMDMlSn4seooLMvMeDJszCsV+CjF8vatKIdcH6IT313hhorXbuLxYyTAR1b5XFIpd9EYyn4Mkgw3G84266uV5kGrsgqJpBbaQimz7yHl4EehG6w+EYdy0faa8XyyaPDt317Mb4dbBGraGdOB42LORyhd+W7GW/rTmTjCdiXAmuLriYwFUYlemSJnprlTQnOp3xnM9AbFi45oe4yRXdJ6KLC8H6U5qLeuzTfruaSfnQ/aU1nP5lTjC8z5vS6UrK3+7QHMkMNBIQbLLjJ7kNl8x25SQRiposqZXCaOHTl1BlHmLt66PaW00H/xHvEfGA2UDcA9ymg3LbgifQAmrn9tgmn+fKuld3TJaJL48GNUQmbtA4GXd9dcabY9JbOMj4virzp8XrQKyLAC10rc6646iq1Slu+1GOpBLChK+74YgV/1W3j3JKUv6SeE=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 552abdd1-c28e-4ee1-17c1-08db81ee7128
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 09:08:50.6532
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PDmcJ1lIbmYgDqzB+IgRSN53+0Z4JRh25bR1LOSisr+ZL579liW8t5Pyi6LXiZ1C
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB1526
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_020855_645543_810B85EF 
X-CRM114-Status: UNSURE (   6.01  )
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
Subject: [PATCH] kvx: Remove unused defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since commit f6dcd5c03b ("kvx: dma: Remove arch dma_map/unmap_single"),
theses defines are not used anymore, remove them.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/include/asm/dma.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/kvx/include/asm/dma.h b/arch/kvx/include/asm/dma.h
index 5bf601307e..f35eafba8f 100644
--- a/arch/kvx/include/asm/dma.h
+++ b/arch/kvx/include/asm/dma.h
@@ -6,10 +6,6 @@
 
 #include <common.h>
 
-#define KVX_DDR_32BIT_RAM_WINDOW_BA	(0x80000000ULL)
-#define KVX_DDR_64BIT_RAM_WINDOW_BA	(0x100000000ULL)
-#define MAX_32BIT_ADDR			(0xffffffffULL)
-
 #define dma_alloc dma_alloc
 static inline void *dma_alloc(size_t size)
 {
-- 
2.17.1








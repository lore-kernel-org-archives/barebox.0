Delivery-date: Wed, 11 Jan 2023 11:03:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXwo-008iLE-Ob
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 11:03:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXwm-0002Rv-Kb
	for lore@pengutronix.de; Wed, 11 Jan 2023 11:03:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8rgYcPABPUs52ZETvirX7g96ng81F1Z3kFjotVb4RJU=; b=eDufiWJeFKlWJckofFYXIvpm1S
	jdYCZU6w0pVTPgl6aDMpqvdLsQ+FWF+ivIcGPbylqv4EzK2260RjApA7Qoqv6vxL4OYEZ1jYPCBqQ
	vBc5hoKuPj4XSG5o5e9GhjUD6jokdzT3tOoHA70lX4G+BvzXYN/KhVmmGX7oZnAuWQSB4Rh0dBaAa
	uZYL9V5oNhL6qqit/BUUQJ4wll++1YMveFxNBdaJIT9ij9jhIsEDQ3oC45afAZPNdxkL9e78vm6od
	7FymIwqtlLER2P/5HI7fU7w5Bpe9pT//TwphRXrOvdD75lo8ITe63wXWpox+kOOejngJAMI/4qYyh
	sOLTN+SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXvV-00AfhV-KA; Wed, 11 Jan 2023 10:01:45 +0000
Received: from mail-db3eur04on2125.outbound.protection.outlook.com ([40.107.6.125] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXvK-00AfdZ-47
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 10:01:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YpfYtEaPetV+rAk/YBPRcgFI7sNMRSkrkX9ph4iJPCS2Y1QpE0QajHajXvqYRF20dA2EruahkRHqAbAD8V1Xrck1EvLbeinCKNrGA4XNxN+IraX2BPH52dfbwX7mLtVyOZSPjf3bzK+T6S6KYL0ctR3UCFj+5JwLxMvc2bu01fIAyM6O/gZQUjcUQ9rH5Gn13oErGihebsEiv4DsyUyWs89DkWDd1Nxfhe5YchQhgwjQLcg2CjPMtED320ZBMx1ncQtzGJqffoaeSlbHZ5RQ+V56AkJpJ6kTHNjuw6b9bmJfLE9os0FDyiL27kjK5aZz70zLxT5axN19A/hwbglZXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8rgYcPABPUs52ZETvirX7g96ng81F1Z3kFjotVb4RJU=;
 b=N7jTQzKG8eUCmDokMHjffwWbLaIt2yd+vUj/IKktnoyXLdEUTzBXJUYCKsGJsZEl2e59Ps7vVH5B+f3DmC5JUTr1Pq5TDlpjzf83LF5akVN1zGh2fOmkGMar8DF2iH170SuyLZlNKg/3UEDpQCaNMi716m/c/c54Cy18wmB5jK65eDhi4AGnD4ZFyG8/WURvelV474pdXZwmpTJzJboqw0SwapUT7LGwXL8u6sXcp/uFVxzN4NsC9wE6CbsU7ix9rYvqfw3bXj8MsxnH4k4TYr80rJ4rW8zqEg7ymfAkzpgdlrH/2q1i/3sxP9nP3kZPh6CRkvqxamE0uwMM+PhgNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8rgYcPABPUs52ZETvirX7g96ng81F1Z3kFjotVb4RJU=;
 b=o9UAN04DVT+msf6jGtDKBQaxn2pKYaxl8Ce/Q6u7rSBNez4QiLfV1LuQQjxRgIa+zjZCySnWke7ZDs9LNYkzI+7zwFGCLs2ZjnKmNwwUUaeIxE3wHFd6ZXe/pgUNjzYTR7+4gBcZcF1ZEzx5urmtbn1/ZsJtYNhyPvqoepwrJZU=
Received: from AM5PR1001CA0052.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:15::29) by VE1PR06MB7006.eurprd06.prod.outlook.com
 (2603:10a6:800:1a5::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 11 Jan
 2023 10:01:26 +0000
Received: from AM0EUR02FT035.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:206:15:cafe::a5) by AM5PR1001CA0052.outlook.office365.com
 (2603:10a6:206:15::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13 via Frontend
 Transport; Wed, 11 Jan 2023 10:01:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT035.mail.protection.outlook.com (10.13.54.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.14 via Frontend Transport; Wed, 11 Jan 2023 10:01:26 +0000
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Wed, 11 Jan 2023 11:01:10 +0100
Message-Id: <20230111100111.677018-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230111100111.677018-1-johannes.schneider@leica-geosystems.com>
References: <20230111100111.677018-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT035:EE_|VE1PR06MB7006:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: dd6ed326-c7cf-4021-8c84-08daf3bacdb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	GSjs4D6/lv2sj2JGbatArOKA5EPYzOBBtxpr+1xJVvLMmkgNxLSrgfQ7HBZ9sabvsXxLTyek0Yvmti71xE7V1lFCccgxMShGWucB2YiDFnhiPIMg66RK/j55U21lBKSt1DSqXfPljRy1uTVuESBvdbroRFjWKNfm23kwdNHwPvoptsF1NDl0/NLjp34pVMOEPYjoBPytXqpTp02H8+BXEkc3V4qnRoTPKRRjL1wSogMQAaTVSPzfumcqCtVh8eLO4DYPK6ouSHbjOKJ4jqCvLrK0bPuzNLKeYiiGQLEt6WRGo4YmVDVnjRpTp9utVBUAPTQpqV93KhRMaW/8AmPwpl/ruLo5loDx8MFlhuknjRlF7e0tNO6lgxSyZB2mi7JBHeHBvgsSFzdQ/yBJ6fV6MRXFLYF+khbj1HzF67woYXhu0qQgwQpgPXcqQ75rPmyELPljiT2enszYNmmzr1y+3cuBlpXa1ar3fOEO4vjp6ZYx4sXNoOQ/fcKA6Qkiz9EHV8qmvZFVKgf17OQzfwVgQ1ZFs1nTLbjrG00AkzMbecvxXAdUl98vZom/l8HYIZgbhNqISV5Qkk8NYJkLW2ZWe7FnDuaRNFCyJqlUFr5EneOYEXi2Phfk1cTHknHpGIflh9EVn0g+wLfFZxNJRInysl5ZJE74RBosDYVRDCBe51O1dnUosLz329y2ViyP10OXHrl8kf0m5lElvBH8QdGf3Q==
X-Forefront-Antispam-Report: 	CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(396003)(136003)(39860400002)(451199015)(36840700001)(46966006)(40470700004)(47076005)(6506007)(6666004)(6486002)(40480700001)(2616005)(956004)(336012)(4326008)(186003)(26005)(1076003)(6512007)(316002)(70206006)(6916009)(36736006)(478600001)(107886003)(70586007)(86362001)(36860700001)(356005)(82740400003)(81166007)(40460700003)(83380400001)(82310400005)(41300700001)(8676002)(118246002)(9316004)(36756003)(5660300002)(4744005)(2906002)(8936002)(44832011);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2023 10:01:26.5906
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dd6ed326-c7cf-4021-8c84-08daf3bacdb2
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: 	AM0EUR02FT035.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR06MB7006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_020134_198117_47A3BB13 
X-CRM114-Status: GOOD (  10.53  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/1] ARM: i.MX8M: fix typo in function call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 4f24dd4cd4..3cb24df1ca 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -72,7 +72,7 @@ static void power_init_board(void)
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
 
-	imx8mm_early_clock_init();
+	imx8mp_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
-- 
2.25.1




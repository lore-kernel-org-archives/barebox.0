Delivery-date: Thu, 11 Nov 2021 14:42:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlALU-0006wK-JV
	for lore@lore.pengutronix.de; Thu, 11 Nov 2021 14:42:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlALT-0003iQ-GK
	for lore@pengutronix.de; Thu, 11 Nov 2021 14:42:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsZST+zKajKT8xis397hKbMaIU/TBpfJSiXiLvAJvaE=; b=Dj82fPp/VolH5R
	9HWP+Xqs1aN4vWW/iCxABUMh3YmdF8qdZu6k2wiHX+clxhVHBb0aAcb9qxRAnM8l3BiyBEGoRF0F8
	01N+E+jtFL8wk/7hdoEcUUKBd1YfDgWJQjohQ2Yl2smT9b1BD3zI9NHLrq0wti/EPHnz8o1gJALuo
	3x6I0pAyJDir+D33KHqKaR49EWh07M3yHaj4AlCp/7clyzxiRIUIcpGlJiabrNr8WXgZHzrCp4I2F
	+Do+SngmelGicOtqFzRzETVCP+QdlB2YQSL8CkOt4cALeCx+zkm+cG99p5n6DIViy4vllT7vv9gPl
	9fBlElCKr4PdKIe1S3Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlAK0-0082XZ-HK; Thu, 11 Nov 2021 13:40:56 +0000
Received: from mail-eopbgr70083.outbound.protection.outlook.com ([40.107.7.83]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlAJu-0082Ve-Qs
 for barebox@lists.infradead.org; Thu, 11 Nov 2021 13:40:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WB0yQAupHy3p4ZqgUyzCXnp4Ia9spQrUFvIzBXSQkUMV6X7lLL1am8UQghwMC5riPDhDXeku/ZTa2o142oH7Xqvd8rAP8tks9fYdubBG6JRCURBh9poTLoahPHXBbVTlPBXx7zNN3HyYBrYSz+0G1O8zLpWX09DNBYQuKkCt0GgV9T9KiEBZ2SOSOuE5rt7zGQtExpy7j0wcOQ0EkCArp4D+SkNRhwOYDHMIaNdJmTuxs4GbVIZtpjRdJLgO9McE5sJn6+Y8jbv8ooX+0/suSrU8yRd7FsJuy1LSRKiAciLOJ+691i38QWCUpcDh40Y0OgjJW565t9TedLHG15T60g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qTP1l/EHXXY7U48tfS1eZm0BUB7GiUaWhwaoKGY6Ris=;
 b=kSpLXn6oah8hD7v7wj1T7W95gCAMBVr+X6nqKyKK78t6Id0KZVz1MmtVK9UBn5pRkENmD3ZIBvfsBF+v864tcmbX1pI4TkrdtVxNvwvZkFSYVaphMhJOd1C86QqzrAi6ApOYYJMaoo0nRryrhXAjrlRx9Mrma90RkDoMHdR5CZ1h3x446lLGzY3Yhy4SY5RDGTwb6UgBH2ZPpsgqLD1gRELM+Jy6iH5boRAEqf2ed/NYsQwGFwofRdLqx3CtuH6IP7ljHg1F5vC5lOZ91hVouNu3QSVbXgFiIewLdNaRjvd+6t9FWFaxgANozpPlqkBjT6qBOTiO1KkHt178hexrbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qTP1l/EHXXY7U48tfS1eZm0BUB7GiUaWhwaoKGY6Ris=;
 b=n5jNQk+NyyuPUtIXbhCpHtSwMpBMleHHRNXxKNmbYDNNgmAvt7LZV7NS79XEnmu3tt4Ds2/p0dauuuMKoBxPQA/lm02t+KIAI053TYU6ClBeMGKObXyLlTMnCPNVcJXqF4GOStCfjIQqeFzhUy8GrusAfTn+hzL8iq7I4/wWrwI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6874.eurprd08.prod.outlook.com (2603:10a6:10:2ac::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Thu, 11 Nov
 2021 13:40:43 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4669.016; Thu, 11 Nov 2021
 13:40:43 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Thu, 11 Nov 2021 14:40:23 +0100
Message-Id: <20211111134024.1645816-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211111134024.1645816-1-michael.riesch@wolfvision.net>
References: <20211111131116.GW25698@pengutronix.de>
 <20211111134024.1645816-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0129.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::8) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from charlie.fritz.box (2a05:1141:1c9:7c00:2971:328c:3026:3149) by
 ZR0P278CA0129.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:40::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.19 via Frontend Transport; Thu, 11 Nov 2021 13:40:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a59d1db9-7bf8-42f3-db7c-08d9a518db98
X-MS-TrafficTypeDiagnostic: DB9PR08MB6874:
X-Microsoft-Antispam-PRVS: <DB9PR08MB687476B66CC28C65D5E4195DF2949@DB9PR08MB6874.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1051;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l8bJjsP9qU7sHTv0bUXfSJ1Pktp/Erj0phSV+yE9bU841EOQECCYlOZoRNQHy+SOjJrLY5+9AjmUH1HpaXPPeXYDEZdd555HFgUvZs3t5Fw5Xkq/ysvXs6hKzixBZUE5tDzmM+e5Ag3ZfIakjqR/QgqhQS9qfb1NNVZ7efXkEfirNGEhK53UNapLhuZcEx2VLeyK0AapvUyV/AvTHmRrbX2Z/rMf0+/X53piBEvKgjjhT+wlMNlxqcOGoujyTZoqUBCfh9PJLC3dNTepQxZCHnC4nLRSj2wEjZc0Wl8lmAfG/GYrDDDzJDjLTHHtcye4Qm8UWujAaqqh8yfZZW2ZloEbwdWJ70uRQS2hugJWZue9fj/4nCty0GIp1Jplzom7ALdlX4DgHJwJnbt7SigVm9Zqk8npvNQygiiyC7CnNWwYt9skQtjIjeFCtbLXRHAjKDqg8jfXdvGCAqNYYt25A0lb14NapTRJX79JTqWpqrhtOmG0P+j7AhleCc6B7ziGi8SFYr3x1UPfffwLPOZFe4ufk0+OYj5KHNGSQ8W66GoJlKo20No9hCqVYCKp9RBR+8ecsMiXHrnMRUBHbLIiUGiFaQqHaCZ9Bc6DBLDP1U+si2DsfK7vYbNeUuw7fdw3BE04aaojhiV/gZB4Z1c7cA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(366004)(396003)(346002)(136003)(376002)(6486002)(4326008)(6916009)(38100700002)(44832011)(316002)(86362001)(2616005)(2906002)(1076003)(8936002)(52116002)(508600001)(6512007)(6506007)(5660300002)(4744005)(8676002)(83380400001)(66476007)(66556008)(6666004)(186003)(36756003)(107886003)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aJ8H9B7SF5tHYlbMYRfl3nFMQUFw2GLZEeQteXCsQD3H4KE2BNjHq8Ub2ozI?=
 =?us-ascii?Q?QdmWuXbZxtf5qc/ROyfuLCqT2pKIDEzJ/t4jStVc3srTWAg9KCFvIWm4veIo?=
 =?us-ascii?Q?nvCztZFOPbA1CR2RwkUOu2CiFj1+K7JvCbVHQR36lMZ+a/mksbpL/clXgL59?=
 =?us-ascii?Q?eNMj6+lkYFyn++V/3NI1F86vOgZAyOrl9qLFu/75gVbogfXY0ioSCahzJWI+?=
 =?us-ascii?Q?W+hzkjgkHEhqdfks5eJ5A9pCiUWTjI7YVNPi897u3IY2ZPD1WAfQIIKelwQV?=
 =?us-ascii?Q?QL+BhfmkSXnWLVETtM2Neao4owBMw61ED+kUe5bKX1TIs0ces+sTjcmP/05X?=
 =?us-ascii?Q?RyYie1Bae1VbUaDtG6FBPjhp8OI9fZUjuFK1if859lS0IEXPcS17LLZZnReX?=
 =?us-ascii?Q?D7ChslDyZtSjK7VhjVVFXrIfQBLLq0UPG7KpfL825cFUCt84qecLGUhrdV8W?=
 =?us-ascii?Q?7S8znMB8zeRMdX5bu6/T3Iulc8QmZEHwOxWAwwdlJOMirGPs0OdswxovfRgh?=
 =?us-ascii?Q?GsnewPXK5DakDXFzdTwfEUvFm6Ri1CZSF/sogqxC8c8Rj6KCjYVl3Y++VGyO?=
 =?us-ascii?Q?rgJ662svMFnmhx0Dh7+OgD2RlBcXghCzu35x27EuUSjBT/pU52lnINLwyhPV?=
 =?us-ascii?Q?K4mnIGVGg9GZIKjmHfU4qW/eKScnRC1MJJ7rBrzXF9KXWaG+aChevUvldUi3?=
 =?us-ascii?Q?RWqzHPSzYAk5rUTFx5rgJLluV64ZDDMOgsywId/rxyocbe8Yg3xtWfCrDiPL?=
 =?us-ascii?Q?9UkQgmS53qnx1oHhc1C1vN8lDTJk4bgNmwlSDejcU4qJroL2LqpJUGaLz8N3?=
 =?us-ascii?Q?JYGTdCHPSTPBp4kJ5tYKsluns8UD8k+7HOP2X65wC9fOcNQ34pClmeCjXacz?=
 =?us-ascii?Q?oEJExyjbrh6vc2DebCmqqP3pr+EAsGWaVBah/lrF936rfhz1eQ4hlnbbpJgz?=
 =?us-ascii?Q?57PsLM4ZFJuhDlDnYfR8E23cwb4BrVe8xJ8zo3VwZc1JuHEpWEbDZ1nlTdPj?=
 =?us-ascii?Q?PfCLtq3TY1PidaOMK5nTwBDA+IiyGTMW3eXb8dmEGcQ82Cv0RkmdIISQHiEt?=
 =?us-ascii?Q?GQMc1cFhoPNFOluKMe7SxoRsGJHWj3ppx7VJSIiBhMAoOkFTymwBg0K0RQlh?=
 =?us-ascii?Q?a/A0xwItO4+j3dITlbnqqAq4eDLt8cCf+D+jCl/99uj2jgj9CutUUBCvud6a?=
 =?us-ascii?Q?jeAVp0rP/FQr5bGGC7Zz88wCLGEiy5dDzC50MCiM8enLxcB1L5OqzTq7DOTA?=
 =?us-ascii?Q?LhABqlv+snSGgGVHKFISTc0WoCFjy9ZO0so0a4VQDswECAP2OFQix6raxN9i?=
 =?us-ascii?Q?d7HRVmrjmJeW4BlbCAiRMS7Za6CBx8P+mu2fn4wb/NWDYXc7ljTWqhMPA5yo?=
 =?us-ascii?Q?GaUn2S0/xr4AxcI/vSRmezCR8wMG2QbDqZZmN4iOnLfflmILAbDpiISX8XvA?=
 =?us-ascii?Q?kiHfu8S+Mr0nnvgWVUiVboMzq3O7QgBt5qZshHNESt8orGJ2/0Bm0eojaq3w?=
 =?us-ascii?Q?tNUmc8jz2HHymPsDRA65OLanRFPElmAU4yh4VKKzfv/kX1Zxfwg3x/9Zo3zm?=
 =?us-ascii?Q?Sp8mwNszvVtRy2pv7HRpTWaU19ujUa6N8TNEyY42qn7VPrRspgW0IkJE9apb?=
 =?us-ascii?Q?A/501RJsaswFy3eWKIEm+eRw6mcj4X7Z6QkjZSgH+TFXewhmb0ngmut/xJM9?=
 =?us-ascii?Q?xmRcRU1sh8gnyd9rjzryP6N6WMDgo4slaYaYqDDBKvNWPM3rHMa4sMlAKUC0?=
 =?us-ascii?Q?z0dCC5vqbA=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: a59d1db9-7bf8-42f3-db7c-08d9a518db98
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2021 13:40:43.3350 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9pn+9msiL+uhVmGKvk4Rts+JenEi6EJ0CwUslFvSmRtxIlUgScMbQpnJMwjyEQrtkqhLeus34rvTHnlmivnV9XrP14FHvj/WdVebfMmbYis=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6874
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_054050_901499_91C11763 
X-CRM114-Status: UNSURE (   9.94  )
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
Subject: [FIXUP 1/2] fixup! arm: rockchip: add support for the quartz64 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 arch/arm/boards/pine64-quartz64/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/pine64-quartz64/board.c b/arch/arm/boards/pine64-quartz64/board.c
index db2d921c3..981de90dd 100644
--- a/arch/arm/boards/pine64-quartz64/board.c
+++ b/arch/arm/boards/pine64-quartz64/board.c
@@ -9,7 +9,7 @@ struct quartz64_model {
 
 static int quartz64_probe(struct device_d *dev)
 {
-	struct quartz64_model *model;
+	const struct quartz64_model *model;
 
 	model = device_get_match_data(dev);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


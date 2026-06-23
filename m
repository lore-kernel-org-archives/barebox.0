Delivery-date: Tue, 23 Jun 2026 15:03:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wc0n9-0090JX-2a
	for lore@lore.pengutronix.de;
	Tue, 23 Jun 2026 15:03:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wc0n9-0002ae-06
	for lore@pengutronix.de; Tue, 23 Jun 2026 15:03:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=prRTPJVD4ryarKfdbJrOq+PsPFWDRD6OsBpcWVU7UGM=; b=nG25v6/v6f4yUcHupLCaPkq+ra
	7JxKbnjIOhltBL6Xj1v9HhFrx03V5h2vxjhJ0ELYcYHXtez9+l94P/8egRSeATeQFZ2a1PE8Pvc89
	UklcayeCVL7/Yv3khIXnfTjmbeBfIebWB3dNS5ExU1HCxOcQg00sDgRTLAxYalai8TXnIzmB6HoF/
	kLCwbBBYH64IE+DCIZdAL+BT2+tOsU0xJE4OYM/N9Rn3a2Ro1CPMmFjFttRgfnjU3qjo5ncbKuZSo
	yB0QB/rdDdnK+b/YWRai40VkF0chBfSbGG4CTHApTYCHiMYyX0vfPzIKgaYLoGxvhgPQed9zlbqpQ
	AXC84hhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0lz-00000006J7f-2DDi;
	Tue, 23 Jun 2026 13:02:39 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0lw-00000006J71-3tZO
	for barebox@lists.infradead.org;
	Tue, 23 Jun 2026 13:02:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gtCh2hqdJpDPP2U/iEs+mkMKIwgiBS1epVeQZa0ARIVdVdKkjVTIBvf2pnF5eAGWCOBsTOq4Udk7cpQlHh9nVJD7SEnOf3TzS53D6tAipCaYYddPj6P+D+5PfbEkQz1zgqJsWgI87xku9mD13d941a8z+bw2o+0MMZ4bjZgdHVXSu0zQ4rjcfZVOs/p+rRnfhWAw1eX/sv6pXPHUaXckpFBHHhhOruPxtGhVcLHJ3aafbchnipRGmFAFVc4mLp4pjsPFG5SZco0eZBwG4GTKT7e0DmaidQC10Tqb3qJDTmbfKVMC54l0NL4FQ4MnA8fN2JFWFzW6W0MfUK4CQ5kRhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=prRTPJVD4ryarKfdbJrOq+PsPFWDRD6OsBpcWVU7UGM=;
 b=P3D2aPcjFW2LgkcuWTbFObWxzyfim+Gghe2iPFmPQ8eNUUJ2j7WEuvM1CP3JoQUjwy0DaLEU+BDBy2Wb70BzwlpKt1rYr0myY4zy5uU2BxBnVq4Ju/y7xQue+gg1FoEcnwsIA2pA9wWb9vkVpitfmnyYQw+0pra/7i+btfn1VWgg22gjD6cKaAsm5Zc1Obo/5PLlp6oTAhYlCD5veLtaVYY0i/G8xasU/2Gvq8hElsyetfc92VB0iVefUgupUaYD5zfNtizAQCjjkcsNEo4U6tn0idaaIlRJM6HVFEdlh7XjNi9qgqIoRtQXb4fB3dOUqzrxwbe7OQUar9fDNNPHIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=prRTPJVD4ryarKfdbJrOq+PsPFWDRD6OsBpcWVU7UGM=;
 b=uLpip5HYky8EWfAoKT1qIOuqNTZJK33xac0TWqPqnraIX/f4FHMCv8unpamGJt6l31jyLWhAGQKEdJp4Em9cgNLdqkdIW2PA8o/0tT5tmiD6XVWlEZpIf81r1aQWKPstHniWbO1IIw3s+5oYW4sT6pkf040TEr/06/myFYa/mGE=
Received: from DU7P194CA0025.EURP194.PROD.OUTLOOK.COM (2603:10a6:10:553::20)
 by GVUPR06MB10879.eurprd06.prod.outlook.com (2603:10a6:150:33c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Tue, 23 Jun
 2026 13:02:32 +0000
Received: from DB5PEPF00014B98.eurprd02.prod.outlook.com
 (2603:10a6:10:553:cafe::22) by DU7P194CA0025.outlook.office365.com
 (2603:10a6:10:553::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.139.20 via Frontend Transport; Tue,
 23 Jun 2026 13:02:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB5PEPF00014B98.mail.protection.outlook.com (10.167.8.165) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.159.10 via Frontend Transport; Tue, 23 Jun 2026 13:02:31 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 23 Jun 2026 15:02:31 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Tue, 23 Jun 2026 13:02:29 +0000
Message-ID: <20260623130230.3535941-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <8f9e76eb-af18-4ade-adb4-d1deafd6b817@pengutronix.de>
References: <20260619160915.88090-1-johannes.schneider@leica-geosystems.com> <8f9e76eb-af18-4ade-adb4-d1deafd6b817@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 23 Jun 2026 13:02:31.0384 (UTC) FILETIME=[8D2C6580:01DD0310]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B98:EE_|GVUPR06MB10879:EE_
X-MS-Office365-Filtering-Correlation-Id: f3f6da48-6746-4d48-702d-08ded127affc
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|23010399003|82310400026|36860700016|1800799024|22082099003|18002099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 1sO+RDyEvEDFr+Z1KmkU5BkRhZP47xyzC2eSwH0KO4OStBL2CIZtnKVLhp9bhtMndAOlJtNt97V+crRToA8QMVN6He7G8lWGbjP0YYdC0SrCZsV2LMm9iuewOOP/cI+t5NrNQcS6Dc/Xh28lRh7ADVb9Q9RClaYWnBnJewgzg58q7p01Q5F4AFLQFS+oOP4MM/V4K1g6UVzLukwTR/Du5O8+BmwHtYnGG9USegrRcmmSllf/YC/LNrFS88/wKadlZsFDx0UXmlSAGJ9j8fkRtr3o9eGEUlbpyoGacoAsB5sOn5uxvUqWtOlqdIXqCmu9m1gF93b+P0RTNsQZYtyiMu2xJJ2akYsFGe12ZIs2SnHFPIpVQ3PcKS1aWyUBMACPdPw0s3aQaeLg6WnwRslqcbQULF7QPPTF6SuEviNY3x4kF0QSMTTN4e5ziCnMrvCPhq+RON7N2XAzptqRi6F5lH+kFHa4Yi6MMO9Kb2osdgmUTYKlHSivSiqg4bLnaxQFRDtaqQSU5vEVfcVtWlQ9xgYOB9A+EmZbKu9Pl/dNJg3mFxc76/1QRPgQVN3rG1uz+Lg7HE/xMy4dCyPruPM0JBRGPGLz1ICe2d+cV2OrXY4Bh7aGsP4u7L13mW3dU7dpLXECcFxuE1HtkP3Ow6883p9C6kcwOZOLVsqkcucmuWZSptca0TYY1COpUhA9LcShsb4N3ZJQmonNvDFywlxxmg==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(23010399003)(82310400026)(36860700016)(1800799024)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: AZJuM1vkSl2AUWbL+04eWhSJq7WeICawQtHJJLMGhubZjwPAkS95R4AOnI/wFuva2UA/zI5y25AGkkbB2HpUoNnls6plNwu8aMnNfWSykKv5+78UOQzBZmBf/68xomQd+UUMgYonGrpaZ+IgqD7nGgUEE/fJHFgAWe0DvZ/5OmOpLal6tDvJtDEiz4DbYBEKHeVTnwRwnCQqfgk2yyls5Kyqnowdca4ojFeis+jbgPr7GU7KMOvCXdq422v/anhiLW/Wb7EsLHT/4GNV4wSdGIs8pyfMj6l8GmUdDRl+GSeRK66O8cUw25f7/v2E1YF6DVNe2iNnOoOIsOlixUmEfltkhIaUwkyu6ImfyqyYP+hXzq8SrLPVHGU57XikFSJrSOWghiuPyQ72jXR7el7fwJ12Bj60wUiLHMF6dFkn9PrixUreLSPelgdQDZvn8VTF
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 13:02:31.6511
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f3f6da48-6746-4d48-702d-08ded127affc
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B98.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVUPR06MB10879
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_060236_980077_F25F1842 
X-CRM114-Status: GOOD (  14.36  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC] mci: imx-esdhc-pbl: enable ADMA2 for i.MX8M BL33 loads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hoi Ahmad,

> > On 6/19/26 6:09 PM, Johannes Schneider wrote:
> > Add a generic sdhci_enable_adma() helper that lets drivers provide their own
> > descriptor table (so PBL builds can use a static buffer without dma_alloc),
>
> On Rockchip, we already allocate an early malloc pool. I'd rather see
> that we do the same on i.MX PBL as well instead of switching over to
> static buffers.

ACK - early malloc pool rather than the static table, if this comes back.

> You also need to watch out for cache maintenance when you do DMA.
> Not sure how much ends up being empty stubs when you compile for PBL.
> The code was written with the assumption of MMC controller being
> cache-coherent, which is only the case when caches are disabled.
>
> This means:
>
> - Explicit cache handling for streaming DMA
> - Coherent memory for consistent DMA

Right, and the generic helper would need coherent descriptors + streaming
sync to be correct on any MMU-on PBL.
For the record it is not what stalls us here: on the i.MX8M PBL path
the MMU is still off during load_bl33 (we enable it afterwards), so
the descriptor table should already be coherent.



Gruß,
Johannes



Delivery-date: Tue, 16 Jun 2026 17:12:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZVTC-006Xd0-2z
	for lore@lore.pengutronix.de;
	Tue, 16 Jun 2026 17:12:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZVTC-00055B-8n
	for lore@pengutronix.de; Tue, 16 Jun 2026 17:12:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+5kZJK0Y+7emkzbCLCSPYOqgne05ANkSky8ZL9rMsa0=; b=5DkDTwY6oJRUoqvu5vQZJ8pJOr
	mv0DIOHNKcjH+LY7AlrGuy237L+aqcnjjeWuDKObPCh3B/APepZ2SDTWQKmYgXNJwuy3rtO0IB+if
	hjkKLt5ZydajRpW0omczJP5gFux0RqqOq5aETlRmm7Xov3wB1x5crnTDSUNJR+4Lqdwq/v1BES916
	RiTzItWWdNjujGRBRuuq9E0bZE3+ndfGPzpaxb/1F9+UOpyh3bsdnL93PVozzFJaW7vQovAZkmCPT
	JuKek/J7Qb/YGRt3AupnDMZEf2EEvsLbw/ViqqisIScbQpK4Jpo45JNQ8v1QEAgZQfxV9EBIEJuy3
	Usiu64JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVS5-0000000Fz9l-0DSH;
	Tue, 16 Jun 2026 15:11:45 +0000
Received: from mail-germanywestcentralazlp170120004.outbound.protection.outlook.com ([2a01:111:f403:c20c::4] helo=FR4P281CU032.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVS1-0000000Fz9O-3CUS
	for barebox@lists.infradead.org;
	Tue, 16 Jun 2026 15:11:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LjHYGwsNqE+LQBq7/QSGyhpFIOxLPKZbDNQr07hn1uax+jSqLXKn5b6qfJ+xFk1GwX7x8MFXdwrNW7/m/ftrds+rEDp4PqvsbB2fNP6hftnzrVM2IUieq0qMRfa538xN1sNLsTL2a9RUUS+KBcHkutpspJQ2aZwFJp4YMM4e2HVnTQ99ApXifS2um9H+YCJnYpE/njGdbFM5MUMEc6BJQKZXMw0csVwYsVZBeQ7e+jto8bE1X0poQMhniWZoHawZgAXZ+fgpDclmlMD3muvPXhvoxsFcNOqcTOSxPS6ucpOOnLtS8BTQvqblrIpS3wsrOgaJEXGsuEpnwJ5pHZhTPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+5kZJK0Y+7emkzbCLCSPYOqgne05ANkSky8ZL9rMsa0=;
 b=CrCWKRv+FO3T1Xe9+UsZ1QCbNrLzEHDGSXrstJxwA6fJIj/EW9vf5u9g1UXqNp4Y3OiZMyPO6fPzReGa2sMvBDRr/GC6Av/7eOrGjDTQ7ugyPWIF8r8Lti5vGhHr8CEzByNdiSDZjeHUVXqAu6dL+M9sNBsxShvL+O1oJFxIJLaf4aaR0eTu5kmm4EpICOXQ9ij4OXY7yeyDK+IRlWiIq37chcxYHMTZHZsZ7uceoJCALsnbrrAAKHAeoABNFUiDJJlg45uAUpyvye6anWZFh5Sr0W3T1Vxf3vqpgKsoUgc7uHwZjG7HH2t86pVyw4XyxNQv17HoNiAdqjS799KDqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eckelmann.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+5kZJK0Y+7emkzbCLCSPYOqgne05ANkSky8ZL9rMsa0=;
 b=DNbirXhuAuLslzq14dlLlkHN75cpxDwcbf0f/vpLa9mbDVlkcRxRHU3idck9WWSl6F8WDOQ57nT7XQEkfCsR5Z4Y1QwmpI+hx/xX/LBk1RwbtqultxORnl5mj60x7VlXm9HlJINW/wgdZA3d9R0AIe4brSRCWBLqX1iYDFzTwY0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:da::13)
 by BE3P281MB5871.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:fb::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 15:11:35 +0000
Received: from FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 ([fe80::b702:622d:f947:9d55]) by FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 ([fe80::b702:622d:f947:9d55%6]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 15:11:35 +0000
From: Thorsten Scherer <t.scherer@eckelmann.de>
To: barebox@lists.infradead.org
Cc: Thorsten Scherer <t.scherer@eckelmann.de>
Date: Tue, 16 Jun 2026 17:11:27 +0200
Message-ID: <20260616151127.17557-1-t.scherer@eckelmann.de>
X-Mailer: git-send-email 2.53.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR4P281CA0125.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::13) To FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:da::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: FR4P281MB3510:EE_|BE3P281MB5871:EE_
X-MS-Office365-Filtering-Correlation-Id: c8ddc234-e5c1-441d-95ed-08decbb98e64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|1800799024|366016|376014|23010399003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: S79czGhYgeeXmSlOuTZZeiY3t9FUIRXgN4IimaJyh2HxOe6+6KgPMIbBgxT+XwAAQub6NWg3LJ8Y76dMHS9OHqjJkA+MrTDamDlILC26+884cUXuQKwDBY7jAODyrcx4n1GKeZ8FTBYyH6Hbppau6y61JUXlJwH5J1RPKzc6mw2zoObMBClG5d6VNc02XX3CnA2Bbaapx6R4whxcUJjkyd+mJ9FwpYcyimaXhw2QsOV97xpezm0SLmDPMzQPvPj03l1yDoNRxJCsGP89LPfvecFLwQKJeVd8tDFR0D5gce6LBacMOx5YfZc21e/Fhc//ZCNlj6rG+ofvRKEBEiPIZiQlZh7KCQd1rEpIwoIImcDGzUk5AmHjmSd444KNwnH7kST1Uzfsm+MT/vJtVu7lB+C8jiqmPT0lY5GNUmHCkoyDiHN3gaApL30lcrOc4trbVvPH/GCYX+Bp56QTAMSwcFnMVJ28P/Z/2Gml1rhAGPGz6M+OQ2rmRj/JzB5WD/Sq9RTqkIYkCgRIGgopzb4ATO9v37b+Pj70ONinxFDnTnamoJbolW8/tc0Uy4PTB2pHr1R6iEu7iMva1BhWmeU0A4nVs3luExI4EBXz42IfzZWPSQ3UKFCVHjkia4/DLHTsg7wdUB2gjHEFcWdkvF/otUJA6DknQZpI2CbWIlQvpA/Nw6hmpzgJry/J5E3Ttq5X
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(23010399003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RDVCnPClBUTOg962Sx0AHPd4EyDmmyIuLX2JsmeYOa15q6EHdrlvdUGLdfOk?=
 =?us-ascii?Q?/NqqDq82Ggder19CtL7fUJLJmXBBX3bS5Zz5TPjNoknW4dGdzuA4TVFaqqzr?=
 =?us-ascii?Q?F0lr1/1oppKcWWwaFRh2ko7DluQZAGT/XucSUX/plDi06L6KogrvD3QUDm2R?=
 =?us-ascii?Q?oo9e5w6Q9gL1F+4v/1VJqq3/M2BVkqeyIY1pMxSkL3uXCun+yfMmDC+ohQSA?=
 =?us-ascii?Q?MEBcCweSmw8/Mw50Jrh9k9wlbQSFnGlM84+znovACpEp53Q7zkE7ZevA3tw6?=
 =?us-ascii?Q?G1s9X0MvINJXk/lesgTlnTGMSNod3lmPg+ntQXfiTj5t4OkKPN3FVhh2XMiD?=
 =?us-ascii?Q?iq4S/pCqoXMC5H37eyZ/xWUa6dh8DpdDw43nQ94qQ+JW4cOPC51WjphSeb6W?=
 =?us-ascii?Q?gNk4tOu/LCP5jsxYycBaz4T8AlChkagfmJK36QTqEF563cWQQhHChf/QX3TZ?=
 =?us-ascii?Q?FdFQyP8J58zzq2VSgTgcDR27n5mgFcC8Zyb0sJvoYD94r4Z7AdunhHZBD24z?=
 =?us-ascii?Q?0y8MWm9v+lM2nEqjNnIlstO03GtyFuS5weBawoBUn5lhD73AlZYflgQaDJwo?=
 =?us-ascii?Q?uikjgHs/9HhlNe9RCD0HclMBoB+ROSqG7uu0D4GzB/uTGM1cGTuToBzTBVfI?=
 =?us-ascii?Q?dUNWMIOlVZC8gFerMGH1sdaRU3l1fJenA4wrGvaZ9Eh3z1z1QGnDXXhJ8e64?=
 =?us-ascii?Q?2uK151QyX0JOnBqkERTRsWl6pWHQq8i3ePt3V70gBjbBBu5ui02rlt5goacS?=
 =?us-ascii?Q?A2g8/Vc72xhWz7lsw5kt9O6Nc3CQynV0FfriLwzavDJxvLG/VCim1C4GZCNl?=
 =?us-ascii?Q?xsvd6gGXVDWIdFEWHoxCw9knt+q0zYFouVfo9mJnJ8BJOvcGqspfRBHzfw7a?=
 =?us-ascii?Q?1mvXkGA8n7Gvl/IlYe7nvtpRyLpL4VC9VizaWEd4OgCClBKAFD5EgzL2/Kkr?=
 =?us-ascii?Q?2zXOJP3SC7Ap2hF+MMVfxyiRCvf2tb6aFhwnDMuQUcxaJoiuNnqj95Tv3tKE?=
 =?us-ascii?Q?HyuyvYkbqATBRSbUISPokn02esPef9OHLkV3/tGY8AtRV1Jl38SU8vO2xArj?=
 =?us-ascii?Q?O1Mc1uGju9Nc05dTMyF29PHxgKt1F9b22i11ImWXo/WUoc4MVIw+OxF1ke50?=
 =?us-ascii?Q?Ny+4kpMY1+EP+HvuOQJQrSWryLp5L3zSoB8qdVfjoP0kYk0gZ8W2Q0y5Qtcj?=
 =?us-ascii?Q?r7K4Dfext1kXQvFyELJ95d0lUWjLGPbBXbmsqLKSsdzYW6Wu1hRLeXdQOmJ3?=
 =?us-ascii?Q?0ypxJ89vLStbp+PdAASMB27Y9Irs0AZtCRVUK6482H8tqbqPvktTcTnunTJS?=
 =?us-ascii?Q?L3jNm3aVSui5ylxO96J/kd6D9ilPvt6mAv4tOYKpTwpAAgnJ7VrmfbSFzS26?=
 =?us-ascii?Q?oFw+VMSqLXVvE+4e0G1yTJVQr8BgDzwrvHsq+9KOLeJexkHWWKta83bHaKa9?=
 =?us-ascii?Q?SW+bhyV08z1FjKzi2He1hDmOAPduAtk6jiaTxIH2HJiONT5hKawDlAJd5e60?=
 =?us-ascii?Q?NYTsLKwFaVQG+4/T2AXUBx6uiaBr34YI5hNkkPayVfdmYenkg6Yo1OGCW0mA?=
 =?us-ascii?Q?HajWbwJ2Iqvh1ksiFEBW/3gicl92akho7M0RkoF4X8vSoLZzMjLrX1k3sl0g?=
 =?us-ascii?Q?BxcI/KYNbjxzcByCL4l4YMe3TS9lTIc2u4gWJkexzfiBM2DoLV3qlr/MI7pg?=
 =?us-ascii?Q?YEK/7oSsXFHVD+Ea01zpkyYWBRtayKfeIu/JaNW2VsL/wyLqBconor5InaQo?=
 =?us-ascii?Q?2aFOOQ1aMGRIyrQ9Vp2k2zrWS0l4rtoMJKfDNyAVmod92ez6L/5W+u3ExHpU?=
X-MS-Exchange-AntiSpam-MessageData-1: bakl8xqNm0xV8A==
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c8ddc234-e5c1-441d-95ed-08decbb98e64
X-MS-Exchange-CrossTenant-AuthSource: FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 15:11:35.3081
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6jQ8058c3+LM4d8KNFl9x0vxO/aX+t9yC/A27KX6WeOioYthKH71sypP/6CprFVZ78n8DBlQ3nBorOtQX/11QQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE3P281MB5871
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_081141_898331_AF1D9F1A 
X-CRM114-Status: UNSURE (   9.31  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: Layerscape: Fix typo im documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Thorsten Scherer <t.scherer@eckelmann.de>
---
 Documentation/boards/layerscape.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/layerscape.rst b/Documentation/boards/layerscape.rst
index 5791b8632626..1467314954be 100644
--- a/Documentation/boards/layerscape.rst
+++ b/Documentation/boards/layerscape.rst
@@ -27,11 +27,11 @@ The barebox binary is expected to be located 4K bytes into the SD-Card::
 From there on, ``barebox_update`` can be used to flash
 barebox to the QSPI NOR-Flash if required::
 
-  barebox_update -t qspi /mnt/tftp/barebox-${global.hostname}-qspi.imaag
+  barebox_update -t qspi /mnt/tftp/barebox-${global.hostname}-qspi.image
 
 Flashing to the eMMC is possible likewise::
 
-  barebox_update -t sd /mnt/tftp/barebox-${global.hostname}-sd.imaag
+  barebox_update -t sd /mnt/tftp/barebox-${global.hostname}-sd.image
 
 .. note:: Some SoCs like the LS1046A feature only a single eSDHC.
   In such a case, using eMMC and SD-Card at the same time is not possible.
-- 
2.53.0




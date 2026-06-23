Delivery-date: Tue, 23 Jun 2026 15:03:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wc0mv-0090J3-2D
	for lore@lore.pengutronix.de;
	Tue, 23 Jun 2026 15:03:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wc0mu-0002J1-PE
	for lore@pengutronix.de; Tue, 23 Jun 2026 15:03:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=siFwOxTSWO8UkQTwqyeUqkqNhNqaGgCNaLrpnrmvO1U=; b=NwP/INRNnhV0Wmt+CnJ+fvCpDV
	gUjizuiope6NqNGIZWa13sAI0oUJSk5i3nubhCCNb5laI9XCIMntbab+fgByYAgcbws3pyTrdkcPz
	bj7g5rsuC3ajt1icwWd/UvPqdl9VGWUpIHyvIX+YJpXaCRvQhQwjvf2hjC6HiGS8A9ljsEbQOScbV
	CAhEuJVEWYrE9Ee0mLOa1erYyjQ2scxaiaFkRZZBd4por5hrXgzyxdxBxPn5UyAhkN056XONxc2QD
	bqROMY79IUFs9r471kMesEWOIcxv2xwHQBohQh2EhwhiZcXbIO+n8kdzBZda0qnt0W0XXonjh1fHN
	sp5a3QKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0lT-00000006J3Q-1k1n;
	Tue, 23 Jun 2026 13:02:07 +0000
Received: from mail-westeuropeazon11010019.outbound.protection.outlook.com ([52.101.69.19] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0lQ-00000006J2a-2qlB
	for barebox@lists.infradead.org;
	Tue, 23 Jun 2026 13:02:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m5YWMR0Tjz/HwAsO3n5Mx0T+YLr0dvaCjhvE+IdPYgZ3myO2/xVcF8iMqRp6zv5wt8HEiVi1TJ+LbNIMb7NuIl1BrNTNwAvPXCb4VPPw0k81lUyqjrcLRn1/imKzbMlZyN3lr4EBpn/NrM+ZJBK9FTLdNj791Up2/NffwP+nM1BKvgAd21s6JjzYbpiRD6f9BhSGeaYSw8I7m3IfrVWRVjJyTV7lkB72MMOCYQa7pjhGi5iZpOwypQ72MYvB1B4CAHQCy3pSMc50k28QcWNanmW+dJTZQZJwVcWYbx/0mplToX46P9chYdoDUdva339iZwwCL3L0No5jcUAwtvLzhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=siFwOxTSWO8UkQTwqyeUqkqNhNqaGgCNaLrpnrmvO1U=;
 b=hCvfts7Jni22DSct1a/teMFAkwC9IITdNLruPXHRpc2neIsrw1lDue0saLQ8f/flDza0rVPOym3ooA+Hrdb6mvA8xqhK+KgSYuk5SGAm31BpAKbkBF7MgZh9j9K5hJk0nfECgawntFM6s8ixdorskSwlfUSqc6Ciex3gzJExrM//883TMnEUVY6/5JM/31Ftf3MjVoj6z+NrwiUGcSzKD4xB1LGcvUFI8iCGczPZLZQzPh7I30XeD3uqM1iGuP4bGPjAz86dhXYbr+/DnW9EwQhby2QnZdbr2QhstConQksUQhwQgoLhXT+1S7DYLzp6Z8i18EqZAqbwnMQhJwO8xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=siFwOxTSWO8UkQTwqyeUqkqNhNqaGgCNaLrpnrmvO1U=;
 b=TEOsFwtbtUhRbyVD/hH7MsWF6TAmV3OdNRBSG454Iy7PCBlKhMD73d+DXRg89PIZHJHsxQs6yCmHvZUTNVRByzPoJMOybGydd9AUESz/t/9zbHlfH+Po4enI8nhpd+zRFf5wQVzNv5qA+u/iLwwhfYkAbvhDTUSXxDw6F7ST4Xw=
Received: from AM0PR05CA0084.eurprd05.prod.outlook.com (2603:10a6:208:136::24)
 by AS5PR06MB8837.eurprd06.prod.outlook.com (2603:10a6:20b:67d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.12; Tue, 23 Jun
 2026 13:01:57 +0000
Received: from AMS0EPF000001B1.eurprd05.prod.outlook.com
 (2603:10a6:208:136:cafe::af) by AM0PR05CA0084.outlook.office365.com
 (2603:10a6:208:136::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.12 via Frontend Transport; Tue,
 23 Jun 2026 13:01:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF000001B1.mail.protection.outlook.com (10.167.16.165) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.159.10 via Frontend Transport; Tue, 23 Jun 2026 13:01:57 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 23 Jun 2026 15:01:56 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Tue, 23 Jun 2026 13:01:53 +0000
Message-ID: <20260623130155.3534907-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <E1wbYoc-00000005eGZ-2Q1s@pty.whiteo.stw.pengutronix.de>
References: <20260619160915.88090-1-johannes.schneider@leica-geosystems.com> <E1wbYoc-00000005eGZ-2Q1s@pty.whiteo.stw.pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 23 Jun 2026 13:01:56.0944 (UTC) FILETIME=[78A54500:01DD0310]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF000001B1:EE_|AS5PR06MB8837:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b188312-2799-49aa-2aaa-08ded1279b6c
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|82310400026|1800799024|376014|36860700016|18002099003|22082099003|4143699003|6133799003|11063799006|5023799004|56012099006;
X-Microsoft-Antispam-Message-Info: 2LmtAqN7ah6YkBiLB42WrW2/R2C7MCguusVZyVvF2psIkQ6diaow9y88CxtYrdMxMCXZHkq/DaQlLh7aaq6++7JFIjWYqlG1O+85QGE2H8Yhagan4H6/2V4sE9uuQqtVzraRhxFf2Y4QnuP8emmUM9RglcMxVJ9Z5AsTvkj265xa7+QotimGioyXnoBMjS6QGstQSHDw72q+cKIOEa36U3xcgqPltNsJ5a+wcTPvSgUbrUVK3AnKSgTbO+wsKMnNEMSgOss5aPmgqTIYXHDbJF4Whd3BVJIfeviiTGAnr2ET216hYPOiE1xYY2QDIlyaFob6f7QsUQqDlEKciH83I3y2TcfQYykFAnrlmVT9LXk8wvA6mjCysSjrY+64YI0f1wKAaog0QVK3OZzkeTjkuPXy5p1j9PIEg+3HlaUeO8ZV4t5u4oeCRRvXIXejehc8Yic0MwaKIVNpFK18jqUgMZgIg47OWoEeaTTtFCFUSyrxoFYYozrg8yh7swcDtNpbGkzI+RGGaDUrcT34cEzw9swELaYdQkWw2cGcl0odHDK6ZPabEN87qx+5eVPHNHlY5UhyGhe3G2vdhoshre881vhutl0l9bCPStBhnqcUpwxI2liORyR/cG7ptrhj8GHbQDgLOTURrHy4xpYNoPg/CdAGiePF7qCf+5pn16D4lMlK/EoqMrZ0PolX3M+OVHD/Nu5k8PpddlMvJwyc9iB3NQ==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(23010399003)(82310400026)(1800799024)(376014)(36860700016)(18002099003)(22082099003)(4143699003)(6133799003)(11063799006)(5023799004)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: h7pFOdPoranGW67ZFzCJh12pbW8nNKRv2kzenfaiREeRM09MKGk39EcnqMU855lGiVZQZrVFc4t2QjS5N/Vhi5ARLB5o33wF/UIbMm2PRqyAo8novt9C6jA0WuPUAPEKfCbR0xJXzBSbrNqbW4MNJWOqf2iMakdvm6LqfZ3vtQAEPhZkEb6KPaIDFp6fU9KB5L904BKQH5o8wmzsIMgqzXx+VPsgRuifDVbEtjM8DxU+neMAh4CRe9ocBt5ri6YwdmT4jGhMYn8YQncUpHO7qq04Z76gC8kjVh3xgDtnh18CkOUUsgrtjX+AP9zu4fHKkC4DqwCOJ7Xf17UbCIcbI7J32FxoB+CPDIVXIiSDTgWiJJXvkz8LQob5d2sAsDtJz9vwou7IPuR4S/fAjmflTQcK0IDk8aTwkxbKchSietZnmvzJj+OzUW1GQPfN+R/z
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 13:01:57.4308
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b188312-2799-49aa-2aaa-08ded1279b6c
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF000001B1.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR06MB8837
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_060204_763735_D6692A5B 
X-CRM114-Status: GOOD (  16.64  )
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

Hoi Sascha,

On Mon, Jun 22, 2026 at 09:11:30 +0200, Sascha Hauer wrote:
> > 
> > Motivation
> > ----------
> > Current PBL i.MX8M BL33 load is SDMA-based with the SDHCI boundary-restart
> > loop in sdhci_transfer_data_dma(). For a 32 KiB BL33 transfer at the default
> > 4 KiB SDMA boundary that's eight kicks-and-restarts. Measured on a custom
> > i.MX8MM board:
> > 
> >  Boot timeline (from power-on):
> > 	 BootROM:          1 ms
> > 	 PBL-init:         3 ms
> > 	 DDR-training:   262 ms
> > 	 PBL-load:       819 ms
> > 		 PBL-pre-load:    168 ms
> > 		 load_bl33:       645 ms   <--  (SDMA, ~5 MiB/s effective)
> > 		 PBL-post-load:     5 ms
> > 		 BL31-early:      114 ms
> > 		 BL31-platform:    15 ms
> > 		 BL31-runtime:     98 ms
> > 			 thru-OPTEE:       98 ms
> > 			 post-OPTEE:        0 ms
> > 	 barebox:       5654 ms
> > 	 kernel-init:    111 ms
> > 
> > barebox's own runtime imx-esdhc.c driver uses ADMA2 for the same controller
> > and gets the FIT image off the same eMMC at expected speed. ADMA2 in PBL
> > should match.
> 
> You lost me here. ADMA(2) usage is gated behind the SDHCI_USE_ADMA which
> is set in sdhci_setup_adma(). Only the Rockchip driver calls this
> currently, so imx-esdhc should use SDMA also in barebox proper.

You're right, and my cover letter was wrong :-S
To be precise about who uses what:

  Linux sdhci-esdhc-imx : ADMA2 + HS400ES @ 200 MHz
  barebox-proper        : SDMA  (sdhci_transfer_data_dma(), SDHCI_USE_ADMA unset)
  barebox PBL           : PIO   (esdhc_use_pio_mode() is true in PBL)

I wrote that *barebox*-proper uses ADMA2 - that was the mistake; it is
*Linux* that does. barebox-proper uses SDMA, and nothing on i.MX uses
ADMA2.

> So you have patches in your tree I haven't seen yet?

No, nothing unpublished. The ADMA2 reference I was comparing against is
Linux's sdhci-esdhc-imx, not anything in barebox. Linux drives ADMA2 +
HS400ES at 200 MHz on the exact board this RFC targets (USDHC3 -> eMMC):

  # dmesg | grep mmc2
  mmc2: SDHCI controller on 30b60000.mmc using ADMA
  mmc2: new HS400 Enhanced strobe MMC card at address 0001
  mmcblk2: mmc2:0001 IM032G 9.70 GiB

  # cat /sys/kernel/debug/mmc2/ios
  clock:          200000000 Hz
  bus width:      3 (8 bits)
  timing spec:    10 (mmc HS400 enhanced strobe)
  signal voltage: 1 (1.80 V)

so it is a PBL bring-up gap, not a silicon limit.
On our i.MX8MM board, PBL load_bl33 takes ~640 ms in PIO - and this is
what i'm trying to lower ... somehow.

One step up would be SDMA, but that has the problem of the SDMA
boundary field colliding with the 13-bit BLKSIZE, so the boundary
cannot be raised far enough and the engine would end up restarting
every 4K (~340 stops for a 1.5 MB read, which makes SDMA ~= PIO ?).

Therefore i directly "aimed high" at ADMA2, to avoid round-trips and
load everthing in one go - but there it hangs in ST_TFR (RFC body)
-> what might i be missing or have overlooked?


Gruß,
Johannes



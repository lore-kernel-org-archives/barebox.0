Delivery-date: Mon, 17 Jul 2023 18:56:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qLRWj-000n9G-N6
	for lore@lore.pengutronix.de; Mon, 17 Jul 2023 18:56:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qLRWh-00076m-0J
	for lore@pengutronix.de; Mon, 17 Jul 2023 18:56:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d+rQ1lYdmlwASzrdg5LakgsuoM3IWSjJ03SntbTHun0=; b=4aaDit34IFeDj39SLogLLpOItW
	YQZqidDO8X4UWIKOLokSVqbZfpCCzDBnpgUpTRr+xeRiOTzRuHXtVNEiT9lb11dfMLTKiowxqw6pZ
	U7+JIlkZyROcuVBMTu83NAVmmnbzuqXKP8n4e+2C6kTneuZn/86a5hxK9n2f/F5HPus1YWmDInRM/
	JAV2c0joEKrKcGYSEweHKwZJLi2iJFsmA2Nd6aJ8zb/yh11m4gm4evreeyWu2fi8Pi4jtlpxepyKH
	XFSn6sNYPU+7++umGjr/sIA+pcLsouNfLeeCzxv23DP37C5qDOjLcZq/NG1ihv7piuH2wVRSG8JOb
	YdkDt0TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRVG-004bIi-1m;
	Mon, 17 Jul 2023 16:55:18 +0000
Received: from smtpout30.security-mail.net ([85.31.212.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRUn-004bE4-2w
	for barebox@lists.infradead.org;
	Mon, 17 Jul 2023 16:54:53 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id A812F8A3D69
	for <barebox@lists.infradead.org>; Mon, 17 Jul 2023 18:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689612885;
	bh=gv0HT7hdHoObp460LJj+KC7gVa96hcSticQ7Z4dVBSo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=W3li/nPCFUsVVX4vVo7QLb5D8fl0+Zeq2RREKzJv4Owid/Hs/biFf5w77Ea8OIOc9
	 bRBGK1Ucb4tlQCkq49BTQYqhmulWu3SX7sPh2mfzNW4z2UpFweAkitMbFoL/b+fM8+
	 75Md/sY0vm2vW/DTSMn/WFwB53SktsvgcF8OGZLs=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 8D0CE8A4385 for <barebox@lists.infradead.org>; Mon,
 17 Jul 2023 18:54:45 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0102.outbound.protection.outlook.com [104.47.25.102]) by
 fx304.security-mail.net (Postfix) with ESMTPS id 234578A4116 for
 <barebox@lists.infradead.org>; Mon, 17 Jul 2023 18:54:44 +0200 (CEST)
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15) by PR1P264MB3327.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1e::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Mon, 17 Jul
 2023 16:54:43 +0000
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7036:a43b:43f6:bca]) by PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7036:a43b:43f6:bca%3]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 16:54:43 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <cea7.64b57254.22da5.1>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TC0BbVIWj3lPOkokXOGoz1dLp50TpF3j0KrQ1UPi/unHPrgRoyhwIB+cOw2pEoLU0UwqXehyZwv7dBWpxx38fUGnhcSGSHsijz0ERcAQ5V/kv2MZIIp8ZmzRJJLi//vpTiF6Ig1bmpp84MaNyQbOeRMj5oSsr8VxIar4I2S7tNO2Q9pqKgtyqzi9Xf2mBT7y8XpaZCxoAlEj/YjafXRZKjcdbEWGZ4xxwpW+/LSYv8niy8oIQaU9lLo5ZXDyU4579YbA6K7ieN/fZGiR74VGLQvmzaV+dDBubTamA5YSkXt4WFhp1J1/DTWJZvLCAo5DNyNo9ba7evG1lPHAJq+vYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d+rQ1lYdmlwASzrdg5LakgsuoM3IWSjJ03SntbTHun0=;
 b=Dn9GSi5FwiWjBfv43a6No8rMXgnAkvv2tnUQ8UgY0KhLaxHIplexO/oaMU7WkI0xlE4W62Zf1ViyxQvyevUSrb1rbIIXfNfG8VH/LhrfQnz/x8bHl5J4nmPBNwmKSsbejiRy7yIr2EjwIaL10DHYDn4j2PgOXdhVZQWgaBWVWaxhLSb6VP9jOk5u9vxZmRdZE2ujGk3iXdz3j5/D90Fex2CsJKrD1q81S75+SrR5r7QJMs9X5F84iiJIYSGlcA1KqG2r340dNMbBmpdF/yQizO30S6+gtLGsAzQbY92bHTRqZkD2s6xQXTWLKUSworB5to/N+B9EKkPDeEUUeXxzDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d+rQ1lYdmlwASzrdg5LakgsuoM3IWSjJ03SntbTHun0=;
 b=VXKqFftpgTMEMSNnM4rZ8qnwghkJGTxBHG/qMocEvdZcryPJlfC+pcvrA1JmGx3ta8xBlGlbIAmr9GvUBHi/x6mFNdIMKTZMzVDlgT06OgDRRut7tCwtvrY6S3KWpuF7s09UXpeK8DoaDxofaqQotkSrq3a+VR7ijAUevVI184vjAZDxQawVkhtbHkXJnXO7Fg0X4+ooS0P26V2sdMRk5eYqD+q/lrej8zl0Gxb2E898rBzYhqfzqTbZ4149WVb07uU7CIClbcjZ1tEYFoh+bgVlnRNnYKVRKTNG3yJS7U8PLs1Xue9rXnQD++tvQidtk6TRynQaw29AXI6fofghrg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jul 2023 18:54:25 +0200
Message-ID: <20230717165428.27286-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230717165428.27286-1-jmaselbas@kalray.eu>
References: <20230717165428.27286-1-jmaselbas@kalray.eu>
X-ClientProxiedBy: LO2P265CA0050.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::14) To PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB2606:EE_|PR1P264MB3327:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a56b370-da5a-4c3c-d9a1-08db86e684b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RZN7o0F4JhGlNfNJ7tnRW0Uc5m42gmcuizU/BvpFjr1HLbONGVSZ0G3o8GPyeKYPt/6D5cRA7HOWWPbxNDc/AqHPK81yItHIHYx8WejVp1vXf7HL2gQ+rh3b/pKN/avzSYMUOkDhpnaMkymYwuzseCvWZhQo0zewuP+OMXWcplRn7iG7/YahBoCQWLMrjqRDMK7lgfK3edSaKYRkkgiCcNCvNQr80lA1E5JG5Bu7M7mjDkJFQa1iBeikuMgOwk9McwKfuXVWtKwG8jHVkJc5jQM3iH9QJBWirvODenToVoWQSiKvgbsheCRLvWyJZK/bfpN+CKNDj/+Vv/x2HqF6zbYlQsgJ63JpDGdp0Uk1iA99rwd5IPjB+tlGx/hYEs0KJf+zsTU2mjmJ9wO/j0d5PYsuzlAH79Sm4Aq8de9qsybB3UE89CH2uIclMtsNmgLKxz1ibIZvT8dwPc+azxotYaIGoHzIK2/vThv8AeW54jIOowxkpxglMVq2mZi4sTAGkvf6Zg6Blq2aYD04t7rUzhxYxTXVx17kDmBNAujkq2Ou3zCQWsd7yllcUj4p1AsnAVcgSxbn3qz6+dKp9AYJfb46e+fwse43M4uQg8FRju6isZRYej2sDZ/SSc7v4EwmY0wXFuFXAOI7tvsWs+gLRg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(136003)(39850400004)(366004)(396003)(451199021)(52116002)(6486002)(54906003)(6666004)(478600001)(83380400001)(2616005)(2906002)(26005)(186003)(1076003)(6506007)(42882007)(107886003)(6512007)(38350700002)(38100700002)(6916009)(66476007)(83170400001)(66946007)(66556008)(41300700001)(4326008)(316002)(8676002)(5660300002)(36756003)(8936002)(138113003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 1G/sdRDMqLxTW6z0+JeySXNSDiAFImK8t3P0ExVBCZUBpIVIk/uUiVapxMjAUwkm3owlC426AvVPRPGUzkWEPoEHgKKEnnJNZy9n94peDf6S+TVhzXmIuGIOIgyjSv1yiSTU9Nsi9J8poRQu5BmHnvQT8sA304nB2KpEF4Yv2WVZ37Z2x+32LrIZUvr2x5rjeqK3TxqypAXpMo0fjTVDmNkdKUnrQgyPwiSXXhuLWey6vaSd2fICVobZw/DEvm5yvgwDWNfWW1UCy21rFPOuBj+2sQPvBv9ldnhZfURGp3KoFdNHhm8MU+yO7gTrvEO8UMlvhTCjFQkcZBfKeELePN4P/E+MkD8LorgSQBFTXzxHBp+8UIgAQOsXFgVGxB7EK/BEvYqKGRB9OMu9GV1CxKeO/l9fWOz3ryKIwQx4WJUI7Wb6H5eMxqwGcZ+YlKDfJKSQWVO+TvZP0ElBu7n1UcO0c+wgByypn3ezT0WvwZ/i5A0M55jQ+CVECANu8XmKUTKkTVITkIlJ/x2KCULtGAn9k4sLHmLM0YpJXR2d+BONb/IaTJEi/vGIrefmr1ZWrtE8XgEmlZYK+L7lMAbzK/pKnoTSUBK25Vd0MbJGp+Mi/ZKE/vLAEY8A99D7yV+eI3RUo3G3b8E84xi5IjObE3FNWMXynejLRE720zBtyAvzAj4IdEUIGSACNSgSL/hcI+X9KmFw3CoiJsxKNYFIJxX7/dcZD2dzzkMSQqja901OlD61dBtw9knbzbmeiXCmFnSgjbiB4xZndItPZHJVmheca2QuvjDy3vMQl4B9e7z21trr/SaZjXFO1X4LTQ7Y8IMiYzQ0fHbTEXYInqzNQ1FmkglAnAhzhP4DR0J0D4PGAAdHrS5E+HZt3UiyUJAI0xic2fyXwP/7Ov/i3hImjqGXvSDzOrGYzanEvAQrfY1XrgR2BB26MHImD3opxsEX
 X4GTSi1xzCVPsRph+lrSNd0WHooJKll4SI8I+m3m70RUXz3QiOu4quzAaCBADN2xg6K/V8JthH03vTLOyEOiqIfxJyiYjpSgwdDCOHMOTlht7EkAWg+5zKGByF0FXWpHkhSujO7DHGG45pEoiKe5ZeY+6lMfVZEfdHyD+ZokWze0N/aF9rGrg3Ow8Vm7xxhK6xPDQfCr+bHV5djPVRiEs4IrRzxnaq7/CVeL5IneJjxKa9RtxtIT7vco8gbLWNqJ7o6rzaCwFJk3Q1ahkEnLBGn+tShEzVVihiEGfjaBsPxBVQgtKK/JMhumJPDJcmc6B+Yk/RyB8rZl4sOzrmozZhho80XdxkMARCNmDb0sIwjH7RJmSIdAyNGHtTrCGz/njHUtNdpmwEKzHILiis+hctoYPztm2sfAePsGOyimXzRnQD7rLJD5vMsMZaUdSZYXxGfM4PqF2Lf4fiGb6bzYiGnOo2ZgieYQkQtNVwkG420bMz6rvJftSw3r2b9NZ3fo26+VfEW/zI+WbnZIMc9O54QLGhA4xfidTcHPJj/5FaS0qNCmYWpHNK4KJYNRCYVCDKp4kO6IS1m1XH97ZC00bbfNUshlBSgNEOllrHRPcvk=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a56b370-da5a-4c3c-d9a1-08db86e684b1
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 16:54:43.1446
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QEb5Y1u4/1q0MK5M1faqOLBgdavslMCbcT2/3F1h7qu4CoaXtqNobAP0PXRA95QD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB3327
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_095450_341768_25D0E8C7 
X-CRM114-Status: UNSURE (   9.10  )
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
Subject: [PATCH 2/5] mtd: spi-nor: enable {dual,quad}-read and quad-write
 for w25q256
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Clement Leger <cleger@kalray.eu>

The w25q256 flash supports these modes.

Signed-off-by: Clement Leger <cleger@kalray.eu>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mtd/spi-nor/spi-nor.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 2c46bb2b10..632bfb2496 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -872,7 +872,8 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
 	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
 	{ "w25q128", INFO(0xef7018, 0, 64 * 1024, 256, SECT_4K) },
-	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K) },
+	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K |
+		SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_QUAD_WRITE | SPI_NOR_4B_OPCODES) },
 
 	/* Catalyst / On Semiconductor -- non-JEDEC */
 	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-- 
2.17.1








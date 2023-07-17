Delivery-date: Mon, 17 Jul 2023 18:56:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qLRWk-000n9H-1Z
	for lore@lore.pengutronix.de; Mon, 17 Jul 2023 18:56:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qLRWh-00077G-F0
	for lore@pengutronix.de; Mon, 17 Jul 2023 18:56:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IJbACNOsPxWVeqqR0UaTRznM9YUnuyJv2kOYi26kJ1M=; b=DJThfWup/fwF2IVz9z9JFy7cFy
	Sd/vuT9MKMPSBcVI9fuv8ZvqVKtwOb+8pVkV6J8/WWdoUGAunR5RcF2x3KQhiX2TT8LIE7ILKIUUX
	0aHlfYS+R1vzjqDJIdU9oggq+VwzPN6YYAlp2MEGj2MM85qYk3A522oNBEk4HoA6G7ZsHZmufVHfi
	hqY6wH6/+gTbup+/5MI5nDYTKnKKDeJCCVfgDuTqplfoDveRVBbhyi1QpbbGj5zEHscovnzVt/xx1
	s2+nPvU7y6uKolZoftvSz1OGY+vColkKoiqxxh3lBRn3d9eaoB2i3TiJpJvVYnC1gUf9ZI0C9JAX9
	utMBe1bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRUt-004bFt-1Z;
	Mon, 17 Jul 2023 16:54:55 +0000
Received: from smtpout30.security-mail.net ([85.31.212.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRUn-004bE3-2w
	for barebox@lists.infradead.org;
	Mon, 17 Jul 2023 16:54:51 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id 981648A3EC7
	for <barebox@lists.infradead.org>; Mon, 17 Jul 2023 18:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689612884;
	bh=hh0n3EgXEgQkMAaUVjhZn7crxBZmW8XROgkNIYu2ok4=;
	h=From:To:Cc:Subject:Date;
	b=dfiVrkfMFnVbJu9LFluckuwXdEOJL6rugsL8MX40qyLTeHi8KIw8br4Z7oCsxuKuz
	 SyjqEU4Sl8WAReZZYLOyM4NTEogoZiId2uh37l4Sn0T2AcElVKlkAOLv6HOOqZs8CK
	 SdFDOX9VSqVQ+oDw0YkbNkUDKsCU7JJi+/nfKdjg=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 7CA388A4312 for <barebox@lists.infradead.org>; Mon,
 17 Jul 2023 18:54:44 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0102.outbound.protection.outlook.com [104.47.25.102]) by
 fx304.security-mail.net (Postfix) with ESMTPS id 0B9848A3B77 for
 <barebox@lists.infradead.org>; Mon, 17 Jul 2023 18:54:44 +0200 (CEST)
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15) by PR1P264MB3327.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1e::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Mon, 17 Jul
 2023 16:54:42 +0000
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7036:a43b:43f6:bca]) by PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7036:a43b:43f6:bca%3]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 16:54:42 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <cea7.64b57254.aa3f.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eraQulQDViYwwUCZ2GYB2pi4CX+qbzsEC5gh2rU0goIl6POvUcWn2daTp8AlbM71CLUqQ0x0L9UxUDMhgkUPb4yfFQXC5VOD8IJAOWzKZELInR/8lXCHQ/3a2zbIjpGuaIP0SpgSr/+MxFPRWCpxKdLTHT7bESlsKJHuHOZ4XA9MYeVod62gZQ8sba5FeDaB8R+fiiyfIz/RmcJdUei/bKiREbypP7Lfyuw5LoZjDAwCUhm+lOvGp+pu6sOZpaUOhvkNKNvQICtj+RDRMxpk4+6aFqkPrm7WRr10UZO3UvLM+/Yzaws/rNjCg5MxVbx3CPQpj5USRn9co6hCDzq7/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IJbACNOsPxWVeqqR0UaTRznM9YUnuyJv2kOYi26kJ1M=;
 b=YXetZHmsmDtmLWFjdOauwqK1Lu3fxJXY8yQXEYDC934N1Xm7Ri3CLdAJG4JNx9UWV5QqJpaftBMeKLSFUObPTyrWLM4sHzxrN19K7D7dBF33SdG+o2X7z1R1nG2wytUd5i3QbSbKifDWGI6c8RvTcu4/INMjazmet6cy2ufpnpYZvG12NdTXMOiAF3M6vjAddwwY1ewllJ2xZbbJxV52JOLoP7qNyfziz57/lrTzICGIdKe4RVRzzydExa1QPwiMLEf21eDR0Vy1ey6clHI8FUfnBaRAaprDfead/rLKrJ71N3kNNzRoVQ+FTWyJ27ssKNy/nuuTbXvFZ795fY1ebA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IJbACNOsPxWVeqqR0UaTRznM9YUnuyJv2kOYi26kJ1M=;
 b=qK817Q8OsEZBV6tcbOk0RFcbe8Z1Sw0xg4ci6tNWph0jUK1N7mldIcdfGU0iWyEYpPpW8a6CEgvRwr/5rSbKgSKCzm34HhIIR+bJCKk/jg6DVA0PcFW7oT/NjDITgZFnh5jEAUUWk21Chx2mNqfx+BNQwaVHSteGOoepLQNp5oVqM2EY2zxhuGLB5hkiEYeMMZ5iHAea7d2Egu30umrUy7f4koD8cxW/Oti74bf7zNHAup8s5bIvppSC2J4AE9hqJUG67vXgGa6KHVnWqteDlMvXUCq4IP/gNLXbm93f1ICvyzVy7i7+lf8oJXeY4iOK3rg2XkX0diZ5+rttJKT27A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jul 2023 18:54:24 +0200
Message-ID: <20230717165428.27286-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: LO2P265CA0050.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::14) To PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB2606:EE_|PR1P264MB3327:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fb1a06f-9831-492d-a6d9-08db86e68459
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dT1CCDp9UpWAERi8oH0Eg6AdomjHPo+oiEeB/I+xL/FHjBWnqP8Gd2KljLb7V7tEQhCNVxLpRz50Ja6mcIT5RqBqfArlQuPp8B+Lgxaks3qfQe4ULyFoO3byc+hwGcnLTXM/WonuWY2B6W2gw1ME8GoYULXm9fwIstzgAEHGDJiel9zwVm9SyftLOuL8DdZYZrdCnq9dRkrsPKKJ5u0MqHrV8CtwRljFRW8/fu5QyenGAdRaI4MbwoMEgVogGVu5DD63ZkgNy5PQjow5lVRDDJz3jbRLbSJR0rfgBCJGioaLgBIL4JtWLZb1iO8wxMrd4hqpv3pjaYB5JmzW0pvU11JCJJkwgTGC9RME6774oYCwdeE8oTIB0zSh1KeT8AAUnqM61ZCKzKDLrZKfLl0uOg7pgj7/TsW/KESjw2WVnQuScuYBcE0izxYjOL6DyQd1MB5jXU4HQQhsav+6OzYLH3mHhYD/9rm/qmumjjujOLR3FeI7sUlaYs2/y07nuPkQoHzwCWeLmnchPeh/s6IZi61/tQAv8pqnltkL5BPk9ppwH1gNQavnMZcPVbuF46IszL4JcBkjZFlybRbJvtRrNt0keGj242jFzCnq+lLQsOyFl+jMK5hTbMpLmQHlSikD
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(136003)(39850400004)(366004)(396003)(451199021)(52116002)(6486002)(6666004)(478600001)(83380400001)(2616005)(2906002)(26005)(186003)(1076003)(6506007)(42882007)(107886003)(6512007)(38350700002)(38100700002)(6916009)(66476007)(83170400001)(66946007)(66556008)(41300700001)(4326008)(316002)(8676002)(5660300002)(36756003)(8936002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: JCrbleV27HmBfvpQ5K9SmUaKQ4q4VhJgWSztI+tHKQZXLoOF+JQ5NjajSz1tLiqFtasce5w7mQ/uzq0/x7ANS9wSbMknlAa4rXDiV3OzhQrc+ph6j6pZ9HB2OWBiWO3T2saLTus41zce862pqWzJ04cAi+WiHkt+jYXKxzU8zdlLYaCiR42eGp+YBYKPsIc+VPNpy+coTGzEChxrWpUpveOqAx325gw+ZihYWB3Gv1mp/MuuPxQyCpz8r9x3YJ1AkPcsMLNzUwdK2yuwZ8kNA9K6JI2uwk9kUDPcpEAUsLXKeE6SpOONBBOIsUr4VKlqrFMexeReLXsWfEi/FDY0FQtuQJqqGL8mPvcbKAM2LEWTYVAezuJ2SuNdLtTNb11aiWb0ctUPmYM5zB9WFKsnq4pZmBTvkhGej0m31XIFEZfMW9O4CA7ZDfFp/jCqTp1SpU+j1mkzQPmis9zM/NYeGzmoc8fNODrKYe+jF2iHqQN9UEL+J5OoeGZb8UIWOFfyMVUF2vMqWwngQebCJ50oEIxymw+z5bRrDfYnvNRYmmAQlTyrYxDc2Zt19lAFHeLnrsT2PRcGBEXEOEYfwTX+Q2Fqvm6rP77dh8++h3qych7So/cS2VUz1L1Ju52y0DpSOCZrUNSDPMNek97KMmzgThdCu52Yw/DtLOwEi0m/k+lDw/k5CzIHH4Ux0BP48zcdTt1Q31oqZlMwWFN0yXj8phWfvQxk6sEKS/eqWtWdSXn3843eIoVpbM3kcyxBwPuGK0GoQ+4unl9jzpyOye4ksyMNM+5Qt7EgbrbZD9Qs7uLTF54aCXLca0h7NF6kgi0xaxVGGpOMeB79SAoKIxYNQYf2XCVFnfRuzmwnxN2sW6rvaTV+f32QxHdL2HIRUBXUB4TYcdfyMti6SsM8ZlUbcBhDhun0sTW1LMUZwWZ4kULy/YTSmTHeEhkeYg/CNU52
 0LBaQREVuj2OkdlJzf2bKEUKgHyjW1EEer8XF0HwP5anIkmXE8fSt1Ob2+XALzTfp2HgIRyjxnLCNx5Wj91R8JifvMNVBKl/IfJ1cIEYm2cRQfz5QC+nAlBmi8SMkIaHdlYGl+Qbj9J9/EaKB4AK5WWaXibONwrh4U0ugWL5UkLonswmCwH9sbwlUxwQDwUCWgny8lqd3ezUWXaesyLciFv4A4VyGWapVyKRFT937KmeDOD6MfRhSQkC78XG8pb68mVAbJuOvqzQHefluF2UQ7rRde4eWNY7oLAa7cSE9ADJhROVBvozUldSrK55XGkQmdkyDXXsnvqgANTwZ/UDKviaygkBa5/fIvsCFPVckuRMGG99asiq3lLQeaOyO/bilU/7L3fVMOtj1YYu8BYU4ZB4k2LkbA4iZSoW7XxOxgfz2qZjaS18vG18Y9FpOqTHEB7I2M//QB7uYN4dVEsaE1z8OfZcUj7Gp64PS0chfgDUjDBcxE4PyKhS+PcXh1bZG7BMOcuf3dirasgnlXYkcrfCAuogVuIo0Xs8PI0DFDyyknPs0j/4shgjg6AVvgjnpBLfYfWFaaIa5QvMDR+s4oVq49iy2wBHuuXZHAOjcEc=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fb1a06f-9831-492d-a6d9-08db86e68459
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 16:54:42.6454
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zzg2PDRhU7GJlUqvk4N7iNQ7mpPY+3sQJhkGcgKKtTq1tYqsDtozYwI4rYHDqKJ0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB3327
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_095450_342166_FB020494 
X-CRM114-Status: UNSURE (   8.02  )
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
Subject: [PATCH 1/5] mtd: spi-nor: Add SPI_NOR_QUAD_WRITE hwcap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mtd/spi-nor/spi-nor.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 8f6726ca4b..2c46bb2b10 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -83,6 +83,7 @@ struct flash_info {
 #define USE_CLSR		BIT(14)	/* use CLSR command */
 #define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
 #define UNLOCK_GLOBAL_BLOCK	BIT(16)	/* Unlock global block protection */
+#define SPI_NOR_QUAD_WRITE	BIT(17)	/* Flash supports Quad Write */
 };
 
 enum spi_nor_read_command_index {
@@ -1166,6 +1167,13 @@ static int spi_nor_init_params(struct spi_nor *nor,
 	spi_nor_set_pp_settings(&params->page_programs[SNOR_CMD_PP],
 				SPINOR_OP_PP, SNOR_PROTO_1_1_1);
 
+	if (info->flags & SPI_NOR_QUAD_WRITE) {
+		params->hwcaps.mask |= SNOR_HWCAPS_PP_1_1_4;
+		spi_nor_set_pp_settings(
+				&params->page_programs[SNOR_CMD_PP_1_1_4],
+				SPINOR_OP_PP_1_1_4, SNOR_PROTO_1_1_4);
+	}
+
 	if (info->flags & UNLOCK_GLOBAL_BLOCK) {
 		int err;
 
-- 
2.17.1








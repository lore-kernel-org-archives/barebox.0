Delivery-date: Mon, 10 Jul 2023 19:25:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudX-0060ap-T6
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 19:25:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudV-00019U-4G
	for lore@pengutronix.de; Mon, 10 Jul 2023 19:25:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6g65QvAuFbQKsBXVftDQhoCdufJdiZ0YMEpHLvI1ajw=; b=Q49feFjsxiOqbTURXbaVeGz0h5
	C6N0DRKnCzJDTIhF+zzr/TBRAwqb9epwbsCXJzuNCwXN9Z0gx5QC+70sPfI2Btn7CjfHyJ9gjLZo4
	dzz81GU6cBKlkO8DzdT80agqaBL4aYjoGIQVHggLtjL8RW5dm/sTGQTqtyUnGT2h/gQeMoO0IP5+x
	haEwT+u9ncFjseAms5dGSoy090Yi2C+rCvc2w9SRqZS0fXbxu/zyyf2WfijZkGgOemNL+G1a3PGro
	p6jC48fzu36RpssGXPrw2/ht/84qTQWkhKdtQjIKf4L4Xt+vKw61BrMZFWjxk85SFz81BINrWe70f
	WMwhbXTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucI-00CL83-2Q;
	Mon, 10 Jul 2023 17:24:06 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucD-00CL4N-2i
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 17:24:03 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id A065B349607
	for <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689009840;
	bh=7ybYNik3n4QD3evgjPX4m+c9RgEldXV3Bj/d0uNT6r8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=dRsAuaeS7PDuM06oAqZPmvulKyEtMo7tLTtbsIUob5A84XOl8lCuATyfPunEis1bl
	 u4Qm4GNZg+vCANj4ldr1sV4A26T8cLXF67Tv3SdFBzC5JBDj5L/omyHKezICjwS8vz
	 FwHeQZRJV+dbZZ1MQamhawpZnLHziNOV/4ZFqy/k=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id 666C6349666 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:24:00 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0107.outbound.protection.outlook.com [104.47.25.107]) by
 fx409.security-mail.net (Postfix) with ESMTPS id A2D1A34957A for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:58 +0200 (CEST)
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:d9::11)
 by PAZP264MB2894.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1e7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 17:23:55 +0000
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94]) by PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94%4]) with mapi id 15.20.6565.028; Mon, 10 Jul
 2023 17:23:55 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <6cd4.64ac3eae.a1e66.5>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mo2tBehSJydsKE/n2vdVlQmns5IlWKOGWwLn97VedO0DgsdZiIwunyz9BDQLe/1Hu8yYOf2ENMPO9hPisbiawEXGXxmJ2ntxzKzCq/tNCCqttq1V3JWXZgGvTm+0GtpJvsUzvLQjAhqgAvTbP6mIVMC96d5il6r+2bbITVWOvzZ0hdfSnU0USXwrJyAlMxG2XMMT2/qQ9jv3acgK9Oleeo8WqV78pOvAzJLjjoSQekpQIo5yAzT7snyMH4stuUdlQzdFHG0gWGk6yvxS1nyPuJo8p/Bk8EuqZrTnGhvqyZTgWiSV7UWKcRMyrCmUBrGTArhmTSx+PJJkB1V8rc001g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6g65QvAuFbQKsBXVftDQhoCdufJdiZ0YMEpHLvI1ajw=;
 b=PTBhsJanc+kN17Hz5Nm55MCisWk3t4F7HP6FjGDqS7rhHR6sEYmHV7UBx59ms0RT9RqxKpkU4m+e5DV7FpvFNA+N0/4Jd9LVzI7vd192Ws51JWysFIPvZhwGHtAGlBkwi0mIc6f7yoLnksvTQjQgqHcYqwvH1X2aydkNUAeSuOiXA2QQWPgaWAEB9xEi1E1RjH5anCKOiiwQW+jQRw1jYeBDU/Vl/73tDJu0PmdOZlenzcSlkk9rL6oaZD3ubvPMf09oglnhldgWhNhH710Anjm94MQ/vi8ySNQsq81Zy9YR7eiAYHpzbGUSXBKRDkR7Y4b3Jm/UA6WI2xjgRngbbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6g65QvAuFbQKsBXVftDQhoCdufJdiZ0YMEpHLvI1ajw=;
 b=wn6JnWlmeZ+TEpRPPWYqVnVR5rEqSwzmzk3l9edlf9JBwTeH9/kD1tr1DBzQXL/2LKJbBr7JE3g14Z2DTMNsd2LoHrXrGi7VausAM5DFjDZPntK/y9FVWRqGEvKV68ngUQ4J0YtcqPAON3SlQn2sK9efO96+rAN/kGvSAAN1YUFayzGzKCiLCDTfNCWLA4PHvEtiLlM3lT8/lu9PdoJ2RIGuN7bKsmq0UcIClQpMISBxeusNdhJVZEhqjAaOdtrdwnnp467M3zDveLiXErRJvN4ga/saRwDUmk63y/EHl2e/+PluMXofzr8oGQB6B3Z1TRduKWvWuDTedRLRv4sTyw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jul 2023 19:23:33 +0200
Message-ID: <20230710172335.26701-6-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230710172335.26701-1-jmaselbas@kalray.eu>
References: <20230710172335.26701-1-jmaselbas@kalray.eu>
X-ClientProxiedBy: LNXP265CA0065.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::29) To PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:d9::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3751:EE_|PAZP264MB2894:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a81f75f-d728-46cd-16cb-08db816a6f9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FWMHizFqlld0qNdTyWCVxE2inbvmT9zluM39Djbbu0aI3ldJVOC9ZhOrYxoqkQ/HMNv4qP8iy25utSHu+T/Qeb7RUn94UL+sMibM373NaVKxPjbTNqZoVnkihj2LBto14x69V7+EW1KnJDXVzEDCj3lrvlO8SrL81ADl/h16sf3qxfTK5PEdYD3n4PPv3tCKTzQGwA5wVFIJ41jlAa7D2jlOkvzctVEJP5SQDjjQMr1A3YFgCjp8rWySf4soUAntzolVoRc7MlxFnfNoShQozoO62K7dwHhsuc4fX/WyEP40VNqO1NXEXHW/lD+VlfMMos9/wDWwL0Wqr+vUlUEmwpHfUbY2Rpa3eDmYogp1yEnL67GLSrrERNE3eREdXwyTg5FBh4puHuXi61EOuLQ3oUTLmBrrMLPdRxK/cZ9IsYpJaX7+pFRMPhZRub7tK7LhPyFlzYAYpcIjRElm+UDRI2uc9ZmGYE6KuVzxSwxZQxeyHMPlcH/uQg9ZdCRHrLrtOg1cq5Qo/6nzZBxc4oFr31EyOC0+mgr7GLtblFZK9ng3uNo1zwXcTtPjgZyecgEsFTk49YxpJgFEVBm6K3Uj/bN2a3dhPQ2eTfYwnGtNRNEWMRcwMcuGO+0ZTbRfDzoO
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(39850400004)(376002)(366004)(346002)(451199021)(186003)(42882007)(26005)(6506007)(2616005)(6512007)(1076003)(107886003)(83380400001)(41300700001)(4326008)(6916009)(66556008)(316002)(2906002)(5660300002)(66476007)(8676002)(478600001)(66946007)(8936002)(52116002)(6486002)(6666004)(36756003)(83170400001)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: OJM7l6t58wNqicmg/wGLYXj1dS2FtTiwQZpmoMwL+uqwSwXEo3060ihEW2ROdiZZbrPQuKlzgpkWx05KZQWPIKmgvZBLgLUyAkUX8xfVUJnqhHVnRaKzoYGPj1aqn4PBZ/XB4T6DvNeJq6cy0g1j5PfnYx0bjXo2EyqqKqQ3ceDvY902OD4/3IaUU5yRj1tSPi4EYu4KN3Wpg4XKnhF1LdbIGKTpSmzLprAMaXuMqbxXR+pVYnCuh2hVIk0rcJZkARsGe2HhmssIkGpw+AQJ1RE8q/7WBJl8MhQo8WL3/rJxjLSw2ghy49KyVnZijjUP0qqPBsuWYtZq+9CqB5R+kgdsZDRwWejwldJlfqLgirBR6u3K+qIC4XZVI61u7o70rjIncd3V/GZpOn3xmTg+dIm7JKJ3yspdJt0xY6P0zugvN7jwf2gjrt5BC34V/dTD1p66E2HyxFPnK2OXY1scla/kQs+RU4lSBWloxLi6YfscsnmFDHaVIJxI+fhY13/YvDtlRGGiLeqZIuWpgI1s+R9zxB2T9Rtu/veiOXnoxMrQVNGDVJlEy3Jtdpu9tbpd8dvVKyW2yfwaayZgKrqatJ++JK+qGV61cbx8MSHP+Zm0s7xseiMTV4bApHhbQYR8B+kCiXriBzlGtrZrsRpVL2gyV0rK789tNRc11/w7YFx7KxdUUerYwt8U9fwFMo0hquoyFTbDGt+pgXSHSWetCq6ny8A3RAAfCYkltE2HIEI+xg9Sqqi07W/FErspA36pDTiQGmPfL2KX8NT0fQ0CK0HvUZhsBT3lX1iwCaz0Bc/DuXWco5E3A2sj3q4Y4dv+3qPnFZ3y6zu28qNFp5bq1N9ELsj5cTjGf90i5+Eom3kgDUSmQ29eQr6i74ajUyGID9avX4dkBN68k9COqdiX0ew5djbgiAYBCPjRucM5q5dZhLSmVaBqgrHT2ID9hinT
 vNnQEDTfxMqIm97sfqgUAmUO87yT64FGYifC7cOSUFX5m1Nr+aqedkaYxf1S7oPPFIVlPD/bbLgE1HMUj9+2G8fWTZyF2ZbByk6bUSVkAdbT/33j9CJ6nnoxACOX2JwyRLf5KnqCmvOZuVcHSgnDApl3ZUIASmabA0QAr+3kTIFpJ7dj6rnVXLODQSG2evqK6PtvYSh5eGqWohlOxbQtfHDjVx3PeK0LgerMdXIKM7AzZHOaUdH/fXn4MfHBKTT+SZKVw8pDygMYccngnl6QUa3Dlqp1UDnwo4njuepWo5EZmLocuI86ygEOnCE1Lff8T2D+KpUjOIa3Xge3zQw3t2vrbYt5i++x6tXqGVfkTPWFbEqc2KbIn8EzvIy5artVlkHlVNDH7XIlAauhwGzWTSZcdfwfmefxKUdTlnwM6fCogQ3IVIPB0AKX0ir4Hh4N5bn5aIq86ZTi6+DO0lTeP3SApVEhNUoGSAOJdW+xSWYsBfBsDRGS/1pNtvvdr7pBsVkkSki8UPj0B/Kp6Do0vMnfw+bJPKNaXmRdKJdMh5jFBkMwn2g4GPaj4dFAY5bVLOyUyhCRBM1Z+OMsi9/6X/U6KTc63DHWYvdTEzsq3x0=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a81f75f-d728-46cd-16cb-08db816a6f9e
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 17:23:54.3051
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FQ8TQoT5qsA/YT/gUTq7clQoHTVxNaldOYuFCCPTrvwHmM24b2sssGKOG3fLd1Vl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB2894
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_102402_013367_5DD10370 
X-CRM114-Status: GOOD (  16.55  )
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
Subject: [PATCH 6/8] mci: sdhci: Add 64-bit DMA addressing suport for V4
 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Adapted from Linux commit:
8<----------------------------------------------------------------------
commit 685e444bbaa0a5ed959f39dbb2f219eb44c30421
Author: Chunyan Zhang <zhang.chunyan@linaro.org>
Date:   Thu Aug 30 16:21:40 2018 +0800

    mmc: sdhci: Add ADMA2 64-bit addressing support for V4 mode

    ADMA2 64-bit addressing support is divided into V3 mode and V4 mode.
    So there are two kinds of descriptors for ADMA2 64-bit addressing
    i.e. 96-bit Descriptor for V3 mode, and 128-bit Descriptor for V4
    mode. 128-bit Descriptor is aligned to 8-byte.

    For V4 mode, ADMA2 64-bit addressing is enabled via Host Control 2
    register.

    Signed-off-by: Chunyan Zhang <zhang.chunyan@linaro.org>
    Acked-by: Adrian Hunter <adrian.hunter@intel.com>
    [Ulf: Fixed conflict while applying]
    Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
8<----------------------------------------------------------------------

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.c | 64 +++++++++++++++++++++++++++++++++++++++++++--
 drivers/mci/sdhci.h | 15 +++++++++++
 2 files changed, 77 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index bce4ff2a14..4aca3af5aa 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -111,6 +111,35 @@ void sdhci_set_bus_width(struct sdhci *host, int width)
 	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
 }
 
+static inline bool sdhci_can_64bit_dma(struct sdhci *host)
+{
+	/*
+	 * According to SD Host Controller spec v4.10, bit[27] added from
+	 * version 4.10 in Capabilities Register is used as 64-bit System
+	 * Address support for V4 mode.
+	 */
+	if (host->version >= SDHCI_SPEC_410 && host->v4_mode)
+		return host->caps & SDHCI_CAN_64BIT_V4;
+
+	return host->caps & SDHCI_CAN_64BIT;
+}
+
+
+static void sdhci_set_adma_addr(struct sdhci *host, dma_addr_t addr)
+{
+	sdhci_write32(host, SDHCI_ADMA_ADDRESS, lower_32_bits(addr));
+	if (host->flags & SDHCI_USE_64_BIT_DMA)
+		sdhci_write32(host, SDHCI_ADMA_ADDRESS_HI, upper_32_bits(addr));
+}
+
+static void sdhci_set_sdma_addr(struct sdhci *host, dma_addr_t addr)
+{
+	if (host->v4_mode)
+		sdhci_set_adma_addr(host, addr);
+	else
+		sdhci_write32(host, SDHCI_DMA_ADDRESS, addr);
+}
+
 #ifdef __PBL__
 /*
  * Stubs to make timeout logic below work in PBL
@@ -160,6 +189,33 @@ void sdhci_setup_data_pio(struct sdhci *sdhci, struct mci_data *data)
 		      SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize) | data->blocks << 16);
 }
 
+static void sdhci_config_dma(struct sdhci *host)
+{
+	u8 ctrl;
+	u16 ctrl2;
+
+	if (host->version < SDHCI_SPEC_200)
+		return;
+
+	ctrl = sdhci_read8(host, SDHCI_HOST_CONTROL);
+	/* Note if DMA Select is zero then SDMA is selected */
+	ctrl &= ~SDHCI_CTRL_DMA_MASK;
+	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
+
+	if (host->flags & SDHCI_USE_64_BIT_DMA) {
+		/*
+		 * If v4 mode, all supported DMA can be 64-bit addressing if
+		 * controller supports 64-bit system address, otherwise only
+		 * ADMA can support 64-bit addressing.
+		 */
+		if (host->v4_mode) {
+			ctrl2 = sdhci_read16(host, SDHCI_HOST_CONTROL2);
+			ctrl2 |= SDHCI_CTRL_64BIT_ADDR;
+			sdhci_write16(host, SDHCI_HOST_CONTROL2, ctrl2);
+		}
+	}
+}
+
 void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			  dma_addr_t *dma)
 {
@@ -188,7 +244,8 @@ void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 		return;
 	}
 
-	sdhci_write32(sdhci, SDHCI_DMA_ADDRESS, *dma);
+	sdhci_config_dma(sdhci);
+	sdhci_set_sdma_addr(sdhci, *dma);
 }
 
 int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
@@ -230,7 +287,7 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			 * the interrupt and kick the DMA engine again.
 			 */
 			sdhci_write32(sdhci, SDHCI_INT_STATUS, SDHCI_INT_DMA);
-			sdhci_write32(sdhci, SDHCI_DMA_ADDRESS, addr);
+			sdhci_set_sdma_addr(sdhci, dma);
 		}
 
 		if (irqstat & SDHCI_INT_XFER_COMPLETE)
@@ -594,5 +651,8 @@ int sdhci_setup_host(struct sdhci *host)
 
 	host->sdma_boundary = SDHCI_DMA_BOUNDARY_512K;
 
+	if (sdhci_can_64bit_dma(host))
+		host->flags |= SDHCI_USE_64_BIT_DMA;
+
 	return 0;
 }
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 1f5d0564fc..f3ffd62dff 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -197,6 +197,21 @@ struct sdhci {
 	int max_clk; /* Max possible freq (Hz) */
 	int clk_mul; /* Clock Muliplier value */
 
+	int flags;		/* Host attributes */
+#define SDHCI_USE_SDMA		(1<<0)	/* Host is SDMA capable */
+#define SDHCI_USE_ADMA		(1<<1)	/* Host is ADMA capable */
+#define SDHCI_REQ_USE_DMA	(1<<2)	/* Use DMA for this req. */
+#define SDHCI_DEVICE_DEAD	(1<<3)	/* Device unresponsive */
+#define SDHCI_SDR50_NEEDS_TUNING (1<<4)	/* SDR50 needs tuning */
+#define SDHCI_AUTO_CMD12	(1<<6)	/* Auto CMD12 support */
+#define SDHCI_AUTO_CMD23	(1<<7)	/* Auto CMD23 support */
+#define SDHCI_PV_ENABLED	(1<<8)	/* Preset value enabled */
+#define SDHCI_USE_64_BIT_DMA	(1<<12)	/* Use 64-bit DMA */
+#define SDHCI_HS400_TUNING	(1<<13)	/* Tuning for HS400 */
+#define SDHCI_SIGNALING_330	(1<<14)	/* Host is capable of 3.3V signaling */
+#define SDHCI_SIGNALING_180	(1<<15)	/* Host is capable of 1.8V signaling */
+#define SDHCI_SIGNALING_120	(1<<16)	/* Host is capable of 1.2V signaling */
+
 	unsigned int version; /* SDHCI spec. version */
 
 	enum mci_timing timing;
-- 
2.17.1








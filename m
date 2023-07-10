Delivery-date: Mon, 10 Jul 2023 19:25:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIude-0060ct-K4
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 19:25:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudc-0001Ke-0e
	for lore@pengutronix.de; Mon, 10 Jul 2023 19:25:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TWDrMK1cg65Q7SJENOW4aEV44fX0aMtYpCTBC5J9FMo=; b=4wEmAuXb2v7L+tUL3I2NxRHQS4
	4fUeHkoA1QvrK/xv3VnP5UVXtAlyq3sjZ55mVfJxlVeDf5MPqgPliv/ThF7PuU52qyq+eJI71Bq2l
	ZYA9I5jvCF5dAGaU5p0bHsqUybSR4OUXlk+HAOXLQgE5ua+Sa1WOLN2leYsf7+tdpLIlS0FZjN5we
	oiowDINXpktSC/5We3amAQ6GJz4d7b/l2xqCfSVKD4j+wrH583oOEZ7xqMRtWWZoY/LJoN0RAKWzF
	T0fT7pM1NMO2X+Ra3u6e0vVPii+3yYDFdcOnijFSMp5d8KSSbMcb1GHHE4eX1EkQGL8Bc1MVk4cS+
	Ev8tvA/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucJ-00CL92-1K;
	Mon, 10 Jul 2023 17:24:07 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucF-00CL54-00
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 17:24:04 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id CB7B934960F
	for <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689009841;
	bh=Go64Ex3/g6XYQualDYSjPgWGunuK5VjXdkym+41PMCA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=VLNob7wtAtdhwhElJSULqTMljKIqvefO/QuPf/eYx3QMSoyBgHpiBC/Np7ObvZqv3
	 ruG/84yiIYqnSgHyAELvBGPBpkf1zUC6snTOp465v/q2wb36GawnWiKb6WmvPQegmc
	 bcPkO9HZqKGDWBbIMRlIlNW+lKerBGa0Zwfe2Y+4=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id 874FB349658 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:24:01 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0107.outbound.protection.outlook.com [104.47.25.107]) by
 fx409.security-mail.net (Postfix) with ESMTPS id BD0F7349518 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:59 +0200 (CEST)
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
Secumail-id: <6cd4.64ac3eaf.bc42d.6>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nRA4ySL+YcnaF6BGEWfF6HFu2ftmqMjrzS67xxVAlirOUjpI1120o5QuJpMPCrRXyHHE9WqzXKts/qnxdMnZl/MHl9wba88RF8t4LCsrVIgqhS0MRU83G9sDsamutqbxEnvJgKQCuTinT61tmVcw2Nc01uDmfUHKstKHomMw+MyWlQW6Zhsb3rvnBd1SSuexqtjo/G0YEyDqNCtBB+z5oHXio3QDJPgE9O4fNwGuY40LAJiQGr5Ykb+9QoFDQQeMy4uPbWWFRRsEDpo4uGRnW0i6ztODx3fRSeURgIiYBo/hb264gMFJhrjV3MMDfoMs8ky12XutHiaiEVxOitXQvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TWDrMK1cg65Q7SJENOW4aEV44fX0aMtYpCTBC5J9FMo=;
 b=I7aC3MqwnIVHZEa0w1QPlTgEK8fsc4MAAT3xXphLTgp+gDMnsOGFg5V+FY08jBycDXJD5iG3oN/HSE6z0pNidxjt52T2aZyFa7jw2hV3/pQboctyOJ6UsbOqjWFYwKvD2w5XyKCN5HMAYBxzchBaUEAXFVEXaQawq4V6y8Z8p2Wb7qLw7Ha+GfTjGdV7fOj01u/ntEXuPh+LJA46LgawRwkP9WPp/b8yklQZ6zqbUJOsjY97KPANFiWnFLM3AmVSmOLQsHiIGf8Z9wwkCXjPUPfZ3dSlZs1acRR5tXcV79QHoaaPkKSEFRVqyhgj7KCPd3KD2qJWOND3oGC1ZvTytg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TWDrMK1cg65Q7SJENOW4aEV44fX0aMtYpCTBC5J9FMo=;
 b=fvTelQFxPYSxpqwBaYozabHf6HK9Uap6F78zNXnZN4/TZuO6WlykC5I+hUNW3HAPLUZ+VSXDJBrI7YsJizKC7w2L32Aj9uMwkFXY3c6ZLKhAqan+3+lOk+JRm1qcsAsZYiAZz41AvwuKj/wYFr5jWHREQ4N4j5WSUq6sGPemvFy1bOT0dpOZFb4kO9t67SRgMq+7FBgdk6K+JHePrGWqPjZZoGVOB/tebUfR5ls4KW6q2UjrwvDQEOrjJL3osV8A1v7z18fEYGVSAc1uDgTG9Zz6aviJy943cRflWHfExF3b3PWnjvX8pAYvFP/TUfXTxaeBYdTPUe7z9QqDIYDEXQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jul 2023 19:23:34 +0200
Message-ID: <20230710172335.26701-7-jmaselbas@kalray.eu>
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
X-MS-Office365-Filtering-Correlation-Id: e60db00d-2512-4e47-9d48-08db816a6fc6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IQVp6rgbOmj2JrFsni6lbFYGjt4ptB1VtgRn1j+opo45QvqymCkYtKhrMTQSeuowAN8XiabILx1u4HDucRh3RA/mM6KAtoqsu87tMR5ciZ4dCTN29eaiW5p7tF9JLp3wK1gWSa/lm+kOUrZl4JRRmwT8jLyi93POOutfFT2I+oQYdxwGtaMwnG8ZJFD7Cut7vdFyBEszfr8eoZ511d3M9vWa0VySIFzGYTJ3gSKI9YZxRlHNGL4UJCskcFHKlD44ONFvgNYrtkI2VeaxukKS2o0Hq4Nk/v2IaJR0HsqfhuyMSY+KrGhnSqOcnttLZF7tD7U1yGP6wmUJaUfUixECX6eyfIptVa/gleLQ0a31Lnk5wvjWBdg0YZGqYIsA7fBV5YP0Nby1FtzKY3Zcjv1Y0aGMXvcZktGCZ/4wJyKuRi25QyCR1hvyYVWlcVZt7mVxMCyUSSsxoP/2ghwtXTRyHF8MAm9nbZaMQCH27k5geHrdeOnbXCOKA1RzFgqJE7BY57ZzNJdi09BCSF2yRzZcUDzPm+b7vJvLFkLKtuCUULoFd1672O6e1hCGlBaq+t4PXDylg99u6lC+tvzXwQ3MRS/xsjon/EV8LpFltxAECkk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(39850400004)(376002)(366004)(346002)(451199021)(186003)(42882007)(26005)(6506007)(2616005)(966005)(6512007)(1076003)(107886003)(83380400001)(41300700001)(4326008)(6916009)(66556008)(316002)(2906002)(5660300002)(66476007)(8676002)(15650500001)(478600001)(66946007)(8936002)(52116002)(6486002)(6666004)(36756003)(83170400001)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: KS3J/0H1ePWdk3yNiiUQeJhOrWWZ9FT6uPg7sZHhDiStYGH30RKHioxb+HYk3sygFYL1UHJ5AKXB8PX2el3eSV6YJgTftr8XSJF8JLDb6iIN2AmwdapysX/eGQioWS3CxkSA/jXxZ3I15ezo7LnZPdjgWGWHPPwecK9k1zCFJQGgC1yLFyJyFqCK/eIdsf9WsAFpP2EZ3e18LbcSupcWfW6g3usam4R+vUrGKbxQpR/zoeIVzWSOTFJo3RjWfOy1dvi6Ms0p4aY6CAk+mVU+73lF7lSaGnspyQJGY9b5YcaWTMCt0A+bx9wyypI3LNWfkqccpDr5qYDpe/VRqRGjYms01l0iuKglH40xdxCj1blgVj8M3kk9aIrku7fCQT0nnzhq3wEHnhhF3riSdpQcMbyY8u2DVu45VCnYRRyVNeOPRyruilhsCoUv3r8R3jI0L32DkyGtFGsDM0ajjEUhLfpGy5CLa+9cduBLgiKDBU4XZyXRY0n5Heqk/v0EsNQsh0dbVa5cMZ0Q3YQYJ95GhET/fZLZB/rpvOQS2ycCUB2nHxxL8FkSoLbQq3itZIzWWkTT6TKaVLWiQAZ9LY8lqNMNRm8QBHGSVTPOp1w57g3N+6pHCPLrytsl4+kcYze+OYJSEDEx4ADfGdWGV0xhz55v7LVl8ID10+uvVv0UlupZtYTA966/Y/8160RN2iAfpZVYQ8I98eRqwn7GUjWc+92XVcrJCZWChUK2qaIasVTShtDaS30OYXwzEb3SYCvKrDjhbyGyCFFlo6MXSTDkLf++VkbiGxRv0lBN0V5eVDUn9nwpsjqJuMvBtxBQaDCav0swWhYGbuVvNb4LhLaC/hUi1vhYdSF3KjPgOjnnq25VWqYW+kcUlTiLt6dghZs24E8SO75AhRJaJDJBkFs9ZcsdcdCCuexMoUBSJiJIF6Ows/SEQRANi0NuA9Pg/3lX
 x251dmtsrY2HjldfVvbb8aL89zpscPHgdTSIjY0LjRyI5lvvD3r5ja3oxv1uoVFdEu0PeeK4yJm3ydjeVNQaaxZJoIq/lcbO/4m27JaiAqbaMqvjS0xHum5KfOX0jFpe5Ejdpl62gJrGiLnGY5s4N2wU3Fp35HOpc43P0GKagdvydz7htPc2NdPQ4qcXligkgo0rTjl1IS5SsozLqLzfmxAtPiUFiknttaWrUAINc0/jaRjyP+d8I3+PuE9153u/DmJfExVNJ6wtYqwasKj2RNQCZdvCl2ry/BqNHqNoiSlstr7zzzGybrLBcLhL5Z4/Tnhvf4AbhUtvxI5WO15FDN56bqZfcsrBpCccPGTm+pfrgDXmyW9cKuEA4bxBN0+2BcOCazA2DwVnWc0jYmrcfWfMgsWIVny20aTqdA1s/Z6DTXSTB+u1856xAQBE4gllgVlRFymR4mNhP1a0jARxtPmYtnAdtBDyuMlF/30E8tEHWDLr6e6ysUxV8Yipk/RwfjCI85Lk90Zx6dw0d2FAsWhoORWps9FZ5PHaT2lU1Mpkpu7LYqscnLVGnqJOfoBAmVKC6T9Z/Oj7HBWXF5tCkHKsCvsnn2129ZiARtQOsxg=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: e60db00d-2512-4e47-9d48-08db816a6fc6
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 17:23:54.5867
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: faXgn+RGUbNbkj8nyNboy5s9QiI91cuKyrJXseJWR7Aqs01h7mhCB2RFXeSzTgTj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB2894
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_102403_181794_FF406B70 
X-CRM114-Status: GOOD (  15.38  )
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
Subject: [PATCH 7/8] mci: sdhci: Force DMA update to the next block boundary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When working with 64-bit DMA the DMA addresse is stored in two 32-bit
registers, different from the usual 32-bit one. Copy what is done by
Linux which simple and is also a workaround for some broken controller.

Note: in case the 64-bit DMA address needs to be read, it must be done
by reading the 32-bit LSB first (SDHCI_ADMA_ADDRESS) and then the MSB
(SDHCI_ADMA_ADDRESS_HI).

Adapted from Linux commit:
8<----------------------------------------------------------------------
commit f6a03cbf43e586211f8ea088148c8ecd3fc4b5be
Author: Mikko Vinni <mmvinni@yahoo.com>
Date:   Tue Apr 12 09:36:18 2011 -0400

    mmc: sdhci: work around broken dma boundary behavior

    Some SD host controllers (noticed on an integrated JMicron SD reader on an
    HP Pavilion dv5-1250eo laptop) don't update the dma address register before
    signaling a dma interrupt due to a dma boundary. Update the register
    manually to the next boundary (by default 512KiB), at which the transfer
    stopped.

    As long as each transfer is at most 512KiB in size (guaranteed by a BUG_ON
    in sdhci_prepare_data()) and the boundary is kept at the default value,
    this fix is needed at most once per transfer. Smaller boundaries are taken
    care of by counting the transferred bytes.

    Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=28462

    Signed-off-by: Mikko Vinni <mmvinni@yahoo.com>
    Signed-off-by: Chris Ball <cjb@laptop.org>
8<----------------------------------------------------------------------

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 4aca3af5aa..4c8e73d94d 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -279,8 +279,18 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			goto out;
 		}
 
+		/*
+		 * We currently don't do anything fancy with DMA
+		 * boundaries, but as we can't disable the feature
+		 * we need to at least restart the transfer.
+		 *
+		 * According to the spec sdhci_readl(host, SDHCI_DMA_ADDRESS)
+		 * should return a valid address to continue from, but as
+		 * some controllers are faulty, don't trust them.
+		 */
 		if (irqstat & SDHCI_INT_DMA) {
-			u32 addr = sdhci_read32(sdhci, SDHCI_DMA_ADDRESS);
+			/* Force update to the next DMA block boundary. */
+			dma += sdhci->sdma_boundary;
 
 			/*
 			 * DMA engine has stopped on buffer boundary. Acknowledge
-- 
2.17.1








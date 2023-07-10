Delivery-date: Mon, 10 Jul 2023 19:25:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudV-0060aJ-GR
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 19:25:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIudS-00017y-Pz
	for lore@pengutronix.de; Mon, 10 Jul 2023 19:25:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qo397zxOWwVzRzjGbznmMRZdTFPdQMOlujmg1YjwupM=; b=pAnvVVwt6vxFoXlb8ZVU5mcZ0a
	Y/vncGX7HTxBglz6xMETzDJJ03u1sbNn6xt8j/0yaSGarbZ0z/xRA/fHpfA6hyLlz8nOgiXDTQqHf
	Utm/9gP1dXVjeL/s5F7jYEvVina5eIb4YzygcUx6bN2BKv1DX6/9OBrlLlpm9YaQl9UTxVCE4/9EU
	+b+SWwMvvtabgZMaj7teUhUznesOf79l1cEQ+/HQxbyM7Ro9JcGo09Z8LT8a6GxD9KJgOqK6seDi3
	WqGSavPgMXB4hocNqcz60kmQC3DZKsuHK75izgN+ZPcZkiJ5RKggnmTFyqG3+TnOrWAB8Q4dzKX2y
	mUK+GPZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucF-00CL5T-2N;
	Mon, 10 Jul 2023 17:24:03 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIucB-00CL2n-1w
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 17:24:00 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id 69B4534960F
	for <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689009838;
	bh=Sc4wP3imBJDZmN4Humw7fadWHgOO47gS9PQazMM0vFY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=FZSlxdm0cMJYthKzWiCUhf2yvKfCo6GrfV7pZByug6k133JkDNKvuL1+5aqgUpaO1
	 mBBCVf4i3CDwtvHIhBzPT+63fSwT9699mHUgnY4jvTgNqkfhoGaA0Gl+HfLLCeeRjC
	 ry8NGDcZk44pvDj3rCJNnHbxN3xhSI4Zw/Jm0lgo=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id 2BAA5349562 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:58 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0107.outbound.protection.outlook.com [104.47.25.107]) by
 fx409.security-mail.net (Postfix) with ESMTPS id 643A0349658 for
 <barebox@lists.infradead.org>; Mon, 10 Jul 2023 19:23:56 +0200 (CEST)
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:d9::11)
 by PAZP264MB2894.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1e7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 17:23:53 +0000
Received: from PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94]) by PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
 ([fe80::78f7:7c2d:dc8e:fc94%4]) with mapi id 15.20.6565.028; Mon, 10 Jul
 2023 17:23:53 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <6cd4.64ac3eac.63855.3>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S7FMFlRYwPxL9rwNqE2a4kPRPqEPx/qGXMKGBENTOO6fuAQyBO4HFHimkeBnmTdQoy806FAetaDL+5ZfYFOS5kLnxgVVSo847il79XlR7q0wvfaQ0XTOgyNIcHJzak0AiSO6wCKccNkyZQANcasx6jbvVKzDje+ieoYYJThniFMn9rrdMNJ0rCjY6tfz1PhBuHoMzpxwDegGwsDMil7/cPQwFJPuOVhULJ7gxWcWd6ZE4NI+7QcQAsbjEPQm1y79FRj1SEjW54sNJ2bnw9ROh8hSJAXwGweGXesgXg03wUHib/IO0OMNIGPu6R8rqRama7jPv6OPde442OKcdyWETA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qo397zxOWwVzRzjGbznmMRZdTFPdQMOlujmg1YjwupM=;
 b=bu6i1XEDn1aPf1Ikl6xAGNynOCR3n/APl0hco8XRqj3gZRllkvPABn3/6524CzoOonc/4j5aZUjNGhhYaJ2BsDyG3byYEEuAKM7MfSB7igVbQzEKW/CRHOcW9MIuw0Uk6FzZ/fPNtBQAu2LgMCB9PQMHf+feTPIQGWGok78mywoKafdzVa4c4JsGIAfkez9LqrhkeVEw7LzabXlxQijsbi0UrVVOhXn1WoazYlQQjrrcWij32jyLd+3CDbWauBzuA7SSOJ0KzF42vsO4zRYWbx3U58+lrxd3Nzi6RhO2kDkuuBVqF3cRpyBLFOw6GRs70bX6/2oA5NFS+re1PnsOgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qo397zxOWwVzRzjGbznmMRZdTFPdQMOlujmg1YjwupM=;
 b=y0Jpg2cNY+FSzLN/9q1+b4GKvy18clg2GRqdjDqcwQO6w7+iCkNPM/r78ztE979TZCNeD0VXb4dKoB0GM5iFhRhXIaILx/LyxTmOpnR+FLc2kXzVgyi0iCASXj6snsJ2QnZsCzKcE69a3fTv8zbgotos82TBUwgTfIxf/W+T0ulxIpINw5RZvnKjt12Zz1PanPy5BtGf644ZsM7WQ9fRxG8F2XF0VFLB3QV+WzmTo9CIrVk+vQBXwMGrHdKC7UCVgtpJj1JwPsrIx00eqrzANiy1ykCz0JuDY2IZP6WspPh8Kf9HvGlzSACp6EkBZr8+du1PG1CjUEmtjt0bk1/o/Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jul 2023 19:23:31 +0200
Message-ID: <20230710172335.26701-4-jmaselbas@kalray.eu>
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
X-MS-Office365-Filtering-Correlation-Id: 269ecf23-c888-4163-8191-08db816a6f43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: f8VX6RrYcMFKx8wTwOiiKqfzEvxIou5jZsOfJGhv8CZ5GdChIf0DeF6ZRCMHwsCJm0wMVaVQQgAllNhqDZ1ESuUM/7PxXe11npnKpwvA+UHK9iSOpW7Edn9ZRIu7AmarE+LdDesuY9RLkNF4pWlg309/5X0iDUqGAyEpQ1ESoV8knvmBWFtT+uGqWXBqkqX/V4C7Ml/uyNwY1tJ8/QQHu9aJ464Oi+625dzYNuuONB1GwUdkWq+8R9FoRTmX3/V14IExlUTPZxpnvgTYMgAli40fEsPLh8iwR1xMpN5k6xv9Hac4D3DZCPCBQBthbdmd3DZ42nwBZAZQA8HbN3E9EYCxbq+R2L4kDlSG3XxYJoFjzDq0Xnm+wAsiW02PXpXi0e/GMW5QaRXt9H4h/ZYt3NiaLBlylKzuC1N2mWok+GcqLg1dTozrzaXZj+kRPolAzw6DWQzqcADY3/XmcrogwTFQBQhAxI5zo50mMi8VIk9IGkd2DCWkVXlTfnAPGsWKHD6L7MXuKOUaJD99UJUZbdSvkV3czGClQkQ7xvBtCnbEb6oMLphSx4tiljDP0NnDg8dHjy2wtSAQrSd1j8W9kJMDDRr10CJVBIDqunr6IEzLC15sFEBWbgWKazb6SeTH
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(39850400004)(376002)(366004)(346002)(451199021)(186003)(42882007)(26005)(6506007)(2616005)(6512007)(1076003)(107886003)(83380400001)(41300700001)(4326008)(6916009)(4744005)(66556008)(316002)(2906002)(5660300002)(66476007)(8676002)(478600001)(66946007)(8936002)(52116002)(6486002)(6666004)(36756003)(83170400001)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: r6L8tOQGdCYCD+9XwSmQH8+FXmDmd0dwZeCRwnAac5XmJ/caoW7mqi+NDYtR/y4pC+ADR355kR5O2INnqIUbfqyQh6qT6PDhi218a/7XK4p+NiAPwWlSPoBuCcJ7T6ou70t8yMEO3dl1Xwmn6PiGrzTex8YmfAJFlrURYKvGFqELW8zdzK+XmJQwnG3HUq7YAjMjOgFO1SDJyU2wHxRz/8NQYAaRjMDY2V5Dvsp2dnu6WVYAh2JBnLgRSk7di4y2RPeY3I8SK5UUZLr979Ke6RcBFAUgxXQW7mndzP5F7pUj0RXtflZHZTZEF7UreRqzcQvRlUP1/OmnUdRehPjO+LTaM9A2C6yvr0Nsy1+rxvmvm93tGVph/+/5tun2Ja+VETPx/J6hxL8ixg2MgMQhyItDHKSK9lPv6KTAwiECxnVsatR4kNK6Jq35eaj7LB7Y8AYkyPE+FtLrimtGUlnN4Gb0poox5gbjDOPZK+Z7Hmb8T3GNslrxdDDRBR+NugsjE6dGiLKV020OwDnCdYExebmWA74om9aBuJcSEEhxiY50y/SK1Y6kApfH5KVc1TolocU5F31KkAMekFxKCGnERVLN+4NoCZse2ZdcKUpCcvFZzwQeZhBXmVPilCAeEEwzDN/LNR/2JgGhftPtOZpxn2BujXJj09CxxA4JF3yU6ZFJ8ZXUVaBassJmLeQuyylAzlu+4IbCHXSIP34NiJy2ehAsTJHtZqf6Lag0OnJp/JF+eGvjmPLdR0JpDDIzIrgM22wXsvVSJvgpDPoXjzySKUUohUNNuV65zk7KOf6UG9kol4jEY2Hbi+qkX4xQlaM8nLntjLzSpo3JopS1J4aTHg37yS8qZjD5fp+4HjxJoiPcSMdM4VY8lBPqgAdqDJFaREiLwHJjFKCkFuFZf5Hrf9GxxLCAfxmSEADdyj1n3y7qzVxRgIR8qkhM+9qYCEL2
 FK3ZJJwr3Ohgy5+hy3rhTdsnGNU+stAC6/Lgh0UESrlSOGjvx1S/avwhkwKKCwMooU6wc+QQvq/GTOSgytnjaqEAz0sckd+pAWTq2siy2p+e4VTeBEXGJuzTYuo2vM72C8qZm35hJDmVbXhgZjYcP+4ghn7RDNrQ2Vom5kgtfWsCHJkWYQu+LFtRggkMCsiPX/2tKwWOZdbUd7D7ldtq8QLv++j49qGGIlvPSZDjuzwmO6vEV+xktCgJ3RDu0fSCkSf0IulEHbldkzDbUlZ0R4/3rLg3I7DLPZx2mGA99gZJ8rG6IPcFL2mpFT/WwjdZ9FKeUItdu8tHwHm/J7WP1US3fT6fPRtR7iSM6jHlnpYAxbiItjCsi0T00AMxblU28KElIULYthHdl9T1MnsBWiY+Fr3+zwLSErjh9mF3XkPSrBZkRW0fucM8tHj9LxUqEF12fGuTV01NRNQ68YOlL9O0rWn6EMs8ogfmKe/ndKU4W4VDnhLG3NyikFbXtowMDlr9aV+XJPqJlDwIxrT0GvrKbDEYzEJO9HwoiLfj6CDBfi8MmbxXNqS9Xdrd4XYKHua2U7qHLFux83dWlBimWp1taoo37bpTD8WrcWGnYDk=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 269ecf23-c888-4163-8191-08db816a6f43
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3751.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 17:23:53.8250
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o6weAT5kNTMSeTkdG0E7EVIXZlPiMLWq2/I9v6EXI2gGzpM7Q5n9/L3oCwjkH3iB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB2894
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_102359_773267_BC4F3BD2 
X-CRM114-Status: UNSURE (   8.75  )
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
Subject: [PATCH 4/8] mci: sdhci: Actually return the error code instead of 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The sdhci_transfer_data_dma function always returned 0 even in case of
an error, fix this.

Fixes: 60b608b271 ("mci: sdhci: Add DMA transfer helpers")
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index f6deea4020..a980e34314 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -244,7 +244,7 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 	else
 		dma_unmap_single(dev, dma, nbytes, DMA_TO_DEVICE);
 
-	return 0;
+	return ret;
 }
 
 int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_data *data)
-- 
2.17.1








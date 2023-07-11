Delivery-date: Tue, 11 Jul 2023 11:47:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ9yL-0071Tg-Tl
	for lore@lore.pengutronix.de; Tue, 11 Jul 2023 11:47:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ9yJ-0004D3-6P
	for lore@pengutronix.de; Tue, 11 Jul 2023 11:47:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:In-Reply-To:References:Message-ID:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jEHN5dMGrbSn/itEDiw49FiX9wu57+ZOjjI7Nq/O/PM=; b=cSjB7+n+lGn9/zfciSTs7aImiO
	0kxAypYUHvEsZ6PawK8kHH+sOuFHlTwTCyoE65e4UlnT5MJr1ARK7Fqua6Hdo9rsuB1u2hLYcqCKJ
	OMMPyoJ1ekgvPJ4PTICTi9QHmxUaQMvh/P+ZlQRPdu8AAm7Mz0Pt/5wcrsYnzGE+gvZ/b+xbHdTk+
	zA6SPR++T15PbBbBVJE9TF4FFKWIXEtA//3b5UTdYPQ4RiRvqIF94LT9msk9LVg84Fy1xEbS7RB8M
	Rh7d4wmua/t3+/KDPiBUeiyx0tYPb07hG8CzyCVFftDO6NfGR2ER93YdoQwdLYha99Ko2NXU8NN/c
	XOPfrJFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9x3-00ELVN-0q;
	Tue, 11 Jul 2023 09:46:33 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9wy-00ELUj-1g
	for barebox@lists.infradead.org;
	Tue, 11 Jul 2023 09:46:30 +0000
Received: from localhost (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id 10BE835CE61
	for <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689068787;
	bh=NLW92Apvmd3qekqdR3S7oeTVWCq8HbF74taBTFTs5HU=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=Z2me92zB/L4nPWpGAor1gjpE/GY5J8BmJPecGdP9k66GXnkb2nSU2gRmHt3+8wtR9
	 y1I4pceQ6gclJ8zeoYiZYUxlGg3HsOPFP1aPt1zcTigAop2MDNQ8d7x7HdtgQbmzo7
	 JfpyeXw8+J5t0jEl83DZpP8kWaxT3SLPTO/3fAtM=
Received: from fx306 (fx306.security-mail.net [127.0.0.1]) by
 fx306.security-mail.net (Postfix) with ESMTP id E321F35CE51 for
 <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:46:26 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01on0102.outbound.protection.outlook.com [104.47.25.102]) by
 fx306.security-mail.net (Postfix) with ESMTPS id 6175235CE15 for
 <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:46:26 +0200 (CEST)
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23) by PAZP264MB3413.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:120::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Tue, 11 Jul
 2023 09:46:25 +0000
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::4902:e46f:b3d4:a4f8]) by PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::4902:e46f:b3d4:a4f8%6]) with mapi id 15.20.6565.028; Tue, 11 Jul
 2023 09:46:25 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <1710d.64ad24f2.60537.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hLkOOjGTd5ag2c1rSBU7tYyfnAIpUnY3lNTnCi0BqPmcWLQWphEhWCYwYnmGFI2xKMXDqpVSBui89ccEzWmpP8pq1zo5tZ7B/Kd6QM/yqqwmzLI3eZIuLJgGcZoY4i3/WlfyNzOEZhhUUVPb0iSsFblfHbD/U+95awEujG9DCeYgCnwNlKVwa2jxuYeEViYbgmCCi/NbK5xf1nKI2rQkm98GGTLdK+nkEJ/bi18NT22h9uUiMYdut/yjfbuPt1pn+TnH1cATLA7XKA5yn2f02+PcC14j9YU0+j/4ZD3sZOX8eP+fSX39OPPT9CssfYcvMpZaJ1jl/O5/iiv/HQHNHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jEHN5dMGrbSn/itEDiw49FiX9wu57+ZOjjI7Nq/O/PM=;
 b=JGFCXy30iwQUbitmR+hgnNJYMtN5Lsx/ZfHsEmvc+TIO9na3MvheMy+hvPwt1EjhimHGvOSSOQLUdk5YdcETBsFonb+KtNbVXHKOusTTMuXWS3HDTB/GRCHVDxB/zCYf0LAzlkx8Ilstx544Ct6vI1OAyymO1wYUwm98wa3Fllu4NOin0EK7j1AKQ/F1dXtn5/Jv9HYFcbDR6Ut4dtPGbpFG1/f5vIydmIRLneuMUgz8ddnPechAVtc09Fyi9ReeIOjY8G4O7Hx31vTUFakfBqFWOCQgsduHVbmlzNnAp2hpEL2W5SZhEuW0wZCZMoE7i7lQEkclCwb4eSuaHm/i0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jEHN5dMGrbSn/itEDiw49FiX9wu57+ZOjjI7Nq/O/PM=;
 b=fTi/pf3kIF2d/M0/KI1CRZCdh49KWFs5FtzfwyUNnsSK+UW4CgEGoSHaFeDkXu0Vj6i3OtDSouTn8Ujlprvn0x2vXSJ32IORXVe1ITfL88QEpNkWBH7gP8nKfEMdTP2A01MJdVUrpwq0SWpBpPa+shUzOj7Xh9yDd35cfJtQIZXb1k+/J8gjq/3DaOmHGWjO6yHiFJiotG57e573Jk0akelCQYg/kVzpe9Sw01U73+Ww4bzvVkEaXzunVQn++q3qUT0liRM8bQUe1TOBRa4bdBx56oBzY+b5eMiU1d3Bi+htiyVTMpmTwDu0B0KlxbhdDcVcBFwnfuUB340rdYLtQg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
Date: Tue, 11 Jul 2023 11:46:12 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Message-ID: <ZK0k5PpuHbEg7fCY@tellis.lin.mbt.kalray.eu>
References: <20230710172335.26701-1-jmaselbas@kalray.eu>
 <20230710172335.26701-7-jmaselbas@kalray.eu>
Content-Disposition: inline
In-Reply-To: <20230710172335.26701-7-jmaselbas@kalray.eu>
X-ClientProxiedBy: LO4P123CA0189.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a4::14) To PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3119:EE_|PAZP264MB3413:EE_
X-MS-Office365-Filtering-Correlation-Id: 62ec2991-1d7b-4736-9534-08db81f3b148
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YiT5XTccKc1ze7m7ikhiniXjQBhfz4D8Z2p5Ja2TZgm9WlY/5ngNArjsZa5mUGQXShK78UuoNnM37HaGANtf1epTTiJ2ZgcGmrJK1le7tNYLyERXS5j+HfkcVheKP1s2CUMzDHqczLxaLNy0B/0v7FEF0ZIsk9SQb+9K2OEeek9sBLIIiiMhtrjagUpJIdvguK2ebwhj72tzMLK4sryy4eC+JESX7M5gPXyMAL9gnLZt0bMxIM2RIkO9oDXfvZFhZYZYgNyUQJCoTSlLpH3ho0jl+zis3ix6x6/oGnOqeb49rs7QnSe8GOJBIBP5pRO6eQsTufrwaiBV2lWEQ6VpIprNMj0zkQA3HQcbeB2pVwMriYSW9Uxirpnw22NG5kP9JrZUoIaCzZg57NXEjwzXoMLFbqNapCYZ0yP1SpQewHwBG7+/8m4prSsqJJj04TPvmLZDtyEXPKGAvNxM6iB6D6Pi0Y9YS7aXry/asd4TUN3TgbbqQT7nabYipawvEjf7hFgic8aGzg8xGb702MrePzoroNIkJEIxGFoaP7LE/40=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(366004)(376002)(396003)(39850400004)(346002)(451199021)(83380400001)(41300700001)(15650500001)(2906002)(42882007)(186003)(83170400001)(5660300002)(38100700002)(26005)(6916009)(8936002)(6506007)(66476007)(66556008)(8676002)(316002)(66946007)(478600001)(6512007)(966005)(6666004)(6486002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Xf1Q+Yp/skpT7PxOtsBgpUKoOodIYW+FE2htgsB3YPoyIRvPyIN9ng2wbz6gtpixMd2uL+/By2alYkPeYw3yiT4hCl8SCaEHn0CxqTi4U85r2i3dM6YD+YtIOCPb1QylqDprT3Dz8q1fkOPET8lGWvMdfyZYDoZk0bJKpjM9zsbm9Y/2EIIvxjlBSXCpWRMbXGFQVAdZKMD48cJYOoLMESL6Qi2g+6eC1SF+aMYhdpp6nhSRcR7RCYWYsXe4vvqNMOsO7xy1Iw4zdtEWXzhQJjYkGnHCuzj9t/xYJnf+sQBEm5jbXh4L670om25DfY9a+BGXGdBDL5EdnW9DWhSPnp041xotVhPgrqF2R5pqnD+UrIqq8zRtW3tb/o5XWxjhHkV0K7rvACGIFMyARKHb5odpI0VWR+1mMR3mVxewY1o5EZc+MHTA1kVB6R3nl0imHqPXGJdW4fh81U3vCDDi7WuilVsXtfU0TFQcrjIW9Vns1eYuUZOZLaTAMIWuh0vYHR6Jz0QiIIwIb1M0vRDh66SB5QhZgwBTruy8FhUmI9EkRsI0YZLhuuVdbehtPO4COk9S6yrSwUbsIm3XjGd6xpq4CqJfdK0vK1E4XdxH/hDuMFy3HVwU9Lb73oiDKBeEWyPb3w+txl9YXDUmew+lB3rv6zxzopJ2R8YpYJ69cdSGUc5sH2ChQpPsX+awijsc+7Erl7mAdSci7HdZhPlsf1NmKSX8LvA6TgvEtoA62DPHV2BIk/2TM2qNDP507vFX5ext/JT8eW97opx/KZoWaZdvjGLPlFkb7KXpf29l+UUvBzjEcwDU5OO5OViVnSk+wbxIsC84kq/VXsgAySDoR/mgZgrOdiD7SA44nVBclJtmZbcKOyTG2NgRrVTGfmL2nF7gSFB7F1LG4GcIaT6Hahm+1SPdnjndMx3bxAwPEmqqj8faKF5i/f0ivxKSIyJJ
 bj8KGtEgDlJMVcGpRPVbGjQLWFY5CB0gBBKIT4ZMl5KeiNxV/H1yZbJach5PN5QY1zYowDYnCFAY20bzxJvEApL/QEp9sJaCq3syKxDpx75zr6AQI9hNEl/F996LZGesE100yUzUyhnUWvTd31jqTSuqTHKau3lougqsRiGsvfZoOT8CqtJhqGPUuhYbamazknKfo2jmQN2d0awuEjjTwU8RuUfezNcCCm6fq+IvLdZZejJPqJFmzoAfUrtEDBppJ+lyR+cTN7AJTbehpuQjEdl0Dujye51AxXYlw3ELz5K1qsFaCoIT/Cc4KA1q0CsoVFaLP08itnOIQ9N7pHX8gC2SPoNrhCu7ngVTtN3RHdeEfPYApCHFGU0ipC1hU9uHud47goBYQ2ptkW4v6u9hOfU6Aq1Za+MCm0tkcqSdiUQondxR1ZQyh4I8nA6iMFw1MTxUWkJYEH34kr6O6z+x66CynwpE1raYJBIx1hiY3lLVCrP79/zfHolv7QxC77Ylob3iiDGHjLkCkFAv3p3+6EMpTHYSHHPSr+R8B4NfcBIvWlstFVjdn6TZtZJcpjlViwh0bEEoBen71QFoTa1oLPseuVoIAZV99w3wwIhgm7IwmYsRgDk76+pUUCNWUR6HwWmZZdNA2K57HXn2JcXfZA==
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 62ec2991-1d7b-4736-9534-08db81f3b148
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 09:46:25.5478
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 50sXvbnYE1u3f/fsPKMkagzjUhhKSVvTZCgZgZYn3oui+sB8PZFw3/7P4BhiksVkUwUMRuWZOzpQKDr2VySaeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAZP264MB3413
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_024628_692832_A9DFD835 
X-CRM114-Status: GOOD (  29.30  )
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
Subject: Re: [PATCH 7/8] mci: sdhci: Force DMA update to the next block
 boundary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 10, 2023 at 07:23:34PM +0200, Jules Maselbas wrote:
> When working with 64-bit DMA the DMA addresse is stored in two 32-bit
> registers, different from the usual 32-bit one. Copy what is done by
> Linux which simple and is also a workaround for some broken controller.
> 
> Note: in case the 64-bit DMA address needs to be read, it must be done
> by reading the 32-bit LSB first (SDHCI_ADMA_ADDRESS) and then the MSB
> (SDHCI_ADMA_ADDRESS_HI).
> 
> Adapted from Linux commit:
> 8<----------------------------------------------------------------------
> commit f6a03cbf43e586211f8ea088148c8ecd3fc4b5be
> Author: Mikko Vinni <mmvinni@yahoo.com>
> Date:   Tue Apr 12 09:36:18 2011 -0400
> 
>     mmc: sdhci: work around broken dma boundary behavior
> 
>     Some SD host controllers (noticed on an integrated JMicron SD reader on an
>     HP Pavilion dv5-1250eo laptop) don't update the dma address register before
>     signaling a dma interrupt due to a dma boundary. Update the register
>     manually to the next boundary (by default 512KiB), at which the transfer
>     stopped.
> 
>     As long as each transfer is at most 512KiB in size (guaranteed by a BUG_ON
>     in sdhci_prepare_data()) and the boundary is kept at the default value,
>     this fix is needed at most once per transfer. Smaller boundaries are taken
>     care of by counting the transferred bytes.
> 
>     Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=28462
> 
>     Signed-off-by: Mikko Vinni <mmvinni@yahoo.com>
>     Signed-off-by: Chris Ball <cjb@laptop.org>
> 8<----------------------------------------------------------------------
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/mci/sdhci.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
> index 4aca3af5aa..4c8e73d94d 100644
> --- a/drivers/mci/sdhci.c
> +++ b/drivers/mci/sdhci.c
> @@ -279,8 +279,18 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
>  			goto out;
>  		}
>  
> +		/*
> +		 * We currently don't do anything fancy with DMA
> +		 * boundaries, but as we can't disable the feature
> +		 * we need to at least restart the transfer.
> +		 *
> +		 * According to the spec sdhci_readl(host, SDHCI_DMA_ADDRESS)
> +		 * should return a valid address to continue from, but as
> +		 * some controllers are faulty, don't trust them.
> +		 */
>  		if (irqstat & SDHCI_INT_DMA) {
> -			u32 addr = sdhci_read32(sdhci, SDHCI_DMA_ADDRESS);
> +			/* Force update to the next DMA block boundary. */
> +			dma += sdhci->sdma_boundary;
I've modified this to increase the dma addresse instead of aligning the addresse
to the next boundary...
I don't know why this works in my case, but by reading the SDHCI spec this should
really be aligned on a boundary, maybe the behavior is different when v4_mode is
enabled.

>  
>  			/*
>  			 * DMA engine has stopped on buffer boundary. Acknowledge
> -- 
> 2.17.1
> 







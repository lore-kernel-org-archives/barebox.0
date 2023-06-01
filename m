Delivery-date: Thu, 01 Jun 2023 17:30:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4kG2-005xI0-UT
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 17:30:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4kG0-0005lo-3Q
	for lore@pengutronix.de; Thu, 01 Jun 2023 17:30:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:In-Reply-To:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6tWprEF3K2Q0cyqwJ00uDm9G6krttrnE6ia24I6tYN8=; b=if33vQuiSLeprVDBwXmg95sC9S
	NoDTFIQV0T3BIcCxBgU/wq76dhtEtNhwwPXtvcxWfk132tVd94h00jJRrs7wU1ZJBdRBIeCLIk3Lh
	hMUJVJT61GFhLaaEuG4qGu5DIC9hB931F1xLCq/th9HUVDqjbDJeSDbmDv/WBIhXLm8s8VM1lwPu1
	pq/5DcthfyjhRNPzz8JHLdiZjsf4TpYDoTMGG3mTYLOBhcV2HtiUhmCg1qpQKqniweONEPu7Nh8Qj
	kWktYV6WNPI82ghCP1huPE8KqMkIYAbFtO2tb1VmRNu6shfSFtlWMEVNyc7NK421D/EHXnOajq/go
	56Cn9DUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4kEk-0042pg-0f;
	Thu, 01 Jun 2023 15:29:14 +0000
Received: from mxout.security-mail.net ([85.31.212.46])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4kEg-0042oC-08
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 15:29:12 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id 7333730EBDA
	for <barebox@lists.infradead.org>; Thu,  1 Jun 2023 17:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1685633344;
	bh=jT6QV4NyyovQ/0o5C/dJHt9txtDGDxgxoS3nks7L1IU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=m5LL7LcLTGwSXQ81qa5ZCLOuC7HeCQdi6i+8mMflS+LenxOqwhuEKAkXK8LdwgmGE
	 hWyFwR2laDANkMsVDSHZm3FbHGUJLM/cKl0Fy2ACB3ZWzBJEx4FYWie1iOAHx1GDhm
	 DlEKbLJ+QENGeWLighhIT0CVbk3N6qH8I2MVsM8c=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id 310F330EB15; Thu,  1 Jun
 2023 17:29:04 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0100.outbound.protection.outlook.com [104.47.25.100]) by
 fx303.security-mail.net (Postfix) with ESMTPS id 4C9E030EAEC; Thu,  1 Jun
 2023 17:29:03 +0200 (CEST)
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23) by PR0P264MB2966.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1d5::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.23; Thu, 1 Jun
 2023 15:29:01 +0000
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::fb3a:e31c:94e0:db8]) by PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::fb3a:e31c:94e0:db8%4]) with mapi id 15.20.6433.025; Thu, 1 Jun 2023
 15:29:01 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <793.6478b93f.4abe1.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cc7HLYSLWlVSrqxTnnjhGCenelcKwsUznxRqoQHWKf9lWxrI0ZqgjE6e9o3P8R2Xx0CJI5Qey7d5PrYVr4/skFTKQL8SmBpskXDggkOgp8NPy1t4AYW9WuJClOJSmxfAvTIM0+6tJk6oxkQT9K31sc8QKzjFreghpl1HUq6ZKkpEQWJ/tYQ3hf9RyX+avGrQ6GltHz9BMYc+zpreb4h0+rXLJ0FJdC7CBqshqOYdymT36N4LuTlcdsViQd7iZ9gV2sLmL0KsnVnVCpGkc0FlfrH//TGiVq9C7NVnrgafiEke7U6kw0zMVQfC/ZgbXlxtbXl7l5QgYiuWhdeMzSpDgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6tWprEF3K2Q0cyqwJ00uDm9G6krttrnE6ia24I6tYN8=;
 b=SX7mNjEyire+N48GZH0I6//HuE9+d34/0zGC6yMXNCWRC37teTWwwP7k/57XPpyjLDh9A0Kfiu2c28ewN84vPGjwf83YJ8DmYaxl4WFPgE2XkEyRee5+zlcdCjakIwpgpeo3gwBTsS2Q8C/zGMrgZ2so5WTLZpxoCLLSIlsTjFyCVj6hdffP5rvjS/vE3QpRAQdHfwBZqvYCTDOmwuq8qmAmjPJcpUj4knCpd2+/WU5eBI49Nvf1KtSnzEo1+eVHbSbsHqcCihZRqlfD5a+NvYxiosQAph8zrVwbTxDotTV8NlxqxScdBzf22je2/6+xO/Fr1NV5mfo7KqF9lnBQgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tWprEF3K2Q0cyqwJ00uDm9G6krttrnE6ia24I6tYN8=;
 b=H8/Zpl1KPUSa83ky4uDMJocPuWalIxynG/5Zioz1VX9bthUnajYtDg4SjHLjLwyM4L9bou9ZLsI20Q3qs+RVY/LMJW1DpWP4t9rV1+fF9UKGQn4rXpAGT7+ZKMHtz5cYJqv06y102/3ooA691GFRTsxBsx7vUHA0aUYn9EzqUBsOnzC1doFEJH6Oim4gDpwNTncqDZoKqbrOeM4qT/FZFyHzG55eiWwi4Dff3b0DFoZwX6Dzq/vbPHhr2BUVbcNbeLZQWNCSdppPMzJ739wyWRvEk2qGiAq/LZL+68E6kHJiFDyJGeDaoXtq/JgCCnGMCU+5twVqhlnem7y6CiRB6A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
Date: Thu, 1 Jun 2023 17:28:47 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <ZHi5LycyuzDwjwTS@tellis.lin.mbt.kalray.eu>
References: <20230601142506.1069998-1-m.felsch@pengutronix.de>
 <20230601143209.GN18491@pengutronix.de>
 <20230601143842.447ap3h6hmu27gxl@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <20230601143842.447ap3h6hmu27gxl@pengutronix.de>
X-ClientProxiedBy: LO2P265CA0125.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9f::17) To PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3119:EE_|PR0P264MB2966:EE_
X-MS-Office365-Filtering-Correlation-Id: cb44df43-a5c3-45ee-74b9-08db62b4ecae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AjfE5EwgadLKNFyU/KSE5s3ZlmgVX3JkIJ8V1GY33mMOlGF8ufYFgoeEhMJUt7tJtRX7Xt9FMI2VhACu0OI9HRJ2VwK8KewtBPHxrq8GAVwulIhFhhqZW1/fdnoqniEDeT57+tJYNsC4L7R331zVucDX0lLVjw3f8GoQLTvGWt3zLlbAlVQGs39SYgfeKPWeQmZluJDdzlew1Bc0I8X0fLQoHe20E/vHooQTgRexIx1wGpitoAy/5MerLlZXxOB/Pv0Sr2eiPK8LzlhkWw/Hbx/T/3nBdnaKsb3J5BWgJPIB6TjIm3eh/5xoUwM6JYEonEr3qBw9Wp8ZNeXUgegdoGacqMA4j2b9wjH2RjbWX8yF/yVHl0OMjyeP0FH+f7aJHw17+2gUk6cJjKGR6RjedJEhuHjCdbMRVuprXSeHnfvxcbJ4IJXAGme/XrnVIRg8QXVfTGggtiPw8jiLZcjoBpHd1Xn+X52hCit9WBzSiLva4oIMbSdf1HDOcgJ7zNKti13c8+FoubALBWAIun1kw7lgXW656hfrUbv069xBfRk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(451199021)(42882007)(186003)(4744005)(2906002)(4326008)(6916009)(316002)(66946007)(6486002)(6666004)(478600001)(66476007)(8936002)(5660300002)(26005)(6506007)(6512007)(966005)(8676002)(41300700001)(66556008)(38100700002)(83170400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: oUuWaMhwIuob2xChRKFouM06FZSmsKv0d3QnMdx9BsoaXGwxowclAYf9H94/QYUWIpDI3b6VXsJdIb6PF/NL5vmo6ncl81F2h5frSqwZqW74ZjzUsXkZ+CSmcewDImfMv1Iidcyi8lbDR09SQxojLPlVPlrT4bbn2vIIuDY9xqYn+4Z17AlpDh+9XeZ1S0fVSlfqTXk1+KILJKXla64FjngxAGtJo//wPK+K2A/jX7sQ+Otugf64hRVDPI6JR5ZbE/g8vJDVtZkzAUsfsxItkVblJymOzMQt77bFpXGV6+2JEupvsEowzZh9hE5L1ag05jATFXkmKfuVBUG/TgU9JHuTP5L3Lhn7+BedQjpbfZZzE1HodtMI3wSLRiiDeC0cArqbn34yXZb8kKtGP7NmUV3qyQcE/8d0WNdVwGKWpVQn+NeDBdyIOosHWcshTG9kZiMiE8BcPCu06HQnbqmMxsW4xhNHAdXmazdoESgEhWYnTZgNRs9ZWRcvjyBZK9PRQkwpQoIUjrp3OzdgByOL1xVJBYaXPFYtNoIUcCKRw4C5QlQ3POemIbQKtukNHZvuEODRvvUXsIVBJBrw3Ab2wSjxDr7DSlZxyjzjzPGL54m7gLq0Pv47nx5XcalCwzEhmNzy0Q0cHjl1UrdYHkUWlPO9UIWNg6gyQpMHoj+AWUrLswyZyHqHKIoPZm02cKD8OT3QDUDxH/LeJFQNNVNjnrEack4eLNei9QuOpkmtOBnLcQM+15XB7DHTn0Jn+Ffr33n5q+BFoY/58rFho8fLhFJyOyLpRAFO5FCaRAZb3QfiV2BJFnWY5+BbDv92z5kQYfKohWAsmMFq4oNNRpdfnifdVBStpLNC0QTrYmooU56B8TSc8WrB42ZrpcXsWiVywyOM62ko95P2nQpvwn500l2/c2uqgayfVwOzKQHDARkFcZzp3yr31LUluJ43btvz
 dFmwot/uEM/VBRNbsY99McRh+lbtFMZoMelWFfgww/8h9r2PM4f5wU7TfyfOpleeznT6Tvu+yL5Gv1zBXrNixl87zBhrzcM6fAAvycdmcmj1MAXd3gosij2lRSTpb6TQM3C8FPtHcujv+kuZg2MRIQrwOvGNd9EIAwzaZeet2+nxfsZRP8HSW2Xu56RUTCQlaLL7ayQoubevn2BSIEEJdkKvvG2WgpQN/8IIkTMJL8xC8HA40J9kxvg5lfTqw6hzWuhIjp7R+/GM56VLrNwSMCpJS1bLcsv5WlCV1AEZuftsHC2SMpRbfg8lwzSR0EDe9swcitmYybP5D6gYCx/kw+Iw9CFoR/w7JFHqbBUwbu7QTV8BkXcxi2mg1w6A4bGiBTfKHOgFoZj6ujsE3YH18FMRFPnZTUcZygi+MUhQG5QwgmeY0rJB8DHsXbQUYzLi9f+tMCPRgN8j6ajVIHsoulUsOH1+2fPsscmDRe5PeycAP6f9rx+8A4LMMXBbEMISF8h7ln8J9gFMKSol4wyeyy+HXu0aO7IeVr4giTOSbynIdCabJp/UNhEeMiz6MeaPNUkuSGe3pGLSx9aE9x22URO1nt4bFD6F0gesJlpNpSqDYeJkgEKpbrP3mSXnS4/nCtG4d8UiucjyLFptgu2rlw==
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: cb44df43-a5c3-45ee-74b9-08db62b4ecae
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 15:29:01.0078
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C2qTh04qpWl+CZG4BtEzeVSCRcPgUHbTMjpiczc1uT7cWNK9B1CGQG0vwl5UDYeRhRVb50nlnohgnRpN+Zqrlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB2966
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_082910_286634_2D83DA36 
X-CRM114-Status: GOOD (  12.72  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gpiolib: fix gpio-hog functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 01, 2023 at 04:38:42PM +0200, Marco Felsch wrote:
> On 23-06-01, Sascha Hauer wrote:
> > On Thu, Jun 01, 2023 at 04:25:06PM +0200, Marco Felsch wrote:
> > > This reverts commit 3641d381e63321016e3bf09504852a6b2a2f879b.
> > > 
> > > Since the of_xlate support the gpio-hog support is broken because the
> > > 'gpio' property used to specify the gpio-hog pin does not contain any
> > > phandle. Due to the fact that of_xlate was never implemented the easiest
> > > way to fix the gpio-hog functionality is to revert the commit.
> > 
> > 3641d381e63321016e3bf09504852a6b2a2f879b was introduced for sunxi. As
> > Jules is currently working on sunxi support this is likely needed soon,
> > so what's the second easiest way?
> 
> There is no sunxi driver within the kernel which make use of of_xlate.

of_xlate is used by sunxi pinctrl driver, see:
https://elixir.bootlin.com/linux/latest/source/drivers/pinctrl/sunxi/pinctrl-sunxi.c#L975

Best
-- Jules







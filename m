Delivery-date: Fri, 27 Sep 2024 18:02:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1suDQ7-003Sb0-0S
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 18:02:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1suDQ7-0001lC-GU
	for lore@pengutronix.de; Fri, 27 Sep 2024 18:02:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qHeH+L8TFziZdo7pzGrFgRHVN5dX7eHj/egNhQzdl3c=; b=nQucMlCRhMMss9Rh8hs/FQxMU0
	V8OdqbaRJIkJqLLyA4J/Rl6aa8BaC+c/P9BjDs1pMWURXG2Ev0aRo8DjvPpWHjwUa+dJzBqV2DdTP
	AQ004s1K5uXLRSzHSBpE1YtZXOEKTo1dPWeXHzbVuvOtd7+niu65atCBQyHBtn0LSg5hwRFwve0xm
	7XSQMc41uRy3Gcypi5AKAShoBxKCKhdQqVAfhVYsjwTzGy1LNGCkbw+Oaii5N8mN+K9x3MD5kDVAT
	6624SY26HUPHR8ONIyXNsgrDVPrlvsnTTjuic22hJaqmmGlClcQa3LYqrKaq1q9cqAAf4ZnAEdQVn
	tFKqdLgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suDOr-0000000Be3I-1VSl;
	Fri, 27 Sep 2024 16:00:57 +0000
Received: from smtpout34.security-mail.net ([85.31.212.34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suDNt-0000000Bdyg-2we8
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 16:00:01 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id C888E94A1ED
	for <barebox@lists.infradead.org>; Fri, 27 Sep 2024 17:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1727452794;
	bh=TwBAacTMqeQWIQdMsDbg97QFx5DY33hpt3oJ2pTq2/E=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=IBK/7szwqkjpPwhFJBgSx7gJFBRGZnq2Ab69zp0RfZvjckYfoDCdBWDa6XF9QpSFE
	 NpvsAQTCgCUjvTL9m3YNJKfBk/lGBbJBgTfGuZCgtsH/abytQiicF/sdx+obCV89fe
	 k3bgpQiscSjWu3Qevp4apTtr5bvB+IBvCCStYw84=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id A8AC6949BF3 for <barebox@lists.infradead.org>; Fri,
 27 Sep 2024 17:59:54 +0200 (CEST)
Received: from PR0P264CU014.outbound.protection.outlook.com
 (mail-francecentralazlp17012055.outbound.protection.outlook.com
 [40.93.76.55]) by fx304.security-mail.net (Postfix) with ESMTPS id
 3FB8E94A89C for <barebox@lists.infradead.org>; Fri, 27 Sep 2024 17:59:54
 +0200 (CEST)
Received: from PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:142::7)
 by PR1P264MB3357.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Fri, 27 Sep
 2024 15:59:52 +0000
Received: from PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM
 ([fe80::9cac:130:f92d:451b]) by PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM
 ([fe80::9cac:130:f92d:451b%7]) with mapi id 15.20.7982.022; Fri, 27 Sep 2024
 15:59:52 +0000
X-Secumail-id: <4c43.66f6d67a.3e4c5.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V0KEetE/ljriOihKgfXRz5JOHIFIQ85aX0Q8vNeudmHO5wfR9UOK41/C0Ur5oRQUfRmPJMtOIjlPL8q1lDKwWG/x/TAG5EP84QjR71chya2mqyp1D/QVgXEQeISasGcoPe9Gy8eOwrtEmVy1vsjx9g21XalfbrFGa+WjoRBwHTLoD2mocYL5YrXcN9Z1D3yje5R5UnG+V/7/XzY1cNYLkK5yjTKwaVRBhg98mqI0QYgOfkmkz+WZyVtfbBAaGwRRBOrPGXFYyOSoSfI7Oe1UoQu5Y4fFvyhJD2kA64IW0oJK7VtK0zDbIte/aKmoq1BPsAPI4Jo51VqTX6Gzeb9lQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qHeH+L8TFziZdo7pzGrFgRHVN5dX7eHj/egNhQzdl3c=;
 b=mgudAZIqbw/gdZmXh+XQJMJdxRGOEPqi/BvXFd9oxQoojTspDEF8k3S+yeJPdBHUtWLHwqzgGS6rQZIp7v8Y8Q/CVcGM70dnctd3qJzrizoz6CAbXGQdCWdZWhDcrY4PqEIR0a5cJXILJEf7Ab/rTdPEo9zaZDhF/5wpGtNiP6APLdt8ak8zGJz2FjBv5NlqqL7w2Ci+tW3YevqcicQpjSOPKjY/B2cRVNG1DLb7ZpswxGjh9n3vG5Mn637DjOvwpdgZajftvcREZFjlLK5f350pD/Uf3K5M4fyQFMXoifRZm8pV/IMHG69jfrRxY8y1HKJnXZZnd0mIjOKDILaXEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qHeH+L8TFziZdo7pzGrFgRHVN5dX7eHj/egNhQzdl3c=;
 b=ET50g84ESk/CVLyqVdX3iEGuwqLG/A996SY09xI5v5o2bxCQbQXurTFEgglHA3p0dWP0IYTRKSTYTBF0bQwV0RVX4EA3Fa7QmYkMag3PrxvhlfW0Z7WoCewEavQv/fkjsVH9edwPge4ZyTOML3DncxJCph3epyqkf29u/3jrrctjP4d1CfJS5H17a+4fsMtUtLZNpoHKhczXXITD+0fSWl46FQUR3CjFalkmVgTtw8dsTGhwpalqyb/GDxRXvnBklzG1YiPw26mp4WxJXO9YSsiQaNX5xNrPGdzaDomladL4IlXltSQt35jnZrF5z8Ee37+A4fGwr6dbIZLfQ/bK9g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <9732019e-81dc-4770-a343-4bd3aea02c3f@kalrayinc.com>
Date: Fri, 27 Sep 2024 17:59:51 +0200
User-Agent: Mozilla Thunderbird
To: Julian Vetter <jvetter@kalrayinc.com>, barebox@lists.infradead.org
References: <20240927135359.1128779-1-jvetter@kalrayinc.com>
Content-Language: en-us, fr
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20240927135359.1128779-1-jvetter@kalrayinc.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PA7P264CA0532.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:3db::6) To PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:142::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR1P264MB3480:EE_|PR1P264MB3357:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ecebc60-52e9-4565-8d97-08dcdf0d6c58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: ePN34Vt1Ggf3W4SxXT4525nwdeExJQ9+MBsOC+k/9d+lXIriJW/YlMN5zQHk5LVfis9Zmq8b1o3aRRrBIoMy6QTCHpBiA+NGC7srMAssUx4MfPQ00xBuL9nAHTnCUAt2ck1+oOZdegCqnbWpEgqeTP/9CVDvF2MoUSzRa5YpidmbMdshLeWRnP2Prr9FJz/72AFA+r8ehtYs/xgY0kvMtNnWJ3CcXtjvG7rofsiKpxrnZ6Pg18nDpDLq5m0L/ljDGswkD2WXzjTexjPT8UtVjrYNNO+u1oblOXiCRB6u6GPlFsj1VVlfmtCpLV7lcLc/icwuaa1n1NYcMWeDUhl0qbKddQOSSouxjFQL6Dqrr8EdUgOzRuSjHjJrUGkVKuWsCObedeCKCsh8An/Kyf7A3dKDqWcNxd0pRVJJ1bwmJ5+3+fCWdSTgZKD1eoy+WF9wcdYKc6Lt2EWu8tzakfrA4I81uVm0iXrFv6O+JTJAqrrRRJ7gL46wP5Y8o0QqKDgY7mnTmzk73mWL2n0+7ZnU4LtYdVH2vjyUOUlUCcj17iPzqkivINLOIaOaYGuAtWsxNs7eGbiGssgB84DZaqahQm7lZ180iuU2CRPyFzjxfY9yyaCRXeXlTT5+QJ5z28F57JHKKjP4g/QaiKjgaaV3LPp4kt/qMX4muCJYPuE+aqhkIm2ZwRUSaygMPN6HuotC204cCf2rMp+KXcuwnhd7xgH5B8d1aUILMorhHWeBrFQv1HytbgOUuONkw6A8Vu6FCqbbnOGbt8939oXcAUSrNUYxLR7ENrZ4wIasr/3pjzV3aO1jEDpYJ1zpVVyauWJFg/zByO4HSWvtoSHsG0o6rXsTFNR9Xqt0rO6uYPxcvdoYSlKZoGd3fqFiPyAmz7X+5CK4zMqdIarbFKQl6/0WJEPDAytd63puN6708XDofJ0VGFyoKAmyTYZft7kWPfV+5F7
 LVQ5Jl24h7w7wz/ShMY+RX8eqqie4xJscMj0zc1is+kMvoEfDx8SPXT1lJvpnpfHTOlnt1P+Nm9ZfHuLT9AcAHSiRIZiHL9cU5RTUqffsnmIbKG1DQit1X18uGJm248G3m569jRnZJCthfiASWBQaL66XDbPvtfkeOUAuFXAKHC7uVfXU3BEzdF2Tqh4UO4NpsctTKlgW/g6ZwYTKeLO/dg/CSgT2suwNS16FLMrS6ZWx1rGXFX046R0CoMPrPVRehTZr7bmxAXufaOv8RRT5DizKDTNroh/TlBKZvBn6DtCCUbkC/6HiLDNz1yz1ti/Z76tr3OglIwFoeEx5QdLsHCOulri5o2Nk9ZZP0q9ZU1o/SALoObSemCKRXCOhTtBMTwWGoLBbLaOwAO8ZOQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(10070799003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 7i4LLmOGoGxqA3RT9PL3t3sJ62D8UeJSzfnaGTeLEyUtZ6KTB0aPFCMXhkJ1dmpCJyzv/fy71UYuDAnkhJKFtTpYSHXI6oifIB5m8P9LJIk6/kh+hOezm1E5idj70uwWHrVjqTdNRvJTDBjah5q0uFORIqF0timaomM8pT72NeqwOEsiFwz7FsFkLPWoab+M/yFCqikS3gxOzzEIRESM6TaoRAGFuQd5DAE4fYeD1VMey+pf6xTdLIES9iYS7fi74LOk/NoZi/xR70fngks7fxWGxiIpk6JilMdR+oyFQ8HfdhHbK4wDQ1cSNGIO+pxbn39kld0bDHF3nqhq6cGsUeXp1o0IoPgunuErPGC5zKOLfpU1Trla/cnCTWFsd8Yho3khpAu3eiey6yxirjFv8Zr7aeZawjbLigplQP0HCyYZdL9uQsOOWILOSIQpZX63fM5qsIc3OZkL83RNnJsezoH+XLoM5/VDNPGxYnFujwbVBJA4b/xijEtBXP8pbo53vEr3GO7H7cBPKtvgCau7TFnJUaQAwby27ZKHjYoeNxtH7GVmMTxzv1qY1UYtW0+s6h3Bf/YA7AhGBWZxAUkvmWI5ZEJlMu2TGZxfKQVAQIKgJPb4OlzUykdrMuv3l2MAWRrWMUyEA0k40c9VPFcckG9iMZS/5wvIftpYhOUXy+FRMft1jELai1in2xjy+4N0lwL8UjO4MhxTVkceucCOjBHa9I887KSXnbw0yVoxjzZtPXxWXJd+0TJtKWyMcBVqMleQmPPcPLcXftMZguEPzTtlFdCkNcwlbKtzPp6SZzt85yvOIelvBFMKXYiXr/t0A3NHLOkGHsvSHfgkocXgyoDOerbbu08rwpE243cTIGuEyIhaydfbj/mTN6DywB9nZ9fv3Gf09t/PC87QKG8OcDL4vj0OSSgNKVWi+7tEd5hThc2QSj6su385lIhUd+XQ
 XoG+PFnW9X64mSXWmsg26MYng6HPDfRuP2MJy9M39l8i1SZyQXMOw1Nj/dWxwSB3NHnEeFR0oYwOQaBFDiYHEVLGhYji2nUikDrLECG/3MjQzjrwf0HERUB+uyAY7wO+JkJKtBAr8RJeghujKX8tgmSWqdFRV3judWgpfoLavkQGweS07CsrNfGm/wSh7EIMu8MuDZuADqYH+Jhq9BXErypNkDAXz8NohiqcpcLzYTy12ebftP4VPIPZug/qu58WqTX1hjKZBmCFNyX9admHdInKD9QTreGrcTfcaIc1G4LqSDrMyED0IIiXnwNUUINwMlyYp3MPT5kegv/slAbzYOtNdiXoUqvFgk2N+MNxvjYr4oTzVT3iWri+WM3/V2sMwG09m/ZhPQnak1w9U+4CgYraLcCjz7IF+Zb/+JMITwgPt9AI9WjdhtwaJ6cbUKFO66HHaGuFZ8ulnJysOHln+j2hmIMqC5fKKlZleT440Rpoi0nc/xFjnSYBxRfztkTti95GdGkupI7YQ1en5ceRF+2xJtH/77g0IqQX1qv5Dm2Hbbpcuy7CJjz0F7t3mp4frRAyWyWZzoPdVnx08FVYyeUKI8I8Av14Vh6YWnorIETBPCeuLaYmpO55Bwt6v3aRufYrruMGOIqS3Q5XhGyMLBycCkwfT1AL4fXHfAfNb+qZuhQCZ+4KMMqbAIsZTWtfge2RpaBw1rmDqMFu+lM+RA==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ecebc60-52e9-4565-8d97-08dcdf0d6c58
X-MS-Exchange-CrossTenant-AuthSource: PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 15:59:52.6433
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lc9TuB/4IaDFhZjS4Y534080quAdKRgUtj3dzzwDVuPg3MP+laFAaFgMYZuX84rdZMFSHMVpJgJzzR5xAy/AGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB3357
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_085959_508263_687426D8 
X-CRM114-Status: UNSURE (   4.97  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] kvx: Fix SoC version/revision string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Julian,

On 27/09/2024 15:53, Julian Vetter wrote:
> In the register $PCR the bitfield SV (SoC Version) determines on which
> SoC iteration we are (e.g., KV2, KV3, etc.), whereas CAR (Core
> ARchitecture Revision) determines the Revision within each iteration,
> e.g., KV3-1, KV3-2, etc. Since this port is only for KV3, SV should not
> change anyway. But CAR changes depending on the revision. So fix the SoC
> info driver to give out the right SoC version/revision string.
>
> Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>
> Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>

Thanks for the typo fix

Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>

-- 

Yann








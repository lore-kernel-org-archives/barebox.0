Delivery-date: Fri, 02 Jun 2023 10:06:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4znV-00723f-FA
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 10:06:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4znS-0003rK-PW
	for lore@pengutronix.de; Fri, 02 Jun 2023 10:06:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:In-Reply-To:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KZq8zkQom+tXenZrvWKTlbMK0BhIqyZjhGBi9QPWtgs=; b=w2LlHdoHqGfr/msrNILHxfxNPL
	SY0/mc2JO/1rPVoMj09QTY8PwfVKDyYdyd9bDWGalXomQThNho4/LYEHWJ2/p/i5H6cgu9HDpK3WJ
	voW+meG0H3q3EvHpwCA6lO5F1Dh6hdeFpxY69i249ywIYMitmwT2BB4ElGj4z1VMTQqbKzil5H72U
	X5UsvAAvJW4+CRVh5jvr18PL1CGqj7b5myXvdy5HwTRnpl4yhfIs3u3jVUEk4BikKBFijD8F1R9g5
	HUCfyNtR3buALFH1xmYndSmoAHqdeB+LkrZ9gOMyqR8n+n7nFcH2QPgwq9iisdSDWqFS0VxrlFdS6
	p/rRiKNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zmR-0066Cm-0F;
	Fri, 02 Jun 2023 08:05:03 +0000
Received: from mxout.security-mail.net ([85.31.212.46])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zmO-0066Bn-0C
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 08:05:01 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id B96D830FB72
	for <barebox@lists.infradead.org>; Fri,  2 Jun 2023 10:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1685693097;
	bh=giBfTQJ6iscuOhtzcKnOArvO0spMZnzpRTwIycWYtz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Mi68xNwz7/OM2IcuC9XeVxjVYK0RKG+FhJB9PmP8e/n807mS/q7onOnwsMECgbuZt
	 IBjUIPEf+U1jDXc0n6mb8vMLzWlIaAvvVs2Ak5OcgF5JMdyoXMcfVO9k5OxUkhBh+R
	 /4LejEOPRsnPUWMcdFvZbOxgKXDmRVZH8bI5nrS0=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id 9753930FB52; Fri,  2 Jun
 2023 10:04:57 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0106.outbound.protection.outlook.com [104.47.25.106]) by
 fx303.security-mail.net (Postfix) with ESMTPS id 85AA030ED34; Fri,  2 Jun
 2023 10:04:56 +0200 (CEST)
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23) by MR1P264MB3314.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:28::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.24; Fri, 2 Jun
 2023 08:04:55 +0000
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::ad0c:d0de:7537:3461]) by PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::ad0c:d0de:7537:3461%5]) with mapi id 15.20.6455.024; Fri, 2 Jun 2023
 08:04:55 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <11da4.6479a2a8.8413f.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RhbYmkunoyi7fqhZZeWlUHQ51il69FbEWWZCbfstNCxHkC21HA5zE7ZUIvQiWtq6FwpywnENQK/jz2qfu7/2IHYXYG5TmCziwiQvHROfeJBP1acBQfR30xogoAq9tS8mzVRtVSfhNVJjcOWhpAf/g3JVewVPdJu53l1Ep0L/2TL9CbG3Tty6DqbXFQ+H3ZdjQefnq5x7NlBWfAwbAbnPF/sQI8zuq2Ko6v4NwyGtNX0tna/IAIh5q4InxdF2I3E5x3Q+25aPYmfHJ1M8UXJGEBb1EcvE0q17A+7MdWsixRTU2TGPq+4RiMlTZAPpJzTIJn1vHL9GbD+SAklitmfupg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KZq8zkQom+tXenZrvWKTlbMK0BhIqyZjhGBi9QPWtgs=;
 b=mzV7HfijXRTTVLVaeLSvyT3UE8inj/K0WzdTHH2KrhVPuEPYNoUec9KBQ6F7B8Y8qDiPjZqDpYjqYAVNqdyp4qTNPqZGja1o7meAoS3NnNL98URa/faXrp4dw1wQhPw5cBsmtoMUO/JAtZCkVeaDGsp+FJ2kvgd3sbJkNUekl6ILzd1WtdpzWy0dgr1d7z9lBH74Cl/vDHEuxHKNi6K6fGpMxP8Ije7Ecv9FQYn3tuW5GtYG6iRz2pMAGWA+PJedAlkB1B+hy5+4IER8F/TCC+sytwwdlBOEqZCGdIXCgr7xkXONj0p1MJs/8cHdrdgO0k/uYvi8xPs96Gsn+QS1Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KZq8zkQom+tXenZrvWKTlbMK0BhIqyZjhGBi9QPWtgs=;
 b=nrFY6yut2hhvgkB1G6cu+xD9PKMcyTgJJjSNZWssB2Z2196toQ5IxQauTnNDFuS0Vt9JRWZ8NRZ3clsqs2V+3XNk+88ZDj4AZCwBSlJbS9VXxOB9ep3DY1to4ynb3siRlCxBNRAYlsZvVopveVDn2NaHVtcsWj5/yW9xW6x2mAptI/DunOuaKfBYirZoU9OPEpPn89cPzXnAIMejFRD7BaScYe55EPaBeTOU+Vhbp0uMMq1VPrVjUPFKq5/DnHx5ipEfXUkWYezdcG2BoR7GhzbtxTe7lghakIVvmQA5gy01qhH3f32JkofH76+1AWAnG77KPeRmDnCbZBWTip2Mug==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
Date: Fri, 2 Jun 2023 10:04:42 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZHmimlKJJevAP67D@tellis.lin.mbt.kalray.eu>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
 <20230602074921.2687669-9-m.felsch@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <20230602074921.2687669-9-m.felsch@pengutronix.de>
X-ClientProxiedBy: LO4P123CA0636.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:294::14) To PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3119:EE_|MR1P264MB3314:EE_
X-MS-Office365-Filtering-Correlation-Id: d0a2b8fb-71b8-4e0d-349e-08db63400d0d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ly8sDe0atIkfkfHq60DgavKZAx76/fK4WRshr5NRbOwp00R0fL+F97jORn/5tGs461mmg9Omtio8cun/5DEwxgrt0WZQs19TeJXY9HndRrhOIndPopwGTNAhFSiM2MGyFKjFE7nuGAYSeDDS1Rp+rBH3NC/xGHj6HwiKotg7MkHmmjsC1rVeffP1OEgACuI1cMKwSV9vJm79B7oR88hCr5bTmjPbSQDbFIwv017G8sgmz1dG08DOM9CNo+lIA0x35PG2TkknHF0QV6b3CT0SWDazXEX/aXN8NvVzlspDl8SHmzGsXhs7Vrcir+eCITxVoxgk4y+N/uTWl5Mfky17wSOQnm1tkJilwM4d3oHei88U2D2vf//6HtlUSW8doac9E9ZkHbGtXjANuSO1NukScoEgUjcCIK1W6lDNQ5Q6bLxA0wS9jlinAV1Iqpe3TRvMgBdGm9A51p55/10Xa0BXEjsedhm9Snv409tEPL/xwfTLFT6QmqWtl9MIt706XV19jzJjmnD/YqPyjXahF30Zxbok7p9itaVidY9QK8CWCyhS8cl40mf2lvBD9YNnpt+5
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(136003)(39860400002)(376002)(366004)(451199021)(478600001)(41300700001)(83170400001)(8676002)(8936002)(6916009)(4326008)(66946007)(66556008)(66476007)(38100700002)(316002)(186003)(42882007)(83380400001)(6666004)(6486002)(6506007)(26005)(6512007)(5660300002)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: ggWrvAblsN0h8HtrBmS0zHxQJ9Q3BHNI4iKQ15fXIVAn5hgmFFkFRcHL+0y1rawK4BN6PWupHYgL76m9NVeakFCOWCne1ZBeDxP4V2/EvWjLP7O6McSQ8/PDOG5QditUDiY3tMZfMQhle4gIM83htaSNmsMjNuwGgDC7Gz753gdKFTHUYhUSuklrEMNfOyqnKNw00QiLOQ2b4R1/Qb2DwDYqNjrlNdaoDYfka3Uhqtnm/o8Q9X2YjQrdKXGKKTpByWsEMAdaX4ugZofQSF9l+H02JuCMSymEo4T/KtqngY6JUmUdKhdnIeDCOdQflUGdqgI4iJK/RS0F2cmHFdxynkyhLB0Fh9C2D03LBhRybB39Di1PZeTH+yyn/sr+cFkNs2SprfVMVb0ibwDiXTFsTruTJ4DNVtNzwvqz4MU35XGgI4yvksbIPPfo020dzDxBIxySPWWzJ/gW5GGU5gwFosB0LtT6mHWGLgJpMIBWlqbqZY3UMmd9mUe//A8t2XE9mLdy2m3s4AzOT+t3Kid3266uDolf2KV72FWYu64poegJeluHI+to8+7qMOARUw/P2g927q3XUYItLFzJVCjEH+c3OTD9df91rYmQLUO9AOHAOkMlPTJXLJPUuXtTkRdw90IYYV9A2xN6qhUrcfmUla6PS2CgqHsQz7+YtOrFH6tUexEWhOf24b2J7leSUvQTLqNJ3PridiLH8GyXrB+vFOy8KNqA7CMbGqe/Y0ul3yK3ATz6AfGRmceBAtZtEjhn059cTCpEwrvS5XXwhZ72ViIYIMYX3fWCO/qe/Jmw6j5o9yiZeeAGHnl3mxw3Y84iehvwoXcglb4f/655+u/YWpQJ88I10inOPUTla1f9GCB46ap/GaYJdsYu1YtD2FptQCBoqDfDdZouJ+CIypT0fXrgd3hV5YzgMRx4fuLGg25qKcM5sLSdsbuFl5zV5utR
 +6gReVUMtAT+xfKwVBPrZb3NJ3AeZgPdZtdRs691SaPeWPgi8rMtqR0uO+NOV+3e4b6dRLIGnWksCTJQHgD/3udSJM/GylYAFd1PI8WB1BcgDTKBosWkDqYm6RQw4AN5jMURtmhAOKztA6vrzXsCXvXHj5NqzyosVL98+8/IguPQDt8HFVe4H2cHwB2bQcj9tVfUiAn5vSLSd9Ngut4iDyKv0lOH+2sdUE1pMslpdjmt8TK9ioUQZrlxtMHHeTHsEGGWdnSHkQq8Y67vFncZF16snABB70WVau5+94yEVmyLoMluxQbrdQ/zOqRgck2a3z2RoBvGRk/tV+Ex6CKelkknzhPJoh93iqeCMqs1g1wK4S38y5ZDB2h9tPjYEgiamIXwCU2VxVUy9gqPmEQwAWsGwim8z4AzUMK12OoiClTxzcNdAjW7QReqfcnOXN+HxY9Qf3dVuteqWqS1CHU8V9WuelQ2Yo3OvqXHO6E2I5qtkMdOXko2Y2x7qMyP7rGfiiXYxyfjyMsPY4rMoRHes/JyzpQZzPpWe5ve5styhqPCEQxE+sRL1xCrNSg//CJFvy8ioSIXm+5Ug6OlYSevZDrX9L8AB98yrPfLgZ86XtO3Xy9aAEntNxsdgKolJfLHBu3MfUKNvEVVqLXZGvB8tQ==
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: d0a2b8fb-71b8-4e0d-349e-08db63400d0d
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 08:04:55.2015
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vCA93TIBwYzvcDW6ZESlB53cqGtr5zDhqZF2IS5aYnHf0D8SKBiIUq2MKd8OeNPPNOZJx7kVaxyDK085G0s6Wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR1P264MB3314
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_010500_254369_43214057 
X-CRM114-Status: GOOD (  16.07  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 08/10] OF: gpio: snyc of_get_named_gpio_flags variable
 with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Typo in commit title s/snyc/sync/ 
otherwise it looks good to me

On Fri, Jun 02, 2023 at 09:49:19AM +0200, Marco Felsch wrote:
> Sync local of_phandle_args variable with the kernel to make it easier to
> see the diff between both versions. No functional change.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/of/of_gpio.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
> index 5da80e2493..c20133bbfd 100644
> --- a/drivers/of/of_gpio.c
> +++ b/drivers/of/of_gpio.c
> @@ -60,26 +60,26 @@ static void of_gpio_flags_quirks(struct device_node *np,
>  int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>  			   int index, enum of_gpio_flags *flags)
>  {
> -	struct of_phandle_args out_args;
> +	struct of_phandle_args gpiospec;
>  	struct device *dev;
>  	int ret;
>  
>  	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
> -					index, &out_args);
> +					index, &gpiospec);
>  	if (ret) {
>  		pr_debug("%s: cannot parse %s property: %d\n",
>  			__func__, propname, ret);
>  		return ret;
>  	}
>  
> -	dev = of_find_device_by_node(out_args.np);
> +	dev = of_find_device_by_node(gpiospec.np);
>  	if (!dev) {
>  		pr_debug("%s: unable to find device of node %s\n",
> -			 __func__, out_args.np->full_name);
> +			 __func__, gpiospec.np->full_name);
>  		return -EPROBE_DEFER;
>  	}
>  
> -	ret = gpio_get_num(dev, out_args.args[0]);
> +	ret = gpio_get_num(dev, gpiospec.args[0]);
>  	if (ret == -EPROBE_DEFER)
>  		return ret;
>  	if (ret < 0) {
> @@ -89,7 +89,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>  	}
>  
>  	if (flags) {
> -		*flags = out_args.args[1];
> +		*flags = gpiospec.args[1];
>  		of_gpio_flags_quirks(np, propname, flags, index);
>  	}
>  
> -- 
> 2.39.2
> 
> 
> 
> 
> 







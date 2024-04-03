Delivery-date: Wed, 03 Apr 2024 06:02:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrrp1-0056Zi-30
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 06:02:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrrp1-0000od-7Q
	for lore@pengutronix.de; Wed, 03 Apr 2024 06:01:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RLwLqB/Of4cEE8q5D3nRxb7yKQnsHlI3Mgveap/9tqI=; b=AaNxrGT9qBRL64XV9tC0UnLbXx
	QCfZVkCZWyFSOUE6yXCqRKyvZWo2iYqp/3K6aAFAJ5GqwSqq8nZN7KUrJEkX1YfUrZpeImTLJ/yF2
	ng7UtpdvRFXIs13KJ/1Oyxey5evJ4AM/BvjiSNpEWnyfks9vS9nKsJTIT9dOws7sls0scEECl942e
	22/fYi9z0FGBTH6a7q0sHf5N+AgoEOkt/qd1sq58RzhoJ8Pq7R0XtuZujCU1l3BmVCZJ/AdzJHNhw
	V+PAfq4O3BwrZG6eYRfq2+Bsty6TYaw54uSekk1o1GOAdk0Ii1mib7XyBrQKdidTOTUyawyHcITSv
	cN+gqWTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrroL-0000000Dsl9-2wOi;
	Wed, 03 Apr 2024 04:01:17 +0000
Received: from mail-fr2deu01on20701.outbound.protection.outlook.com ([2a01:111:f403:2623::701] helo=DEU01-FR2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrroF-0000000DsiY-10dQ
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 04:01:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKW6Q1g9X5HBefDxf7DtGOV4R6BEV502Mk6uS2bFWEymsAXTr5D5zNEpbEf3bNxnSaLRm2eJ2sHDgNRPR1dJ7mb2jx3/K7R4Zz2xrHLrM0DfdcNOQQOl1A8fJ1b1IkpoHcf4jbmfBNbuMuZ6a78VK7qD1Pp2NqDtFR/i0AD1HACI/ZTud/xPktddst3mX7FsOriLKDzAtOgOjlsvOTGnsfKYviVYgNPMJmoJhBTOftXsUeBzl2FQ7Pt+pvpRy/Ek7jk4Q9gdrdW2KbaStbBFYd/fyJdU5LKzKWEuIiq2IL03z2fV7Lq6ht1LneAZik6DUIrETppunf9Z/ZjLTmK5zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RLwLqB/Of4cEE8q5D3nRxb7yKQnsHlI3Mgveap/9tqI=;
 b=I4MRnKdwZyqNgGyGPWeiCIu6cZqvOdwkMXtkKrwbZvF2meW1FjYJ8RdTv4DOKvE4wEANRruME5ygpriTvrCvTS2EhZovzWFPwnyrmx8N4Rj0W7p9shL52qZ/aZPV1C2TZq8ZUKdraI++YiUwabzlZByIpeZ8BFxFY6h8f6NJDuQRed+qVAM/9TC1iZ0cMLzbHGrlq7oQF8Z9QZ+pA6PS+aoJcpUs21DZ3nUbao0lgV1FBrDwT8e/rqW0XK69ikW/lEOXp8hwKA9VlHgP1Ot3rPm2eDrAluvIl7lf67v15kVoKSwfDaVyBneUzknzqEfyE8QrW/ippshOhtQ+Gf5I/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eckelmann.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RLwLqB/Of4cEE8q5D3nRxb7yKQnsHlI3Mgveap/9tqI=;
 b=vpYGfzERZXE5yv5oXx/ifm1m315ld1aJ5jMTTR/KJefNf+OwrERDo26Ymkjgh5LM+C0spUuoMrZhS8Fjm1QOykJaJnZCN9PjXBa+smwK2/0G180Cp4YKpdkwJyBjSQewivm1roXSM3aUfIaaIiT6IeSOEMinVGkM6UbJXfrm118=
Received: from FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:da::13)
 by FR0P281MB3339.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:56::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Wed, 3 Apr
 2024 04:00:58 +0000
Received: from FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 ([fe80::3c3b:8bee:9e1a:3579]) by FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 ([fe80::3c3b:8bee:9e1a:3579%5]) with mapi id 15.20.7409.042; Wed, 3 Apr 2024
 04:00:58 +0000
Date: Wed, 3 Apr 2024 06:00:56 +0200
From: Thorsten Scherer <T.Scherer@eckelmann.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <raghvrf6akiqagwlod3s65ilcfawb43slshzljngl77rnaf27l@cvxmvo7iqokx>
References: <20240402092654.94523-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240402092654.94523-1-o.rempel@pengutronix.de>
X-ClientProxiedBy: FR0P281CA0089.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::11) To FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:da::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: FR4P281MB3510:EE_|FR0P281MB3339:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0crxPi9A2Q3Y6qpteCqwe+P014lmcrgoTlrcEhDV1K24QaDfoo8i2UCZ58q9Oehd6OGPIlbgM++ugIbfFWNvSyEtZIU9xClncZbe2spVrWJIN+cEe34dOzWfV5yIY1KYLOIkei/zhCBfagkArt1zdW/vvd4ffC94BEzgCgnSPxTfunESKgVuVY38qoP6KxfZ6+wF+m9An+8hl1EtjQGheZyK2Aarfcf4SownegrvFEVYeHHM81zRhwDnYtos4PNxgyUscRNqi4MSe/ds6S0b85iEjWptPmq1uchk2pE2z0PP42WzxMavENGQGHgOYriPze52WxMfdvWUdtMozsyDt/CH/IrBlB1LP6runDElu9GGOWWE61sJAtZfk1pnNiI/Pq/rx93ez6f8aLSBvW3/+f3ORN94eu2vcFj0uU5ASCqiFYveHY0Q6xVTtEL4JZHl+cWuqcaGDpAMl9+RciWQ/XEpLdSZUpF0lENops6pcDVUXwrEiAfCzEprPEQ3SIs/3ivmJijJkfKui4gObDC92EdJZePb/2K4/DWF+R+xCjfwx7SC4TzddcOrdoM0eIOcg6ooIIGdVDfqvFwzCuhbS6WMPbTZrK8DJK6t2WwQnxEn/OYxsO+PwE9a98P40ZJ4g+IhJvLUeQh6q0a9tC8D/rqNfypMX8sw7kFQQKAt8xs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AEaE5HR63lvtRFO3BHidRpVbisFvcXgQJJalp3hRyHMso7Z/sWde03UHWRvQ?=
 =?us-ascii?Q?l3/HeBXM3eK5EOR68BEqN/twh2sWWAFzYJRzJHroGzc5STzu169ILd4Syr8W?=
 =?us-ascii?Q?otAjZbbRnpwoUuI1s7Lv+FlSq4gmYlWHr+RHxVDqGmefUnca1/cVTQoBsZgk?=
 =?us-ascii?Q?ICjoPHG5n6ug5rFpBnuxaIKUCspRCD3me+tzMdPHAcNBc9YAA7slorpDMfzL?=
 =?us-ascii?Q?eTpzJ3YIoO+qRWw/jEGbpyFe9r2smwbdxj/RTPmbLhDgDhTRRVDJSNpX/qHL?=
 =?us-ascii?Q?8/sdzN1IkovPxmP7TD21RS/2aLYWm0O2FkVi8N85dz/+8sf7y9gcAcVFlNX6?=
 =?us-ascii?Q?uhxF4sW6AHgfFcEtN/1bIo5trygo/6l6fJSBK90EBcmR5pP2hOoXY1TjWgyL?=
 =?us-ascii?Q?dWBL0NGAYWJgSV7t28tEpy9wOW33vFtI6wkSQSdyTzC8hP4TNif/hZPDXLEg?=
 =?us-ascii?Q?MOmjRFwkqVSGRSp4IuvXF2AuYxFnJb5BGyfpcDAZ9xc3KE4GYB/rc9gjmbc2?=
 =?us-ascii?Q?4RAoNLspf5YFivmi/Hcj9vaAl8zOaOsiiav18NYhTQmeediZB2V0xw0dDFum?=
 =?us-ascii?Q?mC8S/6dVFkpXqidSgxsYaIKwnwHQRVhtqOkYOWuf4fEXN81WGpjwG0UGiqVF?=
 =?us-ascii?Q?DJqVAqs5nZ+WPc/BoBsibY9YEj8oAm+Pg1tVNtWPt7uSZ4VVLFkbENgo2RoD?=
 =?us-ascii?Q?iDD6DJk4VrItdgkOiEHfCtQRuNlJLiN+D8X8PolYTSUCmQrV0OkN5o2dFFA3?=
 =?us-ascii?Q?cXKycbzxkQtfd+nJE/aePi2+Rv0U+uNSAQe0qSGXqYz0bTRkrowlVsS+qJUH?=
 =?us-ascii?Q?uAb1y4goo+TPAwlpfxvI+5LKMxXNSLqrUR7lpU/HUGnTnBovDH09ao3y8e3X?=
 =?us-ascii?Q?Vbsh/uw+kPOtDSPx9I2vDtSs50EfwOaxVd+Ru6U2c/sx7Isrm+l6xIzgVDKT?=
 =?us-ascii?Q?5PJNARal5g5V6gglG8b8XlFt7phnK4CVArnVb/FMb4VkqUS+IViAs/Q7o/40?=
 =?us-ascii?Q?CJT3wEh1K60eUW87B57GmNQQYxQdq3F3vNMOfPUo+j2zPZaw0fE/upzggLvm?=
 =?us-ascii?Q?etoAQQGV1SNSVFWnxShOTnS/a2c3uON/z16N60HZU36c2jMH46h3A7Nj//iL?=
 =?us-ascii?Q?B2y2nfJ8W7s4LY6RrHmlnSIjV+E4kIQVXzbJksv1ZJarmW0A/hURM/6P/iJ1?=
 =?us-ascii?Q?3uq1cY40Ev+En2IcTpB5PHi3AC6bI5ZsaEkBvJg5ttjeYOwoaAe4WBGRyTnr?=
 =?us-ascii?Q?OJJ3+6oy0Pczd8LRRoMoigUjd7RkMtCMUxmI+ORP+EX7zNBV9YvFeivYjLjR?=
 =?us-ascii?Q?I0yp0hm20kUnOXDEYXiC4uhHZDoJBgZW/hGgP9NeSzjnR8/4gaQmKNcUrYz1?=
 =?us-ascii?Q?9DiNwmZeMNZJVds97c6BrpXmBnfYucTftAJAQyQAbSqUkpTjUl/5DfpaFg/d?=
 =?us-ascii?Q?Q3dcg6b+F5Z7p+7ul/zx2hUfIJAi+d6upmh8zlX2GDr4wvoeM0jkL/kWVuKF?=
 =?us-ascii?Q?ogjFDbEuteLmSR78zeH0HLVfPnONwJ34Iy4NRX9++1sKvFskb8FCpciC0aPU?=
 =?us-ascii?Q?JmJZEmRgBFZkxo8UNAVeQNqQ+N6sWYIvp8OZnENt?=
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c660c1aa-7cc5-4dc7-8b4c-08dc5392ab03
X-MS-Exchange-CrossTenant-AuthSource: FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 04:00:58.0795
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r5K2/wE72ae4UHmSuKg2b30h6MoJ9k2ks5vghLjHXjmhb6vEGOfSmE+VkZPxRyrQtg8H+zHl3QO7o2p/mdYFkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR0P281MB3339
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_210111_327519_FDD1FBB9 
X-CRM114-Status: GOOD (  18.14  )
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
X-Spam-Status: No, score=-104.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] ARM: i.MX8MP: skov: add fallback for unsupported
 HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Oleksij,

I spotted some typos.

On Tue, Apr 02, 2024 at 11:26:53AM +0200, Oleksij Rempel wrote:
> Add fallback support for currently not supported HW. Instead of
> completely fail, it is better to use some kind of basic devicetree with
> reduced functionality.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/skov-imx8mp/board.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
> index 3b6eb7b080..41122ea1e4 100644
> --- a/arch/arm/boards/skov-imx8mp/board.c
> +++ b/arch/arm/boards/skov-imx8mp/board.c
> @@ -85,6 +85,10 @@ static const struct board_description imx8mp_variants[] = {
>  	},
>  };
>  
> +static const struct board_description imx8mp_basic_viariant = {

s/imx8mp_basic_viariant/imx8mp_basic_variant/

> +	.dts_compatible = "skov,imx8mp-skov-basic",
> +};
> +
>  static int skov_imx8mp_fixup(struct device_node *root, void *data)
>  {
>  	struct device_node *chosen = of_create_node(root, "/chosen");
> @@ -171,12 +175,12 @@ static int skov_imx8mp_init_variant(struct skov_imx8mp_priv *priv)
>  	priv->variant_id = v;
>  
>  	if (v >= ARRAY_SIZE(imx8mp_variants)) {
> -		dev_err(dev, "Invalid variant %u\n", v);
> -		return -EINVAL;
> +		dev_warn(dev, "Unsuported variant %u. Fall back to basic variant\n", v);

s/Unsuported/Unsupported/

> +		variant = &imx8mp_basic_viariant;

s/imx8mp_basic_viariant/imx8mp_basic_variant/

> +	} else {
> +		variant = &imx8mp_variants[v];
>  	}
>  
> -	variant = &imx8mp_variants[v];
> -
>  	if (variant->flags & SKOV_IMX8MP_HAS_HDMI) {
>  		ret = skov_imx8mp_get_hdmi(dev);
>  		if (ret < 0)
> -- 
> 2.39.2
> 
> 

Best regards
Thorsten



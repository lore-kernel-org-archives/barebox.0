Delivery-date: Mon, 11 Sep 2023 13:51:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffRV-00BRwp-CX
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 13:51:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffRS-0006nc-8v
	for lore@pengutronix.de; Mon, 11 Sep 2023 13:50:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ikv/eQlaSyJI4/9mOLL9wdSyfdw6U8XWDVN1sziCK/w=; b=VvmpOtNfPGL95ktRL5eUNYutc1
	+0Y+FMZp+23yss2bZoBQUbmm0PvX/GukK1xK1Fqqp5xc4sQfgHf1WRBMsPbNgAYUqJDltCmaurPJq
	zpqyuiJNx4fKO4x6jR46vm8zLGSYYcdBc2YYKoUbQjC67fR0UcWlHsBYm1iomNGrFhPSzjVbudrLJ
	nK9JCC0SCjzcI4HkJN5ZdIpSVDhWg0dtCZYp2gtbV57gPDBfXW72HuTxdnx1atXUGsQ7JPo3bVWfT
	vc5X4Tst/Gucop8gLjKBaJcn9if1ta3ZDe6aXUfTCowAD4CyHlr2O/Hz3AmV5EFEaIDtFo/0ofijF
	s6ctX7hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qffQM-000PYT-2D;
	Mon, 11 Sep 2023 11:49:50 +0000
Received: from mail-vi1eur05on20623.outbound.protection.outlook.com ([2a01:111:f400:7d00::623] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qffQK-000PWv-09
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 11:49:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iM97dx2M5ldJoj9ViwIMtDtwRLpUxSJLauzkqbjEcNzmvMlhmRX2U8uKRavk7WxUdwMZAFTh8U8D+yBbEniHKNYrZLr1RsZw2MacFTF9c4dUWqMCAkXfBTUXE5Y2tqGk2xUbCmwahlqJV0kyhMaPlL9dGkL5ZAJwZfb3tkmrnxEXsRjWkYRvEH2Dr2UFdqv9oTkjPwxs7rH4lFmdo7GKNyWzrhLrji+J1ctgBCjh8ZUjD6vrpYSnsUV+xfM7yW/Ant6TL0hrPod+HctWJzd8SDgxZRley+SElSv/IMlCrjAfi3Cf9HjGsW8+p7YU60x+XNcuVAuun85Pu+LZ4DbkMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ikv/eQlaSyJI4/9mOLL9wdSyfdw6U8XWDVN1sziCK/w=;
 b=LyORmdb+giaMcsHRYquYveNESDf7pWpJM1rn7Ikqejnt+YoXDBKNtu/7Ufsk93bp8Oyed4fLI4XPOnk6qeI3wOXybvohf5S19rhoHbGpe1Gswa7klVN8Zx95ij71c/Cpt9yZxM9+wZDf/gVvnr6pYiGqdAGCz2dDm/nynoX0rmeXTqzEXfDnDmHYAkBZf3aXGUeesS0x3VtmK7yRywY/huXgsU0W4VJqHPj57iQhrxPZ6hnraZBq1PgZhjXcg97g7SsFb4ScbOf0Cq5IShjCOdzMeHs0TYokLW8J7okhOciOpWcyUPONnBaOqmfV0GNqIEI/q4oSu51wbZ9SF915IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ikv/eQlaSyJI4/9mOLL9wdSyfdw6U8XWDVN1sziCK/w=;
 b=0F+6h7eqp6T+rHHeKS90hO3xQ98HFXMdvcFVQvZ7756r2NtJIahp+xuPUjYDJskXB6Rm7n4bS70nf6Aj0dD961Of9eqQwdJImxurYyRnP4F6K1TRpChB9qjIDXKpIf20+C77pYX+E9YJRfUs9zf/mw9F40tvMuK/BRK8N1wqgng=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4539.eurprd08.prod.outlook.com (2603:10a6:10:cf::22)
 by GVXPR08MB7702.eurprd08.prod.outlook.com (2603:10a6:150:6c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Mon, 11 Sep
 2023 11:49:43 +0000
Received: from DBBPR08MB4539.eurprd08.prod.outlook.com
 ([fe80::eece:e868:23c8:9476]) by DBBPR08MB4539.eurprd08.prod.outlook.com
 ([fe80::eece:e868:23c8:9476%4]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 11:49:42 +0000
Message-ID: <ea1d7dc1-02df-742e-a8db-eae6d87830f8@wolfvision.net>
Date: Mon, 11 Sep 2023 13:49:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230908131117.1769957-1-s.hauer@pengutronix.de>
 <20230908131117.1769957-3-s.hauer@pengutronix.de>
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20230908131117.1769957-3-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P195CA0087.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::40) To DBBPR08MB4539.eurprd08.prod.outlook.com
 (2603:10a6:10:cf::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBPR08MB4539:EE_|GVXPR08MB7702:EE_
X-MS-Office365-Filtering-Correlation-Id: 74e54662-dd43-468e-a8b0-08dbb2bd3014
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NfxNh1TSaDdfGpWWj8Il2QNpqalK4qm+6lsF0EpvM0t4fQ+GlUPcrZmdSYvowJYdwvu82QqhCSgyLP5kIhpk6kcIWUaAwYhWtm+EyfkySxGmjsU+gpV483ccuXRK16UsupRuoqsOJiHJ/o0ChxHQ1icbZ7HqUFogfpaiALiMJQGmJPDnylVx7w157sbN796nlXAsRW1WWlVoeifX1niLL+QMUWnXkGIwM577Lc7veBp8OSFmXSt8VNtJ1+/5GeNUIIaEDhAtWqqi8WsJL0gPWAb5gpFYRspH3o+C6okHJoJMUajEJBV+0zMaEsYHVUaKVrF/ffG+0cQzhGAehx1wGym1V7VcDioEJozLkZdG2uBef2gXxX0G5dNAcIMfgB7PEfLC1O2ad2DwEjMoQHbydQU8i0kQNe8ubcTPbeUjynVyFaaGpPpcpZV3yCqRf6ZA8+0xuKd3ddNh0uDTA1WBTzXKo+u2fVta9aK7IWwrCkToEpZyMpyA2x8sLl8EWmwJgRrJaxRUGi1lr05fiidW7DGxbh0IKFR/U3t95S/OXBq6vAnl1a2ehQFghVDnYEPLU0/7xs7qLU8tDIjnVUMZMwI9t2dnKYCYvCheQLFv8/Jo86xNTfrF9G2yoF+hzFz+B554JpczIedO9I8nRN13/g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR08MB4539.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(366004)(136003)(396003)(39840400004)(1800799009)(186009)(451199024)(6512007)(36916002)(6506007)(6486002)(2616005)(26005)(86362001)(2906002)(38100700002)(44832011)(8676002)(5660300002)(8936002)(31696002)(41300700001)(36756003)(110136005)(66946007)(66476007)(66556008)(316002)(478600001)(83380400001)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1JSTkhlbVl3VUZMQmtHQllpQWFIMjRRazB0ZXNmR1R1QmZORjV3WU5jQlhZ?=
 =?utf-8?B?QVFFSDJrYUQ4WEovMUNNL3RWdXl1UEljMWNKODRuVEswc3dield3ZkR5VjV4?=
 =?utf-8?B?RTdNelExWnc5MXBWK0VLL1E5OHZvWTlwcHVzMlN1aDhLR1RsTnNLSU1LdUtN?=
 =?utf-8?B?VDBHM0grNnMvUys1TlJYY3JUZm1jQ1QzZElOOVl0RkM1cXo2ckVOYXR5bVF2?=
 =?utf-8?B?aEpUejNhRlhnMmRJbWZ2RlhseHlGT0FFMVd3NjRNTWwwbWNPVW90WXVvaHBR?=
 =?utf-8?B?Q1k3ejVPc2Zqc2VkMHJ3MlduT2JzSUJXWndDTUZDYVV0SVY1WndabnhzMUlr?=
 =?utf-8?B?Tlh0MW9malN4aUh3ZmhVN2hmdTNZQkYra2VpN1JuMFVhNEpuWWpabEswMTZP?=
 =?utf-8?B?cjVRV1UrSW9WdGZ4a0FmVUwveU01bTZCTWNNRlEvaGJWdzhsbi9BODVGTlRM?=
 =?utf-8?B?NXhOQXNERERvQ2xOZ0NYVkk2U3RSN045bjhIL25xc3BWOFlKcmljNlpybUFV?=
 =?utf-8?B?RVdHWkppSEhjNVozT2FBWkMxSGtOVURZQi9WeGgrK251V0lPMEN1T2M2U1V2?=
 =?utf-8?B?UW0rUEthK3lrL284L0J1MUE3SkVrb3gwYm1KV3ZnQXFDaURQenNmRFJ1aUYz?=
 =?utf-8?B?WURhL2ZNaXNQWFFNTis4c1diR0JzQUtQZFd3ejk2RzNjbmlSanl1bGMyQkJ2?=
 =?utf-8?B?SXVTTWlJNDRtMTNmRUJ2dXkvTGFHeUsyYVBFbWxoWGl5WDhTSEF3TEVXQUZH?=
 =?utf-8?B?RDRtWXBobXdNTWRyK2phMmRYdE5FVmZQNW1mTXVVZ0k5K2lCNFF2M3lQTzlh?=
 =?utf-8?B?UFpKMXcrL05jaUM3UGQyQzRhelJQNk5ITDMxb01PUlh2ckk1R2pUTS9ZcjZu?=
 =?utf-8?B?dmFtMGtweHltZmpHVGlFL2Rqd0hzUXJuc2MyVWFSL2lQMldwTUJoeHBYeTF6?=
 =?utf-8?B?eldsZWswdC9mY1h5Z3dZaE8vcE1FYVNiVXhENlgrdFVIRkozN3Y2NzNLODQz?=
 =?utf-8?B?RlZDUTFJWmZPek8ySTF2ak1WMUdSYnc4UWxsb0gyWnFTSVNWdytZUHpoZklQ?=
 =?utf-8?B?TUF3QkhHM0lCRWdyaUs2SVRpcDVaWDY0MGc0YTVZTlNadlM4c1NPVDhvMjBK?=
 =?utf-8?B?WTJjcjV0L1FVR2FqcXpITVRnV2F6ajI0SnFLUzVUaFBoejZtemxLM3NySDJo?=
 =?utf-8?B?L0dxTlI1TE1HVjA3UDRQMWpST1pSRU5rdzlXWFNyRnJoV2pRWGgyTWhqNVhP?=
 =?utf-8?B?WFNoWjFkNEZYK3AwSGhoa1d6alZHUTU2VW9Bell3UlpHM21zOFlmU1Fza25S?=
 =?utf-8?B?SXYxSWlFN0ZPMFQwM0o0SGozc1hYV3h0SFpoaFZEQzd4MmQ2TnluRVlaQjB4?=
 =?utf-8?B?NWh1Y2xwTlE1YmxpRDY2WnhwcllpQzNXaU5TYytwVVRNaXk4S1hDM1RlS2RK?=
 =?utf-8?B?T3ZPeEljQS9QYWRnZDBJaUNEYzhNN2lER2h3bjBZZUI5NmJHaElNYTNEN2o4?=
 =?utf-8?B?MEZKZFBwZ1pCRkJxc0k1ejJjckRKZ055eEtXNnhHZis5MDFYaDh3NGxSekJS?=
 =?utf-8?B?cTNBRUZIOElnNGUwY0xtdHNiRFVYUmxTRFlTc1BkS0laMzJqN21BQnh6QzFt?=
 =?utf-8?B?ZnM0bzY0c3hteGNlTGxaTzdXdzZ4cEVBNnNCS3dLWTgvY2lFbnhTK3oyQnNq?=
 =?utf-8?B?Vk4zbUJaYTlFMFphZVNpcDluTktzdUFSaHplMnF4R0RTdFlEMlRHc0Y0alAv?=
 =?utf-8?B?SUFMUGtwT1M1R3c0R0Ntb09vT1RRZjVQR0p1bXdnTDVKdW9WSHdTSFdEMWg0?=
 =?utf-8?B?V0ovd3gyTzB3aVV0YVFXb3NranVsaWhGN0dDaUpYNUlaazZqYTkxNloyaUU1?=
 =?utf-8?B?MjlWbzlnenVFNzBudGZMY1FScVh0cWFJRElSNGtKam9NQVZ6N0k5Wnh2L3hM?=
 =?utf-8?B?bFVWWVFnL0Q1U3hUSVNxazk0V3Z6WTM1YnFTbjlmMDdrai9ma25rR3JOQldV?=
 =?utf-8?B?QzZORnd3dGF1ek5BTzYvdlNUUEEzbGRTQktQUlFhUW1rZThTVHpvVEsvUWdY?=
 =?utf-8?B?U2pVODk1UkxxVGFMSkU1K2FRNFhpcEVCcnBQMmlWWlFka3JvbUs0TzYrM1ln?=
 =?utf-8?B?VnhyMnBNbVk2elRwOEFUbEt1SGl0djVFTjAvR3VwN2VFRFNDcHl0em05K3Fi?=
 =?utf-8?B?aGc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 74e54662-dd43-468e-a8b0-08dbb2bd3014
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4539.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 11:49:42.9377
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9b9yUZL/iL4Nk+2LfsdLIuPsniTfcZpzqYgrgesrkjfD8Ye/lrxz9p/8lhe16SpE072fbrpJLQuN4mAlxzOB4WmJkroiR0qFKpx5rRDR1Hc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB7702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_044948_086147_146CBD74 
X-CRM114-Status: GOOD (  12.77  )
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
X-Spam-Status: No, score=-106.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/3] net: ksz9477: Add mdio bus slice dependency to
 i2c/spi device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



Am 08.09.2023 um 15:11 schrieb Sascha Hauer:
> On mdio busses the attached phys check for link status in a poller.
> Add a slice dependency from the mdio bus to the I2C/SPI controller
> so that we do not end up doing bus accesses while we are in a
> I2C/SPI access on the same bus already.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Gerald Loacker <gerald.loacker@wolfvision.net>

> ---
>  drivers/net/ksz9477.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
> index 9665e0f723..1abea9d040 100644
> --- a/drivers/net/ksz9477.c
> +++ b/drivers/net/ksz9477.c
> @@ -464,6 +464,13 @@ static int microchip_switch_probe(struct device *dev)
>  	if (ret)
>  		return ret;
>  
> +	if (priv->i2c)
> +		slice_depends_on(mdiobus_slice(ds->slave_mii_bus),
> +				 i2c_client_slice(priv->i2c));
> +	else
> +		slice_depends_on(mdiobus_slice(ds->slave_mii_bus),
> +				 spi_device_slice(priv->spi));
> +
>  	return regmap_multi_register_cdev(priv->regmap[0], priv->regmap[1],
>  					  priv->regmap[2], NULL);
>  }



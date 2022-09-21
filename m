Delivery-date: Wed, 21 Sep 2022 08:57:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oatfk-00B7FL-N7
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 08:57:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oatfj-00022c-4A
	for lore@pengutronix.de; Wed, 21 Sep 2022 08:57:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8ROhgmxU8PaNGQrWJmiwFzV5119fPO2aDTAf29COWbE=; b=Xm5Uz0ExhAQOC1N5rBy/S3U3ru
	aNb7Uu0tA+OOKe0jEVaWkbC1shLE3jAiriM2WS8Dgi1SZ6sn+w0IGi90Y8Adqkn6o6A2Il234F1K2
	ACUuLJwjrgD02alUnEbV/E7cw2Aw8h/YCT/T9OiQ4f9n1PBsUo28Exkl8yJ7JBwF0VaoAyXWXLXuW
	36XV1HTXTUtVL5rG4/NfKAucvJGrURKvjmRiJe74tmpxFFpnWnQnHXPBj+X4NCXB4RHcixrhCrxBw
	z7867gB1A8pHFxMt8ziXOMPjskWTHnwIEIgKfUdGpfwlWUfK6i4gXWHekUuWzpeowSjyFvUjtOh2H
	3l9rlKlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oatdn-009P5l-6m; Wed, 21 Sep 2022 06:55:27 +0000
Received: from mail-eopbgr130050.outbound.protection.outlook.com ([40.107.13.50] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oatdf-009P0y-9t
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 06:55:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KAgHdc5GZc1Z/j+CV0sgCnzcSp5t37ONuW0BDVgDSlvh36+lmZabc937MCApS65oX5v+Rqb8Kwt3m9s4EyOGzgEb73TkSIANJqOYs+I7d5zTYxKCNobxItYnk0UitOPBLCjx9XsnbmbxFebxKLISRjm8X6PRunu7ctmnoOMjAn/AmQ33EFYd0ixzsUIU2AlLN6qxtnTnwDFYw/JdwPCSbLqloJQS4I/pm+L4ClpIumCC3J/r5UT2L9LEhDaiECzSCGiEFKV+Bx+6xjfWLFkXhgTwyJiR1YIU8jHv4W/iPKZTRyv3GiJ04R3lDtPoDdk6Zal997EWFHNgpiPrpajnRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ROhgmxU8PaNGQrWJmiwFzV5119fPO2aDTAf29COWbE=;
 b=TVL5uujg1B3Pbq3Pcm9OyhtTb9ky9U8owetoaUNPv49x7CKA3HUcXPGodfcl9BuhBIxu8PJN7/dSLTFKmjPCFReS/QAq7pCWGVVGYXL3F7o61mjCRB5d0BmslGCY42+NGBdi/LFnM7ARqBWGXb6T9JCgTuNj5nbpscn/KaXLhLoGr1etba0X3H+m5Tv0A8jD5ymPRX86g7w6sznh0ocqZgCg0u/e8RGQb25JCMLdtLjwWiyCYzB1+BlHpNvMb4RdpxsddycOgFIksy31vQ7dwSqa54HnI60cmxdi6MFnuZKbfQg6QyVHsTKUtGJFuyd+aVUjOA3Z/XpzyVYJahgg/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ROhgmxU8PaNGQrWJmiwFzV5119fPO2aDTAf29COWbE=;
 b=GSBsC5doeA5e+Tq0miEZwkvu85eH544Fo3SsyDP0RZ4mPWSILOLj6z16BhwUhF/E3m7PpwcKDMBD/E2qDEQ5MDw6rMSphDV3ZCka04NnpoC3xAxcGHsqsV0nY3nHOH0VeioMW7+VvkCpc90Bq14DMcnig9Vt2fZhR1ycPlwzHmQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB4PR08MB8101.eurprd08.prod.outlook.com (2603:10a6:10:387::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Wed, 21 Sep
 2022 06:55:13 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 06:55:13 +0000
Message-ID: <2ab1b3d8-eff0-f012-94bb-a6ddc61b982f@wolfvision.net>
Date: Wed, 21 Sep 2022 08:55:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: barebox@lists.infradead.org
References: <20220905100717.150557-1-michael.riesch@wolfvision.net>
 <20220905100717.150557-2-michael.riesch@wolfvision.net>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20220905100717.150557-2-michael.riesch@wolfvision.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0039.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::8) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB4PR08MB8101:EE_
X-MS-Office365-Filtering-Correlation-Id: 05251edc-c055-4993-ec60-08da9b9e3b91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	ryBlC+11shXa3jv5XonCNGbyc0ybFRAo4QXf2Z6+XJnmCdiKLfjiuseEDh/IZK4d0EhjEnCxKSaLvg9Gn4H3hsR+aFs1cgmxjwmUCmF1+7Q+WlM/esUY4TbGsbWIJM/NJ16KUsGfShzjZd/5ustNDYLNFMOvvJzo/a3c8QdvE5uscgSvhCJPTxu5ao3PG2a0RXcyh2vXkDHZJtOjRKv1lpguA9m6SvGz2/NoDHtSUnpfmfyI/Boo6vt1zB0IevtiGB0J7KJ6yNxDWc8E0Zgw8aiPUiZ60Ffklysed1/3AVY03tDpE1mi8ku05rj2job/MaTHBFgJTfovPReVetIjHTkgMOettl7maywzzdbdQ4/0y1kyFpQsCPYQhI46vTQN03Gno3GdAD3kPhjqWRroeli8ii5ah07RCNzz2f/367fAapUliAmaUvGpOCSoaWpJ0W+2q+LlxY0so2DeOk73Be6cLOxLnpvhdD/FEi2UUJSkr0yUD6LliaEVt0cFMhcnphdo1fYJthd7BMIY3wK95mKXARFZgABsBAadR9xLX7LUCZ4lp0k1QfgARfwUGXj9RaikLqBFA778MiIz9ZkugOmCftXu0DBGEnzAy/uuLB/Yp4S7+Yt6NZR8VCMFUJ28dCZ+GVruFUzQZA8bpskcmhCpcSbb9nC5IuWWvyVW9OmC9RztKSoDzalr2P9qSJhLIIe1iY/Hor+6Wsn++UjbOCzAk5dSHxVeBszHATHfxFV7g3XKrrbU3FzBIlro9bO5yOOJrdsviJk8nqtC/Z0OvQh5crzsrrgobC3gOOPPKzI=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(346002)(39840400004)(376002)(396003)(136003)(451199015)(2906002)(2616005)(36756003)(186003)(53546011)(52116002)(6506007)(8676002)(41300700001)(44832011)(5660300002)(8936002)(6512007)(38100700002)(86362001)(31696002)(83380400001)(66476007)(31686004)(6916009)(316002)(478600001)(6486002)(66946007)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?b3ViZ0ZETjM0U0VkS3U0d2R1L1hGK2hYZzJQemxQMlZpcDZHc3psNTdSRDhM?=
 =?utf-8?B?OGJMZTdpOWovQnlkVTZTZks4bXlLV05PYjBxYTh0SzYzc2FMZFAxR0xVTEp0?=
 =?utf-8?B?T2wvc244cUVwNU54ZlNtNWljT09MeFFvUmFWTEV6amZQUUlkWXFqLzFSNFpQ?=
 =?utf-8?B?cE5Ody9hUlFBM3BRN3hhSHl1eHk2cVIxR01iR3Npci9YZ3ZFR2ZxVHV6RVVV?=
 =?utf-8?B?STBjNUNodkxuZWJ5RlNOWXJiWWFRVCtzRTR3ZlRHaXU0ZjcyYWdpTnRnSzda?=
 =?utf-8?B?a2RTWklPSWZTdm9heU83em96T1pHNGlZbzdaREpsWm8zVGtwOXp4YTUwMlJp?=
 =?utf-8?B?K215OWZXM2E4bm5HVkJIR3ZBbTgyWjZGa2JnbzFZdlI2bFRjRG9WMXRBZm5D?=
 =?utf-8?B?RXdIRkpYSUIzTzBNNVNVZmRweTQ0ZHcrYkFvNlQ1YkNBMzNCQjNacnFRTlpZ?=
 =?utf-8?B?WDZGeTZhMjdlbDl2SXF6THlBTkxmSVBuVlFtY1lKYWJlWFpZdG5YeUVSUUJF?=
 =?utf-8?B?Yy9OcytMeHlOd0hZZ2JtN29xOU81TTdIQVBWcDBQUC9lcXJubG5hS1lZWjhy?=
 =?utf-8?B?VlA2NEdHOWhjSG45ZktkVkFya0lTK0p0dzZIcnZIbkpxQTl6UGNza0Iwbk5j?=
 =?utf-8?B?bVplTng2S3ZQKys5YkRFYURteXdKb05MM1pWaVhXcWNpVUJqWmk0ekZkeWM5?=
 =?utf-8?B?OXdScW9CMk96NTZQeHRNUlJPUVlYeFc2UUE3Y1M2OVFpTFU2TTkxaVQ0eU1G?=
 =?utf-8?B?TGwvRXdBRGdOcktMK1pQSUpsRXhtbmlkZW9LSTIwaXRKT1BkN0lXdzdxNXZH?=
 =?utf-8?B?U0ZBR3dvSWtYRFAzTE95cGRST1p4RFVyWmsrYTJJZFhDWjJHeHMwSnFkUEtz?=
 =?utf-8?B?V2JyWjdRYzl5SGtNdEViZzZ3eTZqQzhwblNjN1RKU1JLaHlXTy9MTlp1ako5?=
 =?utf-8?B?OXFVRkdFNnhKUmZ3MVdEQkVvRloxYzVJL2pIWlNMSjJ5dnNYUU1ZVlJWRm84?=
 =?utf-8?B?a1piWGRrcXB5SjlkNHY2ZEp0ZmFlZVBuclNWYm5SaHUzZDJ2cnpLWFI2VWFN?=
 =?utf-8?B?aHJtam1nRkVGSnArSWxQeW02bGYxSW1wdmdaVWhpQW1MTnRxT0NvSFFLWlli?=
 =?utf-8?B?TW5JTTlMSWEwMUZZV2NZS09rYzRKRlYwZlRYVDkybHZkb3BUZVY5ZVVpZmRI?=
 =?utf-8?B?OXNxOGpZaDZSaUFtNzMvYlErQk8zQ2FPaEI2T1E3Zm54a0Vsb1duT3pKZ0h2?=
 =?utf-8?B?d2ZZY0hoWU5ETlNHelNYcUN1d2F5NWpPT3ExQ1dJRmRYWlRLdVhwZW5Pblhy?=
 =?utf-8?B?ZUpTYmZUekVBWExTUlQ0ZnRLWUVFbmxXdzZNL21uWmhFbFhmRGpLZWQwdm9L?=
 =?utf-8?B?ZjJOa3kzSlA5anlMd1JNMUZqRktJQjNrVEs2QmhwUVZ5Y3g4S3VEOTB2bCti?=
 =?utf-8?B?Y3BiVWwvMmF0SVFneC81YnZ3aGl3ZHU4NzlpTjl4WlM0cmR0M0poN3BaVTdR?=
 =?utf-8?B?cFBQbTFtTENjdkNPNCtxem1hc2N6MUdodFMyMHJMU2NJK1V0SUc0dTNXT2lM?=
 =?utf-8?B?amFwcXhvbG1WVzdIdVJPbk9ueklLNnc4ZzlPT2ROUUhVdDh0RXJKREpJVVJI?=
 =?utf-8?B?MUUvVzFXOWtpQjFZQ1FwRlQ5U2toaHVPL3VqdHdsbnpJQktpZnBFK0h3YWVF?=
 =?utf-8?B?MWNJNG84RnozT0xRODkyYm9Ec00wempaSCtCdW1Bc1A5RDhodjNiZW5lazRh?=
 =?utf-8?B?cFhvK0dBeUN4RGk5RnJuMHE3SVNzZ2RjcTlnalVjU0pGT0RkRlhIZ2JVbXYr?=
 =?utf-8?B?VzdhWHY0K3FqWXlUUWR0cDhrVEFCaGpSc21WeXp1NEhMQlN2VUNNU3BRZ1Zl?=
 =?utf-8?B?dTNEVE9wZmdaN0tkYVNpbFhlK29raE9yQW80Znd4VE1qOHBsbDhVTVZkVUJy?=
 =?utf-8?B?d0oyaGFFR0JtUlliYk5pUms5dzJUSllOTXNnZUpSbVBlck9ZYnBLZjJVUGV5?=
 =?utf-8?B?RmJTRmw3VkFIT1I2Umk5QytOajdMUGkyeWJQdXBNYllDNThEZUdWeG0rZlVX?=
 =?utf-8?B?Nmd2WFd4dDlNcUNwU04rTGFXQ3dzeWRTMElGZjAybk9uRFQ3MkVZd2VtdWlo?=
 =?utf-8?B?TDVITVJKaEJPQ2twa0JMa2h2UGJLWEwxeGZEZm5Jb1l6T1g1eDdBdVR1Skg5?=
 =?utf-8?B?ZEVuMWNPbk4vZVo5Wms5L0E5cFNVSlE4N0Zabi9EOVVIYjNxY3MwU0RYSVBT?=
 =?utf-8?B?ME5ETU94dEZrN2xuN1pza0pqU0hBPT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 05251edc-c055-4993-ec60-08da9b9e3b91
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 06:55:13.3684
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9dCpSPjmmPuRdy7Si50o0hXZNAsUpEQ8JptfNXXhWNnfduk7O3txcqQj/S9paN6WoJn3ZtW7YMA15j2PqFmTdF79yhDzamGue7ZCMUmbOIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB8101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_235519_656365_20EBF5D4 
X-CRM114-Status: GOOD (  21.86  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] of: overlay: improve error handling in
 of_overlay_apply_tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

On 9/5/22 12:07, Michael Riesch wrote:
> Propagate any error from of_overlay_apply_symbols and let the user
> know if the provided overlay is not applicable.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  drivers/of/overlay.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index 20a43f5170..20686db511 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -115,8 +115,8 @@ static char *of_overlay_fix_path(struct device_node *root,
>  	return basprintf("%s%s", target->full_name, path_tail);
>  }
>  
> -static void of_overlay_apply_symbols(struct device_node *root,
> -				     struct device_node *overlay)
> +static int of_overlay_apply_symbols(struct device_node *root,
> +				    struct device_node *overlay)
>  {
>  	const char *old_path;
>  	char *new_path;
> @@ -129,12 +129,12 @@ static void of_overlay_apply_symbols(struct device_node *root,
>  
>  	if (!overlay_symbols) {
>  		pr_debug("overlay doesn't have a __symbols__ node\n");
> -		return;
> +		return -EINVAL;

Come to think of it, do all overlays need to provide a __symbols__ node?
If not, this check is overly strict.

>  	}
>  
>  	if (!root_symbols) {
>  		pr_info("root doesn't have a __symbols__ node\n");
> -		return;
> +		return -EINVAL;

Ditto for the root.

>  	}
>  
>  	list_for_each_entry(prop, &overlay_symbols->properties, list) {
> @@ -148,6 +148,8 @@ static void of_overlay_apply_symbols(struct device_node *root,
>  			 prop->name, new_path);
>  		of_property_write_string(root_symbols, prop->name, new_path);
>  	}
> +
> +	return 0;
>  }
>  
>  static int of_overlay_apply_fragment(struct device_node *root,
> @@ -190,7 +192,9 @@ int of_overlay_apply_tree(struct device_node *root,
>  		goto out_err;
>  
>  	/* Copy symbols from resolved overlay to base device tree */
> -	of_overlay_apply_symbols(root, resolved);
> +	err = of_overlay_apply_symbols(root, resolved);
> +	if (err)
> +		goto out_err;

If both checks need to be relaxed, the complete patch should be reverted
I guess :-/

Thanks in advance for your comments.

Best regards,
Michael

>  
>  	/* Copy nodes and properties from resolved overlay to root */
>  	for_each_child_of_node(resolved, fragment) {



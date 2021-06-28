Delivery-date: Mon, 28 Jun 2021 21:00:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxwUv-00062W-AW
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 21:00:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxwUt-0004lv-Su
	for lore@pengutronix.de; Mon, 28 Jun 2021 21:00:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r0U7kl8MmyRRqVVv2D3p2EWL9atTXRk2fIILnmBbsds=; b=pBlxqdelRFlVhug0s3pERcmCAn
	cGhrJbfHGkvOyzzvK4+aIXV2Ls99OVo4V9NgfSUW/Nxu0EUskZIg0yVYzGL5iEeDWoJC6c2IDBwUY
	Cy5FNVsvKhY3TUERqP2DxW3ZZF20jvtDTeG1GwhSmFZx+XAtpCXQciDIgr76bmZweM8I0eO8chodt
	GQUjrvA+YSwO1A74e0e9XOHPD5bpV8UfcKax/b71qs0UY5Lr2kpWkwnyYbHGr63OPYF08cXK6jRbv
	0Ufdjduf06WeKQCEie2WS2YDQuo93LgB3zTsW5vQ7jvWwXQH/skxyawH7J4cPxWEHkhcoyPtRwqQI
	DuK42/lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxwTD-008xyW-Nh; Mon, 28 Jun 2021 18:58:59 +0000
Received: from mail-eopbgr60081.outbound.protection.outlook.com ([40.107.6.81]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxwT6-008xxN-Ul
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 18:58:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aDa9cnOzfH8evBVXva0l1OESWT8dsv9dl88XiDd4Im7Jam6a5fDyfHItwgVFgPdIQ7M/8OKRrGS+y+p05H/kl9gBFrcdY2QNcVfButYQLqcSJ9obvvF7ZDVrnWRfA2hOtKJO7XazDMCaNNaodhXG03Slpf6f/VV4GiGRK7HPOZts9cWZaOwqbUnD6f5/Z0ZOCgYjpbPTo3NOgQftWiWOEO9xRogDc97PW78XpC6yFN43EdsFg2IanGXf+6nib/aOrEeff2ThEMmC5+7+0BA5tVkzR1dRSiuCNioDqx/zUVIx8dE0h+z6EOtJPM9jUwFkzW+cLIAtFwJ3lXWy6Lr39w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Wx3S255sOTgD/HXAED8jfQw1/VQaXWHxidZbdI1eEo=;
 b=kUaSis3yK+2LQIggLuPHuBHqO17uRyti2PmRxYIoGHGsdtin0tHaj2eXIv1qVJg8oXFNQsSMrNN+n2CoRRIqK15gq377AbC3ga1c+OJnTloanuXRd+I1MNGmQKUA1heuaskml1tH4ELnFijlBc3A8sMOfu+zymwCv9JoGcIK8H7875Yath+lQ4zgCj9zvag2UBYGSHDHwaTsdd2AB1y9YK9Z16hkOK1HlW3dYH5hmt50ddXGPUVJvqLNyMHpllnQgQoc6dGZU9NPvX05RQKl4Z86w8taWSU4s9qzqpOk+mUCVsHzeYsCTxrEVn3DZVCSB+3yyj/aNEegEvtGgMtvJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Wx3S255sOTgD/HXAED8jfQw1/VQaXWHxidZbdI1eEo=;
 b=291cTpQWxu2hqTplkutzQFAIrs6IfoXk0KGT9Ajs37WeY1GOCQSNIuW+dgCD9nYid/SD454H3G8/iQK4Gym+YTzH3T4Cc9YFwhDBL6NhJPJ3V35f+BQGQu70T1XIwgcx7MOPYpJ8q4b4Wg9iztlx0YcDurIWdm+qAL/7/JIwQAk=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (20.179.42.19) by
 DB9PR08MB7008.eurprd08.prod.outlook.com (13.101.241.168) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.18; Mon, 28 Jun 2021 18:58:47 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4264.026; Mon, 28 Jun 2021
 18:58:46 +0000
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
 <20210624085223.14616-15-s.hauer@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <a8d6812c-9bfa-e629-ecae-0005bb12d3fd@wolfvision.net>
Date: Mon, 28 Jun 2021 20:58:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <20210624085223.14616-15-s.hauer@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR0101CA0080.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:1f::48) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 VI1PR0101CA0080.eurprd01.prod.exchangelabs.com (2603:10a6:800:1f::48) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend
 Transport; Mon, 28 Jun 2021 18:58:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 315af06c-a1b0-44a8-ad14-08d93a66c1fa
X-MS-TrafficTypeDiagnostic: DB9PR08MB7008:
X-Microsoft-Antispam-PRVS: <DB9PR08MB7008BBC1445A35766A494D49F2039@DB9PR08MB7008.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aH2xvrwzM55BWOngVuKhUAhQGA6+M4uNkMPiRz1QIkmeTe+b7HTF05rfByBf873XGcfd2aAIfyCQiP53ZTYLmO1ooIBwXIklNLKfVaFhHdeye+eAPQcXBEtefyfSB2soInEcNkzPZoYIqwZOYxrAY+hlfST4Awn1hRH88BC/alh8y8A6wsDa5VLIpFaGB9Kbq6UdtJNqW7QFHDWIArX2CGHwg2hILaYimTP4m1RHkX+eoXhV+1/dzT+64Cj34qMoi8aQvpOOJDky4ToiuEl/7pbt/G3N/93Xp0nq5d6h5jIA+SNBsJQCvOoyIGF8yRjG7Ea4YZIJ69PxUBXCySUHwWHSfAM9OYJlkzyVPI95ME01pUAHMEH9eV+cXr30oaUVfD0+pM6UV1+mfViNRBra8QSFxTkIqV/d/Q1i0e1sYePaQhoPfC4KCp9rWYgre1MCe7iEpgCB0wOWDcWOCcNrQC2Cqa1h64eaJ1Qq5nHQsH6S7rVKyN/Y8SUCKMbjOYKRmUD7o7gyasW1knKch5u7mAIYRi2IcmhMS6CdPgudMGy2ttBJ5TZXOz+0EIgcwsn+lN+jHp4UOb1vxH07CiD16zhiMpXnCvtsJQ7GdbO9vphPQZMUyeRPUYcGbazUPYjySnPLFV9uE5XwJ1q4CRgp2Jr6DOMbN1e8AE1mmkSOEo/5r/Xh5InfTgsCqBJOUwhURvZsbrd+iZ27lyy1i2nibMgqQTR/gEgygzEr6iqeTS9bvqteTKku2Hoo+PpQ1YQf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(39840400004)(376002)(346002)(366004)(44832011)(38350700002)(2616005)(36756003)(956004)(31686004)(16576012)(86362001)(316002)(31696002)(38100700002)(8676002)(26005)(6486002)(5660300002)(110136005)(83380400001)(53546011)(16526019)(186003)(36916002)(66476007)(66556008)(2906002)(66946007)(8936002)(478600001)(52116002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWR3dlBaWThma0REdXloemU0MEYwL3U3a1JhWmNSS2VKU1F3aC9nTjhTVnEr?=
 =?utf-8?B?dFZCZFVWbWh0LzBrcmZnVStOV2RzcUpSMGlsUVhpV1I3MnRCTTdOSzNmbjdY?=
 =?utf-8?B?V3I3SmlXTzcrMS9qekVEdTV4Z1YwZEJJUUsxTFJONC9aWm13dFJ4dVhCZG4r?=
 =?utf-8?B?aGhqaDNESEc2VXloSzE5UEc1ZmU3cE5IcmExeEFhUmVPeGJpdE1IREFIaDZE?=
 =?utf-8?B?UGFpWmFwYzRRRGU5TG4wdW9WbU52RFF6UitlWHJub2t4Mll2L2c4a0VYN2o3?=
 =?utf-8?B?MWNyVU1LTXo4bXFwUGtIUjIwVnU2aGVTTVBpQUZjVEVabWg4K2xOKzZYWnpp?=
 =?utf-8?B?b1BGRjg4K1B0bkRFT1lObXVyZ1V4OHV1aE95MmwzQ2wxWWlmNGtVNjIzcENO?=
 =?utf-8?B?aTdNbk9iRWZsWFp4ZzdiTXdZOE5MNnhrYVRHcjhDRmx6TTFXVzhXTjZxSmE3?=
 =?utf-8?B?ZkJNWCs2SmRnR2N3a2xBbmZWc0NXSzNnN25WNm9VYURmYlQrcDlWWEhpamJU?=
 =?utf-8?B?QWR3U3YyS2lJUi93akxXSlRqc0R3N0ZpZmNrMzFuQW1QYTNLUW1xaGZqbUJJ?=
 =?utf-8?B?OGdhVldNNm9MaXR2ZGYyTS96RWo3cyswaFFlallnT09BZGppREJWUXJoYU5r?=
 =?utf-8?B?T3NrS29CTFh1dHMwSitoYUEreTlOS2Q5MHNiZnZNcVo2UDdRQ3JVVE1BVXMz?=
 =?utf-8?B?dGdrSnlma0dMSjBPZW1LOG14S2wybWJLZU9RdW5CdWNGeTRrWmRlL0l1Uytu?=
 =?utf-8?B?aXB5dlAzUWhxZ0xMMFZzR1R2RmwzQkpKSklpVHlmNmVua05rWEJqcDltM1dh?=
 =?utf-8?B?bUxHQXpKYXhhNmtoWW1BWkpQNFNOZ0pzZE5oNUNySTJVZG9LeGg4ZFhKT0w5?=
 =?utf-8?B?TExCemtyUGlLWVVSRWkvc3BWUUZnUFR0NWF0Slczd3ZQT29QcFRxYjBwTWIx?=
 =?utf-8?B?eHB4UUVsVHRnamRYMllzWEV1KzJadXRJZXNzZDJOWjlWczZwSmFzOHY2amFq?=
 =?utf-8?B?ZS9YaHdNMjVWRmE0aS92azV0bEFjV1B0VlJQd2ZXRE9VNHFQK1BaOEtlL2Nm?=
 =?utf-8?B?TjJQRVIrMHlDazhBYk10WkNXL0RRQTlZUTJiV3FoV3ZBNW1YTWVEOGF6azlt?=
 =?utf-8?B?alNKVUZwVFZnVzhSM0w5blBxRjk1WlNGZGdNOURZcFhaa0JlSzZzdUxPQW96?=
 =?utf-8?B?cnlHN1NwbWVnT1RYbXRwbmlRVFl5bkpWcmJjUXlLWUlCSVFlNVlDZnQ1ZkJS?=
 =?utf-8?B?bjZoYnUwdTdvYWpmSStBaXJNblNDMWN4YkdtbE5IbHNLZXRyZWxzY3JIMVlU?=
 =?utf-8?B?eDZDQ2k3WDYzLzByOUw5K084YTFwTUxSVmUxRHdlZlpWVjUvWUdjVGdtRVQ5?=
 =?utf-8?B?bmtYZm44WjhkWUpMUVIrNVNkMmJncE1WQ2NVTkhkSnRzUjJ5M01xZUFEb0xU?=
 =?utf-8?B?SlFaY1NPcGRpc1lzcE9odUk1czdvKzVVS1ZnSVZWeWhMYUM1MnlLZE9rckp4?=
 =?utf-8?B?d1c1dVZ4bWJhbGYvTXp0Zjc1THJUbklpWVo3TUJ0am9SbHVmMkljY3I2TkY2?=
 =?utf-8?B?VkRFelZ1ZGxFZkU3QjFLSnJmSGpSak9pQ3orVy9LdURmMDBGMmpnUnFjWG9s?=
 =?utf-8?B?UFA3dG1ZUURYaWV4NkJFVFVjZm1rYVpIWHRRTThlUlpGdmJhQThRdEkzZDNa?=
 =?utf-8?B?dk9zeGFwNVYzRXd5UVVqK1lHR3BVL0xjZWh5NzVkeGFMcE5mazJvM3phaVpJ?=
 =?utf-8?Q?+vSx/MKJj1WUDxUmqIPKRHYnTSqFjwxbYPZ7sbw?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 315af06c-a1b0-44a8-ad14-08d93a66c1fa
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2021 18:58:46.7810 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KG5X85O3zOUjuFXQGYXhn0ubdIxEzP68bpxxfgpM9GTqQ31rSiuPoS2M2w5yWtMazw89UI0sC7fNyXYljpCc4EJXkmR5wlEPZgnp41OT/hU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_115853_239932_3D2A294E 
X-CRM114-Status: GOOD (  21.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 14/18] overlay: Add filters to choose which overlays to
 apply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 6/24/21 10:52 AM, Sascha Hauer wrote:
> [...]
> +
> +static int of_overlay_global_fixup(struct device_node *root, void *data)
> +{
> +	char *dir;
> +	int ret;
> +
> +	if (*of_overlay_dir == '/')
> +		return of_overlay_apply_dir(root, of_overlay_dir, true);
> +
> +	dir = concat_path_file(of_overlay_basedir, of_overlay_dir);
> +
> +	ret = of_overlay_apply_dir(root, of_overlay_dir, true);

shouldn't this be

	ret = of_overlay_apply_dir(root, dir, true);

in order to use the concatenated path?

Regards,
Michael

> +
> +	free(dir);
> +
> +	return ret;
> +}
> +
> +/**
> + * of_overlay_register_filter - register a new overlay filter
> + * @filter: The new filter
> + *
> + * Register a new overlay filter. A filter can either match on
> + * the filename or on the content of an overlay, but not on both.
> + * If that's desired two filters have to be registered.
> + *
> + * @return: 0 for success, negative error code otherwise
> + */
> +int of_overlay_register_filter(struct of_overlay_filter *filter)
> +{
> +	if (filter->filter_filename && filter->filter_content)
> +		return -EINVAL;
> +
> +	list_add_tail(&filter->list, &of_overlay_filters);
> +
> +	return 0;
> +}
> +
> +/**
> + * of_overlay_filter_filename - A filter that matches on the filename of
> + *                                an overlay
> + * @f: The filter
> + * @filename: The filename of the overlay
> + *
> + * This filter matches when the filename matches one of the patterns given
> + * in global.of.overlay.filepattern. global.of.overlay.filepattern shall
> + * contain a space separated list of wildcard patterns.
> + *
> + * @return: True when the overlay shall be applied, false otherwise.
> + */
> +static bool of_overlay_filter_filename(struct of_overlay_filter *f,
> +				       const char *filename)
> +{
> +	char *p, *path, *n;
> +	int ret;
> +	bool apply;
> +
> +	p = path = strdup(of_overlay_filepattern);
> +
> +	while ((n = strsep_unescaped(&p, " "))) {
> +		if (!*n)
> +			continue;
> +
> +		ret = fnmatch(n, filename, 0);
> +
> +		if (!ret) {
> +			apply = true;
> +			goto out;
> +		}
> +	}
> +
> +	apply = false;
> +out:
> +	free(path);
> +
> +	return apply;
> +}
> +
> +static struct of_overlay_filter of_overlay_filepattern_filter = {
> +	.name = "filepattern",
> +	.filter_filename = of_overlay_filter_filename,
> +};
> +
> +/**
> + * of_overlay_filter_compatible - A filter that matches on the compatible of
> + *                                an overlay
> + * @f: The filter
> + * @ovl: The overlay
> + *
> + * This filter matches when the compatible of an overlay matches to one
> + * of the compatibles given in global.of.overlay.compatible. When the
> + * overlay doesn't contain a compatible entry it is considered matching.
> + * Also when no compatibles are given in global.of.overlay.compatible
> + * all overlays will match.
> + *
> + * @return: True when the overlay shall be applied, false otherwise.
> + */
> +static bool of_overlay_filter_compatible(struct of_overlay_filter *f,
> +					struct device_node *ovl)
> +{
> +	char *p, *n, *compatibles;
> +	bool res = false;
> +
> +	if (!of_overlay_compatible || !*of_overlay_compatible)
> +		return true;
> +	if (!of_find_property(ovl, "compatible", NULL))
> +		return true;
> +
> +	p = compatibles = xstrdup(of_overlay_compatible);
> +
> +	while ((n = strsep_unescaped(&p, " "))) {
> +		if (!*n)
> +			continue;
> +
> +		if (of_device_is_compatible(ovl, n)) {
> +			res = true;
> +			break;
> +		}
> +	}
> +
> +	free(compatibles);
> +
> +	return res;
> +}
> +
> +static struct of_overlay_filter of_overlay_compatible_filter = {
> +	.name = "compatible",
> +	.filter_content = of_overlay_filter_compatible,
> +};
> +
> +static int of_overlay_init(void)
> +{
> +	of_overlay_filepattern = strdup("*");
> +	of_overlay_filter = strdup("filepattern compatible");
> +	of_overlay_set_basedir("/");
> +
> +	globalvar_add_simple_string("of.overlay.compatible", &of_overlay_compatible);
> +	globalvar_add_simple_string("of.overlay.filepattern", &of_overlay_filepattern);
> +	globalvar_add_simple_string("of.overlay.filter", &of_overlay_filter);
> +	globalvar_add_simple_string("of.overlay.dir", &of_overlay_dir);
> +
> +	of_overlay_register_filter(&of_overlay_filepattern_filter);
> +	of_overlay_register_filter(&of_overlay_compatible_filter);
> +
> +	of_register_fixup(of_overlay_global_fixup, NULL);
> +
> +	return 0;
> +}
> +device_initcall(of_overlay_init);
> +
> +BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatibles an overlay must match");
> +BAREBOX_MAGICVAR(global.of.overlay.filepattern, "space separated list of filepatterns an overlay must match");
> +BAREBOX_MAGICVAR(global.of.overlay.dir, "Directory to look for dt overlays");
> +BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");
> diff --git a/include/of.h b/include/of.h
> index 59c1250fb2..b698220b1e 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -1022,12 +1022,20 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
>  	return node;
>  }
>  
> +struct of_overlay_filter {
> +	bool (*filter_filename)(struct of_overlay_filter *, const char *filename);
> +	bool (*filter_content)(struct of_overlay_filter *, struct device_node *);
> +	char *name;
> +	struct list_head list;
> +};
> +
>  #ifdef CONFIG_OF_OVERLAY
>  struct device_node *of_resolve_phandles(struct device_node *root,
>  					const struct device_node *overlay);
>  int of_overlay_apply_tree(struct device_node *root,
>  			  struct device_node *overlay);
> -int of_overlay_apply_file(struct device_node *root, const char *filename);
> +int of_overlay_apply_file(struct device_node *root, const char *filename,
> +			  bool filter);
>  int of_register_overlay(struct device_node *overlay);
>  int of_process_overlay(struct device_node *root,
>  		    struct device_node *overlay,
> @@ -1038,6 +1046,8 @@ int of_process_overlay(struct device_node *root,
>  int of_overlay_pre_load_firmware(struct device_node *root, struct device_node *overlay);
>  int of_overlay_load_firmware(void);
>  void of_overlay_load_firmware_clear(void);
> +void of_overlay_set_basedir(const char *path);
> +int of_overlay_register_filter(struct of_overlay_filter *);
>  #else
>  static inline struct device_node *of_resolve_phandles(struct device_node *root,
>  					const struct device_node *overlay)
> @@ -1052,7 +1062,7 @@ static inline int of_overlay_apply_tree(struct device_node *root,
>  }
>  
>  static inline int of_overlay_apply_file(struct device_node *root,
> -					const char *filename)
> +					const char *filename, bool filter)
>  {
>  	return -ENOSYS;
>  }
> @@ -1086,6 +1096,10 @@ static inline void of_overlay_load_firmware_clear(void)
>  {
>  }
>  
> +static inline void of_overlay_set_basedir(const char *path)
> +{
> +}
> +
>  #endif
>  
>  #endif /* __OF_H */
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


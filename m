Delivery-date: Mon, 20 Oct 2025 17:16:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vArcl-009w6Z-39
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 17:16:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vArcl-0003Yq-7g
	for lore@pengutronix.de; Mon, 20 Oct 2025 17:16:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/dszaAnqcrnrgFxrY+Hu4xBWdfTMwKlXDeGgJ3OOSgE=; b=uzzj+2/5ayEx9KDLpWYxW2W/dF
	xTeLtFtE3kydST0UHsjZ+UZyBH04QqOxxGCQxONurh1/agOChMKm6oqqpcAnvpoScYqsYKv7S0ASq
	G3Oo1CIe7C7Bsu7MMEoFpBtxQ1TjW4VQW9xe2oQ8o5awJMV4V/Sx1Pva4HSeTdix/S3v/lRYeqZ05
	/+0wxUArHgnRBqdWWHAKXTDW8ntBfBRfDWXzOH8ZOKELzWHtsgCfJPyYCdoI0JtbWSBWmz1drx2es
	lpjUyXzI52uzHfrZ2xpy22BaFRYb+QUsxZvVnbAzXNv21FlGJyS8ZPa+U066SkFdaiiEbyuXiZitE
	BfA6TlcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAlBc-0000000CLou-1TW5;
	Mon, 20 Oct 2025 08:24:12 +0000
Received: from mail-northeuropeazolkn190100000.outbound.protection.outlook.com ([2a01:111:f403:d200::] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAlBY-0000000CLo2-33hk
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 08:24:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DxEWwwHc0RSsqpvimVd/4sXeOVOi0cjkPCV4dZzWheKT4l54SO3+MVyVZNsxARBZVul/J8I11EnOe7tcekinfGsDcu067R6No3HLGkyBoltmoFV+M/fEGUFJ/6WijgRy6eyH15DDbla1zrGp4SUc31LFp0bDhCtnJg6Q+c2T/4lzVsrwLElTeC7leRAMioyNla2JYRuJlhegSHi4ej13Y6iIwss/cGom8ynJJVOWPBw7H580EA6KhLj6NDC5zTAeej4rYelKUC/Hezri/kiDwWT3l6M6uu2+L+OBtSS9sQxGm6Vw8WV5KXFUODVMvN5adeWJQ32mqYRbxBM05eQv0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/dszaAnqcrnrgFxrY+Hu4xBWdfTMwKlXDeGgJ3OOSgE=;
 b=JV7WdnMNx+T2avjJMNAZCU3eQbFnNyd6ZHe4u518vpNa4Iu7nSMmHEcKaqaYi7exzdnNGqTUeyuJsC0dAVbyzHOeKek8ujBzrk3fgUQtnDu3ync2KYpMZtmrHiMpTnzyUt7Ihi60b9TcHssoszJdytWUNAs+Af7LvL/NgopkwK/JM5WDmvD1jsV1Mh84x48BC4Ofr2VCuasYn8xrvCYos1mVT32O9iZ8HmJuw7C6phmfrOZ1SmYiQ4wPYfKABbkxgeheV4sAtuaO0U4cXT8xsBfYiPCckN/OvylEmpCrrlirAIp85uzw+HxvQeevAbLuXtRLX4nk7Sxsc5CoWEf9CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/dszaAnqcrnrgFxrY+Hu4xBWdfTMwKlXDeGgJ3OOSgE=;
 b=sJzBRdGpq+rxhLd11vSOUih+hjTF9UH1AhwDrXdnKzeecoIkNnEexzOQlY1N+ZCSHWYr+5LOfy0xiFJhlz7JXIR8KLhb1+z/nLAi4/rg8yikcAXmZYqH0X3ATCdJ//L+GtOcWHV289NWj1+JGeV5+okbtIrtElPVntgUmoTnHdDVdMd5O1cttNeFs8VWE3hqM6r1udzbI04DW2p7w52Qw1Nma3OgokfNSNWb72di4wF6DPkJO0N+CW3u/kH0N1EyrG5GzLY0I25JxRKvtMTxEo94FePfVWGDVZRw4NmIjL5fu0G2+AYTh6kkjXE81Dmfefwmyfbo/Kx9z6RMg59AwQ==
Received: from AM7P189MB1009.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:175::17)
 by AS2P189MB2606.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:5f1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Mon, 20 Oct
 2025 08:24:02 +0000
Received: from AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
 ([fe80::5756:694d:1641:3b13]) by AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
 ([fe80::5756:694d:1641:3b13%5]) with mapi id 15.20.9228.011; Mon, 20 Oct 2025
 08:24:02 +0000
Message-ID: <AM7P189MB1009C465358EAB7C01423495E3F5A@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
Date: Mon, 20 Oct 2025 10:23:49 +0200
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251019-parted-v1-1-93b0501b40d9@hotmail.com>
 <aPXv11IxywXgokOk@pengutronix.de>
Content-Language: en-US
From: Maud Spierings <maud_spierings@hotmail.com>
In-Reply-To: <aPXv11IxywXgokOk@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM9P192CA0007.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:21d::12) To AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:175::17)
X-Microsoft-Original-Message-ID: <137b8161-d60e-4300-b480-bf20e97e2c1c@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7P189MB1009:EE_|AS2P189MB2606:EE_
X-MS-Office365-Filtering-Correlation-Id: c3bbf61e-cdc7-4e81-bc5d-08de0fb20691
X-Microsoft-Antispam: BCL:0;ARA:14566002|461199028|6090799003|5072599009|15080799012|8060799015|23021999003|41001999006|19110799012|40105399003|3412199025|440099028;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c3RrNnc1N3NibGNVb2Evd3lZQWQ4UmgzQlAzOXpBSVB0aTJwUTdqLzd5TzNw?=
 =?utf-8?B?K1plaDJTcHNnWlo5cHo1R3E0VGp4UzdOdlo4NmMzVC8vQ0FXM1R5ZFZ1bFlZ?=
 =?utf-8?B?MmlHUys5NEgzU1hSRWtORzdTcEpOelQ5UnlEdWphUkVGdlo3V0cxZ0pqNlhu?=
 =?utf-8?B?NFhZUWEzRTdRWEpkZ2pPaHlla21XSjBUSWw1VDBXa3hsR0IxWExGTlh1d0R1?=
 =?utf-8?B?Tlk2NDV3R20rUkpQc2tYSEM3c1NXY241S09rajBVSmFidmZGRy9lVzl4NW5t?=
 =?utf-8?B?aklFMlpsS3FRcm56S2UzL201T0NVSUROZzZFbGtreGlscENEL0twRHpneENQ?=
 =?utf-8?B?OTR4S2ZDMVZRTVozYnZRN0FoVUNIWmVhOUI3ZHpYSUh5TUI0dXdXUHV5aWYz?=
 =?utf-8?B?MndoMFJzcmY3VEhGaTB4RnFqMmRIaml0Y2crL0dqbWVMTmhaRGgyanhBZHd4?=
 =?utf-8?B?eTZ3VjlZTkNnK2FxZVhidnVZRkFFMVpjeG5KSkdJZ3FPRDRITzdCTUJmajlH?=
 =?utf-8?B?UkpYamRTSFk0WHFsdXRKWTdoS0VGK29ETjdpVW5UTE5iRGRta0ltdEFiNnNN?=
 =?utf-8?B?UXFTUGdRQ0F6Y0FNLzYramhNSy9pQlY1OWRyZDVWS3Y0MVAzWEJVME1tU0lE?=
 =?utf-8?B?VFdNTGJHM3FkV0ZLb2FHWVhNLzZ3b2thZjNYUmMyUk1HdktndGRqQThPMTZo?=
 =?utf-8?B?N1RBams1Wml5eVRTSUowaG9uMzAxSE5ubnEyR1RHMFF5Z2lPRTZuWmQwbVd5?=
 =?utf-8?B?YnJiNlhFTHFwMUpORVlPSW1LMXFaME1GZU0xUUZHcDYvaGVieHl1azlqdTVD?=
 =?utf-8?B?UGRnYlpRVCtMQWZtTWcwa2hpRm11VXhsQmp4Q3Y3UHpBVHZJREhWWDRSaXZa?=
 =?utf-8?B?OUh4bFVxNXRYZ0hXd0RsbTVkMlJNZy9rall2dS81Mnc3ZVFkTGFiTkg0MWJp?=
 =?utf-8?B?NnlHclZIa3Z5aDRManN2Y2NpOStYY3U1VGlYbzVWSmZuVEZDYytXRzlKK2lU?=
 =?utf-8?B?M1dTR2xqbXZ1MmJXR21TYlBndExnR1hOV3FTaytXZGFCZTB1UDBMRUZJcHlx?=
 =?utf-8?B?TWRGc1BZS3RibEkyWVNWaGN1UXN6cWt0QVlFcFV3ZDdBSWNrQlJ4MjNNQzdt?=
 =?utf-8?B?S0Z5YTdzdjlERzJ4bnJuTC90eXBZeGRZZDg3V0ZPQUVZY2VWcGhmRlFWTEVw?=
 =?utf-8?B?ZERrQnMzbzFvdVFrM3hGaGNDNGJpWDdmb0VxUXNYRlZ0R3FRanBGaFYvRDhm?=
 =?utf-8?B?OGU4MG5hQ01ES1BFb0YyMmczTklSWE1YbUw0T2l1SmNPK0czTkVlSlRDL0gz?=
 =?utf-8?B?R2FJV3ZZREZGS2h6a3o3VVpzUVgzTlA0cFNXcy8xZlZLV2FpVWRWSkpXS3JY?=
 =?utf-8?B?NXZVY0FQdGRvRGpxaDZTZDkyVDNlcEpvQmdmcnNpSUdVakEvcWZKcGk5N2ty?=
 =?utf-8?B?TTZYZVIzNXFjS0VjVWhDRXVaZHV5QkV3K0NSelVPRElZMERSWXkrbHhiOEth?=
 =?utf-8?B?bnR6aWdWamQyS2V2eUNTaXhPbWNucm1TY2puM0M0ZEpjWjRIcXhsZ3J1R1l2?=
 =?utf-8?B?bm5UcjA5T1pyZGFzMUtkODVOUnpnQTZnWG5YQVdRWHZnS2RJQS9TTFFZeU9O?=
 =?utf-8?B?ajQ0UUU1WUZLOW91OTBmZTVhL1NScEE9PQ==?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnlaTUZ6MWdudzBYRmZkVVFmdmZQK3Zsa2JaMHJaUElzOTFHVDAxak9hK1dw?=
 =?utf-8?B?eXdWV1dPTGs1ZzFtWUdYanBBWUhUL3lMSjNBRjFhSVlXeExoUUIwSU9jb1dq?=
 =?utf-8?B?ZEtYZDdwMG1IbXYzRUM5TlJGNzlLSjdCd0hkOTlMN3BWZFdWVE9vR1NDU3Bm?=
 =?utf-8?B?Yi85WUtMdzlqejNXYW84VHNVSTAzdXZ0OXVtRW1TQ0Z5cUlnaEh6RUpoYVFN?=
 =?utf-8?B?RHIzOStQc1pFNERoTGNDeWFKV3ZXZjRxd2dPL1FZKzUvbWZnWkRQUFpiUG5r?=
 =?utf-8?B?MHQzdTdQdGRVdit4VGI0Zm5VOVI0NlVvWEhUdzE5RllPNkJlUnZxZFR5SGlL?=
 =?utf-8?B?MTdOTUQ1aUprNjFRTDJha2N0Ym5pbVEwT1Z1LzZpWnFzU1czMXJOaEN6V1ky?=
 =?utf-8?B?bEpQaXhLR1liMSs5Qkx4U1gxd2x3STNZRjhKMTdDYnFnS3V1MTYyUzUvR3li?=
 =?utf-8?B?ai9LNlJrbWVERVJudHFzTXFyTVJoVTF2Q0xMVWhacnhnendobHAvc29hUGE3?=
 =?utf-8?B?V0ZjQmw4bS8zVlVlU29BTUxiY3Z5NlpXY3F4RkpEV0JwbW9malZLblF1RS84?=
 =?utf-8?B?Zmg1cExtMXFFZGpRYVhlcG1XMHhteWRPL1JNa3g5NFZmd0RCSmVoOE5HYmJq?=
 =?utf-8?B?MFZwK0RQWTk2TE9ETjFLNVJ4N0FmUytPRzczODQ5dGdBaWl6aTcvNEQydzFW?=
 =?utf-8?B?T1N0WjJRcVdjQUtEQWFsL2dCbnRla0tJdUdVWXpDRSt0TTRFcVQ1a1FZTE9r?=
 =?utf-8?B?K2RLYUlTenNtcmhUeDQrSmc5OC90UTJWUlorR0ZKY3B6cEFnUkVHZ3MvRmky?=
 =?utf-8?B?ejZyZ0Q4OTVCbFBRNXc5amswd211RlpXcXRwbGVkd2NLYU0vaVNzNDZVeDhi?=
 =?utf-8?B?RjVhUDhuVGIyRUVzSHNpay8reXBJTlJiS011bUVkWE1vSFU2dkt6UDlMZDBa?=
 =?utf-8?B?T2hqbFc4M1V5OHZsK3NaejRUQzBvTGVlVmtlcmJTZG5tbnlUSk9JZk1lL0s5?=
 =?utf-8?B?b0RRR211Zk1ieFl2aTMwV2pwZnM0ZFJGZC9HVGxlN21QYnBORG1kZzVHdG5s?=
 =?utf-8?B?MHhkOWViRjBBc0pPcUhGMUNlUWduWXZSUmJ4Vk8xa1VxNlZXVjh5WHp1WXpy?=
 =?utf-8?B?c1ZwM1RxTVRZenJVNG43cnE0TkVYL0U3SkFBdzlEUllGU0hCQzF2R1dEOEN3?=
 =?utf-8?B?NjN5allNN3hWbDhXdTRlRFZHUmVWM0hqSWl1NlVmUzZ2bTRQOGU1VEFQRjBC?=
 =?utf-8?B?SWdxSW95L3haTXFWbGkrY3N2OHNNU1VoZ3M1YUc3STgwQWk0WUpicFZmS2x1?=
 =?utf-8?B?UkpmQTZrYlpJNmxHK0RIQ3BRTkxJU25pT0RiKzNiVE5aVU1DQlFhTkE3WGR1?=
 =?utf-8?B?UmQ1aHhjOGt3UWplRmlBeUlnVGVxWnZYSlBOSE52aFdrVmU2QnVPSCs4a3BT?=
 =?utf-8?B?cVU0bVJlTWxkcm5nKy92dzRiQWtlR0N6dUNvM0VNU1BFMGRUdGx6c3MrUlRO?=
 =?utf-8?B?L3lqMHUzWWk0Y0FMMFlNam9uRTRVZDdOMy9yMEFlaDJEVTdzcVhHL091bHl3?=
 =?utf-8?B?UmZPVjYrKzNPQUQzaU45MWIyL0dTakgwMkNZWmRvTFBMaWkycm1KZkRQYjl0?=
 =?utf-8?B?bm9YSjJaUm1vSjhVdUFvZ3crSWFwNHFtc3hWVm1MMkZTYlFhUURZd0JPYmNq?=
 =?utf-8?B?Nnk0SXhvMzZiT0lOK2pmNEVMTTJMUnRmNDhoOEdNak1ZL093Rm93WHFIbkRH?=
 =?utf-8?Q?2lI3aKqapkME6OSF6bkgW4pIL0C3scUOLeEBH4V?=
X-OriginatorOrg: sct-15-20-8534-20-msonline-outlook-2ef4d.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: c3bbf61e-cdc7-4e81-bc5d-08de0fb20691
X-MS-Exchange-CrossTenant-AuthSource: AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2025 08:24:02.6671
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2P189MB2606
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_012409_059740_533792D2 
X-CRM114-Status: GOOD (  25.29  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] parted: add max option to mkpart <end>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 10/20/25 10:16, Sascha Hauer wrote:
> Hi Maud,
> 
> On Sun, Oct 19, 2025 at 05:07:06PM +0200, Maud Spierings via B4 Relay wrote:
>> From: Maud Spierings <maud_spierings@hotmail.com>
>>
>> Add the option to specify "max" as the end location, this will fill the
>> block device up to the end of its available space.
>>
>> A secondary effect is that it is now possible to use two different size
>> units for start and end
>>
>> mkpart root ext4 66MiB 3866111KiB
>>
>> previously it would read 66MiB as 66KiB as it only used the last read
>> unit.
> 
> Uh, yes, that's a bug. Thanks for fixing this.
> 
>> diff --git a/commands/parted.c b/commands/parted.c
>> index 7ec56da4c15f..0e858eb881ba 100644
>> --- a/commands/parted.c
>> +++ b/commands/parted.c
>> @@ -138,6 +138,10 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
>>   	int ret;
>>   	uint64_t mult;
>>   
>> +	pdesc = pdesc_get(blk);
>> +	if (!pdesc)
>> +		return -EINVAL;
>> +
>>   	if (argc < 5) {
>>   		printf("Error: Missing required arguments\n");
>>   		return -EINVAL;
>> @@ -150,40 +154,51 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
>>   	if (ret)
>>   		return ret;
>>   
>> -	ret = parted_strtoull(argv[4], &end, &mult);
>> -	if (ret)
>> -		return ret;
>> -
>>   	if (!mult)
>>   		mult = gunit;
>> -
>>   	start *= mult;
>> -	end *= mult;
>>   
>> -	/* If not on sector boundaries move start up and end down */
>> +	/* If not on sector boundaries round start up */
>>   	start = ALIGN(start, SZ_1M);
>> -	end = ALIGN_DOWN(end, SZ_1M);
> 
> I am not sure we need the alignment of the end at all. I can imagine
> that it helps the storage device to align the start of a partition, but
> the end shouldn't really matter.
> 
> Maybe we should remove the end alignment because with this patch the
> ending becomes inconsistent. It will align down to 1MiB boundary when
> the size is specified, but will use an unaligned ending with size =
> "max".
> 
> Better drop the end alignment entirely for more consistency.>>
>>   	/* convert to LBA */
>>   	start >>= SECTOR_SHIFT;
>> -	end >>= SECTOR_SHIFT;
>> +
>> +	if (!strcmp(argv[4], "max")) {
>> +		/* gpt requires 34 blocks at the end */
>> +		if (pdesc->parser->type == filetype_gpt)
>> +			end = blk->num_blocks - 35;
>> +		else if (pdesc->parser->type == filetype_mbr)
>> +			end = blk->num_blocks - 1;
>> +		else
>> +			return -ENOSYS;
>> +	} else if (!(ret = parted_strtoull(argv[4], &end, &mult))) {
> 
> Rewrite to:
> 
> 	} else {
> 		ret = parted_strtoull(argv[4], &end, &mult);
> 		if (ret)
> 			return ret;
> 		...
> 	}
> 
> It solves the checkpatch warning and is easier to read IMO.
> 

Will do, thanks for the review!

Kind regards,
Maud




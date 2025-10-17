Delivery-date: Fri, 17 Oct 2025 11:17:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9ga5-008m1m-2D
	for lore@lore.pengutronix.de;
	Fri, 17 Oct 2025 11:17:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9ga5-0001A2-0R
	for lore@pengutronix.de; Fri, 17 Oct 2025 11:17:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EbLMa1H6ns3CndBgxHwRSOtqAeuxB/HfsZKGsqgWBA0=; b=t0Tv3uKxAelXiuonzIh56To7MB
	EhLx5f7WxxqL5n2hlzrebuzjnsO7FUmUtHetX2qnnl7VFB7+AtUYzSBOG/Id1HpTT10jMCVRd1l13
	rOXVmAiuyrKIaQzSACy0uDTUmA0QaJh+QE1+PAw2yCtIQefWPBeg2CmByCna+bjx0rMU1RjFVgwwX
	U7ZHVy7Wh2rOnqFs8PY+u9XQj5ZcB+1koqX+BjJxAiuEbxs7R95UE7zLpEMC+qsdr49Da9xQNEany
	1tNHhvF0XkVsUznSxjKsDSoc5rl1lIpyLvGW0GJh+wqp7t1MPdE5ek3N4zvCEXEUt77uDuuRvgiKY
	THv8gICg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9gZZ-00000007GKk-1zIV;
	Fri, 17 Oct 2025 09:16:29 +0000
Received: from mail-westeuropeazolkn190110001.outbound.protection.outlook.com ([2a01:111:f403:d201::1] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9gZW-00000007GJ5-14zj
	for barebox@lists.infradead.org;
	Fri, 17 Oct 2025 09:16:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZOF2GEOpxzlwP56bYj8E6NevHVpKaeIUXDKe8cLr9IgqtBeWXKqXm077xDR93iWFagySSPYtMbDWoWt01lt3S6WcdbG91LOd0Lv+E1Xto/c4y0PiBZS9y3hlxuSyoPvsQrx+7WXJ+R/wVnEE7IJU9AdFv1/zEE5PA0w9izJJIjM2Q/pNm8atW/V78755uNreTL5V7KhmLhj0HpU7TTVmBDILsxt9DnTUjJ1EE8eOSapfjkYgqBQw/aELuvJfuBI5ykndwNiwDwqTqestmrYDTwbyyi70QccXSlZrgy2Z6uMJbWFCn2k4JMYKTIyY+uxkAtbSqnIvuSLM1GB+dbjucQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EbLMa1H6ns3CndBgxHwRSOtqAeuxB/HfsZKGsqgWBA0=;
 b=GHMZ19Fmv9hbaowD+2U5oS7XqMdU0AMIQFPJWkK5qv4F/gzql/VQ+zvgYFJEt3HYU37umGB6h794GN+oAYy3JPae3chuBzLmlVJXi6amXMTCHTkNyvf4FyVJpM6W1KTB7IKc1a39reVtPvo+1J/T1QxsavH9bxnbLtQJk6f53sd3U+RuuSQdpzHRFj/ljSekOV32HOBMh2lR5YMbzmzB7OuXJ9JlWVw74PIaBZJwTg/QfjPFffMFlE25oDTaDM6T15Ot0FU8hAli7FtfGLgdKcqXC4z+stND+8Hg2aaw8B66XH1RJLAtxTG83NsYudXle53620SOLt7/7qZs5jlklw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EbLMa1H6ns3CndBgxHwRSOtqAeuxB/HfsZKGsqgWBA0=;
 b=gc6peYsIY7YlwVlkk0loOf4CQUK0SereFVkYKs0jywbD/KSDN9uk8pL74gLsCeDAX604tIHpnObAedw6KdPDchojK+8hHWdEYSHWsy1NFZdXcxw1WoubDZ4qnKYoIYwNpfMx2JRZzZ8M/yoU3FYU5URK0K2La5lWjSMxLVClrmtr4zy6xdehAvrgPeYPssCzTO2mT1WZ1Y5bd3oSSdYiaNWKJ5w8n42oWfCbm9gw23RAaSUT734mbp8Lq0WFs5YWceDRrLD6yai71AUFfqW0I9IaEzTESRrrBze8T0ESGR+WC5DNTaZv7ziLXKj7q9SXnSavKuhbojI28BIZfS4bvQ==
Received: from AM7P189MB1009.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:175::17)
 by AMBP189MB3215.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:6ae::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 09:16:16 +0000
Received: from AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
 ([fe80::5756:694d:1641:3b13]) by AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
 ([fe80::5756:694d:1641:3b13%5]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 09:16:15 +0000
Message-ID: <AM7P189MB10093C8954917950411A10DDE3F6A@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
Date: Fri, 17 Oct 2025 11:15:25 +0200
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251015-imx_gpio-v1-0-e57925f906bb@hotmail.com>
 <20251015-imx_gpio-v1-2-e57925f906bb@hotmail.com>
 <ba046b46-3106-4ae5-bee4-2a55813d3de3@pengutronix.de>
Content-Language: en-US
From: Maud Spierings <maud_spierings@hotmail.com>
In-Reply-To: <ba046b46-3106-4ae5-bee4-2a55813d3de3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM8P190CA0003.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:219::8) To AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:175::17)
X-Microsoft-Original-Message-ID: <0d048f2b-79ee-48fc-b31d-7c7f8fd4c421@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7P189MB1009:EE_|AMBP189MB3215:EE_
X-MS-Office365-Filtering-Correlation-Id: b6c76248-ea41-4169-6742-08de0d5dd302
X-MS-Exchange-SLBlob-MailProps: 9IecXKUgicBJ8NNsyPoVvrHIv5xlNgd3dV4Cnew6AClXTFNWyMl2mxU3KieO7ZTFimgpDLbJ/ycZubnH6PWCmzRxa3FGPFXicgX0+9PS3rnPgyX86l+c1/QmP1+6OTGAeR7AuX1lM2N/nuCVqaj1mol4v84ZkruVrfBYi2nm3FisvotT9NCnASnrBJgFeRbeZ+HiqnBL5aU2eG8myzGf66W3s/L3rVuHCMCx3C3AjP+i1/ETyu6faVknGYUUzZR6KRpTT0nUR3Yh/jhpwBbrHnVpghaIBGdRKHSHxQpWSUrV6ZFg/uT+TRWGtzhg/U35CfB2PvF3ptKOIkSnRxvHHkk3Tdo7BJHYzZvkrWTe3YCKkDj6PUiYBWK62fuN06YBnCNuZxqKRmlijnL18OUNvO27osB2ugjgYCmuLs8TbJPWzQL9g1WiqxHhfaETLOiHuaQEpsGggB8sgLUgJoGVmFnddFSeDzwk4GaO5ZjOKPj7Kaeh2dxWsm5tiF50E6wDx6dpUpsOmOadGz2panpvMTyUaE+eY8mNnHodeBh+R2DhB5QnXTYBRkbNtfzkZ4t4Te3sYl0SLYfJeeHCF0u1WXXJPtxHNq3t1RK8zvJIFpaIjnBmVaFs65w9BzGRWCnm7UICKJyLGSwHUS+6G2js8amYYkdLsSMHd1DgKbWxczz81KjyStj+D5zA9actsw+Ejpf3LK6OuOB30saQyWHe4/jXWiYJf/S9dmEp33LJM8wUFujfGvPYig==
X-Microsoft-Antispam: BCL:0;ARA:14566002|5072599009|461199028|23021999003|6090799003|8060799015|19110799012|15080799012|440099028|52005399003|40105399003|3412199025;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eHJWVmJOQWZva1JRQ1lRZUlvMFVDY0h2Q2k5SFVCUUF2RHBpVU9wWklBOUVL?=
 =?utf-8?B?WjNWZEx3TDluY3cwYWNsRTNGWUVyeTRiZDVoM05xbGYzSTMvWlgxaENqaW1l?=
 =?utf-8?B?RC9ibUxjNElXTE9LOEo4TE1pNEpod213VFBsVlhHUUtXSnNsTFNRTXlJa1Zr?=
 =?utf-8?B?cXNmaFduWkUyVko3VDlsYStYM3Q3aXRkWnRjK3NxVldiZFVZQS9Qc3JPQmh0?=
 =?utf-8?B?Q3AvUlBkb0F3TmlJMW1KZ3ZzYmEvU0FXTUEyVlBDVTQ5OGVqWkYvSzd1MzU3?=
 =?utf-8?B?STJzV3M4QVBOVWVQMCtMeDdPZjV1UCtGbERVY3JabUJWRklpZzFTYmdhUDFj?=
 =?utf-8?B?TTFlakJUdVFESi9HM1dkNXdkOThnRnoyTHlxL3VONkN5TEJlRlM2NHNMTDNs?=
 =?utf-8?B?eDVJby9Yc0MvYVYvdEhDWEU1YlQwTWwvbUMzVFBEaGV2cDg2WVFDVGw0alJO?=
 =?utf-8?B?ZWpvNFcwcUVXVDI4T0ZlNUlnK3B4ZmZjYlVIZ09JcHg2MFBsQ1ZGeWpuZ0ZG?=
 =?utf-8?B?MSt6RiszVlZjL1Q0cWIwZHk5cVU4aDFkaS9jY1RxOUN6RFF0V1oxWnVLeWpE?=
 =?utf-8?B?UEkxbTgvQXFJc2lYWlNEWTluV01pUXptNzRTYjQ5cXp3cXlKTnNKcjZ1cndk?=
 =?utf-8?B?cU5uSG1LeUJxSWRsRUNpK2hNRnNPTW81QTdma2VPZjFIaWIwOXNvRy82TWd2?=
 =?utf-8?B?ZTlUMkp4MGlBekZQOWVsUHd5cm9uZGhwVmhGb3RrVTE3UFVrczdlQWpmU3BY?=
 =?utf-8?B?Z2U0a2R2UU1udjFrcmNvcUUxalg3YkZiRlJ1TDVYVXF0OVlIRjJpeXFjNkZ1?=
 =?utf-8?B?R09GWStpTHo2UmlWS0VscXo5VTNiMnA2NEEzd3B2SWVYMWNhem0rcDlXd3dF?=
 =?utf-8?B?bHh0Vk43eUhxd1BPL3lCVk92bTkyei9FK21TL0pyYXZWV3FEenZzeWE1MG5Y?=
 =?utf-8?B?RzlIRTRtcUVEMkdZeXFoL0M5RGpGNkNUQWwxUkFYL2UwMXB2WEJvY2NlZDh2?=
 =?utf-8?B?UnBrT0xkenVDMitQeUcvNUo0YXdteFFLZUpMN2c5NFRUa1dza3UxeDlPNUJo?=
 =?utf-8?B?OFJwM3ZNSHl1anNRbnZVczdWbkFvYXcxalFRY3M5aG5lMWJvMFczQlNiK3pl?=
 =?utf-8?B?Vi9zb3hiTVZ3L1MxT25XcUNlTnl2M2dSZlM4SERCbGN3L1ZOTzVsaW9BUWYw?=
 =?utf-8?B?b3VuQ0RZTkUxUFlmY3QxRVg2UDBPaGt6SFlDbXhyOGNldHQzUFN0WTZSWG4v?=
 =?utf-8?B?MkJTbkZKOGl0dkNSZVA1aHo5dzlYVkV6cWY0R3lFcG5YYTF2SkIrZEIwYjlU?=
 =?utf-8?B?SVF3bHEzRm1Fa1YxdlUrQllNRmpVdTQzZ1ZWWFZUaDhmUnVuTXV3RDJWVUdD?=
 =?utf-8?B?dFhDM3I3d2h5YlVIZVFXeDF3YkZicndxZWxJMzhsQTVEalBlcUFxWW1qOEVM?=
 =?utf-8?B?STVMUG0vNXZ3V1krUHBWcnl0dVc3ZTc4M2JjaU4ySmNIY1RHSzdZQWJuUFZm?=
 =?utf-8?B?cGtVdi9iVmdyczhkaWdQOGQxVWE4ZFF3UkE0SFN3a1hEekE5TzFYNURRS0Qz?=
 =?utf-8?B?Y1NjUjV3cUg0TU1yOEtJWklxMmdZV0QrK2JZSnBHNzRZU3lnbnZHdTRlRWpB?=
 =?utf-8?B?UmVyVGovblIyYkxkN2tNMTZ3M2xHSXc9PQ==?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUxVTmswS213WGJrTkJVM0gzYU1Rdm9POEU2SEYxTUx6TVVHZGY3WE8yWXc0?=
 =?utf-8?B?NWl4b3dzbDVBN3hNZ00xSHkxTXNjSnh2T3NvSmRYbzlrWG9EclVPRy9kWk9u?=
 =?utf-8?B?OTFsWjB5ZXdFQmlCSUlvQ3NSZGpydUgyYUh1eXRXU1JBUGR1SmxzRXgxNXZP?=
 =?utf-8?B?eXkxbG5ONkErWDVaTFhPbjdRdGNHUnJUeVlDY2NUS0t0YVhsL0paenpUSnRW?=
 =?utf-8?B?OHluMFFxcmRGUjg0YTdMSGp3QVNBaHZsWHgwUW9tZTMwVGVmbkcrbnVMUmh2?=
 =?utf-8?B?bjFESEI3K21WSjQwRTZUT2JHemhaTVE5WDV3RHNvcmsyaG5sVXgvLyt1a3kr?=
 =?utf-8?B?RVVEYUVmME5xZHk0OXB6UllhSW9nKzRUbjBpbE5pZ29ONmZHdnBVdXBhMUpR?=
 =?utf-8?B?MXdMNC9KSncrb1VFTGJRbVE3UTZlZ29EU1NOZUVRMndUM3l2T2dhb2x0Tm91?=
 =?utf-8?B?VlkrL3pXMmk3UlNLTjQvRVQwejVhQzhkS29ZNE1mVk1SSTJrUzQ1aUtja0I1?=
 =?utf-8?B?N3pSaTJId2RuNFZLNVhyR1JNSkNtN3pFK0NtUGo4aEJSdkNCNFFzcndaazg3?=
 =?utf-8?B?d3l3WkRUTUFjQ2RxUi9JTDdUcGpCc1gvdW5MbHdLOFRHSk9mRUVKWGJqdS84?=
 =?utf-8?B?Y0FxeWJJWFplTzE5MVNLMS95aHBxb3M2cnlXYzIvencvbmxITHBSdXlZL0dU?=
 =?utf-8?B?VlVaUlhDSmMrTWFKU2lEZWtxWTNFcUFMTHY2ek9ncFNac25WYzlEcXhIcXdl?=
 =?utf-8?B?MTN1WlVTVVpEd0NmVkYyTnIycCs1Zm9BVFZmeEVpTmxabUhEU2hOMVUzd0Yz?=
 =?utf-8?B?VTFOQURSYXRwN01yc0FlemFuM2Rud1dWTlQrQXpuaGVlYWtUQ0xBdUI0MXAw?=
 =?utf-8?B?blJHcnFISmloSk0rM0xLYnJyb0VqTWFHMXhHUjl1Q0s0VVRLeEhyZGsvWUU5?=
 =?utf-8?B?WEJ1RlRaRE42NmoyUjN3djRIV0w3ZDdxa0o4c3dMdDlrOXhBb3lJbmdPdUJN?=
 =?utf-8?B?WkNLTHk2czhEN3plN2RsNW1PNDZ6b0loZ0llN2d0MFVybWkzSFNoM2srU1JW?=
 =?utf-8?B?bGdVRWkzaFR6dkY0ak9WTnJlQndydU1JSVQ0NDNnOC9HZ0JmVmRSQTduZ1JZ?=
 =?utf-8?B?QUxaOUV2TnZKMzJGNFh6Rm5rVmFmOCsvbTdpaVR2a0pHNGtlOHk1UGFmbTNX?=
 =?utf-8?B?YkV6UmVhcmdDeTEwSE1OZ05Cd1JtVm5xc3hpNU0zYll6NXFDenBQSUI0NjRq?=
 =?utf-8?B?V0l5NFdhejIrd2ErZysrWmU1eGFrNGlIbEpKbEE3elJxcTBHL0V3a3ZzVVhn?=
 =?utf-8?B?S3pyMGpzTG5SZU45ZlI5OVFjNDNqTk53SHlCZzhKWTVZRHVmUWU0MlFnRmdO?=
 =?utf-8?B?cTNkQ0lna3VUTGQrdWVvK1FVRWVtdjFMK2RZb3RhL2JZKzFXSHZSTjk1djlR?=
 =?utf-8?B?ZjA3QjFZblI3VmkvaWJGQmhFVVRJZDQzVDV2OVFFd0VUUHFrMkRuT0FhL0Jn?=
 =?utf-8?B?NkoxNUc4Zm5lRmJKc2pUUUJOM2hGSGdmdzkwSXlGcVpRVWY0MU9zNjhVdVVo?=
 =?utf-8?B?bS9LUGJiQ0ZDUml1djEvVXFaeG5KY0htRXoycFUvU0ZCZGNnUkY1TnhzR0Qw?=
 =?utf-8?B?SU04WTQyMW9sajh1ZFlpenRNVC9mYzU5dk5BOGNQdFV6cUxaek92R25tS1E2?=
 =?utf-8?B?RGFvNEx3aVJ1K0RIbnBKOGN4KzF5T0pLb1RyYkJSY00wUjNxN1lUSlQzVG1l?=
 =?utf-8?Q?2MZ6o1bTO2kjBo3F1D9C7f2p4tbRuccruyKTFn5?=
X-OriginatorOrg: sct-15-20-8534-20-msonline-outlook-2ef4d.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: b6c76248-ea41-4169-6742-08de0d5dd302
X-MS-Exchange-CrossTenant-AuthSource: AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 09:16:15.9278
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMBP189MB3215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_021626_303969_E20787B0 
X-CRM114-Status: GOOD (  11.88  )
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
Subject: Re: [PATCH 2/2] Documentation: migration-2025.11.0: add new empty
 file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 10/16/25 14:58, Ahmad Fatoum wrote:
> 
> 
> On 10/15/25 8:03 PM, Maud Spierings via B4 Relay wrote:
>> From: Maud Spierings <maud_spierings@hotmail.com>
>>
>> Add an empty file to hold any future migration notes.
>>
>> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
>> ---
>>   Documentation/migration-guides/migration-2025.11.0.rst | 0
>>   1 file changed, 0 insertions(+), 0 deletions(-)
>>
>> diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst
> 
> Sorry, I should have been clearer; I am a bit wary of breaking scripts
> or board code that do SION shenanigans, so my suggestion to add a note.
> 
> Something like:
> 
> i.MX GPIOs
> ----------
> 
> Reading output GPIOs now returns the configured output level instead
> of reading back the input register. This aligns us with what Linux
> is doing, but may falsify readings of single-ended GPIOs that have
> the SION bit configured.
> 

That makes a lot more sense, I'll send a V2 also fixing the commit on 
[1/2] this evening.

Kind regards,
Maud




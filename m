Delivery-date: Wed, 22 Jun 2022 10:08:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3vPm-00AHo1-ER
	for lore@lore.pengutronix.de; Wed, 22 Jun 2022 10:08:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3vPm-0003w2-3s
	for lore@pengutronix.de; Wed, 22 Jun 2022 10:08:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Subject:From:To:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bt5uJ4OWv+l9G4zrBqKkErCdYmWMHcvjzvo60Thxcvw=; b=x3kMqqRt5dd0zC
	/TGS1KbXg19QgabkGixKzdixeIayGHTAmsU2unk+zNySHg2P3r0Wr+RHhByilSYi1QL/ByuVm8gUE
	50oswt6VGhH62PeHEXA0yQF2HzV5qjdF1T2b5u3VmyMOhTucgwgbjoxYl6wBEy8Kbt/WrWOrQpQy3
	QElpbOkNc9vNqCV3YmBgwa01IFsuqECSVcvMzjKkWxnwveCg+8N+jaS1itZd5V+/ukBYBEpuRC8+w
	8jc9yKHNLrupUPKKOTbwWsJy4yjJdxoUColqJtWYoxKyUHo/oXxQMJTIHoDOZ67He+ReQrgrk4qVt
	X2xAxG7/yBOe6EDHKImQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3vOK-009BFk-Do; Wed, 22 Jun 2022 08:07:12 +0000
Received: from mail-ve1eur02on0608.outbound.protection.outlook.com ([2a01:111:f400:fe06::608] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3vOF-009BEl-Rc
	for barebox@lists.infradead.org; Wed, 22 Jun 2022 08:07:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V4HuZCk+vldeTFRTFa0x11uPFMF/xxqnPjAWMmnzG7GtiUJdrmQ91rCdkvKZD0YgV211cZXAbOsxAVcNXf89v2xqi8tZx+GpU3YBEk2bp2X9MqDmGZINiL93mWXi91PutUVm2GaciZahSOPEpM+HBsIQH7mEQkv++lhOXEP+weh3KjDXDlbndtyFwvR0VAwt4Y6peWy1I7AmKFOyovvA88q6G3SadZpQwAt6c+OPD1MTnp0RO/omvN/SmYG6sjCTcTGn4MZel9Vmx5TRq42TJHvg/QcMrP60cArwRTKt9SmJgxD9J4TDDx38hKebJNy0mDFnBNgW6h2k7G9jyPgA/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bt5uJ4OWv+l9G4zrBqKkErCdYmWMHcvjzvo60Thxcvw=;
 b=nEpVdFgSD0rzA2XaPHdFR284wZ6P0Uhw+KvMK0PXztpGeVhoZOZH+sDixt3NyN8WB1hbmd9ivZDJZD57Ax3Br1Gn6WgnoZI4ZygDMLT48l6c8wmWU1WrTpa0CyeSEPSNlIwG6ea1E9/7mR5ENMMlw4XNICmd+vkvaAAgNmfj9ptGYgZ5DxNTEqB6FDRS4+l+KMjejZ4AiV9rsTQDQrq8h/4WWGV0h4x+X2C/QqRpqx/hRTZ39gmdqAFTFLd854Kv0DozH3LNtmDxy9JpKn6v/J0+c542HERdUunuu2laPkGVrjIjw1MTtnSEZLpWgP59+9LqY9VCcVT7u8reoJ6gpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bt5uJ4OWv+l9G4zrBqKkErCdYmWMHcvjzvo60Thxcvw=;
 b=DZOKvW+WBblD6M559yU2Zygvz7Lym1bviE+2MxwKfNptROYH9u396TBfLyXbzGzMnBpvfVF0Gk8IezIFEEJt5o6srk5p7ELsdFzSoc5lWIQlmUIoTDkLKaOLCpTSlA1GfmbXdfwfToLAKLqjpz2YzEhbBXfenEuesKIsDL8O4K4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by VI1PR08MB3998.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.15; Wed, 22 Jun
 2022 08:07:02 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::dcaa:905c:ff8:1f5b]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::dcaa:905c:ff8:1f5b%9]) with mapi id 15.20.5373.015; Wed, 22 Jun 2022
 08:07:02 +0000
Message-ID: <95ff064f-aa11-c1ce-9d41-e38f2040c565@wolfvision.net>
Date: Wed, 22 Jun 2022 10:07:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: Barebox <barebox@lists.infradead.org>
Content-Language: en-US
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VE1PR08CA0015.eurprd08.prod.outlook.com
 (2603:10a6:803:104::28) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a4442556-b5e4-438c-6d3a-08da54263071
X-MS-TrafficTypeDiagnostic: VI1PR08MB3998:EE_
X-Microsoft-Antispam-PRVS: 	<VI1PR08MB3998788B2506F4E6BF81BAEAF2B29@VI1PR08MB3998.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	vREgvE8X8UHGrbHpomfZbdN4VlznY0krJAY5u17acIv5f4CqPf135dzs66WgwWnPtpbfr4fynr+VhqkZS2dL5jS2Y09pS06LT2MPUYJnQXDN1YBQGLEkSUTxpwqHcB/ajLz1hNI2/yrMyn5hlsrIlJ65zcVq4WanneM+Tbsh0RV7Bp+G/b6GNkvNrvImEYNwJxgC1UtqFpU4MbSVcjgwSeMWtBujFbS9XQByErURZdW263IMp1iM5gYhl0u9wO4GVzHy9cAHVkJhj+nfXQgrc0cjyrFdQWzxB09AKuI51AfoiCvTyEVU4f5zX1Lb5w32TIfY7ofUiL+wqdsOJb8k+Uf+vRon3NEFnLNLh2M1+mhPW3ihO2t+yFOJVId2SPN301hoAm1ZTI4hadrnrAIhEdydBezVZ1an+TnHHKZLsSfE7spzsi5OrC4m5RudBPjRr6SfTRVY+ScIXjilE45jyQSNJ2lb3jQJoxPUi42WCSVrbsFSTgubHWdy5CZl/TNw5xvveIMDT1G6VzstlnYLx4J+Z82iswwqUUkAFY/uCZsr9UxKNmF8hoYNIGhVybr2rSKea/EhfLveYOAPsyz8Rk1MRs9n2r6nfvZOcS//WvEEa0pIXk6z01MhSf0FMuvX7dlydfDy+s+P6LHcI+XKmH1YckLNrB///zCl/niBOdFFkDvN5dni7THgyOqO/kUk5nv5kpaTWv2mRyJ1juCvaSHVwQfuQxk3o2rCfuH0PLgk6tc00zAePFFGI5zLCD+au8DKqORv+Lp46TtH4Zes5IeibgaWlrjAhozrPCxhTwZT1UH1pdv5ZKzyJ7y2rTlR
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(39840400004)(376002)(136003)(346002)(396003)(36756003)(5660300002)(478600001)(44832011)(6486002)(4744005)(66556008)(8936002)(186003)(2616005)(41300700001)(6512007)(31696002)(316002)(66476007)(86362001)(52116002)(26005)(2906002)(8676002)(6916009)(31686004)(36916002)(6506007)(38350700002)(66946007)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?cUM2MHpsRTVUZW52Zms0bHllZ0ZHeW8rR2R5MVc0ZEJOYXk4ZW5UbGFMSjdh?=
 =?utf-8?B?UkI2OFlRaXdDelBHYkNCUjZUSEM3ZmwzcUhrWFlUMTRRWlpyZTBDWHlIWDgx?=
 =?utf-8?B?d2l6ZnVObDZCVVY2dU9PeVdMd2VMdW8xNDBGRjBBYUpuTkl1MVNtTTh3VUNu?=
 =?utf-8?B?R3J5NThKaWZMelVhREdxYjgxdXA4d3BlZ2t0NHQwcXFzVDIvMkZFSHVPa252?=
 =?utf-8?B?QWdQSndlTW9ucVZaTkNGOXo3bnRRR0Vid0F5VmxmSDJDZHV5R3cxZC9DRzRD?=
 =?utf-8?B?YWRocjlvS2tKc0tTclJ3OEROdjMwaUVJd2VPS29ac2gvSWRBM2o0eFRjR2JG?=
 =?utf-8?B?aDNCNWdkWXV4UlFQVWNsd0dQRVp4UHRtTjFtemFGeTFPQ1ZpNmdMUEp5akNB?=
 =?utf-8?B?Mms1aVNLdGJsUWRBSys4ajlPcTArRFlqa1RlVGhHOVNVUndTZEJjSjA1Y29m?=
 =?utf-8?B?SWJBc0ZxV1QvTHdhQXRrZHNscFVwRnpoZURYeGkyK2xLdEJDRUk4ak9lK2Nm?=
 =?utf-8?B?Y1RuN0lwSHAxdWJrYkJUaXFxeGR2OXdIekVxdFc0cHA1aXlRbzNhN0hCZ0hB?=
 =?utf-8?B?cVdIS3R0NXIra1hLN0JVbDhOakhTL0wxREpJQVFqREQyT200UEhPV3J3b05R?=
 =?utf-8?B?L3FwQnpyODIzYStHVTA3cjU2a25IbDBrZHN5aHpEY0o1VUJibzhkamZ2NGlL?=
 =?utf-8?B?bWFLbWw3ZjVGaWZZS2VnOThyd1RhaUxkdTZZTUxtbFpITmZZYURuUUl3STI5?=
 =?utf-8?B?eDBsckxOMGxKLzFpVkRMTkg2VXE3R28vdWlBeEs4RnY5c2RTcHRUQWJVZHNv?=
 =?utf-8?B?NTFmQ2RIYko1VW02MjZIdlJhN1JNa3BTYnh4SU9wZk5FSDVkYzU5NXVvczNU?=
 =?utf-8?B?MW5KYnQyLzJhd2NWWXR5MldSTGlTQmVmTG1DWWQ0Ti9CN0dtZTlUYU9aZElK?=
 =?utf-8?B?eGV6cnpUSk5iQ0IvYk82cWRnb2JVUkZ5RFBCVm91M2tVZDVxdUNoYnhTQWE3?=
 =?utf-8?B?eUJnUTJNbmlxLytRdG5WdytHRDA3RmpWdzFWdWphV3VWaHIzeUdIaUEyc3k0?=
 =?utf-8?B?R3hjdk1FTlJ0ZEplL1lnVjhmZWtKRDUyYUpXTllrcFZXczRTME95U0w0eFEw?=
 =?utf-8?B?cTFkY1pESElmdTZCTThDOTBlVk1pTWFWMEFkT1VUSjJNckRua24xZGk4ZTE5?=
 =?utf-8?B?b1lMRS91aXM0Z1FSWUdpR3h2aU84WUVuOU5VY3k3SUhGbkIvZUZ3bDdYaWI1?=
 =?utf-8?B?dy9CT1hObnM2dGZCN0wvWU1FUE43TTJ1V0o5a0EvWTNlcDhXQSszRzBqWjJ2?=
 =?utf-8?B?UHgyQ1l1QTBkSmg0KzZqUERGWmVJLzk4ZFlpaWFzYzBNN2FkYXNPSm1hVHdN?=
 =?utf-8?B?b0RlZ2FmQVFIMk5jOTA4WHE5bU5hOHRlVXNuTFdCWEl0a2pZOUxmTU5EbXRx?=
 =?utf-8?B?elFCcTE4YXI5THhsVGRjN1JGSWxnd3lyNnJrVHJ4Y3M0RW1IQ0V6TXpzMlR2?=
 =?utf-8?B?MFd1djNFK3hjRUdqSEFGdDBvcEY2VksweDg1QXdjNkhQell5WDg4WG1CbVFm?=
 =?utf-8?B?QktNVkdmUC9kTHZnUnhCZVkyVnNkRG9DY0ZGUE5wazQvWGVhMTI4Yk54Q21C?=
 =?utf-8?B?emZ1NWYrWmtCS2ltQkkwMHd0bm0rVExhY2ZHaWJYT2NVaVA5U1hSUG9kK2Rh?=
 =?utf-8?B?SUlkb0hkbnd5T0dHaTF1OU1HSWdVUy9JaEJlZ3M1R3FGU2JMaW14eW80RU1C?=
 =?utf-8?B?cUY4RmV3N1U4YTVGZy9GM1hncGwxT2F5NGlHODA2Yk9oRU9Yb3Y3UWhBbnRo?=
 =?utf-8?B?Z3pidERuWCt3OXlLV1dUM1g1Y2tIdDQzb2NzK29NUUVLSllzK3Rta0QyQVY1?=
 =?utf-8?B?bTFYMWVkQ1hmOEpxTU8vSVBneG9XZ3M5QjFKWENTR3ZoZ0UwQjVoYUdSeWtJ?=
 =?utf-8?B?WFRrQmF2RXRDNGtTZjVEK2VLNGJOZU9yNVVoODBNYnUwM1p4a0lYMllxajJj?=
 =?utf-8?B?V1k5YWgyNDRMNnp2UVA2MEs1SjR0RWlHMjN3eU55bkUyZjVtWnhKaFRjNFh0?=
 =?utf-8?B?RzEyUnRjL1hpQU8rbDJybjJGYUpRVGdTUGhsUEVKeG9RbkdmK3pnK2hVa3NJ?=
 =?utf-8?B?MldrczhiU2RHejJEV2IwUnNUL0ZTK3NtSExEWThCLzNRUDdmV2NGdjZJaVkx?=
 =?utf-8?B?T0E1M05iY2h3aUxhYWdZVU9qYU9EWWhCTTF0N09xWWs4OW5xUzFvOFNkR2RX?=
 =?utf-8?B?R2RMTEpadTJLOEE3MFpGa2FUQUVJZzlpQ0QySmM0dTdXN0ZScit1OTZMN3R5?=
 =?utf-8?B?REVUbVZzbmdmMStKRHQzQjNpYjYxNDZ0Mnp4SDJhYm5EK3pzVVo2dzJTcjhs?=
 =?utf-8?Q?dubnGa9wdZdcjLqk=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: a4442556-b5e4-438c-6d3a-08da54263071
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2022 08:07:02.6920
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4u36BSImuJcC7JN62WLsOUsvmLzZC3tMnjXbHFn9guYU7kFPdgqADfdTGu0ltRkan1RNOgF1+GxDqwzQwp9uTciKJVKBUUnzCbAGtgcylV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_010708_145941_0F0DCA55 
X-CRM114-Status: UNSURE (   5.10  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Handle null pointer returned by of_overlay_fix_path properly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

The function of_overlay_fix_path returns NULL in certain error cases but
of_overlay_apply_symbols (which is the only caller) does not check the
return value. For broken overlays this may result in an exception, which
is probably not the best way to deal with this situation. I am not sure
though what would be a good way to handle this error condition. Since
the call happens in a loop, we may want to ignore the symbol in question
and continue? Any thoughts?

Best regards,
Michael



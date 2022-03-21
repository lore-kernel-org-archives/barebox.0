Delivery-date: Mon, 21 Mar 2022 09:07:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWD49-001Abs-Uo
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 09:07:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWD4C-0003it-29
	for lore@pengutronix.de; Mon, 21 Mar 2022 09:07:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/w2fsTpaxVHQDd7UpZBEDCDNOpKJH3X2R1o1Hhh0wPc=; b=azLNbsuAZXyagKH7l3U/ZxhDiv
	nkhpLvW46af4w+G8Gp1HMP8sA/ft8+ekgfDLQ9QCZfYJ8lK7hrs142Qn+M/ZHvKw4XgWcI/CTPAtX
	jLRXdmk+y0sy9EaO1Gg7nIIT+WgT4QLZ5SXCYqZ0zPQk6CFUQMOiPhM5F5jHIg40+DTax5Oz6uasw
	3EZWhGhBkCWWItNM2JASX/IXQUsahmPy2bVxoYwuj3I5yZokgr1HoDAYyo88tO/jmv7nhNk6Lv4fC
	7sdvrJujbQouc1CkIQKd7ZCKNGVzjIRh19fvPoNaqvQNeUTCX7/5lHB8rI1zSi98H1MpIkd5ePGuG
	Ql92e1LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWD2P-006wK7-Ox; Mon, 21 Mar 2022 08:05:13 +0000
Received: from mail-ve1eur03on072f.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::72f]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWD2I-006wER-JW
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 08:05:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VbvWs7e8WfZZUzwRoZ6ph0ChUdHZajbGrnmjlRdFw5wZ/N+wvO0WgPspDEPstktJbuURS8DV8Jytn37SK6b/A1ANxVJ822O6u2kI3T2k6kmLeBGgYHek1S/XBdgGAs1R5YmIikowtYFaazPHVf/jl2NyvDMLyEA6Pvq8bKZ43n2GqGp7q2kd8crnwS0/FefQ3i/0lymo6nxNS67k0INYOntGmX2c8VvVUOjxT7rE7lsCjAz/fbKyiZuOWF8QPcpvgKJnQH3Y78y3m4t92OXGxZkifcctyiYFEYzqeMcqfqV6rFNdCMZYJ0hZCC/0R0j1DsVK1mTB6CLbmUO1UlWcJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NjTf+Gl7lNCnC3TWQ+8wsYfdQbliKcWy55gz4IW27WA=;
 b=J2s4sNVzdrBRVTvvsXY9Uxuomh4tVsu68qjGC6KBbdqx5m9KPtlX6mMZ2ZnS1nMzjSe8Rp/+a5fywDeGgzMb9DKVzkAeiC21/xFQC18oiW6svTyiUOE+m0oTqnjmdEUV1vQ3BuBuplkQFMmMUiP64U3TnfrhHh+louEcVOd32HNHkJ5MhQie5L32S/1/wYzV8aS+ruYqz27Lb71agdLyiM8JLnh6Mt522C563HEYKgJRtSpCSExKanGoJg2nnuYwTUz/IT2RDqTINDFvQ4vI1cmakgI/zR6W1AM+Po0Ezz91voLDJnRFMxIRg9/Um5jc6Cs+AgtZb2mM1lUDMQnnVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=basalte.be; dmarc=pass action=none header.from=basalte.be;
 dkim=pass header.d=basalte.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basalte.be;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NjTf+Gl7lNCnC3TWQ+8wsYfdQbliKcWy55gz4IW27WA=;
 b=QZLywM95nkjzihCw4bl7OvgSHHCX8r4qGVKCP0OGngBVrwFQLvqGQgR/w5A+VCKGom0UMM5skIUd6M4IxZhCsEgvtr1b1AamJBw78fy4y8XGWUaHbDTv/CgBfpTn7xC/lCeHcAuxUVVPhwXH1SG1gdyQCmvUdBhCxQK6+C2p40Gigccy/i511OVu29Vnn0hrpZffmsINizNKWNweE9idFOLGj+bBM3PlT9Qwd99RlrSYKpYYi9dxbR6nskMC/86CXrGCTvPXjfhXkQM+5zdbvcxFe/3SlnKU/ISceEppC4mzjro032wou9PjUwEy/Rce3+KHWQvrOa+sivQpEq5e1A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=basalte.be;
Received: from AM0PR04MB4243.eurprd04.prod.outlook.com (2603:10a6:208:66::29)
 by AM0PR04MB6930.eurprd04.prod.outlook.com (2603:10a6:208:186::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.22; Mon, 21 Mar
 2022 08:05:00 +0000
Received: from AM0PR04MB4243.eurprd04.prod.outlook.com
 ([fe80::348a:b420:ed4b:8532]) by AM0PR04MB4243.eurprd04.prod.outlook.com
 ([fe80::348a:b420:ed4b:8532%3]) with mapi id 15.20.5081.022; Mon, 21 Mar 2022
 08:05:00 +0000
Message-ID: <5bdd9e3c-aa62-bf0e-fee3-ff49072f7617@basalte.be>
Date: Mon, 21 Mar 2022 09:04:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Sascha Hauer <sha@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <DB7PR04MB424951EBC916B7A1E0A1B274E8119@DB7PR04MB4249.eurprd04.prod.outlook.com>
 <20220317074628.GT405@pengutronix.de>
 <a4886a48-717f-d970-49af-551f3138e201@basalte.be>
 <20220318115925.GC12181@pengutronix.de>
From: Tibault Damman <tibault.damman@basalte.be>
In-Reply-To: <20220318115925.GC12181@pengutronix.de>
X-ClientProxiedBy: AM0PR04CA0033.eurprd04.prod.outlook.com
 (2603:10a6:208:122::46) To AM0PR04MB4243.eurprd04.prod.outlook.com
 (2603:10a6:208:66::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 94a366c6-93ed-4b55-26ab-08da0b117f28
X-MS-TrafficTypeDiagnostic: AM0PR04MB6930:EE_
X-Microsoft-Antispam-PRVS: <AM0PR04MB6930EEF98F4A6829D930AF2AE8169@AM0PR04MB6930.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X0efAOLbRYyLwKqATontDjlqzCH6viJK7Z/FVkUMsbU9RGoxQAlVk6Zqw9R7smaKbjMIETEwOBZQuqv/cIvrIicit3/MtfUbatNIlykLNt0U+fDm5zpy34XERtOTZgW8Cd8qUUpCEj9Ljn6HYt5i+qDx9bmzJ27mzIJG0Bmcx1NQjtG3biLfNEj1VgWm7CDUL//UPQbr5y/0o5HN7+pz6jckGV7VL4W7IotlJI+fEG84gweEZvIgSfXrjpCaanpI/2OeDVrfh2IEDJNTPqscZdBaRTr1hN3MkStxpWKpRAAHQO1UJCZmnuZurhkIgyA4dBX7aayy+JNhvBhLN6d/ekZxXak87cd2ofT2dthz2UHhHGspNnu0TWvbXnZJ6r+YsL6Ynv6p3TavKM7ijXVydFoA+lthKBNDBqiUY9hcWInO8BPYqML4gMburlEE/PDvU33+OJs4SS//nah8FU7fWGsx4gbpwL3CB6t+CoKGY0l10HQuPzf/Qup3/pwt0Nvb1ZIvxjdFKLLm5CbTsyZV0nFmKsMuhj13PayUg6fvFVBCbGhydkTcoVSdATHxelKCq8/ADgylra9GdEI3DDWg6chjUu4vFcB5OaIbZ0Hgf5djp2K/P3hk/NGgPoAoQYUvZwi2XVK5Vmge3zFdXWEOaGa7gfKVSG+2H+pc4IcRgsmsvYHBzASuPN1W/Ww+OED+NG39QZCy+7I0HXVKckqwFJuZ9pKqVxjawAzbAjhB+P0udUr/hexsv4jMpap40APj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4243.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(39830400003)(396003)(346002)(366004)(376002)(136003)(31686004)(36756003)(8936002)(5660300002)(2906002)(44832011)(186003)(6506007)(2616005)(26005)(38100700002)(38350700002)(31696002)(66476007)(8676002)(66946007)(86362001)(66556008)(4326008)(6486002)(508600001)(6916009)(316002)(53546011)(6512007)(52116002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVpORGhLSmVWdFdObnFJL25zdEI4c0pMZzJ2WlppeXRySDZyTGIxSUFsS2x5?=
 =?utf-8?B?WEx3czR0YlFjRWdmRHpISEpnMXljVWhJZDZGZVViZWJqdTN4VlNVczFmeVc1?=
 =?utf-8?B?c0dzVVJ2NWwxa3A4NlM4S251V3lBWWJiMWI2enlSZ3hFNjNXNlByZXl6U3g2?=
 =?utf-8?B?dUVhKzYzQlJZWmtlQy9hMU1EYVpnRWFWSmc0TXF4dGpweEJHNjRkZFVyblg2?=
 =?utf-8?B?MU1oMFFrYXc4QU9XT2xxNEI2Z1pDdWRSZEhVMFpNRzlCNGdNK1JFaFp6elZ2?=
 =?utf-8?B?MWRLaXRiSEJ2aFBGL0FWbjUrRU05ZTk0OWMrVE5uTzRVM0pXRmg2TTJLV3pQ?=
 =?utf-8?B?cG9VUVRsL3JHNGxiQ3piVXAxZGlDeDUwU0RRVDhRclN1R2E4SXVQSW5DRWlS?=
 =?utf-8?B?V01Da05VY29EYmUxc3dEUnNhTTZEdzJMdzdsMGZjZGRqdFNDMmFhZkM4aUZO?=
 =?utf-8?B?Mlc2U21JRGRnZUtJKzhQRGlURWNLSXlLenphQmVnSGlQYXhPQ1plV2MyN1k4?=
 =?utf-8?B?dVZndm51VU16NlJxYXU5eC9TKzVqMVhtb0MwZDNaTTgxVnFnYXcvZFlpdFV4?=
 =?utf-8?B?ak10RWNHWDN4RVorNDVBMXBPM1JFVjBER1N4bWxzaXpDWk9rVXJBRmltVXh5?=
 =?utf-8?B?UjRqaVI3SERkWkcydGtoaEFFU2s2OHlPTnEydzFTYVdzbVhNTlB5WE1TWkxj?=
 =?utf-8?B?V2FBbjhCOU9SdWlYaGwvM2dOcS9tNUxvMlNxaHpiaFczNkRBNEszb3hkVGNz?=
 =?utf-8?B?NDhCVHc3dXcreGdFMVd4Q1ZXWTVLOE5nSEdlSTF1ek1GL2RaajRGbkY0bGRk?=
 =?utf-8?B?cDR2LzFSYmg5RER2NE1ISzZxMDBYbjlWYjE1Y053WFFTditTR2VhMHYxcGtL?=
 =?utf-8?B?anpHZnFxSkFCT1h2VUtIdVZYRE0rZTVqcTNlYlBIbFVjcFZpWVIzYUdXTWlt?=
 =?utf-8?B?dHhDNGdrZkdEYnE1QzlnSE5oN1I3cHc3TmZ1UVBWVVcxRGdVdUFPTkNWWlRE?=
 =?utf-8?B?SExiNC9BK01UNVVUVjlnQ3lDNm5LTmxvcGhDUDFncnZSZWxubThsR0ZXK1Bp?=
 =?utf-8?B?SXVoeU45dERoY1ZJc0JHWHFVYU1GbnFZa2RaZnMxWlZzaCt2SzNZc3Foa3hj?=
 =?utf-8?B?WS9LcFRobGt0ZE12NG9xM28wTUdhRHh4bmdCT1I2VCtpdWVCeWpmZy9uOWwy?=
 =?utf-8?B?V280ODJDbENheGhHSXNKNzJaeFlzRkVlT00rRUlHVVNiZDZRWlBYNVBhSzh2?=
 =?utf-8?B?OUtQOVNUQlgvOWRrTjkzM1JUL3gwWTlLOFhZdHFRWDRSZjZlRE9rYVpkdEo1?=
 =?utf-8?B?YWQzRUpmaFVjV0xob2dxTm5sTGJGN2owWmhPQVhBSk5PUkhmbWpNd2VmeW83?=
 =?utf-8?B?ejBiL3VMeHkyM0lFTml5dWdIV2RmSDdvek5aL09DUFJyRTBqK05BKzJ6RnF5?=
 =?utf-8?B?blFZWlpKMC8zb0FHSkozZ1A4bTlUZjROR0tjNDMrR3d5SWR0b0l6NmF6U2g4?=
 =?utf-8?B?TEhVYytnS3RwTy9FaTBlR3BkdndGWHpBZ1hKQWREdDg3NU1iNEh3dVFKWUN4?=
 =?utf-8?B?RVFLNW1sN3YwZEpqYXBabnRNVHBhMFV0dmZMWWZPdUdnc1VmK3poTDh2cjFV?=
 =?utf-8?B?WnUwTFZVL0pJUGFBRkxoc3hDUDlIWUVSYTVhcU1SZENUTmc4U0N5NGQwY211?=
 =?utf-8?B?djE4T2ZaRXI3VGptcVRzeTlsbVlvVnFZWGJLYVh4SkNkN3NTbExYcjU2cVI1?=
 =?utf-8?B?cGhwVU1mQUxRaWNISVpTWjZ4UU9ZNXpXTHlWZG9vc1JUeTdJQmlvZko5VHBL?=
 =?utf-8?B?V2MvbjhobXRUM1pKVUNiU2tyZGxZMDlvTVVHaFlIdjdhMEFOTnlNUzZ5QVMz?=
 =?utf-8?B?UzZqVnZ0WnlCb1N0TklIYW5Idmt6MnBWYkhMNDJSVnhNTHlOTzFEWSs4Qkt6?=
 =?utf-8?B?aW80NGJ2MG9ScnUxZUNnL0k2bUdGSFpkZWtvVEtCenpSaFFxaDFGMnh6SWkv?=
 =?utf-8?B?M2RjNWVUbG9BPT0=?=
X-OriginatorOrg: basalte.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 94a366c6-93ed-4b55-26ab-08da0b117f28
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4243.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2022 08:05:00.3127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 848bfa46-da8c-48a5-a4f3-bafe311d486d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QbJoCEbRILEiAWYSk5cu+n2UDnowg9Gr++8yFFUyYm1mIJM5JpWz9IuZv/bp57oObtcM4kzMOiYTWmESfbAAzar5Yq7O21yVE6MUV+l7KvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6930
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_010506_904696_8908173D 
X-CRM114-Status: GOOD (  11.47  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: nand "BCH decoding failed" when using bch8_hw_romcode ecc mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 18/03/2022 12:59, Sascha Hauer wrote:
> Have a look at "md -s /dev/nand0.raw 0+2112", then you can see how the
> OOB data should look like and compare it with the data read in
> omap_gpmc_read_page_bch_rom_mode(). The ".raw" is important, I saw you
> printed 2112 bytes from a non raw device. I meant to print a single
> page, on a non raw device that would be 2048. 

Oh thank god, I'm not gonna lie, I was kinda worried when I saw no
non-data bytes.

> You might have to enable CONFIG_MTD_RAW_DEVICE to get the raw device.

Thanks, that's exactly why I couldn't find the raw device.

Linux writes:
> ...
> 000007f0: 0a363335 0a373335 0a383335 0a393335                536.537.538.539.
> 00000800: a060ffff 7286981b 604c42b1 002b5238                ..`....r.BL`8R+.
> 00000810: 9ed8f629 4709bc76 8b658d4d 606e000c                )...v..GM.e...n`
> 00000820: 0d54d92c 98ec3c7d 0048f800 4e9ee01e                ,.T.}<....H....N
> 00000830: 3b4d302e 72844fa4 ffff0099 ffffffff                .0M;.O.r........
                                  ^^
Barebox writes:
> ...
> 000007f0: 0a363335 0a373335 0a383335 0a393335                536.537.538.539.
> 00000800: a060ffff 7286981b 604c42b1 002b5238                ..`....r.BL`8R+.
> 00000810: 9ed8f629 4709bc76 8b658d4d 606e000c                )...v..GM.e...n`
> 00000820: 0d54d92c 98ec3c7d 0048f800 4e9ee01e                ,.T.}<....H....N
> 00000830: 3b4d302e 72844fa4 ffff6e99 ffffffff                .0M;.O.r.n......
                                  ^^

So, interestingly, there does appear to be a 1 byte difference as well...

I'll have a look at the code you mentioned.


Thanks again

Tibault

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


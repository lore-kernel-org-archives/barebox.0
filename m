Delivery-date: Mon, 13 Sep 2021 14:05:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPki7-00030P-1X
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 14:05:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPki5-0005x5-Kz
	for lore@pengutronix.de; Mon, 13 Sep 2021 14:05:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cWDjUW0ucvH726tE1Le+QKF8chRMLcUHu/baWF/5vtc=; b=ghb5stNqKResK4rIhckG7++4dm
	MjUNZuUe0K2+Ow02L9cMb/yht3uFIgQfRDtYuvgPnG+iwIq3mE/JD6iO4igJr2FO80JkUVqkq5Be7
	/37dI/wuHecO44bmvyJ486MduWswg6IqHZZaBwLOKMPa45eva83yQpnK5YmVmBgNhzhsEhRAtaepr
	NjeA4oEWMOPQLFv7KmTcXlvTmuBwo6XvMTtxEJWzSdMRwB75R+N3CJ1ujXzWbuakzB4tXWZY/t47d
	UywrAIC5Jn3HNhqBXGoXxL3zckDN8TC66/3ypBouJp56vZCDc1ZxIoJQN7DNQD7z+0wDLuvXy+oqJ
	eJXDEuOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPkgQ-001WbW-Ve; Mon, 13 Sep 2021 12:03:35 +0000
Received: from mail-eopbgr60083.outbound.protection.outlook.com ([40.107.6.83]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPkgK-001WaP-Q5
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 12:03:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oz4QIDs+nD4YloTJDM1rh6y+ilA1CsQa6uJQ96ZqfxAcb4BLLaEcElVaOOOrhNdeB34VC7CACKEVfDujalnbunf7COujNyuJhTRaCyIiMNQcIMbTQMDEPUqvxmxOqBDhm4cRzcfy3yvK/cI1XMwxLPT7qeX2qE4XHm1b99AYk4ARVGYJx5kdSNEYt++VCSLvaS3HaBYbogMKU67JaR/vTQtVC7qDY0kRM9MzplE3VFLCDZ/WngKyUHnWl8ZYo+Aq9ONKNj7zrnOXwtWtpPe7L1tsB5lt4rhT4wjDCqzqOjoOSYPRjD3B2x0FPsImnGNwQaO83m2rFI+36UidhAsajw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=P8O4y6yHAeKs3/deMYCw9/tkbL43wVSzkHEElayOxQ4=;
 b=Frdjs98PBS7Vl8ItWKfvo+DwLwIQjO1aJrGtGpm+cUx481ejkOIYKcZmeVTb8Uw9btF9epWsZCHN05arfrrM5LvY7sdmcxTf+p8ZhhnGebVgG1t26IQ2xqZFAbEjLzAGLBJf1ylOQk/61msRkVE9E7Vy+CZqyWwS7Jn7jU7PivUBE1OmfXdRICnsxMtmBv9Aq70hf7OF8FMyvygow5nL+Chw29HNrG9FyKGvRcMdST2xXDHn4doM+bmViys2oW59H1BCDQjRCq4k3hzupxm1l3bGQZAc7wHphr5Gq73VEA4SL76t4Gq3Oi5mfHkPIrjncINh7g1+KE+m7pph2LmJFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P8O4y6yHAeKs3/deMYCw9/tkbL43wVSzkHEElayOxQ4=;
 b=C7+NGQyqOwbNqDmJwIvX0TFTX2Y3Ox1RhRhjaZy0VVOqL20RF9+ODFqpo/hP46t/5HKLvdVvlXAJO8dmgI3vFK6jffGOxjwq1rRFOnH6q27qsESDT30eRtwI2g3SijNnZ4TokRJfXzwTWEvWpQ/3E36V3+zbqp3/POwC3U3+2Z0=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB4709.eurprd08.prod.outlook.com (2603:10a6:10:f6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Mon, 13 Sep
 2021 12:03:24 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 12:03:24 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210910134323.26136-1-michael.riesch@wolfvision.net>
 <20210910134323.26136-4-michael.riesch@wolfvision.net>
 <20210910135933.GA24395@pengutronix.de>
 <18d58ffc-c93b-e350-24a1-b4338a2a2ee9@wolfvision.net>
 <3e891c60-2466-f7b5-55fd-6293dd25de31@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <93665682-d3b1-03ce-b641-c4c6af526fae@wolfvision.net>
Date: Mon, 13 Sep 2021 14:03:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
In-Reply-To: <3e891c60-2466-f7b5-55fd-6293dd25de31@pengutronix.de>
Content-Language: en-US
X-ClientProxiedBy: VI1P18901CA0015.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:801::25) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 VI1P18901CA0015.EURP189.PROD.OUTLOOK.COM (2603:10a6:801::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 12:03:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 96457cb9-6e2c-42db-7da6-08d976ae7d27
X-MS-TrafficTypeDiagnostic: DBBPR08MB4709:
X-Microsoft-Antispam-PRVS: <DBBPR08MB47094905F4AB0BC420C2A71CF2D99@DBBPR08MB4709.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7JuFdUmpVaoTSs4KZfb/MCK6oWP8Hg7mPiQ53Nvp3Dn3Vmn6lvQCc/W9+riM++QbiH8oVIs4dsAK1Cf3NLxS6v9UD5Mhwa2D6bv3bA87jSztdZMmX0DntM7mdZ9Lz4uQ/2y7yjmz21MujZhQx4z2s2MmOdB9FC2d+Z3VM612SePCOS5AotP1juc3u0MMM6RrmbIlS5z+ramEDMvpIo4d+Eef83TBZJzCxQTSYjcyqg0TpV543HTZ8/ln+Zwh1ANr1bM5MBffQd8LwVND/tlfqBMvelzDBVBy3axrKNeFQhMv2ZcKWr8s3sdj771CU7ABoujrZrUb6KWYzPNu0dFVvaf9H6y41XTPfp45Y5Mo0LgC67iogI1VFITISPhPV+gtTUQRd/8h5wxNeEgLT39JQjJiAYrfDycDAVrxIaGFmsVRL0HCVIR+SVNm3kDgN6eZuaDuLjmnjYD50lRNLRMvwaZ4+HjiaVC2POkveM8KpJWEbXymwCkDZW4L+M9ln5rvqsEI6y08DJ7NpAb5ayFSfo79XogewqBVwLEnIMfSMzJWj708aB5yMVQomFnB6j3SRxOdSurGJ0xio+lcaYCvopAMx++W+WNwjNgAl6C1awGQan3Lu9++UojrB9ejF9shzFtmDWmr+iwo/je5BX+Y+Ww2EYPVNxjBU8YybKz2k0ajx4EMgoRVUyz/uz+0SdZABvHMrifLq5q8CvogNfj87rfiPmksPAoZEhA2L4AJBgWVH92BASrj+zTUzHmKlgOiThshRMuAHg+ztatxETVLSPA+VqcNZhQ3W+qvBtGLu1B0sIL0lRIhhFUOQMrRY3AevUpbStSMKTTjBOOiquNaiQVW/Hu29+jQcYqWneQDLQLa0sECxQOl95w7GeDo+p7i
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(136003)(346002)(396003)(376002)(366004)(38100700002)(2906002)(31686004)(66556008)(16576012)(956004)(66946007)(44832011)(110136005)(4326008)(36916002)(26005)(6486002)(86362001)(19273905006)(38350700002)(36756003)(31696002)(186003)(83380400001)(52116002)(8676002)(5660300002)(2616005)(8936002)(53546011)(478600001)(966005)(66476007)(316002)(45980500001)(43740500002)(563064011);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0VUeldPRERHNkMxZG9OdDJCRUVLSGpCZklXMFErMjlldGVVSUMyK2UyTDFw?=
 =?utf-8?B?MXpWSmJWKzZJNUtkSG9mbzd3OGxpbkE5MjlsZTUyK1dXZXR4OWxCOFZCTUx6?=
 =?utf-8?B?UlNROHNTbDlnc0tpY2ZSVGdjQmIrcWRlV2hKNUtGVTU2OGZvdDQvckFRZnc1?=
 =?utf-8?B?OXhwU1dxc25WUUFvNkVjdVpNVWFkK2E0V0tOaDBwOXJ3eTRNeVprdThnSWdU?=
 =?utf-8?B?V1RKbTFkUEk1MG11djlrbGoyamx4S1hYVXVhU0hiZHdwSzlkZDlKcXNtR3RG?=
 =?utf-8?B?N1M2bEdFTEpVUzN2dWUxWnFuQXk3WHN3bzBNY1FKeHR2Y0hpRGNRbGVNendq?=
 =?utf-8?B?NksrcEV5K0U4U2NkSCtwRzZHU2MwVW50ZXZQa2tXeXlLWkxBdU5kZmk1YnM1?=
 =?utf-8?B?ZTdmcTJ2S1VDc2ZidW1pWXJpRnFzekUwWDVjNGVpSmc4T0JXaEJkUXl2Zmtq?=
 =?utf-8?B?YjhRYjhleGNOVzUxN3ZMazlmdnJLRGgxdy9rem8xS1NmNElKY09jV2RYakND?=
 =?utf-8?B?QmxSTnFmck5aWCtqRW9VTHRxaDA5QmtSNEc4bkZxOEN4V1lDajN6TXpkNUZY?=
 =?utf-8?B?eUlsQ2JwNFJ4dXNERVVlQ2xPdnFnVkJyUTVsZ2l1clBCbVBZUFJEb1JBek1W?=
 =?utf-8?B?N2g2Z1FFVlBsSTNjQXVGVGF1QW9DUlFtTEFtSUcxYUszeFdBM0UyeDdRbTl1?=
 =?utf-8?B?a0w3TTNiTXNCZU9CSS8xUDkwbmVJSmpSNnFkS0RhT1lKeG5hS2lDVUVGRjR0?=
 =?utf-8?B?aEpLdGtobk9hUmxPNjJyWkMwKzFUdTNJVlBJVW5aUzhBcGU3cDVpcmpJN2pk?=
 =?utf-8?B?OWs0ZzlpNWxiOXdWSXliWFJnM09POHVFbzRCK0Y0QUJ4aFFQYmFKWTNsVHJ0?=
 =?utf-8?B?czlveUtWdkd4Tkw1VldTcDA1V1hCMVQ2R0dqQXlabUE4VjVIUS9vVUkveitl?=
 =?utf-8?B?VHRIYzhHTWJVSUN4YVJscEpKWURHbGRJY1A3bWxBVmxNNzAwTUZDVitReE9n?=
 =?utf-8?B?S3Y4Q3hJSXU4M0FvK0xqcXo5bkxDVmJZOGdqOGcrNk5ET2lwSUVBTFZBbDgr?=
 =?utf-8?B?dXdyVnpnd0paZUhaUlBNSC9GSElxS1dyNEVQM203Z2ZNYTJ3QS9VMzYzQnZL?=
 =?utf-8?B?ZXVKSmxyU0ZiUnE0OFlUQ0tYZXNoRy91Z1RrSUNGTTJaU3N0VW96VWlzcTNR?=
 =?utf-8?B?NS9NWEJETEhYY0tUMzF0bFNlcjBrdW13bTUvb01BTzRpa1NCeDl0RnZTRDNv?=
 =?utf-8?B?VUpleHJmd2FiRUVienliVzNhYThvSTB2Q0VWdkNkSHorWjZvMzZ6U2RkZWhY?=
 =?utf-8?B?VHNJcXN3SXVURHhqTjhpLzJuSzBBbFZSUDZYS09vRTJYVEpDamIyUDhiQW5L?=
 =?utf-8?B?NW5SN2ExMjQzN3dTaUd3MGdMNUJ4a09MTEpqbXplTkxIdVBaNGczMHE5UGQr?=
 =?utf-8?B?TlhzRXBuNEJPcldCRm1hOGh6NEJYL0lvK0k1K1J5NzFMbHRmRTJ3aytWRUZu?=
 =?utf-8?B?UTF3b0Z2YzN6WkRFYmZsRGdRZnUrYVVCRWlXN2QraHd6ZVBjNXBYSzZ4b3E0?=
 =?utf-8?B?UjFzemdEWks1aWdBYzF2UGd3NW9CUlpoMkp2aVo3RG1nOXp0d0UyZFlZeWl3?=
 =?utf-8?B?azVXSjI4c2hWb214QWppQzVUM0sxQk8rOXBzVHpLM21yWjNtWG5HVitSU2NX?=
 =?utf-8?B?MytQUTFHcDY4WmVZNXJJSExZeGk4blE1cWhDSDA0cSttaGh5SS9hTy9udGVX?=
 =?utf-8?Q?e5IwuW3oYk+ednNJaE4wRVX/C5ChWWFMZ8mDnkO?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 96457cb9-6e2c-42db-7da6-08d976ae7d27
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 12:03:24.7162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gZKA8AJoZusHgpa852bslGJPol9kOCDeQdvwJEHfgDJlNuRxGym12lPxEI/PN1ZpAm2RLA1layqSqOiQRT+ekgAMbGkNv34wizZ2wrBf+EI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_050328_977309_454EA339 
X-CRM114-Status: GOOD (  25.31  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] arm: zynqmp: add boot source support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 9/13/21 1:09 PM, Ahmad Fatoum wrote:
> On 13.09.21 12:53, Michael Riesch wrote:
>> Hi Michael,
>>
>> Thanks for your comments.
>>
>> On 9/10/21 3:59 PM, Michael Tretter wrote:
>>> On Fri, 10 Sep 2021 15:43:23 +0200, Michael Riesch wrote:
>>>> The ZynqMP reports the mode pins sampled at POR via the register
>>>> ZYNQMP_CRL_APB_BOOT_MODE_USER. This commit adds a function that reads
>>>> the register and populates the boot source.
>>>>
>>>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>>>> ---
>>>>  arch/arm/mach-zynqmp/zynqmp.c | 43 +++++++++++++++++++++++++++++++++++
>>>>  1 file changed, 43 insertions(+)
>>>>
>>>> diff --git a/arch/arm/mach-zynqmp/zynqmp.c b/arch/arm/mach-zynqmp/zynqmp.c
>>>> index 5871c145b..262bc0dd4 100644
>>>> --- a/arch/arm/mach-zynqmp/zynqmp.c
>>>> +++ b/arch/arm/mach-zynqmp/zynqmp.c
>>>> @@ -6,9 +6,11 @@
>>>>  #include <common.h>
>>>>  #include <init.h>
>>>>  #include <linux/types.h>
>>>> +#include <bootsource.h>
>>>>  #include <reset_source.h>
>>>>  
>>>>  #define ZYNQMP_CRL_APB_BASE		0xff5e0000
>>>> +#define ZYNQMP_CRL_APB_BOOT_MODE_USER	(ZYNQMP_CRL_APB_BASE + 0x200)
>>>>  #define ZYNQMP_CRL_APB_RESET_REASON	(ZYNQMP_CRL_APB_BASE + 0x220)
>>>>  
>>>>  /* External POR: The PS_POR_B reset signal pin was asserted. */
>>>> @@ -26,6 +28,46 @@
>>>>  /* Software debugger reset: Write to BLOCKONLY_RST [debug_only]. */
>>>>  #define ZYNQMP_CRL_APB_RESET_REASON_DEBUG_SYS  BIT(6)
>>>>  
>>>> +struct zynqmp_bootsource {
>>>> +	enum bootsource src;
>>>> +	int instance;
>>>> +};
>>>> +
>>>> +/* cf. Table 11-1 "Boot Modes" in UG1085 Zynq UltraScale+ Device TRM */
>>>> +static struct zynqmp_bootsource boot_modes[] = {
> 
> This could be marked const.

Thanks for your comments. In v2 I got rid of the table as there are some
redundancies...

> 
>>>> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
>>>> +	{ .src = BOOTSOURCE_SPI, .instance = 0 },
>>>> +	{ .src = BOOTSOURCE_SPI, .instance = 0 },
> 
> What difference is between boot_modes[1] and boot_modes[2]?

... for example the two SPI modes, which differ by the SPI addressing
mode (24 vs. 32 bit). I reckon this is not relevant for barebox and the
two modes can be grouped in the switch statement.

>>>> +	{ .src = BOOTSOURCE_MMC, .instance = 0 },>>> +	{ .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
>>>> +	{ .src = BOOTSOURCE_MMC, .instance = 1 },
>>>> +	{ .src = BOOTSOURCE_MMC, .instance = 0 },
>>>> +	{ .src = BOOTSOURCE_USB, .instance = 0 },
>>>> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
>>>> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
>>>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
>>>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
>>>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
>>>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> 
> There's BOOTSOURCE_INSTANCE_UNKNOWN, which you may want to use here.

Thanks for pointing it out, I'll use it in the default case.

>>>> +	{ .src = BOOTSOURCE_MMC, .instance = 1 },
>>>> +};
>>>
>>> Thanks for the patch.
>>>
>>> Please make the mapping of the Boot Mode value to the BOOTSOURCE explicit
>>> instead of hiding in as the index into this array.
>>
>> OK. This approach is used in mach-rockchip/rk3568.c and I took it from
>> there. But if it serves readability I can rewrite it. I think I'll drop
>> the table altogether, though, and use a switch instead.
> 
> I like the array, you can do
> 
>   [0x0] = { .src = BOOTSOURCE_JTAG, .instance = 0 }
>   [0x1] = { .src = BOOTSOURCE_SPI, .instance = 0 }
> 
> A switch is too verbose IMO.

Since many cases can be grouped it does not seem too verbose to me, but
feel free of course to comment on the v2.

Best regards,
Michael

> 
>>
>>>> +
>>>> +static enum bootsource zynqmp_bootsource(void)
>>>> +{
>>>> +	u32 v;
>>>> +
>>>> +	v = readl(ZYNQMP_CRL_APB_BOOT_MODE_USER);
>>>> +	v &= 0x0F;
>>>> +
>>>> +	if (v >= ARRAY_SIZE(boot_modes))
>>>> +		return BOOTSOURCE_UNKNOWN;
>>>> +
>>>> +	bootsource_set(boot_modes[v].src);
>>>> +	bootsource_set_instance(boot_modes[v].instance);
>>>
>>> Don't set the bootsource as a side effect of this function. This function
>>> should only lookup of the boot mode and zynqmp_init should actually set it.
>>
>> Again, this is pretty much taken from rk3568.c and I didn't see any harm
>> in it. But the way you suggested is fine to me as well. I'll prepare a v2.
>>
>> Best regards,
>> Michael
>>
>>>
>>> Michael
>>>
>>>> +
>>>> +	return boot_modes[v].src;
>>>> +}
>>>> +
>>>>  struct zynqmp_reset_reason {
>>>>  	u32 mask;
>>>>  	enum reset_src_type type;
>>>> @@ -65,6 +107,7 @@ static enum reset_src_type zynqmp_get_reset_src(void)
>>>>  
>>>>  static int zynqmp_init(void)
>>>>  {
>>>> +	zynqmp_bootsource();
>>>>  	reset_source_set(zynqmp_get_reset_src());
>>>>  
>>>>  	return 0;
>>>> -- 
>>>> 2.17.1
>>>>
>>>>
>>>> _______________________________________________
>>>> barebox mailing list
>>>> barebox@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/barebox
>>>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


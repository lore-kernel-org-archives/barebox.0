Delivery-date: Mon, 15 Nov 2021 10:53:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmYfr-0000k3-TP
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 10:53:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmYfp-0001WF-05
	for lore@pengutronix.de; Mon, 15 Nov 2021 10:53:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C/TC75Ap21qAw+PEErCkeNnlQkTgIYRAm9OovkokCmw=; b=Bs5t6Qk4hPmguqMwBajkArA/s6
	kV6cmcciL+b7GNpHPAlfc5DVhbwHZm1YgMtpRnDyF484gvlKppJE4yv5B7Vvk53XRgCr5me4JppxN
	ifcgyszppLXbJ1Pjs65o4tYr0L1i7csiBwGbVLzpwz+9gG625lLbOimhAwDTp0INP8zlBBxhRi4+G
	2V4fcaau+jMD1kQslTXNKRTueOasraBogRPO+2MN3iq9kjjPO4p/ZK/kbLF0O+arXYMpFOMFMuhRE
	ELe1PQSuufxAhWM2xO42QRJL85IX9di2VBmOyDcQEA63K0yBO+GeMV+EWPS5iRdQyP0t1lVk7Hc7A
	vawVz+9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmYdx-00F0j5-UV; Mon, 15 Nov 2021 09:51:19 +0000
Received: from mail-vi1eur05on2086.outbound.protection.outlook.com
 ([40.107.21.86] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmYDw-00EuTX-NB
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 09:24:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=el7VoRjvA8WNFE0ABEdvVDO/0jjNcWT24DGy8SD5Qc+qLXi9PDtRCTC8mT/mPtxbxIpu8inxbtllLCrOiha4x77+NHnKRtoDPWvPIkfPBsJiuSBpc1K+kqiMlnqd4d+2Jg7PxR9jAP5qyN12LNBYGGBWALyfGmo7legvieIfvXN+l7QzEFxRYECxj/9CFaUzZiaahXyzsG/64BJlg9ObLEb/PGW2teKrgRmbyuhCwNKZMagv1vUMbadQqYspXIKI1We4LEaHqes1e2ntbiiEnYFdb1CwZtOq0r8F4F6jS609yhvtxPDCP5feBrIZWz+UOhguIUp6d71fSNwmPpGtrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S1pmd4lME40+dVJa8n7v31T+cmW35EcrmNWyq+IvN1g=;
 b=Rxrt4HbkWfGUzfTHhA8T0yOEGoOIDAvl0fJdlosU8JPtQtIGHcy/NckDb39AQGhIzyT9zk3kZzhcK0iO8cWAR4i8eoJeKyQM1CgIhrhOsD8QNK2Q9H/vMGy98Mfn7T2twB3dLGSRhfACd31NqbWGpFpDDuoNMINVjeo01yAvKsTfkbfkICXWI2cADelVqnWR0bXdFCgYDxB7DW90mO1DL18OZSd1Z0jqlPfcQ9ww/ie3IfIF3NLdRiPmIRBxpUTuMLTUwg44yP806T6UpKr6Ihn2eLRdY2vovZMJ5TWG5ONydv9JR1wywrOlUkkvXatzy+uwxZefnQv0gMFBf6ncbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S1pmd4lME40+dVJa8n7v31T+cmW35EcrmNWyq+IvN1g=;
 b=pniol6mdwqrllx1zgT8Ev5+ws5ZIhyfl3OEW7lXi9kPaPgqlChvABkLsLVC4IQa2GcpkAO5JNvGMZtWd6B28kbTCLMvKTRwsSQIGVTFJsGIr01KGgy2VbmEAAdBJhg1cr7MMCEImsBqRY1UhBMgR5Dt82NskJ3CJDE+TRtin2wY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB4904.eurprd08.prod.outlook.com (2603:10a6:10:f2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Mon, 15 Nov
 2021 09:24:18 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4690.027; Mon, 15 Nov 2021
 09:24:18 +0000
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
 <20211111140316.1646962-2-michael.riesch@wolfvision.net>
 <20211115075116.GC25698@pengutronix.de>
 <20211115080656.GE25698@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <3fb6debc-4891-c366-94df-0d7c0b80685c@wolfvision.net>
Date: Mon, 15 Nov 2021 10:24:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20211115080656.GE25698@pengutronix.de>
Content-Language: en-US
X-ClientProxiedBy: VI1PR03CA0050.eurprd03.prod.outlook.com
 (2603:10a6:803:50::21) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from [192.168.100.125] (91.118.163.37) by
 VI1PR03CA0050.eurprd03.prod.outlook.com (2603:10a6:803:50::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.25 via Frontend Transport; Mon, 15 Nov 2021 09:24:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 048418f6-9ed1-45dc-7ca2-08d9a819b302
X-MS-TrafficTypeDiagnostic: DBBPR08MB4904:
X-Microsoft-Antispam-PRVS: <DBBPR08MB4904825FFD9F0505DB362B67F2989@DBBPR08MB4904.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lqMPRjIiz2hrs7BHWbq3QpIAAJVmYVip0GAKoiSbYExOhO4XZnDJXmko6ny0wukHyCd3U6qsrUNT0bA7Ufnl1ZtU4bK2sw2VVdQ+5eXavnoT/y0SruPVlfej5SLieFU+/HxYRKETgYcZExF4VCCiLqCdW2xR1MkAGJRAcjnrxk1bap3URidQ/hMJ7ZIv2xYhAmPBAp9CB2CRvDW40buOYIW2TU+8P5Nq5KHzbx1RnlvZKKMH03KMRjBd0Nbu9fg1A8fehWj2NYovB48NI7jmo45oJgp5x4tqaAbpYwFffEmkRQUtrckvOo3/lcVFeNKqywXfL9n04hI/uXoKZZyndiDRfiGD3tiqIjrNLO5Hn90SqZ0wDFp1D4fBWBIVN2TvYnFe70qIt5RVuWcnHCAQ9KnX5nizfzmf5hq0M4+zpat5ujfNWFcIh4Eu8TpVy1sAEjxvCHfz2kZ8NeBg/f9cfMQP44OyFePCWfdKnpsXbYWuETZ8Sc1mGmbiu3DKcy3f2O3KNcglJnYmoBoHeSeGuNcYoeoOkGaRPqC8hq2HA5e4tC4bW3pgtzBTufopvfqDV15/YSwhQksI+n9QVo4k5MyawCUPQbu/mn+XIQTVcGatldQMTwUG3ZhNy2U9qHHKfE6sNB7qveOvmQa8nD8i/myZ3OcpG9LXNw/rsLRx/4tloR2qzP50H+bf9UIA3K8Fav8/aKoai7LFG19j2ojU7MChG1kSjK84DloQrLHMEpjaIPFK/IjRAqKZHiBJbHC2IM+K0OU4PX2iurSOv6YgyJULMwVoTl4V0xfGzACwFNiqROc6KiZVefEz+wofRDyXZv2DY/Kl1wAmODQxYOE5ReEhwaAheKgqWxVcOOBk6Tc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(83380400001)(956004)(966005)(2616005)(5660300002)(36756003)(6916009)(66476007)(186003)(6486002)(8936002)(16576012)(31696002)(36916002)(86362001)(52116002)(8676002)(2906002)(4326008)(31686004)(53546011)(66946007)(26005)(38100700002)(508600001)(66556008)(44832011)(316002)(38350700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTVzYlU1WGtsS2phWVB2Y01ldGNwamthT3dKSjFqQ1NIbURFVDdrYi9yR1cw?=
 =?utf-8?B?dHc4S09PeGIzdmYweWZWTGZxMnE4VnhBQU9MNUloUUJZN3p0UnNzdmlMOEQ2?=
 =?utf-8?B?cjRmUXZFUitxSmxyL0h2M2hqR1lkN0hSeWpsWkVRb1JqQUI1anN2QWY2QkVS?=
 =?utf-8?B?YUFSOVlRb2RFWHJSTkg2T1l0MDhCVFlhTjZaNllsWXM4ZGNVNGZyZ01Fci9j?=
 =?utf-8?B?SnRacU5Sb0VRRW9ZekNSckQ0VG5QY3ZaNWNhVmhpV2F0bVRucDV4MUI5SXdl?=
 =?utf-8?B?N2JtVUYxRnJPZjdCZUV1SitieDlNbnV6VS9JTEsrdEdPVE4wM2xhb3ozRTlj?=
 =?utf-8?B?dzZwTUxiZkVTSmo0T2FYLzVqZ2l0azUvU2lCYmlnSzg5NHFHOENtRkY1WHA5?=
 =?utf-8?B?NzRHaTBzbkpmV2xhNEwxczdmZGhKZWtFZXhZS1hpNmJST3QwMklyZFpOeG93?=
 =?utf-8?B?VmNXR0RBTjM1TWNXYkhRTHFCRWtOYStzR2dkM29DLzJ4dEJmVi9ITGRRdzRQ?=
 =?utf-8?B?ejFJTFNDQThTUEtaMnNnT1I4eHZabmpZYmZTSE54Q2FmTFFhWXc1TnBQcGNS?=
 =?utf-8?B?VVQ2RFZyemdPOGdtaGQxYlAxLzFZdml2RldUN3lDZDVYWkU5S2lma016R2tR?=
 =?utf-8?B?NE4reHNJM000dzJsODV4UzBoOHJqZzIvelZOS3lBS1p1MFpjbXJ6dkhTUU1h?=
 =?utf-8?B?N3VBKzRXMkptYWo3SDZzZTBBUXRzeHJKK3NiMFlwcDd6cjZNQ1BNRmpIaVp6?=
 =?utf-8?B?TUdCcUIrbTlvTlVSU0EwbEUzL3BrVGtkV0xYL0NnaDFVYWorc2VyeXMvRHlB?=
 =?utf-8?B?N0orQVd2YXVyNXZ4SU5LN2hvWVI3cENoU0JmSksrbWpyOUxuZDZDNkpkU29a?=
 =?utf-8?B?Yng3Q21VbTR5d2RyNC9JcUZnTVlrZjVRM0dkYnk0ZVgvNE93d3BiSTYvclVH?=
 =?utf-8?B?Q1JyWUxjSVRZQXY0WVZFdERhSk03Tit3aUl0dFEwWjJ4d2hKR1lIV0ttUUVm?=
 =?utf-8?B?b2psVFJDT1FRS1ljWkltSDdXOS9mSDlkaVp3V0FmMTc5YitWNThzTHBoS04v?=
 =?utf-8?B?Si9XVlVXT25NNXJjQzVpSlNUSERleGhCSkJtMncrRjJVVDQ4WG1kQ05pSUFT?=
 =?utf-8?B?a04zbFIrUmFDNkRaTmc0V29wZ1RHdHIzcGtHVjVJVXlRK3c1bjhTZkZYYXg3?=
 =?utf-8?B?amRQbHRwNVlKd1NZYUF1OW1VUHB6ZU85TXlOZlEwbjN5ZCtLRHZsb3kzMDY5?=
 =?utf-8?B?S2s3M1NMdkFJWXpEelkyRDBXTFd6Qm9sbWo2Q3hsSk1VanFucVRDMlB5dFoy?=
 =?utf-8?B?aEhmbWMxUmtUMlhNWWJMVjF4TG5saFJJQmpyMkhBM05UL293Q3UvNXpZR3h5?=
 =?utf-8?B?cXJVUjd3bzRCVUU5OFVicnVVVW91Qzd2cFB2Tmt6Rk41U1U5OHlmSEVjaVhv?=
 =?utf-8?B?ckdLckhjSlJlZnpuN0lVRXNPdHAra3FOdExRY0c1N2ZHNDlPZTlMVU01cmRO?=
 =?utf-8?B?d1I0Z2Mrb3ZWN2VGOVhZdnBwU1YxNDh5eXVKY1U1TXF0OVpVNjBRTFFxQzdr?=
 =?utf-8?B?NW5GZHV4TElNUTlsamhYK2prYVNxVkRWZ3hjcUg0WFJaczNwQ0t0ZXpqZjlE?=
 =?utf-8?B?cUtESXdiODJLMlNPMFljYWx6NDR5b2dzWERRWUxYSllIWE1GcURFQU1CQVZI?=
 =?utf-8?B?dklHamx0QnE2UDdtVlJWZGRFZnNiU0MybXIrcnFSUVNacmZXcExWaG45bmNa?=
 =?utf-8?B?KzJuVGRPSUhDNGVxaTlNUDUyOXhTbXl1SlNrcUlGTXBEanhaVlJoNXJYaGpZ?=
 =?utf-8?B?NVM5MDhtdU0rSGY1OGNnYmNzVFhBTDk3Unk3QXJEV212RlEvWDFZR2xGaWJS?=
 =?utf-8?B?ZkluV25yRG5sTmVncnhEVUc3RUNXQ3lKMUdsV1VlWUIzcVBQVGNFUG9wYzJ0?=
 =?utf-8?B?bHllLzM1dGlPaXZkVCtzOC9GVWNiamRSdHozQUQ0eWRlbmVnQ0JMUDZlZHow?=
 =?utf-8?B?U3l4NUN2THR4R3FmbHhCNmtyclE0WDhGczVEL0NTcTZyNVZyTGYrQTRITklv?=
 =?utf-8?B?WU5wSjV3cFdLYkRPL3R3elVySnUwRGg4bGpQL2tMWWFta1ZrWWt0eGhIVTE4?=
 =?utf-8?B?THhvQkZmNTUyUmFtOU5ZbDVNWUhUUEY4dVZDSC85M3lXcGYyTmRxUGRaeUV4?=
 =?utf-8?B?aXpTb1JnMW5BVkFJQzZEaDF6ZjBraWJPb0Z0QnVBSEFXdWNaNmtDZldIc21J?=
 =?utf-8?B?b3RJUzl0eFRJRlZxbE9IakYycGx3PT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 048418f6-9ed1-45dc-7ca2-08d9a819b302
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2021 09:24:18.1288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fwwlakIXCzMTx9EVBeIZZkJCEd2U5hsdk+55Z16IO9o0BChYwSUXNvNWv+mZMewjsrqtdbh5nxytYXNNRnx6kZ8wWc8PvDwtMp555Ai9XoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4904
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_012424_895596_5450CDEF 
X-CRM114-Status: GOOD (  26.69  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] arm: rockchip: rk3568: fix mmc boot source instances
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 11/15/21 9:06 AM, Sascha Hauer wrote:
> On Mon, Nov 15, 2021 at 08:51:16AM +0100, Sascha Hauer wrote:
>> On Thu, Nov 11, 2021 at 03:03:14PM +0100, Michael Riesch wrote:
>>> The mainline DTS for the RK3568 EVB1 introduces mmc aliases sorted
>>> by the addresses of the corresponding controller. This commit
>>> fixes the instance number and aligns it with these aliases.
>>
>> The board dts sorts them differently, but the file is a SoC specific
>> one. We have a problem here.

Indeed. FWIW Ahmad and I had a discussion about this topic in which
having the mmc aliases in the SoC dtsi file was suggested as nice
solution. However, the ARM SoC community is about to move the aliases to
the board files and the corresponding patch was declined [0].
Hence, currently we rely on the board dts files to be consistent. At the
moment this is the case, but I take it that you are not too fond of this
approach.
BTW if I am not mistaken, this is an issue on other platforms as well,
e.g., on the ZynqMP machines.

>> Sascha
>>
>>>
>>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>>> ---
>>>  arch/arm/mach-rockchip/rk3568.c | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
>>> index 234c6d22d..95f462eca 100644
>>> --- a/arch/arm/mach-rockchip/rk3568.c
>>> +++ b/arch/arm/mach-rockchip/rk3568.c
>>> @@ -144,10 +144,10 @@ struct rk_bootsource {
>>>  
>>>  static struct rk_bootsource bootdev_map[] = {
>>>  	[0x1] = { .src = BOOTSOURCE_NAND, .instance = 0 },
>>> -	[0x2] = { .src = BOOTSOURCE_MMC, .instance = 0 },
>>> +	[0x2] = { .src = BOOTSOURCE_MMC, .instance = 1 },
>>>  	[0x3] = { .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
>>>  	[0x4] = { .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
>>> -	[0x5] = { .src = BOOTSOURCE_MMC, .instance = 1 },
>>> +	[0x5] = { .src = BOOTSOURCE_MMC, .instance = 0 },
> 
> Instead of storing the .src and .instance directly here we could store
> the base address of the peripheral here. Then search in the device tree
> for the node with that address and get the corresponding alias.

Sounds good to me.

> We would then have to translate this into our BOOTSOURCE_ defines and
> instance numbers. Or maybe it was a bad idea to have defines for these
> and we should have used strings for the bootsources in the first place.

AFAIC having a clear classification of the boot sources with enums is
helpful, and it is just the link to the actual device that might need a
revision.

I might give this a spin and come up with something.

Best regards,
Michael

[0]
https://lore.kernel.org/all/20210917110528.24454-1-michael.riesch@wolfvision.net/

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


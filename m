Delivery-date: Wed, 21 Sep 2022 13:51:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oayGW-00BI0c-Hx
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 13:51:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oayGU-0002U2-Ls
	for lore@pengutronix.de; Wed, 21 Sep 2022 13:51:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5U6dbzF52+gkGYF8JZKckp6CIk/b/jNVekhLDSeSgek=; b=4BxWJY4pJRcQ+GN4PvMpR0hgd+
	6vLLkAFxvdx5XW35WPsgSEmW06BsxBGEiLnjiW+S3T1jjGHV1awUZF1ho0iZ81N/jtXRrjevd8qit
	wwCRDZVT7XYEp98UseNX6b7pawCPmqvP3cuIunaSibprDN2C7G+qnMRy5koEuydPR+AhUItI4p/Rv
	/zjYWCmKVNiBQ/mUM44F8CLVKdD26efGROR7RE2cwXQRrGnty7hbARtAy3VAQIo20a4uvsGQfUsqN
	9Ruot9rjkBiNYK+BAvZyXIqaGCAB1Y4bjrgNcjYrxRQmRSDGQ50T/82aevT2QiqU+XB/bewRjbhx5
	n0f1OMqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oayEu-00BBSl-NI; Wed, 21 Sep 2022 11:50:04 +0000
Received: from mail-eopbgr70057.outbound.protection.outlook.com ([40.107.7.57] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oayEm-00BBPW-Bq
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 11:49:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zx5zJUsO+1cD60QeukGRG2Q1NikA3DMlVIuFDCSDB+34foaBCw2MiTMF9mC32+t2YBGtdJCKZDlFhRGdSbOg9DkgJ02++W3RYVwWaSmHRADPhL5XOXG99jWlQpT9+7rrj9Baw3x2rwdmURpcagweidqX02viIzMZZYBPGM3K4z6ReafHNcRB5SeDyvDiJupCTNyQVZV3tAgSq26VLT8+KjgtbNA7Ngd0UBthsN/2qQDRZWLLeHIqXrrjJxNkHqV5TW67jT4XKkECyjp69LRFVspHYv4jqySPTmrU1M1/+le1QqNYd8uEUl24mAzKnzQWehl7RTSyMO0+yOAbhNLTtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5U6dbzF52+gkGYF8JZKckp6CIk/b/jNVekhLDSeSgek=;
 b=kA++0OLZ7vZpoJLwedCOYPncWvk9zF3b6u8H5ZMTI0xIwedsYCEWQDlrYsV4Y8mikWBTJjBLENdC4jiBul316N96wjVQwtxidXoulI02u3cql2OFXHgvKSrX5CAMoE8VFzclLhhW6qz5nvbzWqEfnGOpjv2u4SfwUebYrkAjMVU/mFAIPw56cS8nf1tnDYGElaSfEMrBHeK1e39boGT7w9Nybn6qEYHlM4dfcMbMNOGbMLmMUJF3WfqsY9BvO3Fmu9kyolUY3pTMgDPBrYb1OHOHm8+My3dhvJ5dKJqiBo+n/3eoBhFPQ71nlAa5ylVY3Co07EmrFXNbb9qy2tYIbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5U6dbzF52+gkGYF8JZKckp6CIk/b/jNVekhLDSeSgek=;
 b=HzrovT/E6/0Cdjc0Jx25CeNlryQYpmDOUqWqM+ml2tMFu/+1WuAgE0Dhy+N1vAeOYzwdLZb9pOGsBMmX6taM9VzDVSoP7Po+bdN06lxvIWmCBokSsgyoz4JrKtJFeIK1TZJVlDOCdggSc0s9z8KtXwKIMmN8P8VG04mmeXRIsSc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DBAPR08MB5717.eurprd08.prod.outlook.com (2603:10a6:10:1ae::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Wed, 21 Sep
 2022 11:49:50 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 11:49:50 +0000
Message-ID: <223f9b7c-a95a-7847-503d-e51cb2abaf64@wolfvision.net>
Date: Wed, 21 Sep 2022 13:49:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
 <20220919113948.991245-2-michael.riesch@wolfvision.net>
 <20220921094649.GC986@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20220921094649.GC986@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VE1PR08CA0009.eurprd08.prod.outlook.com
 (2603:10a6:803:104::22) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DBAPR08MB5717:EE_
X-MS-Office365-Filtering-Correlation-Id: 4add3f5f-19b2-4af2-f618-08da9bc76418
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	0+zJJfxQ8MFUqAg3mRiXX1lRTSr1yeGbIuMWsqKhLSuEN2ja0uAbPwcl3GBsIVS/eg1M3/NF2By0+6izKUe/RBDSWUwpDorYbAE0CzYYQZVUtGJ7VdUXkWSSJzLwv4hOHpAISzMKUXG/7sku54WbZdWpdQ0mF21PYEHPu5GhLVxwPDGh7yewL8NHlixeGaNNR/l2vdRnnCucde6Xy2Rtr6XMEilLgjcG8cHjVx79Gw66A2ct1m2FOdORAnYlShGLupaSuBTxJhjttvW4umjydCcJkrLvNB1nI1TwqH/ql/5QJnPiahn/ioa37aopMc37CX1QE9ZACSxdi0fKghoqGeDn6xWv3TRi7p0VEtLqmVmBu54IKq6xaiomQQrsc4uF7CBgnJ1z4ZMzwrG+FlaQo0emXhiOZKCsNrv4i6cyrQalan+2g4cXzCL7WszprmuomP47x2VSaXOtf8x0bTC6D5DmDSuiMyIILUOcHpLZXsg1++X6i1iFyroz5YcMtEebaYnPj3oESkb8+HVyv3ly7o9DO24T6KVJgwBymyGp/OMK+BbaNgKI9ivbYn9c72OOaNPVwMBR5docWNHyQHQ5oEaok0SZHGvlAYA+2CQ3gMG9zdS8Jda02kGBRzenXsTFu1F2jSrhswjGpU7ze3skBPj7O6KBcBT/kOTTPObBs/Q4XXc2rrqDZd0Bi/Iv1qOrp4q48pbPaZYdpDyPVTYt7xjFGgc2VxXXPmOGPfmkpnXKJR3ZBYY2j40NnldnZgGHow5+mXRE6GAd/j2BiPjaJtEpoAempjAU6eF5JLKivPuyGeUgNYqLc9/X6MSomasbAE2kJIsMSunBkS3361eC2WVQd09RGx07EoRtnYyFtiQ=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(39840400004)(396003)(346002)(366004)(136003)(451199015)(2616005)(186003)(36916002)(6506007)(52116002)(83380400001)(31686004)(53546011)(6512007)(26005)(66946007)(66476007)(31696002)(66556008)(5660300002)(4326008)(8676002)(478600001)(36756003)(41300700001)(966005)(6486002)(86362001)(316002)(44832011)(6916009)(8936002)(2906002)(38100700002)(38350700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?YjB2RTBSWnFDdm9RTmh5emtaRngwWlBIWkMrc3lrT3ArY0pPb1I3bHpaRUcv?=
 =?utf-8?B?bXdOOU9FUnNwQnNxeFAxWG95T3B1S2Z1NFF3Wko2ZHlQNE9aSjEzanhPMERS?=
 =?utf-8?B?OHdZR05tU29jNzNXZU1IYk1mWHlKU2xGcmxSeFpFb0FzRHUyRGFRWHlJVWhR?=
 =?utf-8?B?dyt6a2dCelE2YklNLzJtaFRkejhja2YxQmxteUlRUHpNdTRxNncxZVBXOUMr?=
 =?utf-8?B?NjdDUzZ2ZS9BL1QybWpWS3BvSlQwbURCMlpwR3FDME5YWGdXMEM3WFl3dzdW?=
 =?utf-8?B?dTR4c0ovc2Iwa29sUzFNNy83RExVekdJamd3cDZNdTZyd2JmRFgrbXpXU0RS?=
 =?utf-8?B?WkJxSGRiTFNYd2lsb1pHc2dYK0pBdEVnKzNYeEwvUjZrOFNLVExGVHI3Tms3?=
 =?utf-8?B?QmxqaDJrOHJ2Y2t3VlYxVFBFajJmNkJ1YlZLN0tybUlXWWx3NDJwblB1MS9H?=
 =?utf-8?B?WG0vcUNWL2pWTDg2c2NsU3RGRzA0a2FQaHliV2N1dXFCWnplSGlDZTlLU2Vl?=
 =?utf-8?B?ZTA1TFBKWHZoVFprSGZyL093QW1SeFk5aUpmbXc5RDhlLzVCaEVRU3JmR05j?=
 =?utf-8?B?eXV6UDZGa2QvYzFKUTQvZmpzYjZQbUFLU3BYSmpwYThwNkRlald0U0tmeVJu?=
 =?utf-8?B?SzFvc1R5YUU2MWJOeVJqdXhKWWRiMVhZN1lXS285Zjg1WE1FOS9COEt2UnlG?=
 =?utf-8?B?TjcrcFhXQzR1c3lMUnh0WHdXSkdYMno4Wi9DK1ZCZnZIRTl4YVFqNFd5aFA4?=
 =?utf-8?B?WFhocUtISlY3ZERCN0JvSG9hd01XRnkwTjlUT2g1Y0p6c08xNHZwZ3g4ekJZ?=
 =?utf-8?B?eVlhajZFdmJsNzUwY3VnYm9QUURGSCtJNURWNnI5bXhPR1RmSURhUFptL1BY?=
 =?utf-8?B?bVdUb0dYWnEvcHBacFVoM2JIS3FVNWFoUlc4SWlvKy9Qc2puMXB6UnNLamtG?=
 =?utf-8?B?dy80TDk1aGJWSE9PK2ZnelJ1SHV0bXc0TlpNSUFsTDN1RlNZOFRKSzdZVDF2?=
 =?utf-8?B?Tm1SRytPcUhSMmxjQ0ZLV1JreUNFbWU2TXVUL25XcnlWQUZoN1pkVVdQZkJJ?=
 =?utf-8?B?R3BVaHJuNzF2bnZlZnlmYW5xQ09mWmNGZzNpS1BWOHp4NGZHdTlLM2tRSjZI?=
 =?utf-8?B?U1VPbERxaWhUY2prWXdnazBUdWYxSmFwcGFTOEsyRlZ1V3FvU05mSTFoR1k3?=
 =?utf-8?B?ZEhUVlZCQ0pEZ1pUdzZQRnZWeWtzbi9JK09NdTZZd0QxSW1HZElKSy9PNnh1?=
 =?utf-8?B?SFQvbjhjSjJyR1NLeUNuZHRNSGVwaVFpOEdYT0tRbSt5MjU1QVR1eDRmdVFE?=
 =?utf-8?B?UFBHeWtSK291dThYUVZLQmx6VDhBZDk1Vk5nVXMwMU5xbkkrVVphRVFPNmhx?=
 =?utf-8?B?WGJXcnBzL3daMWpmc2tpMmFVQ09ZOUJTMFU3bVRSZHI4ZloyWmRGTVhMK1Fr?=
 =?utf-8?B?VTQrcGt6OXFsVFd0ZjhWaXVJQ3d4Nk00M2pZdXBrRFhGVlJJNXRwcitqWU9q?=
 =?utf-8?B?UDVZV1lSRVZua0FNTzNqcVR6VFJzeG95cGNMOCtIVVUrN1NkeTk1Mm43aG8x?=
 =?utf-8?B?ZU9hbVd0UXNaYjRBbWFIUGNBMWZUVmVFVEdtM3Q5TTFXKzdFUVR0Zk1XcXpU?=
 =?utf-8?B?Mk4vTFF0elNUQlpXRlZDUktLT1J6NTNLUGs0V05zaVM5cHNLQSs2eGloWm1L?=
 =?utf-8?B?UjFrcmRsNVlZbVVDVlNaZXp6cU1kZ2NmYjZDYmo5QVljV1pmb2tGT2FvQVNC?=
 =?utf-8?B?QmhiZGRpVmZnYzAxUVl6Tkt0cExlZ0lxaU1QZUZvNE92YmthUHY3SG5hU3Zv?=
 =?utf-8?B?bnF2ZmMwdkJlVnArbmhNRFVNcFpuNEJvODgvaUNML01FTGJrandUMDhIUUtk?=
 =?utf-8?B?R29jNUxRT0pDRkZUNnB1WmJtWVIyOWJWYTB3c0w0ZkZBWDNvZ1dOYmpZaTFO?=
 =?utf-8?B?N2NzV3U3MHNjblBYQVFxMEdhZ1JHS0tFSWdsUTBvZUJnckIzQWtiUjNoTUZi?=
 =?utf-8?B?aFgvNzBGaUd2Vm10NGRnU3VxS0t1eTFtU2h5NnFIbDlKVDRBVjNJVWpHd0Vx?=
 =?utf-8?B?QWZWNEc0U215S2s3b3lOc0g3U3BzeFI5MmU4RHozU0NzVGYyN2ZyVFpoWE92?=
 =?utf-8?B?VHBsMkJNU09UVU05RzNVSmltWTRtdW9lc3luSnRjYzBwQ3VPN215TnFtU1g4?=
 =?utf-8?B?Z2c9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 4add3f5f-19b2-4af2-f618-08da9bc76418
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 11:49:50.7438
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gENHIzHQ2EcB7ZLNlq6FJaGxe9HyRlx56i9/Pk550Id5lxb3OoKjDw73DQLLe5z90SQ6sq03vKjxgF9/u4BynOHEH1HacST78gKKptFom1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR08MB5717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_044956_689194_D0E81C98 
X-CRM114-Status: GOOD (  23.44  )
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
X-Spam-Status: No, score=-6.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/7] soc: rockchip: add driver for rockchip io domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 9/21/22 11:46, Sascha Hauer wrote:
> On Mon, Sep 19, 2022 at 01:39:42PM +0200, Michael Riesch wrote:
>> The IO domains in Rockchip SoCs need to be configured to match the
>> corresponding bank voltage. In Linux this is achieved by means of a
>> platform driver that reads the voltage value of the supplies and
>> configures the bits in the general register file (GRF) accordingly.
>> Port this driver to barebox to provide support for the Rockchip
>> RK356x SoCs.
>>
>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>> ---
>>  drivers/soc/Kconfig              |   1 +
>>  drivers/soc/Makefile             |   1 +
>>  drivers/soc/rockchip/Kconfig     |  17 +++
>>  drivers/soc/rockchip/Makefile    |   6 +
>>  drivers/soc/rockchip/io-domain.c | 223 +++++++++++++++++++++++++++++++
>>  5 files changed, 248 insertions(+)
>>  create mode 100644 drivers/soc/rockchip/Kconfig
>>  create mode 100644 drivers/soc/rockchip/Makefile
>>  create mode 100644 drivers/soc/rockchip/io-domain.c
> 
> There's nothing in this driver that makes sure it is probed before the
> users of the io domains. What happens when the users are probed before
> the io domain driver?

Correct. Unfortunately, the situation is quite the same in the kernel.
Only recently there was a discussion as to how to resolve this issue
[0]. While the RFC in [0] was received well there is no mainline
solution to this problem. I would suggest that the mainline kernel
solution is adopted once there is one.

In the mean time we could
 - accept that it just works for some reason (TM)
 - leave the magic bits in the low-level initialization to be on the
   safe side
 - simply wait
 - ???

> Normally I would expect that the consumers have some phandle to their io
> domain, but there's nothing like it in the device trees.

The RFC in [0] suggests that the pinctrl is a consumer of the io
domains, which would be in alignment with your expectations.

Best regards,
Michael

[0]
https://lore.kernel.org/lkml/20220802095252.2486591-1-foss+kernel@0leil.net/T/



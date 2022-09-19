Delivery-date: Mon, 19 Sep 2022 11:53:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaDTJ-009TPL-NE
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 11:53:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaDTI-0007t0-5j
	for lore@pengutronix.de; Mon, 19 Sep 2022 11:53:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S4SDCAeONVunfW79R8ckN7KCmEK9JQRtMOPzLkpdJs0=; b=HzDXZyv9iilIFUHR2lG7VmZAMd
	VK6GtB36v6ssNmOvXbcu4Ha+zVHlCC5f/65tgyNGce8yFh11wtn1e06h1zvalApk440jALMOADmxy
	3OZqTVoPOG6gPOCqKut2H8jddvnDyy/Igto2vuogP5nmWh/Al+P6X6q+lRi4G5asmxrn7dRdea/9u
	3DYzxc9fVDWz//GqL6IVUlNu3B6YrsYNtDfET24jMwWfd2UTbF2Xzk0NRo6Zef/NA1y6tpMre+RYF
	t6XfemBbqDUIcXRzlhvRA0jKSdP8FX90hG0k2kFLyZRkWSZTKaJB4do/AhteCCbNMLoTRXaTqvqIz
	Y+2Ph33A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDRg-00AyyB-Ai; Mon, 19 Sep 2022 09:52:08 +0000
Received: from mail-eopbgr20062.outbound.protection.outlook.com ([40.107.2.62] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDQR-00Ay7U-Mr
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 09:50:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lWoqt0q0QLfw/a1T6QFECPBiSrIYPNdEeoYQFz7wibXwOiv+a0olp3n+7FFeA/Iu8DwHMCblBI76Rdn1eGOss+HjcqumwG7OJAFCtZYsQkkP1blRLKNcmlodGGG/2Rd9/7gkITKR8nE3ON+ZOreduS6utTw2Dt/YXEjrR8GyZu1KUaJRVETV5K7twVl/t1lr7qA5NQUqlKUUeHNiuq5YDorwA7/5IkPTSXmmUr8xsX19mSIkOFdE837aVUgtHgcTU9FxzY9WHzX4H10Tcg2ByTERPaomgM7Znh6+vAnsJ/xrUiH33Qy16wEbjoVP1afPESF57/DrTrbZ7h84unls3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S4SDCAeONVunfW79R8ckN7KCmEK9JQRtMOPzLkpdJs0=;
 b=UMkYZKwp6uvRe96COwBJbaq2RyjGPe21v6I4BuDjtBVDtrqKdXYxDHALlFQveoxdav8UL8BZHUVbwh/Nh0vcK7F4mwEh/6Tbcmpn7jDooa6YfiQGRvLAPDxXJCttz6fO+BRrH1ecwV6FOt2gnTG+vpRPpHFNt1oEUJqa/VX5eSttTQ2U7dVctZVl9JTgE9Opa805OXalDpRY3KGp8Uf/uqEMbm2Vq6e/V61bQjtRbIT1Xn/mFfiUyzi4OFUaLt/RMXJW/QF4PTwMOg9MURFoQlJwc8drG8bF3446pFngS96dYMP+MWtEVasLQfm1c+gtAstsikUwejpQ7hQilf0WBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S4SDCAeONVunfW79R8ckN7KCmEK9JQRtMOPzLkpdJs0=;
 b=RspywExnoVBSaTqZOD5Zmy+dRdS6aLiBsWmpZJ2RBPuXcBFbSXKzvvxWSQsu8vnxqJdmVT+RD51nJ9+lU41Isbl48RCQQ1C9PbCS32n1s/Q5es8Dh4v9LUEP2uy7yZBSJ1lWZKVgNZPEVCuhaFTRef+sc7mhP29WCuD30ZyL+aY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS4PR08MB7853.eurprd08.prod.outlook.com (2603:10a6:20b:51c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Mon, 19 Sep
 2022 09:50:46 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5632.017; Mon, 19 Sep 2022
 09:50:46 +0000
Message-ID: <485704f1-fe73-53dd-10d4-7657e9e27b5a@wolfvision.net>
Date: Mon, 19 Sep 2022 11:50:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
References: <20220905145214.290551-1-michael.riesch@wolfvision.net>
 <20220919090135.GB6477@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20220919090135.GB6477@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0232.eurprd07.prod.outlook.com
 (2603:10a6:802:58::35) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AS4PR08MB7853:EE_
X-MS-Office365-Filtering-Correlation-Id: af224f53-9636-463b-4560-08da9a246cab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	wUu6paH4N4BxcnA9rDWBEXBIf4i5YkkVaJ3Flii64EOTzQ+z001tGjhUl6gkBpkmFEfRtdtm6BiCuZG4jmTt0r6cnR+U12JEr9Dtes3tqSQ0mYA/F/yVaCwCaB9ET/yOKLxQsyjteGkxXRAjGZddZNcuWrSW12UXSXscgumOmVniKXlq6QRuGrIAhd+UQrfN2T2KROE/zX3L+NOTkLz+7JDb3o6gMVv38aD9WcLuV9tfHge1EK5xc40QLL/uyfy1gGF8OmPsDXHQAnQ3joudBHOST1Dk3uMmyfZmxMG2xI5IHau3OokOTzqNCvlUmWn6JA5+bpzKXFG/oSLlnF9Qc+LLvYNeCyUKsloqWnMJVm3PwStkrPXHXP7PEjb/yysgmGwHA99sZ7RjTKOnD7ZePTxGN+i9KZhqfHCHqgVL8kqI/lhaMfwOYoZvij9nXSbwZiWCV+l92NaMos4eOhesczXnyOghdSQURHTdFHuXhug92D3xdUzZjhSpCbNKTHUDCWpFPlYPvJrotzDHcJYNKhvlHfnoUw6ZttDIqMhNmyUwE00a36b7SEAOPlCJ0fdgpvaR6/f4mJfA0lJCRiU7ygF4KgN/Zw5qwVtv0IkqqWwkpCcHVl9WzU5EHuExPdCzWEonr4F1VQXz9qNXvpJKMa/dZeykR2eR0J/MfAyxDUC/56U67DoY+5yXlZMv3zsAOB8AL6dXJpsZ0eJ9KSBdraercB80z5iS8hJUnR8Tv83ZsDZxNCSLpe1GwRe/tYkENM0t+fiQ8SJFvpY6wdKQWYQg87jI462UvQo31wG/7WY=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(376002)(396003)(136003)(39840400004)(346002)(451199015)(6916009)(5660300002)(8936002)(31696002)(66946007)(66556008)(66476007)(8676002)(4326008)(316002)(86362001)(38100700002)(83380400001)(6666004)(53546011)(52116002)(41300700001)(6486002)(6506007)(478600001)(2616005)(186003)(6512007)(31686004)(44832011)(2906002)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?eE5HZmxSUkFONkI5QVRwOStjd0x2bE1HazZnVWVOdjQycEUxeVJJMHRwYXFQ?=
 =?utf-8?B?SFhwalpsVDNvU1V2Z2lwbFhOQ2hrdy93RXFBR0NuNlNpQzZyTHh3Z2F5MHpM?=
 =?utf-8?B?ZFNBdWRhNmNUTWtwazdPUEcxc21KWWliZVRUMzVoZnA1Sk9LSHIrU09jbUtv?=
 =?utf-8?B?MlhEZDdGL0ErWU9sMjh3MDdmb0xwOU9mNVp5UWl4Qi9sNisvWE1uaTdWb09U?=
 =?utf-8?B?cVpyK0VhZFBRTC9HVC9XRlZjUW8zL1FKNm1raE9FRklQMG5pMWw1WGNrU25M?=
 =?utf-8?B?bnA4WjRlSkc0ZW1hRjJhMU8wUlkzdU1nKy94OHdjcVZVNjkxUndkRlB2SEJR?=
 =?utf-8?B?dlZ0bjN0U1krVVlPM0t2VUtkVDYxQXJsZVhSRUZHeWp4a25KcCtQTjRGdGl4?=
 =?utf-8?B?NmpONjlRMEdqalJCWUNYR0R3Z3dEU25oZ2ZYZ1BvZkRsb21zODdzejR5aGZq?=
 =?utf-8?B?dE9XVlhtRzByd2hsVWtDS0I2eS9va0V2bzV0ZElMZzg2ejR0ZHUyM0R0QkRJ?=
 =?utf-8?B?Wld4WThlY0ZOemNpU0tCN20rZWRKUnl3KzZxQ2hyajkvRlZScHZlQnlnL3p4?=
 =?utf-8?B?Vkw2ay9FblFPMTc4b0VtK3VFVnlTVm1sYW9VVWlDRGQybGlSakJhdzVJTTF1?=
 =?utf-8?B?VzVCNnVuZnlneXhTNXgwWll3cVJsWjk5N0hCbnlhcGdBYXYxUHgzaFI4cThW?=
 =?utf-8?B?WTd5Ky9KclZZa3ZGMThwS1BrVzIwZEcxNHcyc2RrT04vamFZYXpnRWFvY0or?=
 =?utf-8?B?Sm0wTm1WcHRIS3dVYVZtcWNWM0pQQUE1SWVVb29hRElRUVIvTXBiSXpDaWFE?=
 =?utf-8?B?QVBMM0lid2Q2cGZQWDdFZWtSa0krWW5USjZsWHhtaytmS2pnSUVYTmlYYTA4?=
 =?utf-8?B?WXpwaU1WUDZPajJPaStadmVtNUp3VUZxaE40bFU4L1R0a0RWNElPSXhEVHll?=
 =?utf-8?B?c2dBWHBkMW9oZFdwRjNMTktudXV0WU9uVUpaYnM3cnhpK3ByMnN1a2lWYTkx?=
 =?utf-8?B?My81NmxLT2dzWVlhM0d1WGlMVjd6MVNiZ0wwYkZYNWFmTmhyZHhCZzRrcldJ?=
 =?utf-8?B?MXpVS01DYnpjOFFGSEtoS3hIKzFYRFZTV2RMckxlYi9MTDV5eG92YVVnOHlK?=
 =?utf-8?B?cjdRUVVWTVUvbzJMa3dWWVdDVTFoM1J4TFlQMktqTlJFSkVtcy9QWGRRamQ3?=
 =?utf-8?B?eGtudUN5MkwzWTlEbHJwSUxXekVrZHdXejBnUVFFQUdxdFFkNWk3aGdDQ2hX?=
 =?utf-8?B?QklnakVqWHRObllIcGZSVVloR1Q5MUk3eEc5Sk9NYi9LMTI2MGxqc0MzMk9i?=
 =?utf-8?B?VWZWQU5mNm9keFFJYmx0eTBBaURnWUgrSG5KNkRHL1lSU1gxUHp5QmJFSHU0?=
 =?utf-8?B?emNmVlhKT2JSOFZKLzZ0bGRFbTJlNjVjQ3JtRTRCaStWZy96aDVqSXJwZ0Nn?=
 =?utf-8?B?TU96c05KbTBFNU92ZVZNMUR1VTdjaGhMWEFWb1dpTFdYWHRrZlJDU3huM2FU?=
 =?utf-8?B?UC9wMk1oWlF6ZTRjcktBTUJVaVVPeFh5ZE1Ib0dqNndjK3c3bmRPTmxIajR6?=
 =?utf-8?B?bkhUQnduaUVlYU1wWE55V1h6c1c2Tll5dEIyMWM0K0VyWmtiMzJaQkwrZlla?=
 =?utf-8?B?Z092TG8ydTE5OGphS3Zyelp6dkxRaVVVeVBoR0w3M1RZUzZjS0JpeGxVY1RB?=
 =?utf-8?B?MEYvREdXU0V0ZURZT1ljVUc1R3l2NUNBd2dpUUEwREF1cGdWQ2R6ejlzN1lF?=
 =?utf-8?B?YWV0Q05VRGNWY1g2aEtkT2lxc3lHMVNYc3ZGbmlTVjlYQmJhcEpQbEdiUFE2?=
 =?utf-8?B?MDBxNlAyVVNJZGR4aXl2RE1PNkl3THhiVlZmaE4rcjM4SXZ6M0hqYnNoNDJw?=
 =?utf-8?B?bDFEVUxMTnVYMm1OT1N0d1k4dVdlRjdvbEdsSkZqcU41eUJrSVBRK2tVNWpv?=
 =?utf-8?B?dnltRDV6YTFmYllIanVVYllNTFpMdGhvZjVKVy84YzQ2WWdiaFpRekg1TnFr?=
 =?utf-8?B?WW9pWVlSQmg5M2NqSVpaN1pGZjdPS0F0dlBYa1dFR1UxU1NEWUp0MndXMVJV?=
 =?utf-8?B?VzE4Q0h4MzlxSWhDc0VSVFJzbldKQXZDZmlJZXl4d1pqN1J0NCt1Tk85MWpo?=
 =?utf-8?B?d3JuTnBqRisyY0NxYlIzVXRtcW1JcEZsQkNkSjh3NWEreURINlNiejZxREp0?=
 =?utf-8?B?c1djcHlBQU5aSUVqd2RoUCtnRGFTSTAxWFVEZDRUL0szT282cXhBWjFNcDJ4?=
 =?utf-8?B?czhBYnJkU1FaMUNiUTZ0N1lsM2hRPT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: af224f53-9636-463b-4560-08da9a246cab
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 09:50:46.0103
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PH6gDtFyNvqTG2Pxd9+29WxsaT8OXTdOoMVm6Yc0dLNm288W2YmJwt+kmrz9MYxUsLkSezPCEfNvssRbyiVdMeF1FTiXxlVeiczqIjvUaXc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7853
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_025052_030832_670B1577 
X-CRM114-Status: GOOD (  24.05  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] soc: rockchip: add driver for rockchip io domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 9/19/22 11:01, Sascha Hauer wrote:
> On Mon, Sep 05, 2022 at 04:52:12PM +0200, Michael Riesch wrote:
>> Hi all,
>>
>> The IO domains on Rockchip SoCs need to be configured to the correct
>> bank voltage. In Linux this is achieved by means of a platform driver
>> that reads the voltage value of the supplies and configures the bits
>> in the general register file (GRF) accordingly.
>>
>> This series ports this driver to barebox to provide support for the
>> Rockchip RK356x SoCs. Please note that I could only test the changes
>> on RK3568 boards, so I left out the parts for the other SoCs supported
>> by the Linux driver. Also, it should be noted that the Linux driver
>> uses notifiers to react to voltage changes. This is not supported by
>> this barebox driver.
>>
>> WARNING: Use those patches with care as they have the potential to
>> fry up your board. That said, testers are very welcome ;-)
> 
> You are frightening me.

That was not my intention :-) In the mean time I have tested the driver
successfully on a RK3568 EVB1 and I plan to dig out my Quartz64.
However, I do not have a BananaPi R2 Pro and cannot test the patches there.

> I would apply this series, but given you warn about its usage I'm not
> sure what I should do with it. I could give it a test on the RK3568-EVB
> once it returned back in our remote lab, but I neither have a Pine64 nor
> a BananaPi R2 Pro.

I will submit a v2 of this series that features additional clean up
work. I'll try to keep the changes that affect the BananaPi R2 Pro
separate. They need Frank's approval, the rest can be applied IMHO.

Best regards,
Michael



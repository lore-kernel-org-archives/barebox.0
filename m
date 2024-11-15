Delivery-date: Fri, 15 Nov 2024 15:14:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBx63-002HDL-1i
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 15:14:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBx62-00020C-Nv
	for lore@pengutronix.de; Fri, 15 Nov 2024 15:14:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qZbwR5scen0yTFKZXo52tfWoGMeambTfF/1xfdwsqng=; b=mnmTPZMvl/JYI27vSoJYZ47a2V
	4BQhd7GLP5Hl/7RU/5RQV1eSLgfS/EYX1SW1dDa290UQYJgFSX9K7oQobEP2TZ+qpZe9aPpQyisZc
	93A79Md0SpIiKrxm72y3JzvWsKBK/v0znzEIKY033bL0siV5Pf8cTLm29VZjF1JZo/LHEU9ALzuas
	P3fWVXMDo+n0VBos452N/f/ZVh0dhFgYpUT3Ne8o7o5V7SX66w8i2utiJYWjmDV5YIeNuvNq7o4z2
	2wQCw6v0Z4gDKj9AzAS8QwvfJ6YSZGvb923fPQVQfzcBOFYF9kNefb9nduY6jo0ioFi2ESPukRb/I
	5kLCXrAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBx5T-00000002wzt-436O;
	Fri, 15 Nov 2024 14:14:15 +0000
Received: from smtpout35.security-mail.net ([85.31.212.35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBx5Q-00000002wyq-3Z8E
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 14:14:14 +0000
Received: from localhost (fx305.security-mail.net [127.0.0.1])
	by fx305.security-mail.net (Postfix) with ESMTP id 8283A30EE15
	for <barebox@lists.infradead.org>; Fri, 15 Nov 2024 15:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1731680048;
	bh=GHEysfQ9KzCAYtDMPqflEApGviht0+SbbNAx420weJw=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=hVUtvWyv/x7TGW4I4N8oBXHVkYBUvJorxYmO5e288ojC9dvh7LuR50vbHjN2TKEII
	 u+8q3NFc906sAPsqskunG+V0ThJLjAj8xqoh69NzaxUQhhlVeuXL73gfWiJcFDOr8/
	 GiJKWbqRoEu3tbKL/Z1eAglklmop86UAUgmqjkVo=
Received: from fx305 (fx305.security-mail.net [127.0.0.1]) by
 fx305.security-mail.net (Postfix) with ESMTP id 5C64F30EDDE for
 <barebox@lists.infradead.org>; Fri, 15 Nov 2024 15:14:08 +0100 (CET)
Received: from PAUP264CU001.outbound.protection.outlook.com
 (mail-francecentralazlp17011029.outbound.protection.outlook.com
 [40.93.76.29]) by fx305.security-mail.net (Postfix) with ESMTPS id
 C0E1E30EBD7 for <barebox@lists.infradead.org>; Fri, 15 Nov 2024 15:14:07
 +0100 (CET)
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:14b::6)
 by MR1PPF2BDF67A24.FRAP264.PROD.OUTLOOK.COM (2603:10a6:508:1::293) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Fri, 15 Nov
 2024 14:14:06 +0000
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39]) by PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39%3]) with mapi id 15.20.8158.017; Fri, 15 Nov
 2024 14:14:06 +0000
X-Secumail-id: <b054.6737572f.bd481.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oigLkw6OKpnk33ZXjkZE9PvV4vv1liXMMd1jTmEtSDOYMGczcrGilGnBjrjhwR5Y2Nymt0MoJ1WAi3yJj5dpJRbGPd/k2W6a8W86spgN3pEfIL/OyOYblyiQTmWPmgThiUNfj5aQ0/YqV8Qr/2gHS+dfe7y2sHMiqagmFhJi4/CUm/Nr3uOsFT/psAbPxK2V7vISO/CnrljqYCyRJ6JhKvQUfsCKlRd3+0ucM+Et+f8nq/jUQLlI+gFG3bFl0uqD2jvb8Oz+SI9gpS3yNMAtXg2ZmMggi2oZDY0PrYkA5Eyo7SqFLTRrVqdh/2c8539AfidmLeYY2OcrI761mpaPMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qZbwR5scen0yTFKZXo52tfWoGMeambTfF/1xfdwsqng=;
 b=QS4rzxB5j0WjVxApx1NLUSWNwFbmi7tRaSdr6bc6QhMsMIEojNY15SP9REEg87MXeGYOkSTpddJf/8l/NmKkdx2PCdyDS+GHmcNIQUBYC2EYI172dxCvY98pkJuph+cnY8qeAQh5DBfe3c8CZk3AuoM+Ep1H1wde30BCFH0l+Dm9o4utaYXQML4QTW3yI1M5QPve0e4dzX4nJozbrSpeePlarl7TLkp8ku/A/MHVRVXeoTeewYRtxHwvRFaKvdnRHAVI5DqL4KsfxMovh1gXgHBhZZXNYXFeCPZDzrIwZQJFnd37NPytUogwLYdJFxV7oeXm2whCE+aWkS70AMs8UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qZbwR5scen0yTFKZXo52tfWoGMeambTfF/1xfdwsqng=;
 b=G8t220UMsOlOmPubQbVBLMoJavhDg1JypndjdlJGr1gnT0IfwVVWmnUgSetVN709c/pMICxF645+dDGBL0tFgv0+6NxzxauQAVhIOs5V4lbRX5TBcyy++uZGtQyyeWTVIqoc7oVGkHrFy0+htq2hAXlHL12n5Mz7bMIo9MT9UAalKR93J8Dww8nLS2IjcOBOXKwpF8/h2pZU0TUsl55j2cOZnCPY+1UVn3njprcpKNIx5v8rYSSdj1B/FIyVcPRvUNE6gSLF6bWDmiX4lSmVGCbbVRb3JCrGs5bAl1PKD45d0LawCfxJ7UWhmuU9oBq5AIk5swRRbtLgZnBDexkfPw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <3efa5951-5867-4f6e-9e1a-e37ffd1cb42a@kalrayinc.com>
Date: Fri, 15 Nov 2024 15:14:05 +0100
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
References: <20241115135242.1251691-1-a.fatoum@pengutronix.de>
 <2b2b5c31-38cd-4456-8f62-946bb6eb72a8@pengutronix.de>
Content-Language: en-us, fr
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <2b2b5c31-38cd-4456-8f62-946bb6eb72a8@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PR0P264CA0251.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100::23) To PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:14b::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR0P264MB3481:EE_|MR1PPF2BDF67A24:EE_
X-MS-Office365-Filtering-Correlation-Id: 52ce067a-b5be-4325-059d-08dd057fc3ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: S+hkZJqXEH71G0ckcLIDqXxaSG4sbeS7P6TwWQbjWfaG9SnrMMLOSSxDapxMJbjOHcAg2wI7EGHt2w+X5zcrRPbqqmrfQKcwH9pt2rPgWLBkXyh/mfk23bm21U2qeStO3A+O/VAELRjvnFcMXvWLMAn8+sucY3UgcgbO62d9XOBMMuSOOzbrx7S1pzCBHk/IWSotoacL1XhL3UrZYSKr5CAGxHQctvMd0eN0MdD8BXf4GAI2XE8C8dZ0CLYpCiQe+AfqAjYbrruJJsJrOJTjU+wdNIEovZklF0fWWDamWhTwQFgYYAlRSTJb2i2Up1aQjKC6LAkeY8eLtUUvv9rtVnp0LKU03k3mEo24fOw3TR5hAsD38srZxoX9tFivI0a7r1Ou71wCVsUwdZKelY734nh2p7ueUgFdFT6slH6oIs2G+7XK8wx4yr8QHUdWr1o82DU+ORwbrr4do1IcE2rKU6sj0AcgHlybnk9zP4CEiNjvjPthd232pwQNDs1DI6GOHLG2nUVjs0XZ7GMgPozc8dqx6iwpdm2F4tT47leV5Am84HM5qqw8O03jkz0pDe22w+zzQBvyB6J9br6yDTU1lR6LQ1qv2hDvLWl/0N+mH8RSWaym568FKKU4pbfO5G+mM9ZQp8eZHwNiekfFbXmY+jcVdy0oGkNZJQTvobmlE3zXxM0hLfACnsALFsSB0FlQBvDQNGrBoWlhgaqcLefw+fouiRXgfdSiUSUJcO0AyKSAJo7rkFMU/fVgLEZRn9ZchlOb3TGVLiYw14knmkmvLsFC53UVw34CsDvH7W+pRLYQKIu8MG3x11E96t/IBR15jUwTcEFxaGrzDZ68BN/CNIuoI2injSiSLba2CW6qiQ7YClLRwUq7J4qvpG0pKzspNmlKE+LzQxXau9tsAkODV5govdfl7ioeUqe+QPSCt/s+wiQA1ZC9HEHGYT6vNIAiMV1
 NQbHwugNYMrLbo5TaAE+FAvGYJjDYJCRWoxEV9jcxSeK/3d9qlpnrzMgJqCmFDUTQ/xlckZRjaqnAplWItxqaxShtyx2yUYLib9KFlEm0oUJqL+yFusg+jTGU7txjelZaHLB+/Sqjf17wMWIr8lvdBjgOTBeV1y8Wzu8zwbOsZnlo9jwIKLLw7UXV06NCCTDHNUyDQgNFt5So8V8MVF2X9R186xIZVmYH2Ezp5vXYiKPWq4eKeNbYmYIYHI4rmfKrjfJgU4lhMaO9+KcQi5QLU7XPaRhfgjXWx7zK5YXPoJGp06sppAaY4jRNllOLyRVB6HV7v6R13q4QOJkSoxzKGhTGWcn+DmRlV+SfZfgIVqp5uO6KuU7atOiGh02j
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(10070799003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: OSs1XZIbisAfXrOwMwA5UAYT0wBJGwA5v+umurNe5pefhJgy2XR84RLmo4fvMA9Yu92x3ctuZ3Gz84G7CALqSyg78xOYDj+qbNqj3Bljihzu5l37roW+Vzs4haSzLVPIrixTyqHPT9OXdCJudanZ+G9vlivNYBu4Dzn1xPGIERrcwUhDpFUsRdwmOQYh5nTq4XTzAhS9StymUAFF4ktsbO0JxP7JxoNxvpb/N3bsWSvQCpGJ/D00r9XdPoOHpID4xVrm7qXWxA7sXyswXEzfWeF24t/CLp4KC5KOhiqzmcOEN0Oh2Dn8tESU2HfUAQIZ1gy428s+dalVFO82jyZpWjU+VRk5XZjThHBGfI9LTs9SXelbrI74ejWFXzEDW+iNutx4mPBJRgo8msRSWcPPlU5PozYn8MGhS67xXnBUfiHrt7E/bTYocQoKyLb8gUshtw0DTg4+u6xzwAe+5qdueqaKaDHGPvsdLd1i3KKxW01M67OS2c5aBq8zbNXm+S5oydE9bt3DeO/ybdgDi/OmmI880uVe4LxnDYm41zs+zHJPNCX+56gN61ZaUNi0jqRE3E+SYFlmShlv1HuOqQzo4LdSo4wgP9lWRrb3NmLbpu2oBuKQ3Cw3j8PgRP2p2s/hV49uL5l9tmvtqYBASH2QB4LLk++WA53FAxCNgQMzJSh/hM6AapCEbCHqqfr5rV/IW0JqNoQEEjw37JbsWy1Gxhtu/Hnf1WcLsyFhFjvvSLALv1bWDD31QMGvptC8f1kO3a2NEW4X792Bmt0bi4+vVp3eAwYA1K4aCxYd4qvpo/SGYCXHUGw+YuiP+68QV2FNvfQSajE6Btjs7/oGGzjnHoVZokBJJL8dS7FGXSofhw3A8IdhcnMPFvD+OOWSj/1rInE8VetguR/PJ0jli6+XsBwhd6XT9vuxzxZgfTR5F0x7YIi2gwqfEeyHTlTl7QCk
 v32xVwlrEE2b5CbzL2fSP5A9XJQA0TcofcVBaWCt6POiD/g3KnlhkO/8JLSbU4HzMKqrsGEgq61G6vUfihm0FGBd/RXsZUg2rIwe9xnoBefo5/SGn8fWzKKH026tcN47RTDbkqR9md8XGGZf8aRWXz7R/Xl46dvyrPfFgPgmA2efE4E4fNJKjlkGA0eWNpzjZL+PbdX1ssN62tZrh+PBsPfGYaxAIxqhSN55bjHNwdGZMFX2SgO0jM177btoNQ3MZXqy9oTMsKurYntUK1nzuZwXv/N43ytRdAu/OaWDBH+j4eAcX2O7qs/X43dsTqy6VlgpbvVyuY0zU0um36WKduqa25XD9l5VEgSMSmJ3LfyZz8ZH3E4GA/JJpMmTfXxfErf6rBFHWW9qGRPBTwFZUIz1ZnfIddrbyDP5HxDwVqc1YXIky9oiQSd3VCfZGs5aB5ziqz7HoqYkuVcO83/uu8nhxb1XegBfgSwO3VmWO6YAehupDT/sLs2GawnBlrpwY+eoTFRe5VkBxiVlgrRIyGen2++Wcj1V2hiZFpqLMvEiV/7b08hy5HyBrIXCE1Bw34WdENzbs+tH7EZINFwr8HWb6IPmwG0kz19nJCq7ZimzQbKg3zO01y/YoIf8nkOnx5PjG3RvKksH3YibiOX/nONcBU5AgKiIHwYtAGLIsww75A2WcL2p9wz1iEmxuwybv/wykujRp8IWpui3TTvlDw==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52ce067a-b5be-4325-059d-08dd057fc3ce
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 14:14:06.2509
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nH7OMU9u04Y02DrSuaOwnxhQGj60J76qPqhwDv3vhTz34bC++/o+mIlHYHrFGihDrb7FtAlY/bsm8FL2kwlvlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR1PPF2BDF67A24
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_061413_042138_F90D574E 
X-CRM114-Status: GOOD (  13.79  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] remoteproc: use I/O memory variants of
 memcpy/memset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On 15/11/2024 15:03, Ahmad Fatoum wrote:
> On 15.11.24 14:52, Ahmad Fatoum wrote:
>> Reserved memory is unmapped strongly ordered in barebox and calling
> argh, `is mapped' is what's meant of course.
>
>> normal optimized memcpy on may trigger an abort due to misalignment.
>>
>> Fix this by using the slower I/O variants of memcpy/memset, which are
I guess the "which are do not expect" is a typo also.
>> do not expect bufferable memory like the optimized variants and thus
>> don't cause unaligned accesses.
>>
>> Fixes: 66e233b8c04b ("ARM: mmu64: map reserved regions uncached")
>> Reported-by: Stefano Manni <stefano.manni@gmail.com>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/remoteproc/remoteproc_core.c       | 2 +-
>>  drivers/remoteproc/remoteproc_elf_loader.c | 4 ++--
>>  2 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
>> index 7590c1f9305b..17159316ee31 100644
>> --- a/drivers/remoteproc/remoteproc_core.c
>> +++ b/drivers/remoteproc/remoteproc_core.c
>> @@ -75,7 +75,7 @@ static int rproc_firmware_write_buf(struct firmware_handler *fh, const void *buf
>>  		return -ENOMEM;
>>  	}
>>  
>> -	memcpy(rproc->fw_buf + rproc->fw_buf_ofs, buf, size);
>> +	memcpy_toio(rproc->fw_buf + rproc->fw_buf_ofs, buf, size);
>>  	rproc->fw_buf_ofs += size;
>>  
>>  	return 0;
>> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
>> index f3bf93df2c4a..740ce8765165 100644
>> --- a/drivers/remoteproc/remoteproc_elf_loader.c
>> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
>> @@ -70,7 +70,7 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
>>  
>>  		/* put the segment where the remote processor expects it */
>>  		if (phdr->p_filesz)
>> -			memcpy(ptr, elf_data + phdr->p_offset, filesz);
>> +			memcpy_toio(ptr, elf_data + phdr->p_offset, filesz);
>>  
>>  		/*
>>  		 * Zero out remaining memory for this segment.
>> @@ -80,7 +80,7 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
>>  		 * this.
>>  		 */
>>  		if (memsz > filesz)
>> -			memset(ptr + filesz, 0, memsz - filesz);
>> +			memset_io(ptr + filesz, 0, memsz - filesz);
>>  	}
>>  
>>  	return ret;
>







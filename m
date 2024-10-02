Delivery-date: Wed, 02 Oct 2024 09:15:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svtaT-005HXJ-03
	for lore@lore.pengutronix.de;
	Wed, 02 Oct 2024 09:15:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svtaT-0007vZ-3g
	for lore@pengutronix.de; Wed, 02 Oct 2024 09:15:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DSemNAu+uK9uDrjQdsg3JuSbMgfY6jrghXvUYHX+x2A=; b=IHzOzDDH1O8NpSXFX/LI9mgP0y
	OE64pnKDekBCUJxjiiN2UVTK2vCV7i0S+MGGn5SLIcDql7a/PH9MZfX3m9ha9mN+RLD6EqCjllJrB
	385UD7wvp/NXC3IZrjbw13nTE/dXjNrGGQcgCLqXHWkoaYg2ohopzWbg7/UEpEXADTWPXjCZVASa6
	E19YQjHbMwCaPKBC8k9LMKzXhjaKuEPrV2ixQf+KJg1LtfDsWOq13ZhfbuimLRTmZNbTYN1XnWsMl
	2xb7oCWBoWNJizlH/bTzjKsLFdSrkIVP1Xjv5mpNfErKo+3U+CbdV1lAH7Vo8v0tv5yxX4ioQlMdS
	GtERiqhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svtZg-000000050Xe-1q2y;
	Wed, 02 Oct 2024 07:15:04 +0000
Received: from mail-db8eur05on20700.outbound.protection.outlook.com ([2a01:111:f403:2614::700] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svtZd-000000050WX-071K
	for barebox@lists.infradead.org;
	Wed, 02 Oct 2024 07:15:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u5AD2KaU719c80fzIl8G0HsAmNrwVAbM1CSCh9EIUnaFB0CJRRSdaXTF/n3a6dkqXb3a1HcY9xrD6DqEckEB1Fsc++tbxXDlFfKrjKXXu71VPBBtWYnhsK13F3JqCtM6zm/om6W7JguCMVJ0k3LrddprYaVUPHbu2+1N5klwnhZM4bBiXImwNdpv14+rz6+gOTXXKoODcIt9I2TMjmbpiPz7iBC0gD0pXV3JdncBit2oLimHAK9n95TLrfo99bEeow0okHDeYgHDYP6bYVmUKhuu9YXTIfAjWVPBszg/jHvSrxFFdTxK7t5S0JkgBpgo3hncpBk8DoEGBDvnp+YvPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DSemNAu+uK9uDrjQdsg3JuSbMgfY6jrghXvUYHX+x2A=;
 b=Zo2QWes2NE8xJU4l2oI+Ei5E/+wmBOt4fhHJJWxs44Zf0XrgUK/ogkSnpDd2Qx2qGqx2NivREnDvBW5l5dZtTjoAGNOG4BtOO4Ea/Xu+Q6TK37ef/lPrY0NzD/a74Ew5mIROLXK34Rk+pr41FO/axEZ3AWMdwOTU++TV2rPbWVOQ9V5cWZP5mEBBLYC1wkg1jAl0QTD/BhVqnlpVmByzOxiIF21c5bZ6uhrQ+G4Wt13lIkLt9yIrDndX1OVZHY8UC8SAjU2IL/+PLHVapWXaKZmtK/41V1Cfy3BH29fVyIbdkBpJZvAFebgh22lTIuB7kdmUBJaLKyoKDJw33n0I0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DSemNAu+uK9uDrjQdsg3JuSbMgfY6jrghXvUYHX+x2A=;
 b=kqFCQjAzv0w/z9FM7F4hB4aJ0zuN6YRsmrdwGOsjQ2FHR5PlyNC0MDVck9dDInvOP4VFjcKBg7v7hxNGHsywxxe8qSNjtcm7sqRsl56JgjgLtCu9pZ4TvqoNHkOy7TjLc0iShuNCkX0Xwhswmop9Wq8HhCsi1tSFfE4+42puHCU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DBBPR08MB6250.eurprd08.prod.outlook.com (2603:10a6:10:1f5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Wed, 2 Oct
 2024 07:14:47 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%4]) with mapi id 15.20.8026.016; Wed, 2 Oct 2024
 07:14:47 +0000
Message-ID: <718ec9cc-1e9d-4ebf-9796-dbf5a03153ec@wolfvision.net>
Date: Wed, 2 Oct 2024 09:14:45 +0200
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20241001104738.1069237-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20241001104738.1069237-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0100.eurprd04.prod.outlook.com
 (2603:10a6:803:64::35) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DBBPR08MB6250:EE_
X-MS-Office365-Filtering-Correlation-Id: 17b22415-106a-4ccd-fc75-08dce2b1e5f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TmhvTFdIWFdQWHNidll2b2dwNEsxYW1BU1ozV2hMZEVNRlZOUmZxbWVyNXFq?=
 =?utf-8?B?ZmkydzlOeGIycnB1bEpGaVNxNEdFUVdsS3FVMUJPeDJNeFNwa3pxdFR3RFBM?=
 =?utf-8?B?TTNFYjJ1eDVNYTM2UXlKUTE0U29UR0JmZU5lVSt0S1ZrNzJMU3psNWpyaC83?=
 =?utf-8?B?Mm9aSDI3SFd0Q250d2lzNjhHbHpVMVk0QzBGWTRLbk5TM09Yakc3ei9XaWVC?=
 =?utf-8?B?TDl6MzUvR01PR0VxeUZGeE12M2lzVkNmMVdWL3ppVmlDSHdQUFEydjcwQkFX?=
 =?utf-8?B?dGlIbitzZFNkOFhpS2JMdEZKUTBDRnpNc1VJcUJKd2w2T3o3QkJNM2kzbHhG?=
 =?utf-8?B?aEVrMFM0STZaRW1IUE9Gd29RTXoxVmxDbGxKNVhLODhsc2tpRWVzRnRpVHhv?=
 =?utf-8?B?Z3BaSzlTVnNweTZ1UWZQNjVzNXE1SXR1cS9TcFJkSDcyUnhXYVFubFgybi9I?=
 =?utf-8?B?bUVnZVpreHZ5NzMzTDBqQXBjMFVxM0hZTXg3WHc3TFZLOFhUajNKYitKdDY3?=
 =?utf-8?B?ZDdHbENndCtjVnpycDhPM0tiOFlpSzZxNCtwZERBSDRYMUszODJ3NGpINFdS?=
 =?utf-8?B?d2diZmtDdnp4bHZFZEN2SkxiS3JwTERrUWxvS3dlM1FhRDFQc1YzMlRNeTN3?=
 =?utf-8?B?U3BmZXNobW85ZHFYVDI3dCt0c3lMcDdFQlZSSlFqWG5hcFJRbFFkaWRRays0?=
 =?utf-8?B?dXdkcDM1cVlWRlh6SDFNVHhJMWtwbGw5bWhLMXhhNWE4WWtmSTVDUnhYNWd1?=
 =?utf-8?B?VWJOZG94SFdPVFlUVWRubDVmM1FoQUl6WXEzcklTTGF2VldYd0xXeHZZVlVG?=
 =?utf-8?B?THdLMzJUa05Yd3JBVGJsZEJsU2IxY0JlclFQcmxqZjdieUNqcWFoRUlvR2hU?=
 =?utf-8?B?UFE5NU1nVUVQNVpNbUE3bmxMV2oxQS9CQk5FKzhRQjR2WEIyaytRQWdoemVp?=
 =?utf-8?B?TjJJVkdyZ00rKytKUXFnYXE0K1lWQWcrWmhQTnBkWHdDR0wwMWNjVHdKcmY5?=
 =?utf-8?B?elRxaDZWNHMya2twTG4wcHpHcWNCcG0zdDdjOG1qa0laQ1JBWTlQeWlGUzFp?=
 =?utf-8?B?R0lHaU81d3VKWkYrZkd2YnRJUUhic21xeStNL0VaMzJiUmlXVHRRZnVtYWRa?=
 =?utf-8?B?ckh3Vzkvc3o4QmZtWnYzbzZ6eWxrRXRXUXI0NW10NnFWSTREckV2YlFhVTdM?=
 =?utf-8?B?MUVMYVgrcXFOVFhiaHgyZE5CSSt1QTFiSFBsQTBJZlJ0b01BT0xCczZWTjdQ?=
 =?utf-8?B?cTdXT1BjQ28vU2R4Zk9sMENLem9iTDNKVUhxK0hVZmRnZXg0NUdYOG1uQzBt?=
 =?utf-8?B?aERqYTRrNlNuREVobU9VNFdvL2tCcVF1dlIxaDdsN0Y2NlFQemd5WUdEaVA2?=
 =?utf-8?B?a3pUWWVYY25QWkN6WDhkcXVnL3BDU1d3SWw0QmplSW9nalk5SWlKbVQrcXhk?=
 =?utf-8?B?VlluTFVxTWU0cWVoMThHQW4rK2MwT0Iydi9uMjJ0NldxTms2eVVpNHRkRWVW?=
 =?utf-8?B?YlRlM3pJek8xYklvYkg1VnhrNm85a3BlVG9OcVZnVlhvUWdobURyMEJLOEcz?=
 =?utf-8?B?M3hDMGpNRUd5U1NrTE5DKytlWnF1eklXbG42Unl0OXh5d0g2NTJ4Mmg5L3o5?=
 =?utf-8?B?OUpWZkxPaEJZKytxUnNsRCtRZ0xqWjVaQmd1d1hudWV1Tm91bTFPaGhTemgy?=
 =?utf-8?B?UHRJUEowb0JoZDk3M1JVRENBZmE0RnhrcExQTXpuc0l3WlpZWHdxMEJBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnprTFZrUGM0TER3Q3RKNXV2M3dmNU4xSThtS0Z6QmpFOURmUVEzbkVUSnZ4?=
 =?utf-8?B?N0RNNDYzRGU0R3dIT2s4VWw4NGR0ZTE0TXZSRWN4Q2dMUVdvVk40dlVSMlZx?=
 =?utf-8?B?akV6VjZScGlEbkpkLzJTU253SURLbHVDU0ttcENhQnNJVWcwRldtcmZqVFFG?=
 =?utf-8?B?MFpndDFNamJhOVUvSEdralkrOUl4eGVEK2RwaWhuMWp0M1ZvUGhGbzU2V3kx?=
 =?utf-8?B?bnBsM0FZRlc3NE5uZU9TaWFLOVhCQ3M3SmsxaHNoQURSTXdULzZuZDdRRWQ0?=
 =?utf-8?B?U0E2WGFMdTMwc21STWpFM25TbisxV3B3cElYVWswQVZObnJuTUZVL2E5ZmZB?=
 =?utf-8?B?emZid1RKVUtlTFFZODBJSEszVytEUkRaR1d4MzUycUNoMHZXR0F0SGlWcE1y?=
 =?utf-8?B?RVdCRnZnVllZZlBMZHhKU05NNUxKYS8vcnFpaE14V0JDSFUyeDFrWFdpQWl4?=
 =?utf-8?B?YmU2bGQxaCsvVW1IZW4xYkZsVlhhZTRUbzJzWGZwTy85UU9PZWgreCtpZFM3?=
 =?utf-8?B?dVlnaDhWV3VidjBCL29FQ1NDQ2RISnFaQktzWU1YVGpLWHNhWFFTeW9nSlA4?=
 =?utf-8?B?RU9EdTZQZWFMWmxwVFVoSjE2N05iajJxZUpjOGpYV3p6N0FiYm4xWVBHWXJO?=
 =?utf-8?B?emVOT3N2Rlo4NkhPRXZxUFlJbXIzdUM0MzlYTTkvNEZlbXc1VjluRE5lS0ND?=
 =?utf-8?B?Z0JScmVXeE5GS3ZQL0FxTmd5bzg2YjRwOU85R3pKQUdONWFYQlR2YnpHZDVC?=
 =?utf-8?B?WCtqdTE2azhpb2JJRE5jVmNkMmtiSGowQm5NSlplc0dEaUhTRTE5a01JL0ZM?=
 =?utf-8?B?cTM1Vldnb0RQV2kzRDV2dW1USjJWUDhUbTQxRlVQTHVqb0ZYaG9IVzJFV0VF?=
 =?utf-8?B?bXZFSWRZcmZhaDU4ckVoL2hOOUJUdFM3bGRkb0MyOVJBc3UyU3VYeC91MCt4?=
 =?utf-8?B?bUV5UlRUd1pQYjU2VmJBWG05cmhhZWlYTlpzdm9IeFlxZHFZTmFjT2tBS0lD?=
 =?utf-8?B?M2JQbFhsTnJOMWVCSnNsS0dadlVkMi8vWmRvamNnY3BxMlowaVFtSUtLakpY?=
 =?utf-8?B?OUpDQnFsWTcwZGdpRjVWclZsWWZJQzY5Z1lwdVoxSkZNMksrL1lmZVhVeGp3?=
 =?utf-8?B?YUZpYVJ4RTVjQ2o3NzdiNmJyTjByNkF0amZ2SEJDdmRIM0NkRmEyblZDOEIv?=
 =?utf-8?B?ZnBlcnN2OEJhQTZLQVkzVUlRaWIySFdhL3ZkdjM4cGR2cTdEYUZUSjFhYnlV?=
 =?utf-8?B?QjVXU3VkM1pqcHE2c0owcDRwbXgxMTRkL21URms2eURSUWQ2OTgyb0lSM3Jo?=
 =?utf-8?B?bzRkcjkybVU4Vkg3akplTTF1Q011cHhBSi9rVStnQWp4VUVSaTBtb3FsQ2c0?=
 =?utf-8?B?eWFiakNkVVRXcUdMVTV3OVFOcFRqNnF2Q3lTMjZWMVJSM0tGb3I5RU96SERX?=
 =?utf-8?B?b1NBb1BmQ0NwR0hrTzNMOHJ5OHJvWkJXcng0OFJMeVllRnR1RFpkbnhuOUph?=
 =?utf-8?B?U2pkbjUyT0FmakxOQnEyRFFBYWpRSVBMUmdjNFpJUjdtem1yb0VFWis3Ullz?=
 =?utf-8?B?NnIwb2J5TFFtb1cvNkg4ckY5UW5hTFBZUjBlV2V3Mm9QVE4zbzR4c2FtTmMz?=
 =?utf-8?B?cDgwbTFHVE5oazRzMFBZYWxhMnhnb2hNSzdXc2FoZkRmWUliNG96NklLUllG?=
 =?utf-8?B?M2RBWGNsclBuWitSZEoyeDNIK0VMNzB2NjhvYVZpdmlLWGJEbUwrTGthay9m?=
 =?utf-8?B?K1ZLTk1tb2RKZDZZOVp6NFNiRm1EblBQc21tM0JYZGdrUXNDOGdDamZIdXkx?=
 =?utf-8?B?ZjVBbjZlSkRoZGJ4Tytsd3pVd0gvRFphNDY1M1RXUW90U3pMczRYYUxDWkEr?=
 =?utf-8?B?SzBDQTRFNVlRNFBrY2MrZ01mdDVpZ3haclZ4UWk0THE5c0l0Sm1xdWF2WnZG?=
 =?utf-8?B?M0tFNjc2NWhVSzlkRzRXakJlZ2RFUFhsNDVBdTNmeXFjb05HWkJrRnZDTHVN?=
 =?utf-8?B?MXlqdmpRLzVYbE14NHR5N084WFIrcEJCeVRjd2huR1N2MkZjTWJIK0psZTYv?=
 =?utf-8?B?QUwxYlF6ZjVFZEZLbmplY2FlYWxheDFsbFlNY016M0lITkZ4cXowN1VwYld2?=
 =?utf-8?B?ZUJ5TExVYWxPaUdjUG9EMHAxZ2U4K1FpdWpRUnBNMmlJTVBRYnM4aVBTQitI?=
 =?utf-8?B?NlE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 17b22415-106a-4ccd-fc75-08dce2b1e5f2
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2024 07:14:47.5800
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a7SXpQOdFkVYELkll/fquYknZfwchEYEU825Y0PzLaLOlsJa2lhicjegbYBna4i2JWwgu68u2HRnZzf7qFiFXWp8b5P55YQAXe+pnfgZmr0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6250
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_001501_488178_3C0723F0 
X-CRM114-Status: GOOD (  13.56  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: wolfvision PF5: Use upstream IO expander dtso
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

Very nice, thanks for the patches.

On 10/1/24 12:47, Sascha Hauer wrote:
> rk3568-wolfvision-pf5-io-expander-upstream.dtso has been merged in the
> upstream dts files, so switch to using the upstream version.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>

Regards, Michael

> ---
>  ...8-wolfvision-pf5-io-expander-upstream.dtso | 137 ------------------
>  .../rk3568-wolfvision-pf5-io-expander.dtso    |   2 +-
>  2 files changed, 1 insertion(+), 138 deletions(-)
>  delete mode 100644 arch/arm/dts/rk3568-wolfvision-pf5-io-expander-upstream.dtso
> 
> diff --git a/arch/arm/dts/rk3568-wolfvision-pf5-io-expander-upstream.dtso b/arch/arm/dts/rk3568-wolfvision-pf5-io-expander-upstream.dtso
> deleted file mode 100644
> index ebcaeafc38..0000000000
> --- a/arch/arm/dts/rk3568-wolfvision-pf5-io-expander-upstream.dtso
> +++ /dev/null
> @@ -1,137 +0,0 @@
> -// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> -/*
> - * Device tree overlay for the WolfVision PF5 IO Expander board.
> - *
> - * Copyright (C) 2024 WolfVision GmbH.
> - */
> -
> -/dts-v1/;
> -/plugin/;
> -
> -#include <dt-bindings/clock/rk3568-cru.h>
> -#include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/interrupt-controller/irq.h>
> -#include <dt-bindings/pinctrl/rockchip.h>
> -
> -&{/} {
> -	gmac0_clkin: external-gmac0-clock {
> -		compatible = "fixed-clock";
> -		clock-frequency = <50000000>;
> -		clock-output-names = "gmac0_clkin";
> -		#clock-cells = <0>;
> -	};
> -
> -	usb_host_vbus: usb-host-vbus-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&usb_host_vbus_en>;
> -		regulator-name = "usb_host_vbus";
> -		regulator-min-microvolt = <5000000>;
> -		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&vcc5v_in>;
> -	};
> -
> -	vcc1v8_eth: vcc1v8-eth-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&vcc1v8_eth_en>;
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-name = "1v8_eth";
> -		regulator-min-microvolt = <1800000>;
> -		regulator-max-microvolt = <1800000>;
> -		vin-supply = <&vcc3v3_sys>;
> -	};
> -
> -	vcc3v3_eth: vcc3v3-eth-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-low;
> -		gpio = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&vcc3v3_eth_enn>;
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-name = "3v3_eth";
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc3v3_sys>;
> -	};
> -};
> -
> -&gmac0 {
> -	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>,
> -			  <&cru SCLK_GMAC0>;
> -	assigned-clock-parents = <&cru SCLK_GMAC0_RMII_SPEED>,
> -				 <&gmac0_clkin>;
> -	clock_in_out = "input";
> -	phy-handle = <&dp83826>;
> -	phy-mode = "rmii";
> -	phy-supply = <&vcc3v3_eth>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&gmac0_miim
> -		     &gmac0_clkinout
> -		     &gmac0_rx_er
> -		     &gmac0_rx_bus2
> -		     &gmac0_tx_bus2>;
> -	status = "okay";
> -};
> -
> -&mdio0 {
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -
> -	dp83826: ethernet-phy@0 {
> -		compatible = "ethernet-phy-ieee802.3-c22";
> -		reg = <0x0>;
> -		interrupt-parent = <&gpio0>;
> -		interrupts = <RK_PD3 IRQ_TYPE_EDGE_FALLING>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&eth_wake_intn &eth_phy_rstn>;
> -		reset-assert-us = <1000>;
> -		reset-deassert-us = <2000>;
> -		reset-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
> -		wakeup-source;
> -	};
> -};
> -
> -&pinctrl {
> -	ethernet {
> -		eth_wake_intn: eth-wake-intn-pinctrl {
> -			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		eth_phy_rstn: eth-phy-rstn-pinctrl {
> -			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		vcc1v8_eth_en: vcc1v8-eth-en-pinctrl {
> -			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		vcc3v3_eth_enn: vcc3v3-eth-enn-pinctrl {
> -			rockchip,pins = <0 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
> -	usb {
> -		usb_host_vbus_en: usb-host-vbus-en-pinctrl {
> -			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -};
> -
> -&usb_host1_xhci {
> -	maximum-speed = "high-speed";
> -	phys = <&usb2phy0_host>;
> -	phy-names = "usb2-phy";
> -	status = "okay";
> -};
> -
> -&usb2phy0_host {
> -	phy-supply = <&usb_host_vbus>;
> -	status = "okay";
> -};
> diff --git a/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso b/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso
> index 37b48afd2d..5160a7ec1a 100644
> --- a/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso
> +++ b/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso
> @@ -8,4 +8,4 @@
>  /dts-v1/;
>  /plugin/;
>  
> -#include "rk3568-wolfvision-pf5-io-expander-upstream.dtso"
> +#include <arm64/rockchip/rk3568-wolfvision-pf5-io-expander.dtso>



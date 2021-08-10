Delivery-date: Tue, 10 Aug 2021 12:36:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDP7N-00040U-2G
	for lore@lore.pengutronix.de; Tue, 10 Aug 2021 12:36:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDP7I-00068x-7g
	for lore@pengutronix.de; Tue, 10 Aug 2021 12:36:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFJh23b6aHgYJ3E3jAFKpBjxNYj8q+oEAz7tsBIjMIY=; b=xkuZpJYC1BNR6R
	XXAVgEzreYnCVJsQzOyF5Pgq1bfBqspmh75suz7aRdrRYznozlfUeDUdQDkgQTWkv9tt7sfL0mxes
	G8vPqxZuGr9bnzsDYEMRzb69JbencY2gyziVorutprHhETVJNpaB/sKZrJRbcVHqcnlCnEd6F9GQd
	OQ6WLKi2cJetkH567WhpIEjY5JbN2/YX6+79y40QfXFEr5MYpADHFdOlJny/G7ZajIE3Wt1r/Oavp
	KsWL0Rm8c44xTJ1ZdOnroKfKz4QP2ClU/F8YSd8l9bmFhiyaNtIqf1NhFu8FCh/zmdvCM5AQIM94M
	9musIa9aCJtdPKDEhzwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDP4S-003Xh0-Ps; Tue, 10 Aug 2021 10:33:20 +0000
Received: from mail-dm6nam10on2111.outbound.protection.outlook.com
 ([40.107.93.111] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDP4K-003Xeu-B5
 for barebox@lists.infradead.org; Tue, 10 Aug 2021 10:33:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=APwGjiYP3FfG3DT+o5K8fsrEc8JYk33NmBKyBM3GYvy0iqv4bwRd8HQanBvty74jmxEG8nURcw3ea3sRhHrS+R6RykVD3iEd+AorJ14rjpkiWoOFGsLsrhvc52IJckkLThjPoXqJGdIkpTpy8m5EcjXPjRczQXjXgA+gLL1MSFwnM2FTeVfz9wwzczQlm2CyLsMpD29bvU+xuFxUooqP+T1OFVadqeJw41KK1fOjgzhEwEeq/FDs/LvYupa0s5D/y6EtBOzTTYa7UwREQJO8SCcMY9BwnRLO6Mky+cSu/orHXkJV8UgCtNdoHMB2Bph9b1ef9NzxGctXf8X6g7F75g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GUhc0wponkJOjlrMVJsCGAeOwU6dURoyA9EDY7iGS74=;
 b=jClAqSzEUW5pzGH+QdDWTrSAMOUUs/9GsSi0EL6ItiUnu/R4DQBCOTXMl47QGOWNjFYNWXlEYArb7793z2O2IQpN6pHwSVIsxzxOGdyterc+tEre5Tkra4+4Zlio+4gjNZPFYWl7mQcIR+onyxAOopcCPEJ53HmrEyyiLCRcSlUUffQQshDFIDJ4o2QWh7nLdaBe0aONDg/t/evPfLQTi8YC5sRJeQkYhnVledV6p/A4AkQzbFwrYRtlb62RxjeMjjtDFG2IEzFaSvtHVDHpqBZigEdULOfUCM1RNZO8eEIeyVrDnuoExbe5yEbJPOPSuKGu4VKWQ2MceCgrIt4t+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GUhc0wponkJOjlrMVJsCGAeOwU6dURoyA9EDY7iGS74=;
 b=nULexu7/USeSwZ/STcx0brizE/AD5PwTHChpVObHgZ7hbeLCOZqcA/Lv5msM/m5c5uxwAvtekJPbM/HEcd05PyYMgdUah2XTQ2sYU/QTTfsQeN/I/XG7pTGDwKLnP3CJr+PX2/U+5ucTcU6Tp1l8xRb09BxM8ZAE1J79d96NL6jFUsYOnAaGIGPMJVcoYfe9fRv9O8B2mzC8+sXwhGW/tkYx5qKEO1E5I43qwpz42QsHhTxjM2YXzyebuIVNCuS4o4McO2vIkUlmZbBfL9BN2DEj81D3KJnh+YDCr16F5rHGtAvA31JE8Bao2Di3kktuDACzzOdx2GRdxkSGe9//SA==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB2797.namprd16.prod.outlook.com (2603:10b6:208:dc::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Tue, 10 Aug
 2021 10:33:09 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::177:fea4:3768:8014]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::177:fea4:3768:8014%4]) with mapi id 15.20.4373.031; Tue, 10 Aug 2021
 10:33:09 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
 <barebox@lists.infradead.org>
Thread-Topic: [PATCH 3/3] ls1046ardb: enable IFC NAND.
Thread-Index: AQHXh4rJHP8ktzfgw0+WdMe7VW4LoatrCWiAgAGNEbA=
Date: Tue, 10 Aug 2021 10:33:09 +0000
Message-ID: <MN2PR16MB3135A7F2C63FD29126B4122091F79@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <1627900804-15814-1-git-send-email-renaud.barbier@abaco.com>
 <1627900804-15814-4-git-send-email-renaud.barbier@abaco.com>
 <471e6659-459f-f6e6-7abf-9b6141e6c7a3@pengutronix.de>
In-Reply-To: <471e6659-459f-f6e6-7abf-9b6141e6c7a3@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=abaco.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82568b73-5022-4a40-d343-08d95bea3f57
x-ms-traffictypediagnostic: MN2PR16MB2797:
x-microsoft-antispam-prvs: <MN2PR16MB2797E8A114F39021FDC4B60591F79@MN2PR16MB2797.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hEkpGmN5N51vSdLTzHMSO89nGwR4BvCHljm//0IpyAyMO7sqkcqeODoo6uHaoDNJw6bMdCfCvrZnxsXTant+FviPDkK1CNa6KKnaLlfBHq5g88RTa9KpNBVsTsg+FCD/KZS0tFJCtrVOCA38M/n9I3dYSJG1CJ/N9fgZIG35NDuFUhO65NLbJclK8rV21HnJXsr19SrL6vuZUbfzUW/d/Yr/IP+p2DybHgIMX8Gi/u+58Cr5jsET9iMYLqq/QCbhfv3Uks5hZi5pVYlTChFDjtrVpbkdiCXCPJ4VjMa+CC/venkhTeTLEYW13JXEK0AHKgwBG7Q6vS4DtnYobLUTJidvN+YDI0RJmKGtzTGfXaiTcX5UMoxUcAgzmvzxNNAzpjInQvxL0mhCVbFH7MxdDBmUwFx0I3wy0BjL00svIBeUipCPy+CP4mHbXY1+4DMgDQVtvF2QQSoPjwb25e60YXswJzyNjUzQpjG7LIZBfe+xWJF8dPbfnida6qVgS6ThIA5c9nsKUsGuFpoQxqnG9E6ri3UGODdWI4+JNV+Pldj3wBs0QNPrdGkTvMmDwNvRGxxLKH2/CXilQCDpsC5cANLKhRMGG3+abkQY6ijLUyzkg6axOleBRJWgJ+xzN9QQPxJ0zClH0A1gCBt8eLz4iV7C5MjygbYx8G/Yj4To9Xuf9AIUkXjXbxLqnmcHANnmmuPw38yiwkRoLzQml7PnRA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(396003)(39850400004)(136003)(346002)(33656002)(6506007)(316002)(86362001)(52536014)(8936002)(55016002)(71200400001)(122000001)(9686003)(5660300002)(38100700002)(186003)(8676002)(38070700005)(76116006)(64756008)(66556008)(66946007)(66476007)(66446008)(478600001)(7696005)(2906002)(110136005)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9G945u5TMz/6PkEG9gv9LdGf8Uge9ZQhkAEWz/d3SwZtlxi1SCnudicWfZpG?=
 =?us-ascii?Q?+NEmyZiMvNu0ozBqL5pR3X9auh9qCclFhctznkuvCo9bG969D8Bo4kQuv4WY?=
 =?us-ascii?Q?rfwwdB+3hSk5TWgTZWorTONSk+fiNE3aIqQOMGjOF7eS0oyqZUPbHML6w7TJ?=
 =?us-ascii?Q?gsfd74qC8buwg+F5HkFYnphSQBTBoM6kjvNJ9W9rfRLLs68ZzMz7AcWf1U7T?=
 =?us-ascii?Q?lE2GXX20ePFKJQrH7AZpKiy3XB7RwAd6QO/alb117QnHLss7WNjZFrlpSc2a?=
 =?us-ascii?Q?t/UUVEqbP+5v/qG5lnhRaPrkNDP6lNcRBjLvD7rnZDU6TFKHH90KysAG7/LY?=
 =?us-ascii?Q?dG94bwU2pPdZ2ek6zgKzLRO4o4aMXgKH1G2UeCn7AJzbvdk67HgtmYooBkiN?=
 =?us-ascii?Q?ARWpZjhT+KeY2/IobCN0S9sHy/5lCvsbyS+BfbEFZ4Kvfsa9NmX+vqD5CvMC?=
 =?us-ascii?Q?F/axQBjLuQ167E71j5ChbBsjC0FKt9hKhM+AJQpDCyxOTN6IvIDBZzOWqS4R?=
 =?us-ascii?Q?w3cpaNvExH+Iucb4oHrJ3+sM2NbeSRW0/ifEDhK9kJW90Xo8zvbuy6kS+K+P?=
 =?us-ascii?Q?VopJ4Uto6LxO01kzfFPEHLi6ZyJmVxhR3vvuGpXzxIV3D8cox8R55rVxq9oK?=
 =?us-ascii?Q?Vcczdp19rCd0XOVme63PE53qzrilok/+p86j9KwrhN4ZrugSh1Ly3QmZ6HbM?=
 =?us-ascii?Q?mY/pH8pEbVduUbAdE37BBy+tQtb7RjBOszOrtLtgln07Ol81m5CG7IwYNaTn?=
 =?us-ascii?Q?uPV6WDh0w+l4U+ANvw2Z5reKCIPRd/KK5Id+rs6xaD5+8lFS1CKwzcPJLMEj?=
 =?us-ascii?Q?/shGuStIhZ3l/m4lQ1wDSyBs/im63ELiWOYzTRmC1rakCXMa02J8qXOCKuWf?=
 =?us-ascii?Q?60WK2MCmwg97NrfoIG+eX/GSGKo2ANRe+/W00wZKYvsqE0DX5LSlOEeruqhu?=
 =?us-ascii?Q?O4MF8rgReaMfEjWChCz1B4lGwxBlzrdDyO/OTlZbkapeehBL3c2hEI7Y3vkS?=
 =?us-ascii?Q?UlGLmablyQ9unvoHq/JheZD2+2gu9AHfSdQlpSbM2dJIlmkIXr0LkHRf4/eT?=
 =?us-ascii?Q?LntvHRpvjXbANj8OticN5LLivQ61sle4/GzQ3EnkRFFbsw3HmCNAsxJEDun9?=
 =?us-ascii?Q?2qtxjUdD+FvIGw5x5ZeJ/WzIhpbx3+swcSDYVh2XD1sm2NcvivrOIVFT+TZl?=
 =?us-ascii?Q?j7BFyQzH1ocb0xchm1AQiiyJVN9oI5oz4uj4KIkKAYRiiky5c7WxzFtZDQ8E?=
 =?us-ascii?Q?mlw/Xrm6nFBagHelaGcapBs6xLhhBCYU8ow94EZyDxwpmKiWbH7Ltb0VntA5?=
 =?us-ascii?Q?yCU=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82568b73-5022-4a40-d343-08d95bea3f57
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 10:33:09.1671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NVprK8sk30R3ft2tHCVO8bpsBgNXq5fPH9YWkuos+tKdQAN2z2GnE8BzvXzEnUy5ywF/NgDve+FFt50BO8fd5gUIQkP9iplitdri7HfiyLE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB2797
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210810_033312_547542_32CBE25D 
X-CRM114-Status: GOOD (  14.22  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH 3/3] ls1046ardb: enable IFC NAND.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



> diff --git a/arch/arm/boards/ls1046ardb/board.c 
> b/arch/arm/boards/ls1046ardb/board.c
> index ef68e9c7f9..b2cfba58a8 100644
> --- a/arch/arm/boards/ls1046ardb/board.c
> +++ b/arch/arm/boards/ls1046ardb/board.c
> @@ -8,10 +8,12 @@
>  #include <fs.h>
>  #include <envfs.h>
>  #include <libfile.h>
> +#include <of_address.h>
>  #include <asm/memory.h>
>  #include <linux/sizes.h>
>  #include <linux/clk.h>
>  #include <linux/clkdev.h>
> +#include <linux/fsl_ifc.h>
>  #include <asm/system.h>
>  #include <mach/layerscape.h>
>  #include <mach/bbu.h>
> @@ -35,6 +37,11 @@ struct nxid {
>       u32 crc;          /* 0xfc - 0xff CRC32 checksum */
>  } __packed;
>
> +static const struct of_device_id fsl_ifc_of_ids[] = {
> +     { .compatible = "fsl,ifc", },
> +     { },
> +};
> +
>  static int nxid_is_valid(struct nxid *nxid)  {
>       unsigned char id[] = { 'N', 'X', 'I', 'D' }; @@ -161,3 +168,38 
> @@ static int rdb_postcore_init(void)  }
>
>  postcore_initcall(rdb_postcore_init);
> +
> +static int rdb_nand_init(void)
> +{
> +     struct device_node *np;
> +     void __iomem *ifc;
> +

If you think this configuration should be done for _all_ boards, you should move it to arch/arm/mach-layerscape. If you intend it to be done only for this specific board, you should check the board compatible, otherwise this function is called even for boards that don't have NAND physically. Throwing an error there is inappropriate. If this is board-specific, please add:


        if (!of_machine_is_compatible("fsl,ls1046a-rdb"))

                return 0;

> +     np = of_find_matching_node(NULL, fsl_ifc_of_ids);

You can use of_find_compatible_node, which lets you drop the struct.



Indeed, this makes sense as we are going to have our own board support in a few months.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


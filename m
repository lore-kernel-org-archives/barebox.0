Delivery-date: Thu, 22 Apr 2021 14:15:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZYEv-00041x-GS
	for lore@lore.pengutronix.de; Thu, 22 Apr 2021 14:15:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZYEu-0002k3-Jx
	for lore@pengutronix.de; Thu, 22 Apr 2021 14:15:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Erjp4Cr4uMmM47wmsbxIfKc++FEEkLDZZ4DTAKtCaOo=; b=aVLs61FNm51CD/W/CNUlfnQk4l
	Hp7M84qmtnGM3UXhH7XDM5wPjJtl6ggXHK05M2LyNHzcYFwWvQLgRSve7NLP2KWKWH992VEUYitDX
	6ZD7a0tMfFJFcEn9gGkemjHXG79AaYQd4vsbKeBEEYscVf2d86YHi7LwIhuKCMKcNDUy2VP6c/vyG
	9sduwMKdxIarrP9mgKv98RqfAeRvwZtc4h6yVzBMEmmr+yzo7hnjGkb1Y0VeToohJ99lUZajHNonr
	5VHTMClMc8wqszsfIkQIubr1VKYipPP/J2ytxCzrnDoh2fyqXOyr35pLgwQYACWRUpp7CVbkCEYQt
	3cuY48dw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZYDk-00GfKh-KM; Thu, 22 Apr 2021 12:14:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZYDg-00GfKV-8e
 for barebox@desiato.infradead.org; Thu, 22 Apr 2021 12:14:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID:Date:Subject:To:
 From:Sender:Reply-To:Cc:Content-Description:In-Reply-To:References;
 bh=TkYo+BrxgeiRLTrZYwO0mC4/3oAjEQS6IchbJSmNFuM=; b=gCFisYgTTKtkawL8CtMeyl+Oeb
 TCDgxuct3N4ivRvhhkoH7KV9sDzt7homrotLe4teXsMHeHRfn8EEeef7AqpGJatHgIib4jP+m+7/p
 BXLBXT7gDMS1BtignXpc81t3bAIP4jMrNf1RtlMCmfTG2fyoBgJTFB4ytLTsHTn+De1CRIeZUSKnv
 A1Jzoa66zEL8Dhvc2llG0ojqeDyCJ0vuUpQyPoaAlDAEDjfyqD2LgwXucuukug0nGwRcAnEyNqd5x
 ycXiP//z6KFkXRAT29cvDD1BCa6fjCOeZgCaY9SdttePhZHChg7Pj384lNEThvfhhRvwuAwpqGvt/
 MEApAbew==;
Received: from mail-vi1eur05on2123.outbound.protection.outlook.com
 ([40.107.21.123] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZYDd-00Dezk-5k
 for barebox@lists.infradead.org; Thu, 22 Apr 2021 12:14:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WM6m54WIBJpS6wdYTU6/GLPE1js+fEHTHmGrnXLBnDKPXAzSmCDqYcVy86Ca3wSWWMbPxPvAIe+SWOp9bduZ6kBAytoyq5DfI1gpBFGv31QleDiZikwYwJeWKMnloXTxybEhyWonCSKwty9d303327qWR0rLWaPSROMilvbQ2Ssxt9QEWPMFsKR4lBKYZ4huvNF0jLwGz+dX0vzrWk5atNwKLGz6EgKxgv8eou15PllLqPfe0Z1nCKWRnxwS1k7tsX0dIR2YHOATVC3u98IQ1I6zkEQRiHP63RisyC64UgP3WwPUySgW2kVue2yIKA6getT1XaHxPUAm/G69C7Rslw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TkYo+BrxgeiRLTrZYwO0mC4/3oAjEQS6IchbJSmNFuM=;
 b=B/vYwR/8YlaXiVvGWZA3qmmJIT7ZevSUkICxYOisWkpIln4CK5GCIyn069aR+WDMMGl8xtf+EgGV862NdCcnky7gU0leNIQnfqk76tCRHacVdzOaeX4Xsg7J5a0sBrWs6Ge+eriqKa5BOQYy6qg/fa8STHvf8/nf2ZkFuepKz3RCucko5ukgc/3WCEz+TRSfmmAl0sEz/Sdkwu1eD8YYVyxrtw6ToBlaZbS640esKVwxH5d6ZLnSIuHs79IOAuZq8oiVPEccX0zmG4Q7dPnuyBQaDh7eq0lIHrAfOMjhKOeR03esPchK4LyJVLiYNffiIiXZadO+PGU7O96IMotkCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=klsmartin.com; dmarc=pass action=none
 header.from=klsmartin.com; dkim=pass header.d=klsmartin.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=klsmartin.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TkYo+BrxgeiRLTrZYwO0mC4/3oAjEQS6IchbJSmNFuM=;
 b=uhEPqE6siABNnqQ+ioSwf1XW3Y/LNPp+rakjOSBEOxFGhrYiR8Q5zHCMd3bLTTgOtiWVycYtEJagbvIqHvMG355JbsAdRM/Pn/nb5YkAR2WukNfu9X1DXJvneFhkOxbx7klNzWwdL4CyFRzQzSqVVuh4w0U2JJZDOyIFEdVOB4XbWhVfjFfaOX6rrPqOMf1P2avBJaSlLDfcWN2fQKqTlf4d0q9xLX3/ozbO5WrNoaw/cUGlDeEwtw8Lm9yKXEUtSH7wZ4wJqE/bPnHDUPqyTk78cVhkP7qs5GWD4WN78TwC75jkDthTbOkUy0syZ3OQKDYPGH3Q5ey21b4zVOw3ZQ==
Received: from AM9PR02MB6900.eurprd02.prod.outlook.com (2603:10a6:20b:26a::17)
 by AM0PR02MB5667.eurprd02.prod.outlook.com (2603:10a6:208:15d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Thu, 22 Apr
 2021 12:13:59 +0000
Received: from AM9PR02MB6900.eurprd02.prod.outlook.com
 ([fe80::cc16:65df:3242:82bc]) by AM9PR02MB6900.eurprd02.prod.outlook.com
 ([fe80::cc16:65df:3242:82bc%7]) with mapi id 15.20.4065.023; Thu, 22 Apr 2021
 12:13:59 +0000
From: "Middelschulte, Leif" <Leif.Middelschulte@klsmartin.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: imx6 nand: dbbt version/layout
Thread-Index: AQHXN3D5yYp2rPZ3AUeQvgRvYVw+QQ==
Date: Thu, 22 Apr 2021 12:13:59 +0000
Message-ID: <78f79375e21e753086868b2212485b488443bcb1.camel@klsmartin.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=klsmartin.com;
x-originating-ip: [212.211.189.60]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8d31bb1-0dbd-48be-c9f6-08d905881bf0
x-ms-traffictypediagnostic: AM0PR02MB5667:
x-microsoft-antispam-prvs: <AM0PR02MB5667B698FC7B7ECACDBF951199469@AM0PR02MB5667.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AarA2PcKIEQ+0fY9DglWavWFpGkUftibSwBpQNmi9AhIEgpnql+5Jd9KgAqqhw87btjdD1UapAI/yHixaPh57NTuD+XXbfjTuYps32N+BLraBOECT8+yYT7WchJzt/Az4yKlIl4EUsJqYiv/NrdIGvfSvB1V16vAerQyWEcMd6mAW741r5H++NqigI3XT/EZTziyJxYANd076s8/SB33LZzeNosvnQjGsdG1qbqRbxvSQdx0Uo6hlNhZ6wVDaj+YUhPqsZ6U9xv75Xeuab8zrEtOEBvaKxOHv+lMuMaixZRYxhnZJ4/t3N57xiMmsmVzbVNgx9i9xYAagGQo453fCOLZp0Bf+8n2FEo2+iI6+wy68/wYX6rbonFF6gfCp2ZjlmwuWxBi7OT1EAbZYpBCgBp0Ae9fsi7f8OWt1EpGcPvUfwYCuVTzfev2Zp2LYOuMukjHQVcJ2RBJr4cJdt24r6DNER0O1fSzxEsrVqm4ooWMQs+joVHQRWM0kmwanKUq1Ruv8wGQ6PWDb2Sc0F+hhl7hiKv2Mv8SXqnIQIA8tvYa+fAJC0zhK6PcVhwVu0w1WeCoCzFXYDKIX3KmiTdBqclnr7ihJcLp7gmJ5XYfhR4JXx5QRad9QRQ72RfmvqmAy4otwKeK+Jxvqj5HGo+drIaVxVpU68NABqi2lBxVdlv+xyLhYAFd56dLRXQGDjkJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR02MB6900.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(39840400004)(366004)(346002)(376002)(8936002)(8676002)(76116006)(6506007)(2616005)(316002)(66476007)(64756008)(122000001)(6486002)(38100700002)(6916009)(66946007)(66446008)(5660300002)(186003)(86362001)(478600001)(91956017)(2906002)(26005)(83380400001)(966005)(71200400001)(6512007)(66556008)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?dTBwTFZ5ZFdrbGdSRXJzVGlLNkI0YmlYdmxCTWdIcHg4QlBEMnBGMkg3VWZu?=
 =?utf-8?B?M3JWc0s0TnB1dHg0Q0xXem9GTnE4MEFGZ0ViQVQvazJjbHlZUjl0MFZsaUxC?=
 =?utf-8?B?Q3JVaFEyTVpEbzNzdHYwVUNHMWZ3L2lUZzBjUW1hcHpVamRBVXMzeHhJNGp4?=
 =?utf-8?B?Y3h4RkdYbWxLQnpqM2FjaUsrSFpBOUx6VDQwT0huNkoxWEIzTG1UK3pEQWFt?=
 =?utf-8?B?OE0xZkE0d2VzeFcvOC9lL05tNTFiNy83VVFRcHRKbHNucC81OUw5bHA4enk3?=
 =?utf-8?B?Y2lvMStWNjhWc3RPMlB5aGdLbVMxOElsQ3NuWWJHeUpuVnVTOWZmWEhYMFVz?=
 =?utf-8?B?bythd21vOWNIQzA4KzFiUlpJTmhnR0x1Qmg0WTduVjFJSmlxVzlaZ2NXeDJo?=
 =?utf-8?B?amV0VCtDNHY1YUlYY0dkUXFjL0R5TmtEZnIyNmJCZFM1b0RUNkJZam5pNGVX?=
 =?utf-8?B?enFDdzQxb1dNWkpxSk1BU0QxN2dTRWlXc0JUYnAyd3hQL2swVmxGNnNpY0Ns?=
 =?utf-8?B?Nm5HeDN5S1FTanNJMisrc1RTbGRqNkNuQVBGSjNxN0V5dnJscE0rdEV0cjQv?=
 =?utf-8?B?UlhOVnlTK1VkYzhWTFdBUXdWSUJuQ2dKc2FVbFRxUXIyK09uRUV5UnlUTWpN?=
 =?utf-8?B?cVhQV0RtZVgxTlBQRHAvUlVMREpINzVCOElVUWxxRXArM3ZlcDM0NnJXekFt?=
 =?utf-8?B?U05YZlZTTm5VbG03MGtYSFVFSE9XUjIreTJ5bmNzVTBoaHhHeFA2NWVKV2l5?=
 =?utf-8?B?Rkw1RjFaTWZMVE1OVXJEOWhUOHV1Tjhaekd3dkVXZUZHWHFEeC90T3E4dEU1?=
 =?utf-8?B?cFdiTlgxZnNKclJoNGpFbnpJbVlNZ0prbWFCb3F4ZzRCdlZvU1pleFNOK2Y0?=
 =?utf-8?B?d04yVUsrc0IweXpjNUt6T2pJSm5RN0VZYkxVeEdxU0RtNWVocTAwNDhuaFRa?=
 =?utf-8?B?S1FqSEwzUExwZDZzeGpPWC9SK2g1dTBsWXI4Z2xYd1YwbWVrQWlXRWRaRVdD?=
 =?utf-8?B?N3RLMm90RFFFVWFycnI1eU53bDAvRmZaTXBFYjhjVTY4UXlXeUQ4eWZEWFo1?=
 =?utf-8?B?S3o3dFV3T0RVUXhqYzN5VHVCN2ZFZ1BXb0JHK05KZWFMVkxRbTFjMzRHay92?=
 =?utf-8?B?TFVjTkVKbkJWT1d1aVNZbGxlVWNnS3EwbWV6eUpYRnloTE5GcldSMTJhV0ho?=
 =?utf-8?B?Y0VQWUgxdDNXbjEzNFdpSEZ1T3ZNaFVjbDJ6MEJmUDhmc2ZoSGhOZWxjMjN3?=
 =?utf-8?B?Uk1kREQ0aVk2TUREeHBzaGhqSEFzR29samhXY3UzdzNOYUJHWHNaKzJYb2cv?=
 =?utf-8?B?UlkxUTI5MldkYW9xeXg5TFM4MjdCYkF2MkwxYXlDZG00SzB1bUVid3Y1NFpY?=
 =?utf-8?B?ZGF2eml2OGRNWS9ENFplUkVEcWhkaGNhQldGNW9RSXBMRHh1ZEQzVHU2K1JU?=
 =?utf-8?B?UTdkT21qSkNNTTFIa1pNT2pORFFPdmd5T0VpUHpldlNuc2duZEI4YkswSklr?=
 =?utf-8?B?TU00OVBBMUJ2TEpOay95MnBIbFVlNkkzMmFYa3pmdnd6NE5vaEVrdHNDalNz?=
 =?utf-8?B?WWt0RllvRVAvU204NnBERDA4TSt3dVplYnRhZGZLa0k4cnE1dVBVak00M1ND?=
 =?utf-8?B?S0ZZNldMWUJsVTcxbVczbGtBczA0dGh0djQwM1Jab3hZTHBqVVg0Q0ZmK08z?=
 =?utf-8?B?cnpNODloQmtRWFZRVDZHZktSMGd4bGhNMS9xVjdxdU9jUkJHMDJXRWpUSTRH?=
 =?utf-8?Q?DEZUjEP7d6xLT8TWu2jG1FvOzYb7BtZJwyh/ERk?=
x-ms-exchange-transport-forked: True
Content-ID: <AAB9D5D631C61048AE7F08DE26BDD708@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: klsmartin.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR02MB6900.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8d31bb1-0dbd-48be-c9f6-08d905881bf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2021 12:13:59.0787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9d29fdbf-9c75-430e-86f5-ebe1ff5a5223
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +GjHS+rW6miLi3aWTSkH3kOdh/ruu4ygS4utNn7FCMx1sEucaE17DjgB4BVjeiUwvzYIkrTDvGAnCSa0OGml22bcpqQplQSoFyd6deQ/LRe3eC1nc1SpYllg3teecp5V
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR02MB5667
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_051405_381662_8FA2FD46 
X-CRM114-Status: GOOD (  17.15  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: imx6 nand: dbbt version/layout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I'm in the process of fixing up imx-kobs to support
- boot configuration dumps
- boot stream extracts/updates
on iMX6QDL using the GPMI-NAND interface, as provided by some more
"recent" kernels.

I updated barebox on the NAND flash storage using another instance of
barebox. Now it turns out that the dbbt version used (i.e. written) by
barebox and supported by imx-kobs (as it was) is not documented in the
i.MX6 QDL reference manual.
Barebox uses[0] DBBT version 0x1000000, while the reference manual
describes (i.MX6DQRM Rev 3., section 8.5.2.4) layout version 0x1.

Besides that, the reference manual apparently does not describe the
field `BBMarkerPhysicalOffsetInSpareData` at the end of the FCB
structure. Yet again, imx-kobs and barebox are reading/writing it.

So I'm wondering which behavior is correct?

[0]
https://git.pengutronix.de/cgit/barebox/tree/common/imx-bbu-nand-fcb.c?id=af0f068a6edad45b033e772056ac0352e1ba3613#n675


Best regards,

Leif
This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. Any views or opinions expressed are solely those of the author and do not necessarily represent those of KLS Martin. E-mail transmission cannot be guaranteed to be secure or error-free as information could be intercepted, corrupted, lost, destroyed, arrive late or incomplete, or contain viruses. The sender therefore does not accept liability for any errors or omissions in the contents of this message, which arise as a result of e-mail transmission. If verification is required please request a hard-copy version.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


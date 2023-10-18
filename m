Delivery-date: Wed, 18 Oct 2023 14:32:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt5jL-00CyVu-M6
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 14:32:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt5jJ-0004O1-NT
	for lore@pengutronix.de; Wed, 18 Oct 2023 14:32:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G0XmAWLRnLPP6g1Ft7K5WXm4gBP7Je9iq+EZ5tzHny0=; b=eihUuSXPRb2bJb22SmHA+428Kj
	8zqEqytoxaa5J1W/iCD20Cn80CmUa5maXuo3BOGLNIPoqr50/6Eavj6fLZcp/oSjYtr9MGHeYoI0f
	89H+GPzLE6i4mPbcU0YQ9AFg2AdN3s1OUu+cJ0GaxGMH1/8HMHU+7LNhmfgyaYlhpaDbqRrRyxrh6
	kiS4Q1aJCUEOEzfsFDTN8D84DKJ0xGhA49dpxtB5Es4V57WdiVhl9deck6gXh9pTt+Kc3djbgq2Fo
	bzgOvIjd3oQiemhGWp+fMkxPuaYUvnrEO4yVgaiteVZAEdwrNVoy1uW0/XMkFwbWENpwgiaQLPK8F
	pf7vAJNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt5hu-00EfHv-1F;
	Wed, 18 Oct 2023 12:31:26 +0000
Received: from esa2.hc776-43.c3s2.iphmx.com ([216.71.158.83])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt5hq-00EfGj-15
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 12:31:24 +0000
X-CSE-ConnectionGUID: Ec31G0WrSGygldQsmOUNBA==
X-CSE-MsgGUID: dYg7AGNnTcW8g2xmrG/FXQ==
X-IronPort-RemoteIP: 104.47.14.51
X-IronPort-MID: 2954407
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-vi1eur04lp2051.outbound.protection.outlook.com (HELO EUR04-VI1-obe.outbound.protection.outlook.com) ([104.47.14.51])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Oct 2023 14:31:16 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PK4g/wnewmIm2WwLoYo8WjaKnFBKMaSon8UMPPlIqFN9KVzWkztEhQ6LAtmuJaxPtA1lUbiFHsSOZN7o6NvUde2Ifb1TSkYNySkBd97FPjiPMfxQSJ5GLbk50ZztGi1FQOfEgMVtpw5a/v9TO9lk1fGha5fCSQX9E9lCgF+RJdxYap9c2n62jUuaQ+7tlo1JmJlHeFyMdFIlkljY4zN7TJwc4DG724DtJlnVm17PbdMQNlnSDjauIm2TZ/ftGhjjPZz7xapnlHfL+gTXEm6RVBQQruDOK+jEMpfYj/AcdYNI4Yd8Asql8fnJfAX/bo7r4YcAg7UuYSLjrtl22a0MbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G0XmAWLRnLPP6g1Ft7K5WXm4gBP7Je9iq+EZ5tzHny0=;
 b=jOsZxrZi/JYLs8sQU7cLDf1yI7L5mlZQnZtXcxe3XFfDwPjUv7htcFMIrfVr/zzQMhtAzFYt7KrUyUgLZr2IJDJmrFRaH6OwAzCNzv5mCQWqjYniX8hxZaJZxbpdtfc2dPc70xqx5Xf5I5NiZj/cG9q+eCgQF9L3JgtyQNmhrEGUBOF2WwWJXICjvkLk33JVMmRgMyRsK8uVBlPkA738w55NGnF1bfcRk+6B2xO/hRUyR7WMUyFTefdNkz7MDI/X5nRB6FHmzQ4jRBZigZ0EMLTHiBTJPKFJO/dsOq3bvEcKJUuKcgy8/sw3BdY7oSVhNAmFUfND/mva6kwLVsV09w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=datarespons.no; dmarc=pass action=none
 header.from=datarespons.no; dkim=pass header.d=datarespons.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G0XmAWLRnLPP6g1Ft7K5WXm4gBP7Je9iq+EZ5tzHny0=;
 b=GlSe6Cjcs78uvjcItgKwts4kR/R8QWu1CX9cTRmZBkxr18qPk6YRAEmqvv0Aoa2VZGT/Fuvaedw9lVGUUbGyDanVrRhQTrcsSOfsRswIhtSaVaoTGjsk8+KnTG6GVS6W4tpol9TEOHC9tNU0mpR0jtSDm5yrIsRrojDU4yU9iKk=
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com (2603:10a6:20b:8::23)
 by AS8PR03MB8805.eurprd03.prod.outlook.com (2603:10a6:20b:53e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.46; Wed, 18 Oct
 2023 12:31:13 +0000
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::35ab:41b8:3c63:8982]) by AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::35ab:41b8:3c63:8982%4]) with mapi id 15.20.6886.034; Wed, 18 Oct 2023
 12:31:13 +0000
From: =?utf-8?B?SGFucyBDaHJpc3RpYW4gTMO4bnN0YWQ=?= <hcl@datarespons.no>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: IMX8M and Optee support
Thread-Index: AQHaAZquCCRtS0xfVUiOONoVMdKA3bBPQZ8AgAAnvoCAABFYgA==
Date: Wed, 18 Oct 2023 12:31:13 +0000
Message-ID: <56A3F2CD-4EE3-4157-B821-2BD8917155AC@datarespons.no>
References: <EE0A8E0F-465F-46D1-A366-676E9047EA0C@datarespons.no>
 <52fa194d-441c-8827-00ac-49db2cd72661@pengutronix.de>
 <99FA6255-7807-4790-BA19-5BE02346DBF7@datarespons.no>
In-Reply-To: <99FA6255-7807-4790-BA19-5BE02346DBF7@datarespons.no>
Accept-Language: nb-NO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB4165:EE_|AS8PR03MB8805:EE_
x-ms-office365-filtering-correlation-id: 4e53c59d-27ac-4b24-29cd-08dbcfd61e00
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sOCObqELcRFRmXVqYzWmqjxKBphzvV1tnlJ2BVXiLnilUCfQvF5lARmm4bNxthCpUm3nQpyKBR3eJPL70zdu5xed/fmtabPqtbEM+euvgYFB5EgQZZ3pPb0d7EDUNi9p/YTyg6L5LkcrWF1xb2lnJaBMOXuMzCPxjS068L+VV5na1Qt+i/+MP5UsHPsmcNgwde0uCP2d9yq8gHKZ0kkBlg3l2kww/nz9qdFAOOeHVDkhU1gHzHGJXEjhAHrdAhZsXjB7BJ64Qt8v7DKM9v+mD0BTHIWI2sXFEOEO8ZMOLxJoF2MgzzwpjyTsQKrIK3H1AXbAQB7cvXxFGprdhJDjgJCq1enoU1abL43Mm6p6BzH3L6H7Fy4oLDqW8NcJBBblufvaopI8RqeFa84nOU20JdB0dIhUqCJdWAPQz6wD8yspYSzA1JRR1cjjjTdA1VfNI2pAo5IPDJFUcq5gZ0+MaS4wDm905DhfRd++LIPEPoM0Xp3FUxgfiHHSVKiMi+UYqhzo9SvCUj488AQeIKIWiW+95sDOvDZbFEmlOxkQ7JuZxEu6QMlA9jVaQCYz/jRmhqKGDZzoMe2ZC9tl4y0RAm631eAPnYw6Zro2FT3jKd7bim1bpmqBd+9UlopVDOHMdTZ4I0qVIsInDv/WpjUq05QC/YeXNKpYLkscy3HjxAI=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB4165.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(396003)(346002)(376002)(366004)(136003)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(966005)(6486002)(316002)(2616005)(76116006)(33656002)(478600001)(6916009)(91956017)(66574015)(66476007)(2906002)(66446008)(6506007)(66946007)(64756008)(66556008)(5660300002)(4326008)(8676002)(26005)(71200400001)(6512007)(41300700001)(8936002)(86362001)(85182001)(36756003)(38100700002)(83380400001)(38070700005)(85202003)(122000001)(53546011)(32563001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUlsRVdJRytVUEZFYW9LTHVUOW5Wc2RZMGpRUEI1UUNJRHQxeUFZMEl1YmlH?=
 =?utf-8?B?RnlqV0pGZzlXVDNha29UMTJ5VjM0RzF6S2tVaFJHMHlVR29VZGNmK2czZlJ1?=
 =?utf-8?B?WHQ2QmkrQ01kUDZiMEdtb3E0YmdaVHZDNVlvQU1hS3ZmSG4yMExLdUpyQkl3?=
 =?utf-8?B?VHRjV0FaMFdocWxsbVNRZ1dwVXVCWW51ZzFLRWpTTnJVcnlNSTcveVpuV0Zs?=
 =?utf-8?B?WDZhSktUZ0VCNmYzQzJyY2tVR2pPT2E1REpTL1pVRGpxb3lLVGZjREpETTk1?=
 =?utf-8?B?clQvT2VmTlMzQTZySEJZUk1wRUFGQmI1WThXLzVuZkFSak1oK1lnVC9jbWVH?=
 =?utf-8?B?bHJIcDdEbDNkYzNPNFZXUnVwMWYybEt4VkNWYmlZTFY3ZHJ1Q3JaRytXK0lB?=
 =?utf-8?B?Uy9RbkhyZFVtODZEbHY1RXQ4NUZzU2l4QzRSN3VKZ3JzdzFHbW9CNjliWmJn?=
 =?utf-8?B?QTNwMDJyRldELzh3WWZBRTcrcmpjYmtrV2kwOUtETW84eXQwMDA3Z2xpYzhx?=
 =?utf-8?B?SFA0T0pCbi9GczJzMEJvRUtmQ1FycnU0UkptYnptbGxlRDJvbE40SVFzOWZu?=
 =?utf-8?B?Y21lYi9EUEs2NmVKaVk5RllSYlBFWTRwLzJVVE9PQ3c5ajVFRlphTEVtcW1E?=
 =?utf-8?B?ZmE3bWgxZzhmQUNHd3F0RzFpWU51OEUrY1dENnBYRFpSNWFlcTdIeVlLeW9E?=
 =?utf-8?B?cktKK3VGZEZFV0NMOVZGcStsODB0ekdOL0NmMnRLckZ4NCttcE9mVllrcDEz?=
 =?utf-8?B?RTdpTndkTkJtaTJxUWZqSUJ1Smk1ejg1b2pua0JXWEhJUVBLWXNNa0lwWTZs?=
 =?utf-8?B?Z09kb2hZbTYyNFI2K2FWeS9zRVJvWHpuOEErU0R0QUgxM3RQNkMyaExhZCs0?=
 =?utf-8?B?RTVUVEFWdlpYTWU3WE4xWE1JUVFpRm1IZlUzakdXNmovc09zQ3dWZkJyT1V1?=
 =?utf-8?B?MnMzUWwvT0dXSDkyZTdCemtzYUNUbUJ2dzN4Nm52TkJGc2wyUk5jYno5UjZJ?=
 =?utf-8?B?RGwxU3RSWVpkTER0RWFrbE1lcUFmRnZyTjFUcTJHTExKbk04RHBlV1A2YU9P?=
 =?utf-8?B?ZEp2OE5Ub0tnU1N6ZlI2T3lPNHo5a1BDZ1pOUFpVVGNoM3pMdzJEOFV6SVhT?=
 =?utf-8?B?N01pTzhsR3dFWXhzeVY0Smdyb012YzlQM3JIQjZiMFgvL3BqSm1pd1BlVFAw?=
 =?utf-8?B?SXdlbEhZSjY1UndlZ0tjSU5najRNcHdmeVRrWkJ5MnZ4Zllhb09TZEFRTUVa?=
 =?utf-8?B?a0ZMdnV0WW4wQS9KWklSTHRsaVhkVmZJbWhVdFMxcHRLM0FZbUtWTTNMM2d3?=
 =?utf-8?B?YXZEOWk2UVJyczBQM3RDYWVBUGxCUUlsMW1GK2hDMCtlU1JYVmkvU2NZZGlZ?=
 =?utf-8?B?V1JwajZTdHpCZUp4K1UvNXd6STJDaFhmUWtEb2l6ZVBlNXRPKy8wRVdhL05R?=
 =?utf-8?B?QkZ1YlRqRzVyUWhlMjJVeWpGeEJVbWlEdXA1Nm1IL2c4OEUvUVJ4TTNLcUgv?=
 =?utf-8?B?N2FLYmc0Q3ViTmowTzNVMVVRbzNWemcwYzM4blVNNnd3U0tqZStadVV2dXh6?=
 =?utf-8?B?ZlhIbGJJdGo0MGUrc2piTlNVWkNmRVh3R2wrTDBHN3p3WkczTjAwZnRjSW9I?=
 =?utf-8?B?SWN5c3h4RlhpdVhHVnMyYlJZaERyUFd3TExlZm9UYnEvOXp1bFU4eFpBSTBI?=
 =?utf-8?B?UTRKakh3Q3VkdFFJT3NQaEpPMDJuWUwzcE5ZdXAzakJQMEZxUWVNMDk0d2dG?=
 =?utf-8?B?SjkrcEdNaTYzV0V1T1huUHZsZThzc1RwMzd6dUlRaVdCekNWeXFXNk9nS3RI?=
 =?utf-8?B?dTZtek04THBFT3hDVVlTUXdKVkh3U3NwT0gyN0hkcjZpZ1FkcURxSStiRDFk?=
 =?utf-8?B?bFR2eDEvajMwMmM3MWlGRHBjSW1wcUVUTmNzdFFZdFl1VFNtd1FUd0RPQm5o?=
 =?utf-8?B?ZktBZWo1MHdhNXVHdWNhVC9vd0tYeUZSSW5PVjUreEI0WjlqUzl1aHhncmVS?=
 =?utf-8?B?UFU4V0N4ZzlNRU04V25PK3BqSTJuam5ld2JzTDFvcUxndjNlbUVpVEswcDNV?=
 =?utf-8?B?QTRGOWIvUHdnTDJtdXl1MVQ1RkJ4ZE9BU3U0YTJIQkdFZVNkWGs0MGJRd2Yv?=
 =?utf-8?Q?skL0F4z+fEKPvEI0IxHDs4u2u?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4A49FB0538FF18449E90F170650AD539@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: WcO5FQHsHsq2uoh3YBDS4XHIWTYYT4MV84ixQDl7jhrAlYsEfj8R48AwaeQ1D9ebsHVwr+rr/nVQgZcCrcFR/7AdenGfi6X0mQHkLsqxmGj9B2V8iEGtGrCIF/gQTNyInSTaqtieV1JJj2gqc4jdWdJsfP1zL+owtcOYSMqFKEUMeBkdlDDBKQ9Vp8WSq/u6TELQ/9jN/VpPfdMFBbQLvbHuP/iY0kYRVPIT505fw2HgoZG2Bj0jcDE+jBulMtwnPj/USliKPDaAQwtSrTz0GO//BBRlR3Lj44GqK1h2ffmbtfxaZH1oZaMZ6Kv+cgB3mDcLcqjmdsBxxJaCzdKaZ5G56luy5R7wjSEQUD9mZpURCk8SymGqjizcaJ35dcfgvsEvedpib5bESykncdXODknQ3GodomL5qRCMdrFH2wn74W4Oz5VVZk95K1v1JnVUPdqrHq59GGt5SVaOKhs0HCcbRqjg0kMJCSX2aQxGSb8Ep5IT6XOAycX9aaRFHVVwkQll2YKbGVH9cdzFHPLKtjVHTiP8j987HBZIR/LsnvDxSO5GZDPPxCfx3yeN5jCgh8F+orxfVOXjpCXBJsNATVbsPdzaNu+6c+nLCcj433u3W9Ce4KAs69x8WjKUIOTN472tzFU3amrErBgJdoxfimhingVvbU9Qrv2C+Vf0Pn60gceM0q5LvnFTzk92Ux21fgVooXhjjWhuKyqAS3WjGfzjYs6yzXi56R3k9Eu36qP1SYGmf3rGyqXi2zy65GU9FvjyC8kURnCj3TMY9dHcSen/xfPz6eErD0apl+whdTaRc5OjU5GwrARRHEbI101W4S3UG1W8tIENlFNKnlhbVkeLzSoBKpqnFcque7f/ImknEtA/zQ2+/7VmEEKgiDRv
X-OriginatorOrg: datarespons.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB4165.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e53c59d-27ac-4b24-29cd-08dbcfd61e00
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 12:31:13.6317
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bQbYypG49xAGtBHkgJLoCYU6jeMp68djGUE2tM+6PEx1EglN4uIQ3xMSrRSypc7kLFMV16P+zNX6MlThSJhPyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB8805
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_053123_062983_FF49AC3C 
X-CRM114-Status: GOOD (  23.31  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: IMX8M and Optee support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SSBtYXkgaGF2ZSBnb3R0ZW4gdGhpcyB3cm9uZywgYnV0IHNob3VsZCBub3QgdGhlIGRldmljZSB0
cmVlIGJlIHBhc3NlZCBvdmVyIHRvIEFURiB3aGljaCBhZ2FpbiBwYXNzIGl0IG92ZXIgdG8gT3B0
ZWU/DQoNClRoZSBibDMxKCkgd3JhcHBlciBpbiBpbXg4bV9hdGZfc3RhcnRfYmwzMSBzaG91bGQg
ZG8gdGhpcyB1c2luZyByZWdpc3RlciBjYWxsIHBhcmFtZXRlcnM/DQoNCg0KSGFucw0KDQoNCg0K
DQoNCj4gMTguIG9rdC4gMjAyMyBrbC4gMTM6Mjkgc2tyZXYgSGFucyBDaHJpc3RpYW4gTMO4bnN0
YWQgPGhjbEBkYXRhcmVzcG9ucy5ubz46DQo+IA0KPiBXZSBoYXZlIGEgMkdCIElNWDhNUCBzeXN0
ZW0gdXNpbmcgMzJNQiBPUFRFRUVfU0laRSwgc28gZXhwZWN0IHRvIGZpbmQgT3B0ZWUgYmxvYiBh
dCAweEJFMDAwMDAwLg0KPiANCj4gQVRGIGNvbXBpbGVkIHdpdGg6DQo+IG1ha2UgUExBVD1pbXg4
bXAgQkwzMl9CQVNFPTB4QkUwMDAwMDAgSU1YX0JPT1RfVUFSVF9CQVNFPTB4MzA4OTAwMDAgU1BE
PW9wdGVlZCBERUJVRz0xIC1qDQo+IA0KPiBPcHRlZSBjb21waWxlZCB3aXRoOg0KPiANCj4gQ0ZH
X0REUl9TSVpFID89IFVMKDB4ODAwMDAwMDApDQo+IENGR19VQVJUX0JBU0UgPz0gVUFSVDJfQkFT
RQ0KPiBDRkdfVFpEUkFNX1NUQVJUID89IDB4QkUwMDAwMDANCj4gdW5kZWZpbmUgQ0ZHX05TX0VO
VFJZX0FERFINCj4gDQo+IEJhcmVib3ggY29tcGlsZWQgd2l0aDoNCj4gQ09ORklHX0hBVkVfT1BU
RUU9eSBDT05GSUdfT1BURUVfU0laRT0weDAyMDAwMDAwICMgQ09ORklHX0JPT1RNX09QVEVFIGlz
IG5vdCBzZXQgQ09ORklHX1BCTF9PUFRFRT15IENPTkZJR19GSVJNV0FSRV9JTVg4TVBfT1BURUU9
eSANCj4gDQo+IFRoaXMgcHJvZHVjZXMgdGhlIGZvbGxvd2luZyBvbiBib290Og0KPiDigJTigJTi
gJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJQ+PC0tLS0tLS0tLS0t
LS0tDQo+IA0KPiBVYXJ0IGluaXRpYWxpemVkDQo+IFJ1biBsZXZlbCAzDQo+IEluaXQgcG93ZXIN
Cj4gSW5pdCBERFINCj4gSGFuZG92ZXIgdG8gQVRGDQo+IGlteDhtcF9sb2FkX2FuZF9zdGFydF9p
bWFnZV92aWFfdGZhOiBFeHBlY3QgT1BURUUgYXQgMHhiZTAwMDAwMA0KPiBDSCBlMmE3MTc1MTUx
ZmUzZTg0MjExNjk5MGU2MmM4NjQzMzRlMWJiMDMwY2ExNDZiNzQ5ZDhlNmIwYzAyNDgxMzU3DQo+
IElIIGUyYTcxNzUxNTFmZTNlODQyMTE2OTkwZTYyYzg2NDMzNGUxYmIwMzBjYTE0NmI3NDlkOGU2
YjBjMDI0ODEzNTcNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgTk9USUNFOiAgRG8gbm90IHJlbGVhc2UgSlIwIHRvIE5T
IGFzIGl0IGNhbiBiZSB1c2VkIGJ5IEhBQg0KPiBOT1RJQ0U6ICBCTDMxOiB2Mi44KGRlYnVnKTps
Zi02LjEuMzYtMi4xLjAtMC1nMWEzYmVlYWI2LWRpcnR5DQo+IE5PVElDRTogIEJMMzE6IEJ1aWx0
IDogMTM6MTQ6MDksIE9jdCAxOCAyMDIzDQo+IElORk86ICAgIEdJQ3YzIHdpdGggbGVnYWN5IHN1
cHBvcnQgZGV0ZWN0ZWQuDQo+IElORk86ICAgIEFSTSBHSUN2MyBkcml2ZXIgaW5pdGlhbGl6ZWQg
aW4gRUwzDQo+IElORk86ICAgIE1heGltdW0gU1BJIElOVElEIHN1cHBvcnRlZDogMTkxDQo+IElO
Rk86ICAgIEJMMzE6IEluaXRpYWxpemluZyBydW50aW1lIHNlcnZpY2VzDQo+IElORk86ICAgIGJs
MzFfcGxhdF9nZXRfbmV4dF9pbWFnZV9lcF9pbmZvOiB3YW50IGltYWdlIDANCj4gSU5GTzogICAg
YmwzMV9wbGF0X2dldF9uZXh0X2ltYWdlX2VwX2luZm86IGJsMzIgUEMgaXMgMHhiZTAwMDAwMA0K
PiBJTkZPOiAgICBCTDMxOiBjb3J0ZXhfYTUzOiBDUFUgd29ya2Fyb3VuZCBmb3IgODU1ODczIHdh
cyBhcHBsaWVkDQo+IFdBUk5JTkc6IEJMMzE6IGNvcnRleF9hNTM6IENQVSB3b3JrYXJvdW5kIGZv
ciAxNTMwOTI0IHdhcyBtaXNzaW5nIQ0KPiBJTkZPOiAgICBCTDMxOiBJbml0aWFsaXppbmcgQkwz
Mg0KPiBJTkZPOiAgICBibDMxX3BsYXRfZ2V0X25leHRfaW1hZ2VfZXBfaW5mbzogd2FudCBpbWFn
ZSAwDQo+IElORk86ICAgIGJsMzFfcGxhdF9nZXRfbmV4dF9pbWFnZV9lcF9pbmZvOiBibDMyIFBD
IGlzIDB4YmUwMDAwMDANCj4gSU5GTzogICAgb3B0ZWVkX2luaXQ6IDE3NiAtIGNhbGxpbmcgPG9w
dGVlZF9zeW5jaHJvbm91c19zcF9lbnRyeT4NCj4gSU5GTzogICAgb3B0ZWVkX3N5bmNocm9ub3Vz
X3NwX2VudHJ5OiA3OSAtIGNhbGxpbmcgPG9wdGVlZF9lbnRlcl9zcD4NCj4gDQo+IOKAlOKAlOKA
lOKAlOKAlOKAlOKAlOKAlD484oCU4oCU4oCU4oCUDQo+IA0KPiBJwrRtIG5vdCBzdXJlIHdoeSBp
dCBhc2tzIGZvciB0aGUgc2FtZSBpbWFnZSB0d2ljZSBhbmQgaWYgdGhpcyBpbXBsaWVzIGFueXRo
aW5nIOKApg0KPiANCj4gSGFucw0KPiANCj4+IDE4LiBva3QuIDIwMjMga2wuIDExOjA2IHNrcmV2
IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Og0KPj4gDQo+PiBIZWxsbyBI
YW5zLA0KPj4gDQo+PiBPbiAxOC4xMC4yMyAxMDoxMSwgSGFucyBDaHJpc3RpYW4gTMO4bnN0YWQg
d3JvdGU6DQo+Pj4gSnVzdCByZWFjaGluZyBvdXQgdG8gYXNrIHdoZXRoZXIgYW55b25lIGhhcyBz
dWNjZXNzZnVsbHkgaW50ZWdyYXRlZCBPcHRlZSBvbiB0aGUgSU1YOE0oUCkgcGxhdGZvcm0uDQo+
Pj4gT3VyIHRyaWFscyByZXN1bHRzIGluIGEgY3Jhc2ggd2hlbiB0aGUgQVRGIChOWFAgMi44KSBk
b2VzIHRoZSBoYW5kb3ZlciB0byBPcHRlZSAoZXhpdCBFTDMpLg0KPj4+IA0KPj4+IEluIEFURiBp
dCBhcHBlYXJzIHRoYXQgQkwzMiBpcyBleHBlY3RlZCB0byBsb2FkIGF0IDB4NTYwMDAwMDAgb24g
SU1YOE1QIHdoaWxlIEJhcmVib3ggYWN0dWFsbHkgbG9hZHMNCj4+PiBUaGUgT3B0ZWUgYmluIGJs
b2IganVzdCBiZWxvdyB0b3Agb2YgbWVtb3J5Lg0KPj4+IChQYXRjaGluZyBCYXJlYm94IHRvIHRo
ZSBleHBlY3RlZCBBVEYgQkwzMl9CQVNFIGRvZXMgbm90IHJlc29sdmUgdGhlIGlzc3VlKQ0KPj4+
IA0KPj4+IEFueSBoZWxwIHdvdWxkIGJlIGFwcHJlY2lhdGVkDQo+PiANCj4+IEkgYW0gdXNpbmcg
T1AtVEVFIGluIGFuIGkuTVg4TU4gcHJvamVjdCBzdWNjZXNzZnVsbHkuIFRoZSBoYXJkY29kaW5n
IG9mIGFkZHJlc3Nlcw0KPj4gaXMgaW5kZWVkIHVuZm9ydHVuYXRlIGFuZCBpdCBuZWVkcyBtYW51
YWwgYWRqdXN0bWVudCBkZXBlbmRpbmcgb24gdGhlIHNpemUNCj4+IG9mIGF2YWlsYWJsZSBSQU0u
DQo+PiANCj4+IFRoZSBjb21tb24gY29uZmlndXJhdGlvbiBpcyB0byByZXNlcnZlIHNlY3VyZSBt
ZW1vcnkgYXQgdGhlIGVuZCBvZiBEUkFNIGFzIG5vdA0KPj4gdG8gc3BsaXQgdGhlIFJBTSBpbiBo
YWxmLiBZb3Ugc2hvdWxkIHRodXMgY2hhbmdlIHRoZSBCTDMyIGFkZHJlc3MgdXNlZCBpbiBURi1B
DQo+PiBpbiBhbGlnbm1lbnQgd2l0aCBiYXJlYm94IENPTkZJR19PUFRFRV9TSVpFLCB3aGljaCBp
cyBhbHdheXMgcmVsYXRpdmUgdG8gdGhlIGVuZA0KPj4gb2YgUkFNLg0KPj4gDQo+PiBMZXQgbWUg
a25vdyBob3cgaXQgZ29lcy4NCj4+IA0KPj4gQ2hlZXJzLA0KPj4gQWhtYWQNCj4+IA0KPj4+IA0K
Pj4+IEhhbnMgQ2hyaXN0aWFuIEzDuG5zdGFkDQo+Pj4gDQo+Pj4gDQo+PiANCj4+IC0tIA0KPj4g
UGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwNCj4+IFN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAg
ICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8DQo+PiAzMTEzNyBIaWxkZXNo
ZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAg
ICAgfA0KPj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4
OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwNCj4+IA0KPiANCg0K



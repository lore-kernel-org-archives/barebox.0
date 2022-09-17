Delivery-date: Sat, 17 Sep 2022 08:54:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZRiZ-007TQs-Se
	for lore@lore.pengutronix.de; Sat, 17 Sep 2022 08:54:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZRiY-0006AX-5Q
	for lore@pengutronix.de; Sat, 17 Sep 2022 08:54:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tJfIisCGzhzA4KwMTWYH2FuzUu5lhBIyJiTu2KuWhqo=; b=penpQi8mbbMgcTsSHuzDHS3OuQ
	/Z6vL4YUKNg8ehOIR71zQ1QoQwETIfV2frEm8HlPlgce64AZIPk7NfdWlDE+Qq7wN3rz6Aijn266o
	tZ/3zVq2hsJx7NgsGNKwANY/dbOMXTKk549CookR/1qePP/nchPfuxxjzJrwj0XzK8Asf+cCAuxlb
	049JGwKgjULNYbtgNqTWqpyGZneLnPWmzuq8omaRU6+FHr/fRub+oHgU4UbayiKheG8uxpSBCzlRI
	m7KSmoDk2Jk9DvGxxQ4T7NQdHcU6t0J9zUATHI8ctVKejnih3dHruQY3XvgWCdppx6wcVd4X8SfXP
	ZPBhBcRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZRft-003qSz-H9; Sat, 17 Sep 2022 06:51:37 +0000
Received: from esa2.hc776-43.c3s2.iphmx.com ([216.71.158.83])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZRfo-003qQ5-09
	for barebox@lists.infradead.org; Sat, 17 Sep 2022 06:51:33 +0000
X-IronPort-RemoteIP: 104.47.17.107
X-IronPort-MID: 2360666
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-db8eur05lp2107.outbound.protection.outlook.com (HELO EUR05-DB8-obe.outbound.protection.outlook.com) ([104.47.17.107])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 17 Sep 2022 08:51:31 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A0GNiAI//XMpbGAm5L50ZsPxz/YhCkMcKLGQdYvxoqbyqN7m1NgbYM+Pd+M7BmMcVyBf2W+EDswwCLWcLxZyJG62dAo0Bon3uKpQY9qfY9D4NAjqwXuWtSeaEz43dMQ5S0lZqreUOzkT+c15UXg6Q0Iyk6adqaP4OUEjY/ha976gbFHnf339rKLIyg5EpsEDK//1+ppQk5LJK2Httb6gUkwJjh4F0PoDMVz/ecX4u6Zdf4hDegDn5O5r91H7Q4EknpSxFGGSmnlXWy7KTkInoSbRQWw5R97UIFvH+FMOe5UuWZ5FokoknD2Twn0YpfGPv97ZA09q0u5mpJn+S5supA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tJfIisCGzhzA4KwMTWYH2FuzUu5lhBIyJiTu2KuWhqo=;
 b=I8qhBcDCu8nNn3xDxxdphn9U9KUPHnoBxkLLPe509brz9Fj1YEnC6Zo2Bd6nBxDTOv3ltKfbbhEkOeeek+mhZR5zepQ8/zaIUVUlu5bN3be7lUmYVMGLY/ExCEV3/QOfpkQGI+N1NP+yz8Asmc3DFU+MCcl9M3IwLUAilZ9KkWGrpwkZ5nXqj+dtPQiwCbFsAlzZ4C08E/TyY1A5r376Upaw29+7cK1ua7aFCkxpKpaV/DKmmy+PP+hXBpLUazOotBD/odFY8sQ8oxzCs0ufIWSXsyP+/tjWbySEKu4xeEFF3zXhZen3DoFcqZuJyPk7jO99QiEUrs9qcHpwd/M1pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=datarespons.no; dmarc=pass action=none
 header.from=datarespons.no; dkim=pass header.d=datarespons.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tJfIisCGzhzA4KwMTWYH2FuzUu5lhBIyJiTu2KuWhqo=;
 b=LK4QAcNC9hxGImY6oz1ew9EVyqZgr2c3pd1371CD0sN1Px8Tb/FEKZqef8b/atBHCIx7RFdOahYvbTwTP8uHkr6Zq5JANchM+yMvhOdTbCEIdXJkMv1n3UmHi1geEg8OxworrW93AjEqhiWDm56dEhXwYshtj9rpfj4ufCEPDFA=
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com (2603:10a6:20b:8::23)
 by GVXPR03MB8379.eurprd03.prod.outlook.com (2603:10a6:150:7::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Sat, 17 Sep
 2022 06:51:29 +0000
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::9da7:a2e1:3d79:55b7]) by AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::9da7:a2e1:3d79:55b7%3]) with mapi id 15.20.5632.018; Sat, 17 Sep 2022
 06:51:29 +0000
From: =?utf-8?B?SGFucyBDaHJpc3RpYW4gTMO4bnN0YWQ=?= <hcl@datarespons.no>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: fitimage: Allow match against config node name
Thread-Index: AQHYydnB05Ola0jx60uwV0lRmQ3SX63iTxgAgADhBgA=
Date: Sat, 17 Sep 2022 06:51:29 +0000
Message-ID: <F1338C87-37DC-4F61-8E4B-9E1E4B7E8CC0@datarespons.no>
References: <EC219BAA-D034-4B47-8377-286110B1329C@datarespons.no>
 <89dbfa91-7d49-bd56-4728-42ad4d33dd6a@pengutronix.de>
In-Reply-To: <89dbfa91-7d49-bd56-4728-42ad4d33dd6a@pengutronix.de>
Accept-Language: nb-NO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.120.41.1.1)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB4165:EE_|GVXPR03MB8379:EE_
x-ms-office365-filtering-correlation-id: 6c4d2d82-baa8-4dfc-5f83-08da98790c57
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  Z26BXsgm6hQpdcM0SK3b99CJ1jVM71qi2t7uBfTMTNBIlvZH4ckXj1Mt5VIyU22ow42ALTXTMMFxRQkUIOuvPl4Imp2z1jp6f0T3NUQluGZhcoxVBvYV0dF8aUn+uRJuBLCgpd3LfiuJbVWw7LTwR6Bs68iZLsYkwKDV2DFSThTj3DPveT8f+f1ygXjFvCKKSfTMlTB0RhCXx5rendT3NG8QiKHVsjYFIGpP9L/eT5LRdSZXYw0fxK/5oZbKMblXYVFNE60DO3NcHI27eG+cz2d7phYh7OW5zV44RYf9wBhksu3FT9xdYzkxr0BaV8LrUgujGgtlWl3akwK6a5yB8TU5oBqCzCBjzqm21M+R5wCkbb2VqCPLbShuDspux9rUS3Q3vWEHYZcloUWzNmL5DBFQAfzcWkw5wMx5pVodSgjd1PFbMwfLZhEZ0j4O4stVmb0FnPpgrVvObzCt1haQDmg3UM+jOnFgQu0M4jUo/fiTUMO2ULBSxl0eyHM65Fp/RGzJ8oD49tTADrinWh+wuw+jthaZdqPPgIdl8HO6r26Rmdp/l23qRtIXWMQRf/wHiO/Rvz/TbR5zIKfnY/bwlWY1Cgpf+0X6gAUprbcGR1VRtFKh8NBOi37OIMqknOeuVLJpu4r+Y+uRU0N/xuSKGOthqDq5P+D8rOvsRbpYv7cULr9YMte1zLK9/uJ2xdEQImxzPkYvOlEI5Fv7SrHs7gUI9PWKEbvr/2TeI1J+XUp4hWBWXHu4SBBeIdhE3hXcJebhR11Q7Eq+k3Ys2/1JzE/94jH2i6vux0F6kYcHF7rFVGEBSeJc//E274rsxXFDRiIWxZRy6ByXD0WpKwsYRA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB4165.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(136003)(39840400004)(346002)(366004)(396003)(451199015)(91956017)(66574015)(76116006)(478600001)(64756008)(38070700005)(6506007)(122000001)(186003)(66556008)(66946007)(66446008)(36756003)(6486002)(66476007)(38100700002)(33656002)(2616005)(71200400001)(53546011)(5660300002)(6916009)(966005)(316002)(8936002)(41300700001)(85182001)(4326008)(85202003)(83380400001)(6512007)(8676002)(2906002)(86362001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?dGFFSlRMbkdGa2NaZmVSa2hmZ1R6WFJiQlFxZGh1VlVEYW5Ud2dwYkpYZ2p0?=
 =?utf-8?B?ODVtb0VTTXpXTVdJbWdoVkE0Q0tNVlJCdDZtZmpXY1Z1MjVZcmZBNFpSR1Ex?=
 =?utf-8?B?OHkzOUFrWjF6MFJmd21WQlRSMkJaSVJjcXhXZkJHREdSdWtqYng0MFdva2d3?=
 =?utf-8?B?WjNYSGk4V0NKNFVOeXdxdk5kMStjc09mdjFwNnJCNjQ5OEp5RDRTTjI0ZUdL?=
 =?utf-8?B?cVQrYlROQzBSUTRJeDAzRnk5c3ExdnRaRHZ6RmhRS2pOYzFGRWppbElScjRE?=
 =?utf-8?B?cmVxcHdNSmhEMVVWT04xNkdIRnp2VDJNTDArQlR4cC9hOGNwR2QyQXVOc1Jh?=
 =?utf-8?B?cDRuTXpMdU5KMTYzZm9FRjFQRVRjbFQxc0xaamN3K3dBNWtmWWlIaEk4Q2d5?=
 =?utf-8?B?R3pRMjNOaitPNko3Ti96TFZnck5yVmRlMXA3QUUrNEJ1cERHQmxqcTdzZjZB?=
 =?utf-8?B?N0hOSGdGdUZTdU85ZXpzWi9jQkRZNmQ5QVh6N09jYWdDYjhRemlqd2oyQkZp?=
 =?utf-8?B?dldoelI3QnkzcURvcVIxRyt6L2dQZlp1VHJwUTBadTVIUEhqaGJuVk4vd0Fa?=
 =?utf-8?B?Y1I1M2ZRRlBnbHRmVGUvRno3cDNzYlJiN2ZyS3R1YlFiamM3Kzc4WmZwb3Jm?=
 =?utf-8?B?Q25HWDcySUFMYlUrSVA5V1JSOGVQbGtEQTgwWUtXWWNwSGpHd3ppczZDR1hn?=
 =?utf-8?B?TmQzeEVjazNmTHkvKzZjWTRuc3Z3bWtJa0M0ckllZDlDQ3hHZmhGcGplNjRh?=
 =?utf-8?B?Mm1QRXFZTk1EakJkS3NrQWQ1VUJ2U255YmVOUW5JaU5HRXFEbkZYSkp1NzRP?=
 =?utf-8?B?MEIwUWc1RkNaYlo5RlN2K2ozSnRMdERoYTI4eFBObW9xZ3FQcDU1UE1YQnBQ?=
 =?utf-8?B?NHcyREdUME4xN2FPVkFSN2lPMnhhZE0vWmMxL205eGtEUHcrMExSRVN1YW1H?=
 =?utf-8?B?ME1TNDRYeEorVUo5K2Q4K1ZFRHNwYjllKzZaV2VIUkV3aTBwVTBySnYybW8y?=
 =?utf-8?B?YmdXMDIrYmxpb1V6emg4bHJJdktMN01GOVJMZk9wOUZrblAxd01Zc0dWMjNV?=
 =?utf-8?B?M0FEa2VncXpsUkNSRks5WEZqZ0t5d0xDV2JwTHo5S1FaZW1yaDg3ejk5Qi8y?=
 =?utf-8?B?ajNsNUlyeUNyWldMblUvcEIzZWpGMzdNSlVublFxOWxxRlY5SWdSQWp3bnlv?=
 =?utf-8?B?MkQ5SVZobldOK1BYUVFWZVl6Mkc4ODUwdW8yR3BEMi9sM25mYTlqQStzRE1Y?=
 =?utf-8?B?NUU5Y2ZXL24rSWNzS3d5R0NIQjYxNzVJOGc0M05IZzVHQjArSm9FQnhPZ0tL?=
 =?utf-8?B?bkQ1Y2pxbkhaYy9XV2xpZmRVUUV5OFA4VDY5bTgzd08rbyt1Q1RBbnJhVlFv?=
 =?utf-8?B?YVVORkNjd1UxSHNsSmdYTFFDODBBai9hMkNzYzFKZjVZMUE4Z0N4dmJ4NzRp?=
 =?utf-8?B?QzRNcW56bVp0a05ZcncySXhQa3ZiUkVwVjYzYU1VRk5pQ0lqclNPdFBmUHVq?=
 =?utf-8?B?M2dBalNQR1B3Tm8zQThrTklqbTRQNHplQzdSNEF3a2hnNjJobU0wK3J3U1h2?=
 =?utf-8?B?TzhCbDFXUnlWWkJjT0FYM1BDUnZWYVowdkh5bjlSbjRIQ2NIZlJpQmEwOHRX?=
 =?utf-8?B?SksweExaVEIxL1NhWldYRDZxSHZwa2N6L0RMcldJaDVVYndxM1NocEFhNVdv?=
 =?utf-8?B?UXovNWN3UVBuMG0rRmF2VmgvVEJyRkN2Yzh2R0F0ZkNQRGlpcmo0c3l0UE5j?=
 =?utf-8?B?WUsrRk1HUDRMdUJZbjAvZlhhSURlS2d4K3lKRHFtelZyNWdiYW9hY2NndXNT?=
 =?utf-8?B?T082cUxkaVJWd0FoaEkxaG13dm90dFdSRitnL3Q4Vy9QUGxCWDBVSVBrMi9a?=
 =?utf-8?B?Tm1TVjdBcWVuOVBIYUcyaVBJd3kxNEtvYVFySktPVmV6b0FwWDZQRzVQczZP?=
 =?utf-8?B?bUx0a2pUclFZYXRma1NGaHBVYkdaVS9rcDdRWWxIZndUUmEwRU5ETGM0cmw0?=
 =?utf-8?B?a3loNCtNZUk0SG1CZXc0Vnh3MzI4cnREaTRVbmhDSUFMajlUY1lTTjdxTEQr?=
 =?utf-8?B?aEZWSmZOZTFmVG9ZTE9vZUVxT3YzVFR5eXFxUThOWlZCalFrWCtmVUFhS25F?=
 =?utf-8?B?YTJvNWtEM3Y2cGZtSnNDdEpwY1BlLzhNMWlQUDZFemxkckhFbGZ4VFVTOWhZ?=
 =?utf-8?Q?WVcMubHdZdIK+vZrW6tFRyuExomkHmAv5oO9g6Vf5CjS?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D67A63B94157E041B654EA4BE3573326@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: datarespons.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB4165.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c4d2d82-baa8-4dfc-5f83-08da98790c57
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2022 06:51:29.1238
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8ML4xUiZYj/KO1vbKAVIhIVC2p9SOrakwagpUDG9bclX1EgxWIwTQ88+AscLBcAMbm5drgWqxkifWHuTOoV8Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR03MB8379
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_235132_334024_6DEA8AA7 
X-CRM114-Status: GOOD (  27.08  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: fitimage: Allow match against config node name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhhbmsgeW91IGZvciBwb2ludGluZyBvdXQgdGhlIGV4aXN0aW5nIG9wdGlvbiwgaXQgcmVzb2x2
ZXMgdGhlIGlzc3VlLg0KUmVnYXJkaW5nIHBhdGNoIHN1Ym1pc3Npb25zOg0KQXJlIEdpdEh1YiBw
dWxsIHJlcXVlc3RzIGFuIG9wdGlvbj8gQWN0dWFsbHkgaGF2ZSBvbmUgcGVuZGluZyB0aGF0IGlz
IG5lZWRlZCBvbiBVU0IgZm9yIElNWDhNUC4NCg0KSGFucyBDaHJpc3RpYW4NCg0KPiAxNi4gc2Vw
LiAyMDIyIGtsLiAxOToyNiBza3JldiBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4
LmRlPjoNCj4gDQo+IEhlbGxvIEhhbnMsDQo+IA0KPiBPbiAxNi4wOS4yMiAxNTozNiwgSGFucyBD
aHJpc3RpYW4gTMO4bnN0YWQgd3JvdGU6DQo+PiBTdXBwb3J0IGZpdGltYWdlIGNvbmZpZ3VyYXRp
b24gbm9kZXMgd2l0aG91dCBwb3B1bGF0ZWQgY29tcGF0aWJsZSBmaWVsZHMNCj4+IA0KPj4gWW9j
dG8gZml0IGltYWdlIHJlY2lwZSBkb2VzIG5vdCBwb3B1bGF0ZSB0aGUgY29tcGF0aWJsZSBmaWVs
ZA0KPj4gaW4gdGhlIGdlbmVyYXRlZCBJVFMgZmlsZSBjb25maWd1cmF0aW9uIG5vZGVzLg0KPj4g
QmFyZWJveCBpcyB0aHVzIG9ubHkgYWJsZSB0byBsb2FkIHRoZSBkZWZhdWx0IGNvbmZpZ3VyYXRp
b24NCj4+IHByZXZlbnRpbmcgdGhlIHVzZSBvZiB2YXJpYW50IGJhc2VkIGJvb3Rsb2FkZXIgdXBk
YXRlIGJ1bmRsZXMuDQo+PiANCj4+IElmIHRoZSBjb21wYXRpYmxlIG1hdGNoIGZhaWxzLCBmYWxs
IHRocm91Z2ggdXNpbmcgYSBnbG9iYWwNCj4+IHZhcmlhYmxlIGJvb3QuZml0bm9kZSBhbGxvd2lu
ZyBhIG1hdGNoIGFnYWluc3QgdGhlIGNvbmZpZ3VyYXRpb24NCj4+IG5vZGUgbmFtZS4NCj4+IA0K
Pj4gVGhpcyBhbGxvd3MgdmFyaWFudCBib2FyZHMgdG8gcGljayB0aGUgY29ycmVjdCBjb25maWd1
cmF0aW9uLg0KPiANCj4gVGhhbmtzIGZvciB5b3VyIHBhdGNoLg0KPiANCj4+IA0KPj4gLS0tDQo+
PiBjb21tb24vaW1hZ2UtZml0LmMgfCAxOCArKysrKysrKysrKysrKysrKysNCj4+IDEgZmlsZSBj
aGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+PiANCj4+IGRpZmYgLS1naXQgYS9jb21tb24vaW1h
Z2UtZml0LmMgYi9jb21tb24vaW1hZ2UtZml0LmMNCj4+IGluZGV4IGE0MTA2MzJkNzAuLmY5MmU4
MTNhOGIgMTAwNjQ0DQo+PiAtLS0gYS9jb21tb24vaW1hZ2UtZml0LmMNCj4+ICsrKyBiL2NvbW1v
bi9pbWFnZS1maXQuYw0KPj4gQEAgLTcsNiArNyw3IEBADQo+PiANCj4+ICNkZWZpbmUgcHJfZm10
KGZtdCkgIkZJVDogIiBmbXQNCj4+ICNpbmNsdWRlIDxjb21tb24uaD4NCj4+ICsjaW5jbHVkZSA8
ZW52aXJvbm1lbnQuaD4NCj4+ICNpbmNsdWRlIDxpbml0Lmg+DQo+PiAjaW5jbHVkZSA8Ym9vdG0u
aD4NCj4+ICNpbmNsdWRlIDxsaWJmaWxlLmg+DQo+PiBAQCAtNjYzLDYgKzY2NCw3IEBAIHN0YXRp
YyBpbnQgZml0X2ZpbmRfY29tcGF0aWJsZV91bml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqY29uZl9u
b2RlLA0KPj4gc3RydWN0IGRldmljZV9ub2RlICpiYXJlYm94X3Jvb3Q7DQo+PiBjb25zdCBjaGFy
ICptYWNoaW5lOw0KPj4gaW50IHJldDsNCj4+ICsgY29uc3QgY2hhciAqY29uZmlnX25vZGU7DQo+
PiANCj4+IGJhcmVib3hfcm9vdCA9IG9mX2dldF9yb290X25vZGUoKTsNCj4+IGlmICghYmFyZWJv
eF9yb290KQ0KPj4gQEAgLTY4MCw2ICs2ODIsMjIgQEAgc3RhdGljIGludCBmaXRfZmluZF9jb21w
YXRpYmxlX3VuaXQoc3RydWN0IGRldmljZV9ub2RlICpjb25mX25vZGUsDQo+PiB9DQo+PiB9DQo+
PiANCj4+ICsgLyoNCj4+ICsgKiBJZiB0aGUgbWF0Y2ggYWdhaW5zdCBjb21wYXRpYmxlIGluIGNv
bmZpZyBub2RlIGRvZXMgbm90IG1hdGNoDQo+PiArICogKG9yIGlzIG1pc3NpbmcgYXMgaW4gWW9j
dG8gZml0aW1hZ2UgcmVjaXBlKQ0KPj4gKyAqIGNoZWNrIGZvciBtYXRjaGluZyBub2RlIG5hbWUg
dXNpbmcgZ2xvYmFsLmJvb3QuZml0bm9kZQ0KPj4gKyAqLw0KPj4gKyBjb25maWdfbm9kZSA9IGdl
dGVudigiZ2xvYmFsLmJvb3QuZml0bm9kZSIpOw0KPj4gKyBpZiAoY29uZmlnX25vZGUpIHsNCj4+
ICsgZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZSAoY29uZl9ub2RlLCBjaGlsZCkgew0KPj4gKyBpZiAo
c3RyY21wKGNoaWxkLT5uYW1lLCBjb25maWdfbm9kZSkgPT0gMCkgew0KPj4gKyAqdW5pdCA9IGNo
aWxkLT5uYW1lOw0KPj4gKyBwcl9pbmZvKCJtYXRjaGluZyBub2RlIG5hbWUgdW5pdCAnJXMnIGZv
dW5kXG4iLCAqdW5pdCk7DQo+PiArIHJldHVybiAwOw0KPj4gKyB9DQo+PiArIH0NCj4+ICsgfQ0K
PiANCj4gV2hpdGVzcGFjZSBpcyBicm9rZW4gKGdpdCBzZW5kLWVtYWlsIG5vcm1hbGx5IGRvZXMg
dGhlIGNvcnJlY3QgdGhpbmcpLg0KPiANCj4gQnV0IGFyZSB5b3UgYXdhcmUgdGhhdCB5b3UgY2Fu
IGhhdmUgeW91ciBib290LXRhcmdldCBsaWtlOg0KPiANCj4gYm9vdG0gL2Rldi9tbWMwLmZpdEBj
b25maWd1cmF0aW9uMQ0KPiANCj4gYW5kIHRoYXQgY29uZmlndXJhdGlvbjEgd2lsbCBiZSBjaG9z
ZW4/IERvZXMgdGhpcyBhbHJlYWR5IGNvdmVyDQo+IHlvdXIgdXNlIGNhc2U/IElmIGl0IGRvZXMs
IGEgZG9jdW1lbnRhdGlvbiBwYXRjaCBhZGRpbmcgdGhpcw0KPiBpbmZvcm1hdGlvbiBhdCB0aGUg
cGxhY2Ugd2hlcmUgeW91IGRpZG4ndCBmaW5kIGl0IGlzIHN1cmVseQ0KPiBhIHdlbGNvbWUgYWx0
ZXJuYXRlIGNvbnRyaWJ1dGlvbi4gOykNCj4gDQo+IChhbHNvIGdlbmVyYWxseSBzcGVha2luZyBt
YWdpY3ZhcnMgbmVlZCB0byBiZSBkb2N1bWVudGVkIHdpdGgNCj4gQkFSRUJPWF9NQUdJQ1ZBUiku
DQo+IA0KPiBDaGVlcnMsDQo+IEFobWFkDQo+IA0KPiANCj4+ICsNCj4+IGRlZmF1bHRfdW5pdDoN
Cj4+IHByX2luZm8oIk5vIG1hdGNoIGZvdW5kLiBUcnlpbmcgZGVmYXVsdC5cbiIpOw0KPj4gaWYg
KG9mX3Byb3BlcnR5X3JlYWRfc3RyaW5nKGNvbmZfbm9kZSwgImRlZmF1bHQiLCB1bml0KSA9PSAw
KQ0KPiANCj4gDQo+IC0tIA0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfA0KPiBTdGV1ZXJ3YWxkZXIgU3Ry
LiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAg
fA0KPiAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTog
KzQ5LTUxMjEtMjA2OTE3LTAgICAgfA0KPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4
NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfA0KDQo=



Delivery-date: Fri, 05 Mar 2021 14:10:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIADR-0002fY-Kv
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 14:10:01 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIADQ-0007SX-Ou
	for lore@pengutronix.de; Fri, 05 Mar 2021 14:10:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A/8pl77OYeA16uZpgegmzo6EXtNCH+JduXMDsCMxFPk=; b=S/TJ45s4abaB5575V/MXOrzwu
	Zhq5G7qNUcCA6WkTu+MZzT+CizmVEQ2cZOf07kyPw9yb98MizvClfzYqOKdWMGme6qo7K5yUx6MF5
	CarQ7zH/7C4q8u5eT13dX0VgRuiMHH4h8pnt2BtZwhcaf3MzsV/IoqIbV1kHO21u+zPQAQfzLKzgk
	8LHNSWklgvbkOOBLhmH3d+fmYTU1Iqb1HjeGfLniif2r4o9m0d++H0KpbcmV4hLaVkjuHfP0hfRbC
	+YuJ3S0GFgfDwPxPlpP+2IMpLFWsK7/swbrBpI9wVjXUo9EzQzQOv4KhGz8uaIY/tVlWrv/42DVfd
	e4Sn2Q/FQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIAC0-00F3Yj-Pw; Fri, 05 Mar 2021 13:08:32 +0000
Received: from mail-co1nam11on2119.outbound.protection.outlook.com
 ([40.107.220.119] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIABp-00F3XB-Lx
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 13:08:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jYYywQH0YKDjVqlqFoSQklErtwxbjXcFzZ3RmLQsdhoT22P6XY68mVlNA9FXilvVCPUfM+cyQqWzfM3FnO8QsZej8JpohDCmTOSNoi2+D1erJOn4XzqAhxgZdOiPQYa7G5NNsaO8zOlDuKZL/exUusQRk7bgRjJlxjcRSLwcvrOCgUCo7Znnd6p9EeHqIMtAzhuBBZtQiabDCWdP+ZkBgcWUyTfJBHARURjdFrSCkG/TfBtPEW6nQV6PgIgmGI4vlnC/DNIdKPhodA2Gt01Vk7THYjh1kUTC0RNSyYPKkK6omoTCHxtCbZiSSZaq3cNEi+sl29poI4IWXEixSVtlYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e3gt5V+lGez73sfwZo3Z1Tql3hu4lmLq/a5C2YA/hZk=;
 b=kiZS1rICbcfHcxDnklJYJgZ9R6peMvj2x6A6GqZ98NJBuza97czH0HUN12wRV9SN7RcskgT62OirMWyN0Ki1FB8esXzvhYhYFQekSDDt0bAIgEOtFhvvdyyoRxmnu8MNtSF/CINbs+HBrVqgw8UxYkh1+n8cUayFlrdpf8J7u94jOcVfXwsO5mzpcS53Ki+Cqhymw/gCyeUyrLoAynAkzXKe7vBOWBZxA3gEjHAoEVUIB4BwZZ4heVdqXVO83NPcoKOExWEBqkjGTzP74Qw9uSvpmKQvNg8yCZAm6YCxteDikARfS2An8Q2sJY3hj/YrN99zTXe5bJH2x9g0sgnk8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e3gt5V+lGez73sfwZo3Z1Tql3hu4lmLq/a5C2YA/hZk=;
 b=TBqov2xFwgPGJEhRk7BqIAVtAQg4Wj9dAfL8mwkJfwIaVIQyuaxACMFWHb4+SIMlOO7/Medjxy2RrJH4Od1FX5PtvnVPfydf4wBp+NsLGzdWEv/iFfS8Z7jXQBTHQ7LLS5E6zd4eFWoqYSkIu+k0FnzVU02T8xHHKGsHNRW2zXR5AMlB9K+WoJF5rLPFh8XX70dX60DSx1b+M6gDlJvOkk98i+snXyhruDie1HW8bIQZGCOwR5wNW8XbGUO2mzp5kPM0QdYxdiXSOs4Y+eE08ESaUV5A/oCd/++pPVYJYsy63ulcF3aJZe5vDIhn2eQwkXqnFPWOTYE6cWM7fLuKIQ==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB2750.namprd16.prod.outlook.com (2603:10b6:208:db::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.25; Fri, 5 Mar
 2021 13:08:16 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::c5a8:5a36:6b4d:afdb]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::c5a8:5a36:6b4d:afdb%7]) with mapi id 15.20.3912.021; Fri, 5 Mar 2021
 13:08:16 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
 <barebox@lists.infradead.org>
Thread-Topic: Uart set up in PBL
Thread-Index: AdcQ6WFSwU4Pyw2qQAu4RKrRueL1NAADNYyAAAZEWbAAJ3JHAAACh5tQ
Date: Fri, 5 Mar 2021 13:08:16 +0000
Message-ID: <MN2PR16MB3135E6DF1FAD29294046059391969@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB3135C4186907BA49E69CD38B91979@MN2PR16MB3135.namprd16.prod.outlook.com>
 <092dbc44-2081-ef3b-0fd7-25d1b9da72d3@pengutronix.de>
 <MN2PR16MB3135FD27767D80F4FB9FB44A91979@MN2PR16MB3135.namprd16.prod.outlook.com>
 <c3eae1a0-2296-64f4-95ea-cb808f1f0aa2@pengutronix.de>
In-Reply-To: <c3eae1a0-2296-64f4-95ea-cb808f1f0aa2@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=abaco.com;
x-originating-ip: [205.182.146.17]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e9139d9-90b8-491a-009e-08d8dfd7bdbf
x-ms-traffictypediagnostic: MN2PR16MB2750:
x-microsoft-antispam-prvs: <MN2PR16MB27508B1A596A66FD79BF119A91969@MN2PR16MB2750.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4ea2Me8lafphVGCO0zfZMNIHyrs6IqUZa4r8YOqn4vW6CfAwTYxXkrU7k849B3WkLs58RmxKiesF8kIj+NJ9Hq2uohf6bBc0wAhEmCopIllfzsBI1BR3yuYsCrPqE3zF49FXoO5FLLZwG3Q6u58u7bni0burHH7vl7BT0jdsHdnOu0KAv4bXxnD4PmWCCuDAzSsaWpyUkmAGW9b+EbLJ7ODWzL3wGJh2KEW2cBoutLdEss/od6L5CqPeKHbuWTByC5ppwPP2KYVqNTdyd1/yV5bQM9ZqQmn1jS85m0v1MajKP34DUdx8ltKmw/m8HgQJnKWTDi4oK90ZecMnM3DbormQFfqKsBwAaVNOA7jkQiH5DxEk+GAORBgD8yNMhbbxZ6vgW5PvhKPS8zHV3xbj4tKP2YkvCO19jZpC8PUveIl4HM8JjCXahM/7sbUqtrSqFcM0NjC4VVqH0h4eNDhn1R0iJMavvf8VYgyujyd6j1uYBAYIClzsVDslD4VjRYCq3T3YE6Squ66CW5umLN6FqQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(396003)(39850400004)(376002)(346002)(86362001)(64756008)(66446008)(66556008)(5660300002)(186003)(66476007)(66946007)(76116006)(33656002)(478600001)(26005)(4744005)(71200400001)(8676002)(8936002)(9686003)(52536014)(316002)(110136005)(2906002)(55016002)(7696005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?HHHoYJ1kpu25GCyy4WW9BAgmGTe4eJ4fnlDgnPQ5x77IZpJyf6GGhSUBwdmY?=
 =?us-ascii?Q?Cjz7BH3zw8Zgb6ThxetDi7xmfFOP+rWLD2nFTWKKNgtPUa9aK2fzCC7gb3qR?=
 =?us-ascii?Q?SwW4TXkGY4amfoCFOArArHGkLSTk5VL51efRxc/l2BHhSAI1FjgxoLV1uULF?=
 =?us-ascii?Q?aOZhwdYYxiLdeG/CAwpaimv914N6nQK7a6+3cfezVDzvVwguZRpnDV5suqNr?=
 =?us-ascii?Q?gLDNb1CPSWEWhGfyq/Ifl3VVDbtcVNIXwiQdc+/oOpV5IivI07URvP+Ol45K?=
 =?us-ascii?Q?+ELPPX52Jq9RogMHCeJ+YGl+CXn8EhLrMkr0lethdn13WhZQSiVhwvpHzBVq?=
 =?us-ascii?Q?346U/ZVUBirFTA4dilDJ3qT4/kFXCSjalPaTMkuFbUu6IA7PCE0PfJw5zF61?=
 =?us-ascii?Q?LFvMmIbzWkeHN5rEMcsBRQArEPZT0cvPGAlYB4BrUdzWyeJXYuYsT1Y2s+/G?=
 =?us-ascii?Q?cNeFYDAIIy2jFKCb9wE/+hY01PBeJhUl7E7Z4pnJFjXSz4wHVZAVyqF8xtCs?=
 =?us-ascii?Q?B4RAi7IYZXtJ4aYY4mZ0AtdbwpuhOkSQH2YgvuKIDNANqu/a1Nd8stRHifOQ?=
 =?us-ascii?Q?amu+lzjxZZtdu2p832KUkVDGyhDea2uJKM3DNn+t3Qw8OoFvRriRv8/5leWk?=
 =?us-ascii?Q?wMTPa8pnz+wYPjftIVMCHrQ+v/aTA6Iw+0XLhI4rghYfm3Xj6Q2ZXWVWorNI?=
 =?us-ascii?Q?eiapP2quBcVFt2zbDXpCm+YBSjyFqpvIqQdJJ/3iGKbtsNNNCUu5oTG0CnBJ?=
 =?us-ascii?Q?O21xOtQRNBYCEDgo6kMaeaATmhR52AMFuJAbsi+QD9sRZ9ZKAd6XhzrWPDja?=
 =?us-ascii?Q?oyvOJiAtjEO5q07ZEXLAOX+b88wN3uxBpnVoPvFoJHQMrmMPYeDRFVz8wT6A?=
 =?us-ascii?Q?6hSaE3An/2o7fkleahPbXJEf3X2qCyIsNQPX4I2vq8/c0rH9jDTm6dbzOBWE?=
 =?us-ascii?Q?Umdn3fKp1J0twXgXSzemZi4ROhW2QFs9ixSYrK9U/FUcvuGhK8fwpaQGBGd2?=
 =?us-ascii?Q?PjViUJfLLwtmrtDMtucjp1pnJ44qqKSb+YMsucKmj5hYO2gwDZ4HBfHWKNUa?=
 =?us-ascii?Q?PHZltyrl5Jd3WyDLUpdpd+5ZNKH0v3QFtJlOusuJTiZbkQb5pIlgrTjw/tdT?=
 =?us-ascii?Q?dy5/MtHoKPF723q3HUscaxDnFlAiauh0OgJGsyo01baQN1SdoBpFh0VDv/h0?=
 =?us-ascii?Q?EjWXtNYzURfzFN31SzU920O0TAKYBLIM479ePZJPSqRu1reEcYjXKfSLWtAf?=
 =?us-ascii?Q?pK5RtuhEOzz9XGUvi7JrTJvZc0F2k+vhaYYbdoFdDpAVzQ/5McanMHNoK04T?=
 =?us-ascii?Q?dvdmNa2WcSJVAZEYVXXrndsa?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e9139d9-90b8-491a-009e-08d8dfd7bdbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2021 13:08:16.6189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B7NUdNPWxSHGQnZl4butIRBbZsEkITmD5nY9xJLb4tEyAlowZz9+g2/xNJ4jgD89nQKruIPKolqzVdL3SProznh8pqWeKOU5JiDvmr6qQDw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB2750
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_130822_092667_E6A0AB7E 
X-CRM114-Status: GOOD (  10.64  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RE: Uart set up in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


> 
> So you load pbl/bare init barebox into SRAM, run PBIT memory test on DRAM,
> then extract/copy barebox proper to DRAM or how does it work?
> 
[Barbier, Renaud] 
For now I have never used PBL on ARM (lwl-y => obj-y). Probably did not do right as I  tweaked the barebox linker script to have a TEXT_BASE. Only reason I did not use PBL is that it did not boot first few time I tried and the other way worked right away.

PBIT runs from SPI NOR flash which is not a problem as there is a DDR BIST unit on our ARM SOC. I did include the memtester from pyropus.ca too for a more comprehensive test and obviously it is very slow running from flash with D-cache off. An improvement would be to run from SRAM.

>From the barebox_arm-reset_vector, the uart is set to a fixed baud rate, the DDR memory initialized and if PBIT is enabled a quick or comprehensive test is ran.  Otherwise use the BIST to initialise ECC if present and then barebox_arm_entry is called to relocate barebox in memory.







_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


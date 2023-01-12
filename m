Delivery-date: Thu, 12 Jan 2023 07:12:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFqpQ-009Y4I-23
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 07:12:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFqpO-000584-0S
	for lore@pengutronix.de; Thu, 12 Jan 2023 07:12:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GvR1iRtrV2lebihOWvZgKTLptEOiRE1TPXBUsTBAvko=; b=U7RQt8NcwTNzsJzNN4jMnnE/SG
	OT+MESM4QCi3X56IKgIUQeaa5W7GVSZfteQfkKQ2Cv1IiiUSC/TbQ+lXoLXPHNQptMtJq4FlM7ibj
	7rqJEA37Y7rrMz+4kS0jLsTuVOCW3otJtwcjP05CatLuebHc5a6JNkNo+tCbGwk6vpSsmtDquXw3G
	Af2BerNUmd+bhhmfDqCCWc/TsPWInyHZFtxwFv0oRncRwwk1t7gHf20cXEZfQtNLu6Oyu+ehi/Qkg
	x33Vs2GbzkSOELtXN2NN+AVyBTcUzuRMEDOttVGyruRQF59zr1BoD3SjG+gDU629eT2iDvSnjk+kb
	9P44kKQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFqoA-00DtRx-U4; Thu, 12 Jan 2023 06:11:27 +0000
Received: from mail-vi1eur02on2091.outbound.protection.outlook.com ([40.107.241.91] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFqo5-00DtQh-4C
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 06:11:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Deoze/gJp5LypBRa22I6Qbzl4yZmgM5pEK8RnMYm5+JtsYfY423tTaMGdXAB0lTIeB/Q7tJ8W2Q47v8UdFw0VihryQmKhkisTicKeZuKgIdFLJ5OixpNVA4jCsLny01giboDk0niz+VNMXjw+zZsEZv2xvDwIu4n3O7ttR14A7m3WSnfnfvrlLf55PdQHbJRYYGRM4mgdUD7L/1mnsAme2TL+4wDHl5PrcTbamQcdqOqXU1nUN3YIkSKII9WnELGrZvigMRJVBWw5pADkvSCS/wbCJ0WRIkAvy/I5Czgp2NHFaFDVkYkQXrzTtx3LHaeO6h11Nly2iTLjD5XKHmGpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GvR1iRtrV2lebihOWvZgKTLptEOiRE1TPXBUsTBAvko=;
 b=geAe1aj+ZcdsqeOKj69cSrQaDvB+bi7dfgTC7AQGNUbgSWI2VNaYTtlMWWAA4FeHbGxtE3qhgImBqtOGkMwU/oDxUBFXNWv1rsGqbmCG1+f1eDhJGaywts+xzQVXhmsJHNxAyHXQEuBkhUsgDWgZ8pGNZ2McQ+4iQkFGxU//ahLSiQq7KtrcPVjv4Xj8QLbq5PsvNOf1e0BF6bSNaDXdiYbiikdeCtd8GQSL+5CYKixB6OinSktfAMUpd4FEG+4Or2DeAYmcKYd/p2sZeuVA5F1Guxp2MbceRyRN7f5lSDd+kHcDqdeOcVNA9/EkWlMeO7DMoNdBHbIHDBgr4TfwAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GvR1iRtrV2lebihOWvZgKTLptEOiRE1TPXBUsTBAvko=;
 b=G0MT+pMVsLm4N9llP6R0S46b/bWfCUskwFlVe4GWNxDm2csjDXRZzci6v0S8nvGXLqs4SsN5tZfFGt5EMW7V51YQZrVSnuJR9sY1jmX7xY3DMo7M1LX8v2pHo6hnOo8PZ4Y5hxfJTkx/JXXO0Ko3j77cjUQcZTh/SC+i6hHR5ok=
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com (2603:10a6:6:54::31) by
 VI1PR06MB6608.eurprd06.prod.outlook.com (2603:10a6:800:180::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Thu, 12 Jan
 2023 06:11:16 +0000
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::b8f7:e96c:a92c:40de]) by DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::b8f7:e96c:a92c:40de%7]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 06:11:15 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH v2] ARM: i.MX8M: smccc: allow SIP_BUILDINFO call on all
 imx8m variants
Thread-Index: AQHZJkwfeMzYET3y/UuJqv+/U7Ubc66aTERN
Date: Thu, 12 Jan 2023 06:11:15 +0000
Message-ID:  <DB6PR06MB4008033B1F388102838B027EBCFD9@DB6PR06MB4008.eurprd06.prod.outlook.com>
References: <20230112060709.2417871-1-johannes.schneider@leica-geosystems.com>
In-Reply-To:  <20230112060709.2417871-1-johannes.schneider@leica-geosystems.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR06MB4008:EE_|VI1PR06MB6608:EE_
x-ms-office365-filtering-correlation-id: f1fd21e7-6736-4dfc-11c5-08daf463d007
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  8ud4lVsjKZKWoWLrzbyDopmZloP2fjMH4JWxw2586qE9nQ+Z2WepmulHal2NqUHY+Ubj80kDZzsN47/ZZpufXOpZ9AxGRMUUb3/mZTJqAcOZlrp7ewwe4ESRzX3UYQJzCsvR4seWcBTT+zws00vQ6WJJIb2VZNuE4iCicwjF0dODC/HUdv+KgQkd/5lXN0GVaMXmBiQJq9uJ1OQ7CA3k6rKaFaQ77F5iA+Upb4VnuKaC2yimio1eE/LmSLm+KDQ48tKTC1hnOjbDgd0ivXkFy0hMzwbnaNsf8/DHOQKoHhDCZgXGfzKq4DZ9k2NJxQgfP4KinKvwcsdTcos0aBlEvps4knYdYDPmq+f0jA6tqaZEnRT9Ys15dRl9UQcI/iUBzFV8UanrTAF5VKeQyvkqEq/5xddoPM3JU+WU+zbcOIJMZNs/VW4Sw62Xa1qDqbX5W8jlYn/q0PyAyhwihKvpY8KDxsoKR8oS0FSSoG5JYyAWx7YK74airiHiBeoeSmXpXQN03wqMoLfnvR3INKcLMPYgXyyzv6HrJnkNRW/ExBBbqThGkwhPXYzQFcHV/vPrxmtDbTdQ5Z4aUfuNn9HVuTi+/E6Tln/NTEXwTIB9pStehWgEy+vZWOHWO+WjuHN+A5Y47k2XgP5xuLKt1PwauO3SWihN8P5M0gRUSCwKnQmAQVF9ZwGJyzsAjQaKMWToaSyYWVpbeLe4ledestJapAy2u4FQjpUsk61Svv7YTvc=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR06MB4008.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(39860400002)(396003)(346002)(136003)(366004)(451199015)(8676002)(122000001)(66946007)(66556008)(76116006)(64756008)(66446008)(38100700002)(66476007)(6916009)(33656002)(91956017)(71200400001)(186003)(55016003)(86362001)(26005)(9686003)(316002)(38070700005)(7696005)(478600001)(5660300002)(2906002)(52536014)(41300700001)(8936002)(6506007)(53546011)(83380400001)(32563001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?zknbe7vWIT0V86iyFck+v4xFaYMNBT148F+MBgydtX/O9umYagRmjMLbZ4zj?=
 =?us-ascii?Q?VOrzHHl4hqIod85AEn9tWjtIcsRfGwiQ+qbpag1RUUqWYvQagIT+6eujWVPX?=
 =?us-ascii?Q?bbiSlW8Svu75hxUe8wbHmeXfBRyOq1Av/JDq1xzk4QnHgNL+DykbkVQOFC3p?=
 =?us-ascii?Q?HH8Tz633E+fPT9sEAWXSibic2VgoOSu3g7WTgwNvXrSAXb2W6Fguu5bSvA4E?=
 =?us-ascii?Q?wn+R3yo1EjPfgEJXYcErgoGSF1WcxlcKVIAex5cXg1ib9Tqx8fGwBhsGeUws?=
 =?us-ascii?Q?vtu54MYJ6mXkiBQ78gSkuI1S+RRZyQcq41kMEPvOHTazJORQgU/Uj6mD4Imu?=
 =?us-ascii?Q?Bjx+PPf1olwgHgRL2w5Df43yVtZMrfUGqBiGsMI5FxeAdP7R+GMFVu0Nbq01?=
 =?us-ascii?Q?hbZvyhz4QZriJgGRTDbxiLlRpgMO7i5dc2ZtE3HkULIxsVQYwEtMfDDM5s0K?=
 =?us-ascii?Q?In+S71K09aDQ0UQ+L321zAS/GHka53V2qQPFMatXsm5rF84gftJO2si/hUOW?=
 =?us-ascii?Q?jfMZmJPZjK8Zv480UTVM0f0FM6/SbhPyrw1rjlaVUOipVHl5r8r4ZPrAtrps?=
 =?us-ascii?Q?BWS8eUmDs8NGzu8H2BE6Qal/tUpaa+MP/H60yNVUGchH1FVXa00cZftI9eEQ?=
 =?us-ascii?Q?YvLkfpPcNlW6rCb3uou8q/NHwnqB/pUbhc7261fjbgG844wGaGyF7UMqEFJp?=
 =?us-ascii?Q?PbaV7gGdo+mia7OY16NTsI+Swa0vVz/FaMpiXUdxzXivW1Uhf05rhXSx3jVA?=
 =?us-ascii?Q?yMxIkP2xDEpEtNevdhptc4iHHjP9Y+cLpCRnZg0CMTdA3z9iuB1lRaTFzMph?=
 =?us-ascii?Q?BmJ6/zCih9Q+GqugG0uL2OwG3J618S3e6BOM7e0yzjtNvy6QRuo1LuhEg7Ix?=
 =?us-ascii?Q?oSYM1doSHaM4p3IUaJ8xYcOd0Uo5VqjL+vtWdZrZczH/Syv5o6PCq8zcs0eE?=
 =?us-ascii?Q?sklvD08YpG3OL3+9NV6IEfI42gt05N5/Wd2X81hBbYLSqzpMUn5WyIbFXM3A?=
 =?us-ascii?Q?WzfyIuTV1SCwDaHPgyvxiMJcy8UF9DCy4X4abL7SApoI2oGfd7UC5euLiE2b?=
 =?us-ascii?Q?W3mpQs1BlpbWrcGIi01wuKC6+cZ391SntITcEH55DWbBHkjyjasb0NnS7Tay?=
 =?us-ascii?Q?DcbO78du1RNwrP43mnZVpnI9ooZPqrm93qZ6rh5NzGhAR6j5C7t1t5EpSNSq?=
 =?us-ascii?Q?GMRS5LBvnK7QRKxhrpX7M3yiZbL8uosnNFJLqsEZhpW01vlvI9DAn/enYH6T?=
 =?us-ascii?Q?AzYlSTovAXGb0iUfFzDLtm8PcNILa9lT5bqjuXWp/L9Ik05sn6njFdIqetS9?=
 =?us-ascii?Q?hjg8+b8XK4Xw74dj/wrCpKdplAtLordWpChVtOh0pJsTvoVlR2H737PUcuWe?=
 =?us-ascii?Q?kFX1hejASudSCBGN8qutn6yWiLNqYRw3ysME+BHEKWY7BH3g13W6ecLBBuDK?=
 =?us-ascii?Q?uHOPQ3uokOJLuXQqd7T1oEN02inxCT/4Bt73AfJHpVg2EvjrbbmIn8GhrN9C?=
 =?us-ascii?Q?FI2qV/j7E8iedomWlR4Ee4HGVPDvsY/FE0PE7sH6bJbJ+JnH9TxwxqlBUKz6?=
 =?us-ascii?Q?Mv6CblucLtQhb4r0VP/B4uFmC1DUUA/9/j1kiVakPddz5cXCYKjuOsf6qFiB?=
 =?us-ascii?Q?EsNZxft/bJOAPgMkJCC2/r8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR06MB4008.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1fd21e7-6736-4dfc-11c5-08daf463d007
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 06:11:15.4941
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3azEwNKfUMcvxYJQF+WoRkiz6KqD89MjGxfSDvffG46PObUgvKWoVAKpzjbnfdVh5u6ObohF68i1J5TJFjKgwAD6ubt5EuVtbRCWoIXER8/xzQjW5y4hHoRrtOM8CDUD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB6608
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_221121_368889_F030989B 
X-CRM114-Status: GOOD (  11.01  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX8M: smccc: allow SIP_BUILDINFO call on all
 imx8m variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hoi,


and "merde", this should have been v3, and misses the changelog...

v2: was:
[PATCH v2 1/1] ARM: i.MX8M: smccc: fix firmware_atf check

v3: redid patch with suggested common config switch


regards
Johannes

________________________________________
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Sent: Thursday, January 12, 2023 07:07
To: barebox@lists.infradead.org
Cc: SCHNEIDER Johannes
Subject: [PATCH v2] ARM: i.MX8M: smccc: allow SIP_BUILDINFO call on all imx=
8m variants

By adding a common config switch, the imx8m_init code becomes generic
for all board variants (and slightly less confusing).

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm/mach-imx/imx8m.c | 2 +-
 firmware/Kconfig          | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 9758525b54..4399dc7dd5 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -61,7 +61,7 @@ static int imx8m_init(const char *cputypestr)
        pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());

        if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
-           IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
+           IS_ENABLED(CONFIG_FIRMWARE_IMX8M_ATF)) {
                arm_smccc_smc(IMX_SIP_BUILDINFO,
                              IMX_SIP_BUILDINFO_GET_COMMITHASH,
                              0, 0, 0, 0, 0, 0, &res);
diff --git a/firmware/Kconfig b/firmware/Kconfig
index b4a6fd9137..d3e79b4ef5 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -14,15 +14,19 @@ config FIRMWARE_IMX_DDR4_PMU_TRAIN

 config FIRMWARE_IMX8MM_ATF
         bool
+       select FIRMWARE_IMX8M_ATF

 config FIRMWARE_IMX8MN_ATF
         bool
+       select FIRMWARE_IMX8M_ATF

 config FIRMWARE_IMX8MP_ATF
         bool
+       select FIRMWARE_IMX8M_ATF

 config FIRMWARE_IMX8MQ_ATF
         bool
+       select FIRMWARE_IMX8M_ATF

 config FIRMWARE_CCBV2_OPTEE
        bool
--
2.25.1




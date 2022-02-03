Delivery-date: Thu, 03 Feb 2022 15:36:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFdDs-004jx7-71
	for lore@lore.pengutronix.de; Thu, 03 Feb 2022 15:36:32 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFdDq-000884-2k
	for lore@pengutronix.de; Thu, 03 Feb 2022 15:36:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvWiKOLFbgcyqmondKUWj27YhXutognDnO0uIrkVIhA=; b=O8Z+ko9R7YmI07
	2htqyqObs1IJtMZTi2WfROP1Ng1JDfUUDPflRDucXLQc8kuOqk3BN5P7ProuI9IfphPgR0F/SERo9
	T2UBk2mNd3LQQ0Zye8R9euQNN9JKG4KocuTPnKrrqxKD8ecyr5uYjTC3eAWMXubEwRRvqsygeESt7
	9JaaLM7C7gwcgOwQEqHGEqxnvWdRU4NutuebNof2gF0t2nWvs62wtDQvYf5QY1pbIoGIsbVG0DIlV
	DcywZxy6jzW0lmpF5Xi6X0mF7Xwbykr8HvnK4tXfX4FbeLzsThg7NVjXXHrlw1jPREC2iLLWA4dvq
	LzskpwJiMWvF1O3aM76Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFdCT-001dOO-L0; Thu, 03 Feb 2022 14:35:05 +0000
Received: from mx-relay33-hz1.antispameurope.com ([94.100.133.209])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFdCM-001dLh-TE
 for barebox@lists.infradead.org; Thu, 03 Feb 2022 14:35:02 +0000
Received: from smtp.eckelmann.de ([217.19.183.80]) by
 mx-relay33-hz1.antispameurope.com; Thu, 03 Feb 2022 15:34:55 +0100
Received: from EX-SRV1.eckelmann.group (172.18.30.60) by
 EX-SRV1.eckelmann.group (172.18.30.60) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.18; Thu, 3 Feb 2022 15:34:50 +0100
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (2a00:1f08:4007:e035:172:18:35:1a) by smtp.eckelmann.de
 (2a00:1f08:4007:e035:172:18:35:4) with Microsoft SMTP Server (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18 via Frontend
 Transport; Thu, 3 Feb 2022 15:34:50 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gxNazmmm9RIY7UJSP9dTkxC7GPO9lr1mvxhtkd13BLgvrLMedzhqMypQGrDh7S7lg0Ec+dHx+VKuKYzozAvqP/QK+eLi27NXwllMFQeuPFHGmL6ClCQZeu33R1GDOGS9zwaAAKcvdTWO7hzA77L0ET+T98zCFfK0vHZX+T0vQov9WpbBBjl6G8oK+sOmM6lJ/IpXygKggrWeC3F/aGkvSWhQS/q5k0iXJf9vzBpa4hlc1ygrgMIzY06vo0IR3Z/XHA9UwxqM1QciTxXb6YUi47eLh7g/niaznlrwR0iivvTedtCDW0WgmuuGiU2FKubgUdV7Qf1RWbxFbZjs3hZfig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ayhhxo1sTGzKcaLOKvw2qshOlBtJsdYKs2LT4ftwIlg=;
 b=k70he8eTIBvAFCs1oLYY7DJgGy0P8xwBgXNui5T5lnXC7IixviVZeVSKqH/wOUXP0ZCr/7iw8O627/Vgy5xbuGW6YuNZ23zsVf93wTvIbKTGZFJmIXOpu9lQiV1arcqdgbHnA32q32hZvtyNAOz0Aph6cQZ7RFgQ8gr2DvdrM+s8ADgiYHqHB8WD06HPynfdZFjsYwyspb+/Y0qeK68gqaHiApSnpdQn/yc7MHCI6PMoou8Iew4akOpPsWPkIBeWzo6qOjwqD9cA46DUdrKQd7M3LQZRsgxrriGSSkK2ghlMHVQGPNA+46eXJYjLcHhCKjtEbtYIfEb9N48OfzDXug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eckelmannde.onmicrosoft.com; s=selector1-eckelmannde-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ayhhxo1sTGzKcaLOKvw2qshOlBtJsdYKs2LT4ftwIlg=;
 b=Axp3JQMINcB/pxFT21iGIDJXaEdJGQiP7kqFg37hjbjCakAV8KFELRNp7VJEy6UATeyB3OaKN0+t+zKh/X2MnF6zW/Ijwx9jdaMMolP7ZaOa4VLdIrdrk4OKvCdGbu6+QXLsZ4OGoq9oRQt6QcXZtJnvKYVdk89OmaBvkDHnrUQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from AM9P189MB1700.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:2fc::15)
 by DBBP189MB1162.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:1e2::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Thu, 3 Feb
 2022 14:34:47 +0000
Received: from AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
 ([fe80::4d95:78c5:c7a:fdf7]) by AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
 ([fe80::4d95:78c5:c7a:fdf7%3]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 14:34:47 +0000
Date: Thu, 3 Feb 2022 15:34:46 +0100
From: Thorsten Scherer <t.scherer@eckelmann.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: <barebox@lists.infradead.org>
Message-ID: <20220203143446.eewzqwy6jym7trqd@NB142.eckelmann.group>
References: <20220202095554.1103016-1-a.fatoum@pengutronix.de>
 <20220202095554.1103016-4-a.fatoum@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <20220202095554.1103016-4-a.fatoum@pengutronix.de>
X-ClientProxiedBy: AS9PR06CA0063.eurprd06.prod.outlook.com
 (2603:10a6:20b:464::25) To AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:2fc::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a5b4241-90b5-4df0-aa31-08d9e722541f
X-MS-TrafficTypeDiagnostic: DBBP189MB1162:EE_
X-Microsoft-Antispam-PRVS: <DBBP189MB1162D5CAFF89437FD7126AC19F289@DBBP189MB1162.EURP189.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:449;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IotyNYX17Wk4anjlKuwUWeYXGlEntIrBtqG72blF/rqxRdtvzz3H22nsOM8T/fMdSXpDKuploJkSCymFwv1QTq9J5BHcREg9fcb1ndgS7xKyd1iUYjo2mYHFyogpXxHmh7Ltijo7A+sBBx3Wkb4ELU20y306H4AMQ7JFTUDPMhQDq0jK6yp4h9gHgYgQ/AFnRmj97cN3Qf9DAObNCj50wNupsZGgvBH1ejS3ICE+PQlijQCRp3x+3K5MmpjM2UM42+vdhQk9XPVGeiUYu0tAIQO4uG51I26s79H/ryv/HEg4RjOz0MKtUdwo2PNtJ5YZiMKoz0FxlR9dPsCtXP5jXQU7+8F0uhd/atMnlfOmsYJmRdbGT+tE818ThbxIYevbMnGVZ38r7kPyQIeo8+o3eVSAO6T/fSv4qGcGuouXwu2QJUNS3rQkk+N2TZ9CdWhlkVY7AgTj3CkMsGqFfAjkuQnvd+bd73488SCVdqJO4SBFl+t0BliAxlophA1gMRblfmbRlfraVjQwXYzWVPgXAIrEks1Zep/fEtC7qtGjOzauEQT/ntkgD2n5+qiodOD9eX+w7Jht/cqI/6s1SdMWrF3YaCaSgY9msz3wQ8DuTGsPmTTe2W9fMp/qMfclesjuLudh5tPk9PGm/VCmTIUMOdjbea7GuLmmESmG3kdiVlLyqs5ww93QSw4vK4dKW3fNtLOiJPIBs7sClwYki2sTrZCA8YhIgY3APEf15R62UQWOnv6XR+CXGRCfcX4kbyUIivllkNpE+dFRoX5IB08GXjWGBlT75VSthwGbDmJWKrBQmpQL8WXlYCCfeDMXBOPz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9P189MB1700.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(346002)(366004)(396003)(136003)(376002)(39840400004)(9686003)(66476007)(66556008)(66946007)(2906002)(83380400001)(66574015)(38100700002)(38350700002)(6512007)(26005)(5660300002)(86362001)(30864003)(316002)(186003)(19273905006)(52116002)(6506007)(1076003)(6486002)(508600001)(966005)(6916009)(15974865002)(8676002)(8936002)(4326008)(563064011);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ETdcULvhukXb4T0DL89rbgAFDG4MP8yDpiOPIvpJyZORgdU7G2o31e757n?=
 =?iso-8859-1?Q?k7iZgCvSmlcObzYMJON6H8zPm2t4YdhaQPO12779dAgl+AWqaorKE0g1rY?=
 =?iso-8859-1?Q?XKpmC5v9zLwGFX779ruXs2OHOGMvUytoB+ks/9s5A5+kQi7RAg57b9K/UO?=
 =?iso-8859-1?Q?rXmVxc7/xEVE7aEsqLYkAZ2g/3Fh7jwwvv5uTZxGvI1yvzMgNEmUvggowM?=
 =?iso-8859-1?Q?Oh6CYr8WZabi/FwXC+EA5E6arQWG8JUEZM395trhv1M5UKwF9D21wCLArs?=
 =?iso-8859-1?Q?V+8Z1l7fseOUdfnaZFP5GkZx69V68wi0RvOHKly4zSdfZMKuZgUiUQFvnI?=
 =?iso-8859-1?Q?BF9xl4VSXJoVtxcqpyV5SVUSsKAygB/90uOqL1lImDX4mTm2+Dg2xq+XBd?=
 =?iso-8859-1?Q?ZMG6y0LCGdkkWWiGJO/mPamiNvV173oeoruUUCg5j07giOywF678d1X5jZ?=
 =?iso-8859-1?Q?psN7sqSQMjqm8sVid6x4CnBaOk1Ib5L7waQfvPGZVojaFSP8JDcg8tqG81?=
 =?iso-8859-1?Q?o9WAOIfkrTzKh9f9XHlynbszQ1AjYKP1pbpCK94aaG//w5/HWKyYNJdi7E?=
 =?iso-8859-1?Q?p6u5Wg9hPsFsXIpY6xfYG6k7PL+WgcaU9eyD9urKpCEJ84cH5MpDSvD5jD?=
 =?iso-8859-1?Q?MPjSpUJAu5xlM218yUVO8NqmKZvm5hXXVFNP2BwPJUbfHejqRyeZPMiZ0w?=
 =?iso-8859-1?Q?k0eBVmWzn087tmSS8yOOSyTRpnHH4NVstpTIWkK/tzjN/VLf5B6BQlnbjF?=
 =?iso-8859-1?Q?MoE0BYRIdT6UCrQBJorRAz8TgvQuQ67yYH0lkdanWOnRs4NDGETwy32r4k?=
 =?iso-8859-1?Q?Gi3k8u2ktBbpJ0Dr0Rtiab8vUy3de+x5kk/EEuNA+rnNrby8M78XVuSfu6?=
 =?iso-8859-1?Q?ZNj87JA8ZC9DCXhpWMZsX5q60z5TEE6SbAh8kxnB0tShvS3JdzSx4klmFe?=
 =?iso-8859-1?Q?m9aIhG7IiFs25X99t9fIamnE+egUJ81iHQUOmk2xYTFPxCIFFWUx5Hq1vr?=
 =?iso-8859-1?Q?3Gvs0JmkzjaB0sc1hjFYDMKv4LsYhFEUNLscALegJANul0JwJuGYLYUzKb?=
 =?iso-8859-1?Q?1MCivEWwSafGOL135SiBJKEaCmP7qBpTjEr2f+uiaJR/mwXVDsMxXi76Nj?=
 =?iso-8859-1?Q?ef/JieMal35lWsdWNTxCrUkQJalOyC6WlZwyzYjesp5pZkut0m8X4WrM9a?=
 =?iso-8859-1?Q?73+QLPCN5UDG0M4G+98BC+U6rZ061SCsHj8rOpfI34dMkJi57K1m3wTiya?=
 =?iso-8859-1?Q?pN9wGPmQNwGnrsFDv9hwme56sPyFad5Lqk6E2a8dm1HR2SBkRqLAX1pU15?=
 =?iso-8859-1?Q?v4oVHjNSbwg5LLhTMqvsTOgBfIeWRl8KyoIfDM30XmjY9IlI0HPaeEtCdg?=
 =?iso-8859-1?Q?0BBO54Of3WxsQrkd6zZI3Z4N39U13pjBYpv3QJZ6GV3SBUoJgiry+d/LhG?=
 =?iso-8859-1?Q?DhMphwi40hUTP/VXWNC9pfWsT71MeOGiN1bMp45V/q7YmBTD5yHmDS/5Sn?=
 =?iso-8859-1?Q?NWhNCo1mWNm3lKAAql2/X/RJ2P4vCgSfl4PdjKOvDWg+oSlWbJo7RAm9D4?=
 =?iso-8859-1?Q?5G3FVLN4toaG1w6qT2zU+YnMuchh0LjE++q1OuKXfLwMm1STh1AfWbaTFu?=
 =?iso-8859-1?Q?ETHRqkKNHJPidd0rvY0wOb/fljFDII72fwt/5ccaBBULentAXQLU5hRrED?=
 =?iso-8859-1?Q?SRqVGGot/rT20DQXwCM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a5b4241-90b5-4df0-aa31-08d9e722541f
X-MS-Exchange-CrossTenant-AuthSource: AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2022 14:34:47.7920 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mPa1b5OcBpWHP0knaYrbA7VQ6X2W8Ij4MI3LPfotgVq0OX5+fuBattC9izBcoRdXf8BXLjvE5+H9cRsU7oEboQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBP189MB1162
X-cloud-security-sender: t.scherer@eckelmann.de
X-cloud-security-recipient: barebox@lists.infradead.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 mx-relay33-hz1.antispameurope.com with C41401A2BC03
X-cloud-security-connect: smtp.eckelmann.de[217.19.183.80], TLS=1,
 IP=217.19.183.80
X-cloud-security-Digest: b4fa542be28aa31f0891e22d0a875ebd
X-cloud-security: scantime:1.731
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=eckelmann.de; h=date
 :from:to:cc:subject:message-id:references:content-type
 :content-transfer-encoding:in-reply-to:mime-version; s=hse1; bh=
 FJ6W2ooV74iYQwDBQqX8+Slv5YSleDbVS9D0JNI3n10=; b=sUkf/BSd63L2Ea5f
 hMg1O+kVWVmHRFX3kJOunAxNyiMWQnpe2v9Ai3hGR/rJeHQl41VcLW2S4BVM8xua
 wjrQgkLKhcmXJmxoIqviTDeMI1TK29FyDc2R7mOhwXfMH69zHcb716r1g0fMyxOr
 YZy+BCZYry4gtU8kSEv6SgQGHATDQrnFV2JE8Gb0BaYs9QzOLDOjTLS5m3HTKUBg
 p/Uy9qIo9CEy++wIkBJM8SFcaXaI1puRL4BzhypK16zOCOGeLjvT2KWti6Uq0rzM
 rsz4HlwSfy+axBmE5Qd2x86+XO6WoSST8xfBfV2UJBrUF+bZMrikBItXn2GU83Zp
 bGACvQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_063459_280777_CE22B0EC 
X-CRM114-Status: GOOD (  26.28  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] video: add MIPI DBI Type C Option 3 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

uups.  I did not see v3 of this patch. Sorry for the noise.

On Wed, Feb 02, 2022 at 10:55:53AM +0100, Ahmad Fatoum wrote:
> Import the Linux v5.15 state of the driver to allow easy porting of
> MIPI-DBI displays like the Ilitek 9431 added in a follow-up commit.
> =

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/Kconfig         |  23 ++
>  commands/Makefile        |   1 +
>  drivers/video/Kconfig    |   3 +
>  drivers/video/Makefile   |   1 +
>  drivers/video/mipi_dbi.c | 467 +++++++++++++++++++++++++++++++++++++++
>  include/spi/spi.h        |  20 ++
>  6 files changed, 515 insertions(+)
>  create mode 100644 drivers/video/mipi_dbi.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index ba8ca5cdebce..af60f7be1587 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1969,6 +1969,29 @@ config CMD_SPI
>  		  -w BIT	bits per word (default 8)
>  		  -v		verbose
>  =

> +config CMD_MIPI_DBI
> +	bool
> +	depends on DRIVER_VIDEO_MIPI_DBI && SPI
> +	select PRINTF_HEXSTR
> +	prompt "mipi_dbi command"
> +	help
> +	  write/read from MIPI DBI SPI device
> +
> +	  Usage: mipi_dbi [-wld] [REG] [DATA...]
> +
> +	  Options:
> +		  -l		list all MIPI DBI devices
> +		  -d DEVICE	select specific device (default is first registered)
> +		  -w		issue write command
> +
> +BAREBOX_CMD_START(mipi_dbi)
> +	.cmd		=3D do_mipi_dbi,
> +	BAREBOX_CMD_DESC("write/read from MIPI DBI SPI device")
> +	BAREBOX_CMD_OPTS("[-wld] [REG] [DATA...]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
> +	BAREBOX_CMD_HELP(cmd_mipi_dbi_help)
> +BAREBOX_CMD_END
> +
>  config CMD_LED_TRIGGER
>  	bool
>  	depends on LED_TRIGGERS
> diff --git a/commands/Makefile b/commands/Makefile
> index db78d0b877f6..fffb6d979e82 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -67,6 +67,7 @@ obj-$(CONFIG_CMD_GPIO)		+=3D gpio.o
>  obj-$(CONFIG_CMD_UNCOMPRESS)	+=3D uncompress.o
>  obj-$(CONFIG_CMD_I2C)		+=3D i2c.o
>  obj-$(CONFIG_CMD_SPI)		+=3D spi.o
> +obj-$(CONFIG_CMD_MIPI_DBI)	+=3D mipi_dbi.o
>  obj-$(CONFIG_CMD_UBI)		+=3D ubi.o
>  obj-$(CONFIG_CMD_UBIFORMAT)	+=3D ubiformat.o
>  obj-$(CONFIG_CMD_MENU)		+=3D menu.o
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index 1b8672fdea82..70d1d809536b 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -129,6 +129,9 @@ config DRIVER_VIDEO_EDID
>  	  This enabled support for reading and parsing EDID data from an attach=
ed
>  	  monitor.
>  =

> +config DRIVER_VIDEO_MIPI_DBI
> +	bool
> +
>  config DRIVER_VIDEO_BACKLIGHT
>  	bool "Add backlight support"
>  	help
> diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> index 7f4429278987..a7b70d82072a 100644
> --- a/drivers/video/Makefile
> +++ b/drivers/video/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_VIDEO_VPL) +=3D vpl.o
>  obj-$(CONFIG_DRIVER_VIDEO_MTL017) +=3D mtl017.o
>  obj-$(CONFIG_DRIVER_VIDEO_TC358767) +=3D tc358767.o
>  obj-$(CONFIG_DRIVER_VIDEO_SIMPLE_PANEL) +=3D simple-panel.o
> +obj-$(CONFIG_DRIVER_VIDEO_MIPI_DBI) +=3D mipi_dbi.o
>  =

>  obj-$(CONFIG_DRIVER_VIDEO_ATMEL) +=3D atmel_lcdfb.o atmel_lcdfb_core.o
>  obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) +=3D atmel_hlcdfb.o atmel_lcdfb_co=
re.o
> diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
> new file mode 100644
> index 000000000000..48b1110f72ab
> --- /dev/null
> +++ b/drivers/video/mipi_dbi.c
> @@ -0,0 +1,467 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * MIPI Display Bus Interface (DBI) LCD controller support
> + *
> + * Copyright 2016 Noralf Tr=F8nnes
> + */
> +
> +#define pr_fmt(fmt) "mipi-dbi: " fmt
> +
> +#include <common.h>
> +#include <linux/kernel.h>
> +#include <linux/sizes.h>
> +#include <gpiod.h>
> +#include <regulator.h>
> +#include <spi/spi.h>
> +#include <video/mipi_dbi.h>
> +
> +#include <video/vpl.h>
> +#include <video/mipi_display.h>
> +#include <video/fourcc.h>
> +
> +#define MIPI_DBI_MAX_SPI_READ_SPEED 2000000 /* 2MHz */
> +
> +#define DCS_POWER_MODE_DISPLAY			BIT(2)
> +#define DCS_POWER_MODE_DISPLAY_NORMAL_MODE	BIT(3)
> +#define DCS_POWER_MODE_SLEEP_MODE		BIT(4)
> +#define DCS_POWER_MODE_PARTIAL_MODE		BIT(5)
> +#define DCS_POWER_MODE_IDLE_MODE		BIT(6)
> +#define DCS_POWER_MODE_RESERVED_MASK		(BIT(0) | BIT(1) | BIT(7))
> +
> +LIST_HEAD(mipi_dbi_list);
> +EXPORT_SYMBOL(mipi_dbi_list);
> +
> +/**
> + * DOC: overview
> + *
> + * This library provides helpers for MIPI Display Bus Interface (DBI)
> + * compatible display controllers.
> + *
> + * Many controllers for tiny lcd displays are MIPI compliant and can use=
 this
> + * library. If a controller uses registers 0x2A and 0x2B to set the area=
 to
> + * update and uses register 0x2C to write to frame memory, it is most li=
kely
> + * MIPI compliant.
> + *
> + * Only MIPI Type 1 displays are supported since a full frame memory is =
needed.
> + *
> + * There are 3 MIPI DBI implementation types:
> + *
> + * A. Motorola 6800 type parallel bus
> + *
> + * B. Intel 8080 type parallel bus
> + *
> + * C. SPI type with 3 options:
> + *
> + *    1. 9-bit with the Data/Command signal as the ninth bit
> + *    2. Same as above except it's sent as 16 bits
> + *    3. 8-bit with the Data/Command signal as a separate D/CX pin
> + *
> + * Currently barebox mipi_dbi only supports Type C option 3 with
> + * mipi_dbi_spi_init().
> + */
> +
> +#define MIPI_DBI_DEBUG_COMMAND(cmd, data, len) \
> +({ \
> +	if (!len) \
> +		pr_debug("cmd=3D%02x\n", cmd); \
> +	else if (len <=3D 32) \
> +		pr_debug("cmd=3D%02x, par=3D%*ph\n", cmd, (int)len, data);\
> +	else \
> +		pr_debug("cmd=3D%02x, len=3D%zu\n", cmd, len); \
> +})
> +
> +static const u8 mipi_dbi_dcs_read_commands[] =3D {
> +	MIPI_DCS_GET_DISPLAY_ID,
> +	MIPI_DCS_GET_RED_CHANNEL,
> +	MIPI_DCS_GET_GREEN_CHANNEL,
> +	MIPI_DCS_GET_BLUE_CHANNEL,
> +	MIPI_DCS_GET_DISPLAY_STATUS,
> +	MIPI_DCS_GET_POWER_MODE,
> +	MIPI_DCS_GET_ADDRESS_MODE,
> +	MIPI_DCS_GET_PIXEL_FORMAT,
> +	MIPI_DCS_GET_DISPLAY_MODE,
> +	MIPI_DCS_GET_SIGNAL_MODE,
> +	MIPI_DCS_GET_DIAGNOSTIC_RESULT,
> +	MIPI_DCS_READ_MEMORY_START,
> +	MIPI_DCS_READ_MEMORY_CONTINUE,
> +	MIPI_DCS_GET_SCANLINE,
> +	MIPI_DCS_GET_DISPLAY_BRIGHTNESS,
> +	MIPI_DCS_GET_CONTROL_DISPLAY,
> +	MIPI_DCS_GET_POWER_SAVE,
> +	MIPI_DCS_GET_CABC_MIN_BRIGHTNESS,
> +	MIPI_DCS_READ_DDB_START,
> +	MIPI_DCS_READ_DDB_CONTINUE,
> +	0, /* sentinel */
> +};
> +
> +bool mipi_dbi_command_is_read(struct mipi_dbi *dbi, u8 cmd)
> +{
> +	unsigned int i;
> +
> +	if (!dbi->read_commands)
> +		return false;
> +
> +	for (i =3D 0; i < 0xff; i++) {
> +		if (!dbi->read_commands[i])
> +			return false;
> +		if (cmd =3D=3D dbi->read_commands[i])
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +int mipi_dbi_command_read_len(int cmd)
> +{
> +	switch (cmd) {
> +	case MIPI_DCS_READ_MEMORY_START:
> +	case MIPI_DCS_READ_MEMORY_CONTINUE:
> +		return 2;
> +	case MIPI_DCS_GET_DISPLAY_ID:
> +		return 3;
> +	case MIPI_DCS_GET_DISPLAY_STATUS:
> +		return 4;
> +	default:
> +		return 1;
> +	}
> +}
> +
> +/**
> + * mipi_dbi_command_read - MIPI DCS read command
> + * @dbi: MIPI DBI structure
> + * @cmd: Command
> + * @val: Value read
> + *
> + * Send MIPI DCS read command to the controller.
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +int mipi_dbi_command_read(struct mipi_dbi *dbi, u8 cmd, u8 *val)
> +{
> +	if (!dbi->read_commands)
> +		return -EACCES;
> +
> +	if (!mipi_dbi_command_is_read(dbi, cmd))
> +		return -EINVAL;
> +
> +	return mipi_dbi_command_buf(dbi, cmd, val, 1);
> +}
> +EXPORT_SYMBOL(mipi_dbi_command_read);
> +
> +/**
> + * mipi_dbi_command_buf - MIPI DCS command with parameter(s) in an array
> + * @dbi: MIPI DBI structure
> + * @cmd: Command
> + * @data: Parameter buffer
> + * @len: Buffer length
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +int mipi_dbi_command_buf(struct mipi_dbi *dbi, u8 cmd, u8 *data, size_t =
len)
> +{
> +	u8 *cmdbuf;
> +	int ret;
> +
> +	/* SPI requires dma-safe buffers */
> +	cmdbuf =3D kmemdup(&cmd, 1, GFP_KERNEL);
> +	if (!cmdbuf)
> +		return -ENOMEM;
> +
> +	ret =3D dbi->command(dbi, cmdbuf, data, len);
> +
> +	kfree(cmdbuf);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(mipi_dbi_command_buf);
> +
> +/* This should only be used by mipi_dbi_command() */
> +int mipi_dbi_command_stackbuf(struct mipi_dbi *dbi, u8 cmd, const u8 *da=
ta,
> +			      size_t len)
> +{
> +	u8 *buf;
> +	int ret;
> +
> +	buf =3D kmemdup(data, len, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	ret =3D mipi_dbi_command_buf(dbi, cmd, buf, len);
> +
> +	kfree(buf);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(mipi_dbi_command_stackbuf);
> +
> +/**
> + * mipi_dbi_hw_reset - Hardware reset of controller
> + * @dbi: MIPI DBI structure
> + *
> + * Reset controller if the &mipi_dbi->reset gpio is set.
> + */
> +void mipi_dbi_hw_reset(struct mipi_dbi *dbi)
> +{
> +	if (!gpio_is_valid(dbi->reset))
> +		return;
> +
> +	gpiod_set_value(dbi->reset, 0);
> +	udelay(20);
> +	gpiod_set_value(dbi->reset, 1);
> +	mdelay(120);
> +}
> +EXPORT_SYMBOL(mipi_dbi_hw_reset);
> +
> +/**
> + * mipi_dbi_display_is_on - Check if display is on
> + * @dbi: MIPI DBI structure
> + *
> + * This function checks the Power Mode register (if readable) to see if
> + * display output is turned on. This can be used to see if the bootloader
> + * has already turned on the display avoiding flicker when the pipeline =
is
> + * enabled.
> + *
> + * Returns:
> + * true if the display can be verified to be on, false otherwise.
> + */
> +bool mipi_dbi_display_is_on(struct mipi_dbi *dbi)
> +{
> +	u8 val;
> +
> +	if (mipi_dbi_command_read(dbi, MIPI_DCS_GET_POWER_MODE, &val))
> +		return false;
> +
> +	val &=3D ~DCS_POWER_MODE_RESERVED_MASK;
> +
> +	/* The poweron/reset value is 08h DCS_POWER_MODE_DISPLAY_NORMAL_MODE */
> +	if (val !=3D (DCS_POWER_MODE_DISPLAY |
> +	    DCS_POWER_MODE_DISPLAY_NORMAL_MODE | DCS_POWER_MODE_SLEEP_MODE))
> +		return false;
> +
> +	pr_debug("Display is ON\n");
> +
> +	return true;
> +}
> +EXPORT_SYMBOL(mipi_dbi_display_is_on);
> +
> +#if IS_ENABLED(CONFIG_SPI)
> +
> +/**
> + * mipi_dbi_spi_cmd_max_speed - get the maximum SPI bus speed
> + * @spi: SPI device
> + * @len: The transfer buffer length.
> + *
> + * Many controllers have a max speed of 10MHz, but can be pushed way bey=
ond
> + * that. Increase reliability by running pixel data at max speed and the=
 rest
> + * at 10MHz, preventing transfer glitches from messing up the init setti=
ngs.
> + */
> +u32 mipi_dbi_spi_cmd_max_speed(struct spi_device *spi, size_t len)
> +{
> +	if (len > 64)
> +		return 0; /* use default */
> +
> +	return min_t(u32, 10000000, spi->max_speed_hz);
> +}
> +EXPORT_SYMBOL(mipi_dbi_spi_cmd_max_speed);
> +
> +static bool mipi_dbi_machine_little_endian(void)
> +{
> +#if defined(__LITTLE_ENDIAN)
> +	return true;
> +#else
> +	return false;
> +#endif
> +}
> +
> +/* MIPI DBI Type C Option 3 */
> +
> +static int mipi_dbi_typec3_command_read(struct mipi_dbi *dbi, u8 *cmd,
> +					u8 *data, size_t len)
> +{
> +	struct spi_device *spi =3D dbi->spi;
> +	u32 speed_hz =3D min_t(u32, MIPI_DBI_MAX_SPI_READ_SPEED,
> +			     spi->max_speed_hz / 2);
> +	struct spi_transfer tr[2] =3D {
> +		{
> +			.speed_hz =3D speed_hz,
> +			.tx_buf =3D cmd,
> +			.len =3D 1,
> +		}, {
> +			.speed_hz =3D speed_hz,
> +			.len =3D len,
> +		},
> +	};
> +	struct spi_message m;
> +	u8 *buf;
> +	int ret;
> +
> +	if (!len)
> +		return -EINVAL;
> +
> +	/*
> +	 * Support non-standard 24-bit and 32-bit Nokia read commands which
> +	 * start with a dummy clock, so we need to read an extra byte.
> +	 */
> +	if (*cmd =3D=3D MIPI_DCS_GET_DISPLAY_ID ||
> +	    *cmd =3D=3D MIPI_DCS_GET_DISPLAY_STATUS) {
> +		if (!(len =3D=3D 3 || len =3D=3D 4))
> +			return -EINVAL;
> +
> +		tr[1].len =3D len + 1;
> +	}
> +
> +	buf =3D kmalloc(tr[1].len, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	tr[1].rx_buf =3D buf;
> +	gpiod_set_value(dbi->dc, 0);
> +
> +	spi_message_init_with_transfers(&m, tr, ARRAY_SIZE(tr));
> +	ret =3D spi_sync(spi, &m);
> +	if (ret)
> +		goto err_free;
> +
> +	if (tr[1].len =3D=3D len) {
> +		memcpy(data, buf, len);
> +	} else {
> +		unsigned int i;
> +
> +		for (i =3D 0; i < len; i++)
> +			data[i] =3D (buf[i] << 1) | (buf[i + 1] >> 7);
> +	}
> +
> +	MIPI_DBI_DEBUG_COMMAND(*cmd, data, len);
> +
> +err_free:
> +	kfree(buf);
> +
> +	return ret;
> +}
> +
> +static int mipi_dbi_typec3_command(struct mipi_dbi *dbi, u8 *cmd,
> +				   u8 *par, size_t num)
> +{
> +	struct spi_device *spi =3D dbi->spi;
> +	unsigned int bpw =3D 8;
> +	u32 speed_hz;
> +	int ret;
> +
> +	if (mipi_dbi_command_is_read(dbi, *cmd))
> +		return mipi_dbi_typec3_command_read(dbi, cmd, par, num);
> +
> +	MIPI_DBI_DEBUG_COMMAND(*cmd, par, num);
> +
> +	gpiod_set_value(dbi->dc, 0);
> +	speed_hz =3D mipi_dbi_spi_cmd_max_speed(spi, 1);
> +	ret =3D mipi_dbi_spi_transfer(spi, speed_hz, 8, cmd, 1);
> +	if (ret || !num)
> +		return ret;
> +
> +	if (*cmd =3D=3D MIPI_DCS_WRITE_MEMORY_START && !dbi->swap_bytes)
> +		bpw =3D 16;
> +
> +	gpiod_set_value(dbi->dc, 1);
> +	speed_hz =3D mipi_dbi_spi_cmd_max_speed(spi, num);
> +
> +	return mipi_dbi_spi_transfer(spi, speed_hz, bpw, par, num);
> +}
> +
> +/**
> + * mipi_dbi_spi_init - Initialize MIPI DBI SPI interface
> + * @spi: SPI device
> + * @dbi: MIPI DBI structure to initialize
> + * @dc: D/C gpio
> + *
> + * This function sets &mipi_dbi->command, enables &mipi_dbi->read_comman=
ds for the
> + * usual read commands. It should be followed by a call to mipi_dbi_dev_=
init() or
> + * a driver-specific init.
> + *
> + * Type C Option 3 interface is assumed, Type C Option 1 is not yet supp=
orted,
> + * because barebox has no generic way yet to require a 9-bit SPI transfer
> + *
> + * If the SPI master driver doesn't support the necessary bits per word,
> + * the following transformation is used:
> + *
> + * - 9-bit: reorder buffer as 9x 8-bit words, padded with no-op command.
> + * - 16-bit: if big endian send as 8-bit, if little endian swap bytes
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +int mipi_dbi_spi_init(struct spi_device *spi, struct mipi_dbi *dbi,
> +		      int dc)
> +{
> +	struct device_d *dev =3D &spi->dev;
> +
> +	dbi->spi =3D spi;
> +	dbi->read_commands =3D mipi_dbi_dcs_read_commands;
> +
> +	if (!gpio_is_valid(dc)) {
> +		dev_dbg(dev, "MIPI DBI Type-C 1 unsupported\n");
> +		return -ENOSYS;
> +	}
> +
> +	dbi->command =3D mipi_dbi_typec3_command;
> +	dbi->dc =3D dc;
> +	// TODO: can we just force 16 bit?
> +	if (mipi_dbi_machine_little_endian() && spi->bits_per_word !=3D 16)
> +		dbi->swap_bytes =3D true;
> +
> +	dev_dbg(dev, "SPI speed: %uMHz\n", spi->max_speed_hz / 1000000);
> +
> +	list_add(&dbi->list, &mipi_dbi_list);
> +	return 0;
> +}
> +EXPORT_SYMBOL(mipi_dbi_spi_init);
> +
> +/**
> + * mipi_dbi_spi_transfer - SPI transfer helper
> + * @spi: SPI device
> + * @speed_hz: Override speed (optional)
> + * @bpw: Bits per word
> + * @buf: Buffer to transfer
> + * @len: Buffer length
> + *
> + * This SPI transfer helper breaks up the transfer of @buf into chunks w=
hich
> + * the SPI controller driver can handle.
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +int mipi_dbi_spi_transfer(struct spi_device *spi, u32 speed_hz,
> +			  u8 bpw, const void *buf, size_t len)
> +{
> +	size_t max_chunk =3D spi_max_transfer_size(spi);
> +	struct spi_transfer tr =3D {
> +		.bits_per_word =3D bpw,
> +		.speed_hz =3D speed_hz,
> +	};
> +	struct spi_message m;
> +	size_t chunk;
> +	int ret;
> +
> +	spi_message_init_with_transfers(&m, &tr, 1);
> +
> +	while (len) {
> +		chunk =3D min(len, max_chunk);
> +
> +		tr.tx_buf =3D buf;
> +		tr.len =3D chunk;
> +		buf +=3D chunk;
> +		len -=3D chunk;
> +
> +		ret =3D spi_sync(spi, &m);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(mipi_dbi_spi_transfer);
> +
> +#endif /* CONFIG_SPI */
> +
> +MODULE_LICENSE("GPL");
> diff --git a/include/spi/spi.h b/include/spi/spi.h
> index c5ad6bd39ff9..d133e0e21265 100644
> --- a/include/spi/spi.h
> +++ b/include/spi/spi.h
> @@ -409,6 +409,26 @@ spi_message_add_tail(struct spi_transfer *t, struct =
spi_message *m)
>  	list_add_tail(&t->transfer_list, &m->transfers);
>  }
>  =

> +/**
> + * spi_message_init_with_transfers - Initialize spi_message and append t=
ransfers
> + * @m: spi_message to be initialized
> + * @xfers: An array of spi transfers
> + * @num_xfers: Number of items in the xfer array
> + *
> + * This function initializes the given spi_message and adds each spi_tra=
nsfer in
> + * the given array to the message.
> + */
> +static inline void
> +spi_message_init_with_transfers(struct spi_message *m,
> +struct spi_transfer *xfers, unsigned int num_xfers)
> +{
> +	unsigned int i;
> +
> +	spi_message_init(m);
> +	for (i =3D 0; i < num_xfers; ++i)
> +		spi_message_add_tail(&xfers[i], m);
> +}
> +
>  static inline void
>  spi_transfer_del(struct spi_transfer *t)
>  {
> -- =

> 2.30.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

Best regards
Thorsten

--
Thorsten Scherer | Eckelmann AG | www.eckelmann.de |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


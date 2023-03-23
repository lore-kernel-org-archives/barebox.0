Delivery-date: Thu, 23 Mar 2023 14:44:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfLEi-00BxKs-4s
	for lore@lore.pengutronix.de; Thu, 23 Mar 2023 14:44:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfLEh-0001K2-Od
	for lore@pengutronix.de; Thu, 23 Mar 2023 14:44:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lH9Y2dt42uiRJqz1a5+ogHrtMvOi5pyr4sd4KBluFxc=; b=p+3wjP9Mbt22Bc
	T5SaQQcvVs9GU0zAwohF74YXpH1zWiPA9HcoRNS1Yvgeuj69yLO4vYyfEAyIy9GOCV5leatott5K+
	kVK8sFJjazzFkuLVCIlRI+GjjFPvEjk0nhqiAWVGwAQcXdwUB0Hpux/KKRAtPuc7zh0ZTIoMtkQg0
	Q8F75VdnGHqCV8SNqXRYFUEETMwCg5F8FX/ktY8t3EEa+cjtaypK6hf73IVASbRWI+szfHl6HHPff
	Wz0tkM2ag99rqF5bpXjA36RGJIpihmKCS7s39P6NjMK23B2yBho+EsETS45Sbl5XBmCkCdiJtct4T
	SvRLYatWYlsk/RJcNU5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfLDR-00249T-20;
	Thu, 23 Mar 2023 13:42:53 +0000
Received: from mail-vi1eur05on20714.outbound.protection.outlook.com ([2a01:111:f400:7d00::714] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfLDO-002494-2D
	for barebox@lists.infradead.org;
	Thu, 23 Mar 2023 13:42:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B8SZ31f4feH/GM5p95OLTkvBHsR/F7zICGul57VCPAnItiXPA+BuKeGGUk2N08CupOGb13B04UgjzVOKRdhW0+E+XdRnkbwSdxlNd2KSTcJL++t9DMMbfTTLRXCvRsn6izqIoyoc+aZkCHYT4EftZCjKGLkgn5qjey/wQEIrz6kYAK6GCu7yEs84syFIFKLoroPU57FGtbxSjMgxstcJ2bCejed7KAKdxALChzA1mqQLYHEwh36srErJkc/njDpOLHN71GaamQvhhqqGJ0G6K0ouuxewYAzR6YLdJN5P1FfXwQdXbUxQQbOPdhvDz9rANKp1tisxXch8LuioNGPorw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lH9Y2dt42uiRJqz1a5+ogHrtMvOi5pyr4sd4KBluFxc=;
 b=lLPPpJSOtR0cEEfj8F6CpqQyye2dMueYdpWGpWzxOeeoJ0C6VFJs8RGOU84VrnnspNgJYAqAiRPLs9ScpEZqIiGmrIANHnzZ+cxfWLG9NWfd4fIVSS9l/k/0+INdEnDqZ1Fn0V9U6c8+eScCB62+tnXFMmSK5GwBryThIdqu2Fg1NwcXQjFF3npSsMaUmFyq8mQiemoDZxvP6DADuBNhpesWd0EMMOyIxYWDywlt8x1pJfqocq09z4km3t9L8d1KqS3kF8HUEeAp0evazOasp6bbr2kEUtGhYy8QiaecxBj/L1ZQF/SDmaOXTKxmeITSkl0zj+rm6ewNpvFNamIbIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ife-doors.com; dmarc=pass action=none
 header.from=ife-doors.com; dkim=pass header.d=ife-doors.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ife-doors.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lH9Y2dt42uiRJqz1a5+ogHrtMvOi5pyr4sd4KBluFxc=;
 b=xDjEi9QoMo9PgrFfS9JSUi34fKncov7JtalwElBDPvb0gjwDp0lZ8iS4XVSkfZrhtet+nFWVwLmj2RCdh28t5BL3Ok1RUdFDlnUOkePg40uNA+0Of9aBhU0vlZv7sVy4TvvJpW8DiYXy35grLqRV+JfRbGcPZmr6oO3x7MedTm6Mb9BCETBfrv8BiD1C7o/nYkllQvFZEx7LeGCrFgESbxXPTVENlqTLeutGYAR1XgFAWPPnRIXpQsALxL8xt1+kGFpzKy/IJwdUfkg39VQPvWIw3vgcm2oQfvIXQEqnzjs6EuFsHRLIR1D7l9OXizc72mpIpHKtoLv7uB+NaWlajw==
Received: from AM6PR04MB4728.eurprd04.prod.outlook.com (2603:10a6:20b:10::24)
 by DB8PR04MB7065.eurprd04.prod.outlook.com (2603:10a6:10:127::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Thu, 23 Mar
 2023 13:42:46 +0000
Received: from AM6PR04MB4728.eurprd04.prod.outlook.com
 ([fe80::b413:e502:3fbd:ea34]) by AM6PR04MB4728.eurprd04.prod.outlook.com
 ([fe80::b413:e502:3fbd:ea34%7]) with mapi id 15.20.6178.037; Thu, 23 Mar 2023
 13:42:46 +0000
From: "Schoyswohl, Roland" <Roland.Schoyswohl@ife-doors.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] mmc: fix calculation of Max Enhanced Area
Thread-Index: AdldjU72b2SJ8tv9QAqOvNy4T+tR2A==
Date: Thu, 23 Mar 2023 13:42:46 +0000
Message-ID:  <AM6PR04MB472829B69D627CA15218927EA2879@AM6PR04MB4728.eurprd04.prod.outlook.com>
Accept-Language: de-DE, de-AT, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ife-doors.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR04MB4728:EE_|DB8PR04MB7065:EE_
x-ms-office365-filtering-correlation-id: 0607a2fa-4c4d-4d9e-ea7a-08db2ba47c5b
x-kbdisclaimer-set: True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  AVDC+nEnKHs9QzIA+i3lAI24RfqP+kLc4H5r/m3MaPWkK58jJhstVx4U+Mde5cI2+B1u009UKHSna7YZ+AWkhtvC6shg7FCHYVYjmA4qr9uovQwKzSiSRSq86YJ/lF3oWsbtPfx3z4wM/DlKrUuuaHE4KyBhSRT5XeQ+1muFbB29qfNbto5ZTJlC5lvayKsfqAg7Si/qJO/Vdhnn22QvzrwC8VycIxm9NMzlEsWwLPudovGC3hJiE684jB1+SBxKOpn6q+AE5UxRpLnYk398Eni+NKTkPZ+dQpN1X3dAa7bI5vECD3wC+cTp4U4w6FBSlV5eGZ6Nc1+waiTXmlVrDOIvO3dy+3FHHekT9G5fOZ9lCE8qtMe7xsKLWWla5Xv240iU/Ibd0RgKemFH3z3PRCpIFFKPnMBDkTE9gOuu6zmjukhN95XMcCiCEOmkN2pHs8jPROA4Zh+b9nUHPO/WCKHwvAABF/btWXAztgE98bGqV+h4py9gxVEtppDSnD0WPEGa6PPWso2uwd+Qr5MHnsKUsKx/aLIbrXsnkfXZ9ebDXezFBgQ/62XVRN+lEM+msC8uWa6BskoG6+e9BlDUxtbQ0dgJClePyeBTdCYClZiKSnHUrZMXuHT7qGmLxCx/z8rfotHE82i/fuf3PHnrhbOFM25txXMvzuR4rYo83ToEza5UoA7smh+JLuLeXAnmLrwZOyaGf1J7azfVpcqEww==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4728.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(396003)(346002)(136003)(376002)(39860400002)(451199018)(55016003)(38070700005)(38100700002)(2906002)(83380400001)(478600001)(71200400001)(7696005)(9686003)(186003)(86362001)(33656002)(316002)(64756008)(8676002)(66556008)(66946007)(66446008)(66476007)(6916009)(76116006)(52536014)(8936002)(26005)(6506007)(122000001)(5660300002)(41300700001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?hY2Vx1noHG0wH25ZjWfbUnA6lEQAT2cxZ8Hr0bi8L1JbMLpBYLlL7zH6IJ3b?=
 =?us-ascii?Q?tifakA+1MqRCd1II+c0y60k7ALa6lWG9IB3MYFlrzgyth+HizeT9SiwGq7jE?=
 =?us-ascii?Q?vWYej/PSBsgA+t0afTOOB8o3baHJuww8EuADEdBvvPKHTuWwnhyYsyWU5Y+B?=
 =?us-ascii?Q?s6XWpp1/qSRYHEJmkGcqLg6BZ/v5JvvPUtb2K1/1wX6qQzzNs8DeZSRTBXKp?=
 =?us-ascii?Q?wulO+4yKDpFTMFRrMm+qorzD9jFjggVCE+SnbTNaNebTHgkiQHu7vEdMp30t?=
 =?us-ascii?Q?quDcC8sm3d+G6BkeW828Ng75POphsRuCAJAFmR8zwyIcYUt5tAP5I5VO2DYh?=
 =?us-ascii?Q?EqCd9dC8n0Nqy4JvMyJ8EE8bddopTDBJQKbpyXi74biH4j8bqUSXRNCEXfzm?=
 =?us-ascii?Q?C7X0yW1VT5DiclBS2RlK88cm2rGG4k0BEgyPemsYbKb8v5mFFmAl2HHiZEFs?=
 =?us-ascii?Q?RkcYqYjDd7IrZp2r+klYpNbLgZFKZHhXJObBJY09TEVeCkRKrfPuHKOjWoUW?=
 =?us-ascii?Q?zp4oCriZs2LjvZre/vewZhWGQ2ELWCT8x58A4LkjqqH7hI0auPIWgLMdYqgD?=
 =?us-ascii?Q?w1N32zAXBnJlMF2yu7+1EHQCNvyJ9JxZFWwykJUTM//a7UKOZI6V0kEkpTiA?=
 =?us-ascii?Q?F6yGXZAbnSfu2fdESCl03mjnBcgQ5QJjvC/58lqX2ciThH+d6wMvBH4lV2en?=
 =?us-ascii?Q?40oR1Q34FCuGmbqaU4IB4ngSa6i/W8yGqRY6N10RhIjCI4k+n+hEeseydUyu?=
 =?us-ascii?Q?ghTIkKByUB5a/Ph4Yn4bWU2zKn/PPJF4n/MO4YIM9o82LXNc2K3jWauKSDxu?=
 =?us-ascii?Q?2FBDKXRPqXBAhEIEka9CKuCwUcLfDuqBdBdxbeKWQ5SEi7UYnrJJzvaXrev0?=
 =?us-ascii?Q?miaCtfhX1DEZRo0Wq7oW7hGs7T3Fr/cl+SpT9q+nYhyO4m9zKFWuLW8EAChi?=
 =?us-ascii?Q?wAZm/X7MiLyA4rX16xTpIJHAhj1P8wxe9wTVGm+rN+TvK2bDQ8GuL6mtko82?=
 =?us-ascii?Q?tamfElkmy9R7oPmRwoH7Ir3ZrSE2HnkPs52jxqIRKp1mIdG4hlbywe+n0zrR?=
 =?us-ascii?Q?OvCqonjTzt6nKapXZuwaSgTYX7hSAVXsjY8C6Tza+TlQ0h2YHLS/pTpIETKT?=
 =?us-ascii?Q?J0V4nSIl/Y5gC2eDkh17jOWv0Buy+yP6ZAhLHYR8qKHe2ci7Y29o2HYciBiQ?=
 =?us-ascii?Q?UJE7SYWop6ZZ9XxvuyV9eKR/5IdNXKgTMxWSVIMPmWdMGOOawoolj0sZ1pvF?=
 =?us-ascii?Q?uf5YbMxchnWnlJ1tYOhqG9esRaoi6zSob5Q2lxu/sZm9XvEYoHe7IAsCQRp8?=
 =?us-ascii?Q?NU6VKg66TKx66te21MA80aKPbxws7J6/iaiYQ0HwwVUKwGcKffPGOQsmvCED?=
 =?us-ascii?Q?bNMQc1p9eqiFaGP30qJE4/mAFU5KKcWZzcpM/Qw0NKENuarpSTWCobzjcXBB?=
 =?us-ascii?Q?vr+0m4CEkhCQt1uFAQH1Fzx5tVM4M9nHVRdsL83Rh9kl+1DrOzNhYgLZdK4g?=
 =?us-ascii?Q?FvULpQjctEx6ATCDREjhx7/asiUlrcwyEg7K6nOhuLEUdqwJ4cY/IecqWg26?=
 =?us-ascii?Q?uSdhb4RV+CL6nggNqN9Yfm7SsCnLkCyFY7o3DJhf1GWOLPrwpV0iHaBeXrw4?=
 =?us-ascii?Q?y5XwUENr+7hwfppPD4B+f/g=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ife-doors.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4728.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0607a2fa-4c4d-4d9e-ea7a-08db2ba47c5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2023 13:42:46.3774
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66f6821e-0a30-4a06-8b8b-901bbfd2bc60
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hJtHN4cCrxUvyRi7d4x13kAdx1FRrHKgPEBOfSTKQP9jieJ5LwhZPgF177XJZoO2xIKsbjXMkfEDFvKruGjDJp0I5ABgAX0HUXt+oDL4hms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_064250_750523_F0E9C4FE 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mmc: fix calculation of Max Enhanced Area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

According extcsd documentation, the HC_ERASE_GRP_SIZE must be multiplied by
HC_ERASE_GRP_SIZE and not added.

Signed-off-by: Roland Schoyswohl roland.schoyswohl@ife-doors.com
---
commands/mmc_extcsd.c | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index 7ae068348d..f67c48404a 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -1427,7 +1427,7 @@ static int print_field(u8 *reg, int index)

            case EXT_CSD_MAX_ENH_SIZE_MULT:
                       tmp =3D get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xF=
F);
-                      tmp =3D tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZ=
E, 0, 0xFF);
+                      tmp =3D tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZ=
E, 0, 0xFF);
                       tmp64 *=3D tmp;
                       tmp64 *=3D SZ_512K;
                       printf("\tMax Enhanced Area: %llu B\n", tmp64);
--
2.25.1


Knorr-Bremse GmbH
FN 38565p, LG Wr. Neustadt

This transmission is intended solely for the addressee and contains confide=
ntial information.
If you are not the intended recipient, please immediately inform the sender=
 and delete the message and any attachments from your system.
Furthermore, please do not copy the message or disclose the contents to any=
one unless agreed otherwise. To the extent permitted by law we shall in no =
way be liable for any damages, whatever their nature, arising out of transm=
ission failures, viruses, external influence, delays and the like.



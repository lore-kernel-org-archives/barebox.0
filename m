Delivery-date: Sat, 17 Sep 2022 14:07:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZWbY-007fkh-0I
	for lore@lore.pengutronix.de; Sat, 17 Sep 2022 14:07:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZWbW-0001ay-Fy
	for lore@pengutronix.de; Sat, 17 Sep 2022 14:07:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WrbZM896nuW2bMUPEP24QqDmPvWIkxOsUWY5VSWSWCU=; b=HZN5wMj4u5KALgpp6fPvWV/ESx
	iV0aOTKv2aOjtwAaBJAlaGOTWBnTleG0zJ1yjPdSuDOr/f+6iJaHGexfyBuoG6tAySjOSd+s98l34
	xjJmxfK39PtGrfJ5gytiKEWRWeCGvXObcmLyl8TeBi2LB07dnuLrwCFwQSL/chevgDGMANTzj9lTZ
	BQtnFpG7Vhc1KD4rNs3NaJ/h5VeYT5QZtQWs3OPrzd0K8g16eAMa4uvKmzqoDvhZIbL7bRuUOCmUN
	SRFm6RdniYhH8W/v6/8Zqqbui9/yF8a++f2+ZzExcmc4GiPYlfWYDuu0sMM7q4BWFGwqakf7VbpJY
	vOKCLC1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZWZH-005fpT-LP; Sat, 17 Sep 2022 12:05:07 +0000
Received: from esa1.hc776-43.c3s2.iphmx.com ([216.71.156.243])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZWZA-005flE-CE
	for barebox@lists.infradead.org; Sat, 17 Sep 2022 12:05:03 +0000
X-IronPort-RemoteIP: 104.47.9.58
X-IronPort-MID: 2367494
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-ve1eur03lp2058.outbound.protection.outlook.com (HELO EUR03-VE1-obe.outbound.protection.outlook.com) ([104.47.9.58])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 17 Sep 2022 14:04:53 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oIykGc47bWS5fLNJdhhhYRV+VH8dAUoAP1K8sxSiK2JN74BW19Aost0jjG2DvqAUBkH3Y7dZnqEAus5p9U3eG2ItpSQ+AKYfwKpN+ZDFNr5gWfsuDaLKzPmMnVKnI+X3gJ1JgXmNm9e7n8a9dqi4KWu6NStyeexJWm1q27iKr42u3TE9nMyGE8yehr1PqY0IiKcpSnWJXI+UwLZ7ejIppxxCau31Don7SWAuWh2rBxyqQ7I6ohBtcJmL6ax4c2ogSBzeVIexNu8IWxvZZLGDeWRY+PCPSv0ulM19pdJQzMRIg2mBooBy2MPstZTOYrZy0IivSfc+d9WEKOIpo3i2Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WrbZM896nuW2bMUPEP24QqDmPvWIkxOsUWY5VSWSWCU=;
 b=j+en9d2e/1gjEtUX0lGv+2QETPWGqaocY96JAwRmbWexTVZZm824SD7vdzNxRpo396uPZrj2Ujnp+uMzrJa062eEiZ+h4VvCcjvgiiVbdJ2fMhKsI5jMLMQMBSboAKlrHgLHEZBLT1ddR+z2yLLmJrmJUih3wbJVPeTD15mMVzj9VdIiqRN8IHlABGy7DWkeelnZtC9XlmnzwdQOkV4EYZVmuFqLbTKdDsVETI4/Flv1ZNMgtVhKd8dt5K+mVsYCe9D54oAvUXk9SNAXGgyw7+xIIk8ccF6VPO+UnmfNOSCtHILLIdtdSmJjJdQ50KltLP0Z/P1jPENXim0ZQMw7lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=datarespons.no; dmarc=pass action=none
 header.from=datarespons.no; dkim=pass header.d=datarespons.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WrbZM896nuW2bMUPEP24QqDmPvWIkxOsUWY5VSWSWCU=;
 b=lKlr6jZNmOig6IcaABerdab5jJuoSHHp+/U6SdVOJzbGKL0cmCzZ8jwDn3r/OvcjJBlnzPGUk9EnIbkADc9ni+JEEE17r5siwiLPKgq4+y0l7cpQ1i9zJRq7x0uD0TJBLDLjflYFWPQizvPK9Cu4GMiG88f433TpJqVut1Ujcwo=
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com (2603:10a6:20b:8::23)
 by PA4PR03MB7485.eurprd03.prod.outlook.com (2603:10a6:102:108::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.17; Sat, 17 Sep
 2022 12:04:51 +0000
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::9da7:a2e1:3d79:55b7]) by AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::9da7:a2e1:3d79:55b7%3]) with mapi id 15.20.5632.018; Sat, 17 Sep 2022
 12:04:51 +0000
From: =?utf-8?B?SGFucyBDaHJpc3RpYW4gTMO4bnN0YWQ=?= <hcl@datarespons.no>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Imx-usb-loader broken on IMX8MP/v2022.09.0
Thread-Index: AQHYyo2wD9hQC7Ib6kGnR6FeXabuoA==
Date: Sat, 17 Sep 2022 12:04:51 +0000
Message-ID: <8CA6ADB4-FD4B-4CC8-9BD2-21DA02C08C85@datarespons.no>
Accept-Language: nb-NO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.120.41.1.1)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB4165:EE_|PA4PR03MB7485:EE_
x-ms-office365-filtering-correlation-id: 1f4fa00a-00a4-4770-88b2-08da98a4d336
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  cNPIQXtyCim41EpJyo2Ax8yAb1i8HykXQZ2zFTOtwUNXViAnVfQfzGAQanA9xmofdqN4FXmDTPQe/lwZyI4JuBRvb+LYyMBKxp8Ku8frhzCrKuY4EjJ4lfku0PadEYXMrJKYCj0ghxxP9CbExFZCViCeineQx0/j9LsWmI74U+0fRGEx0+HcYmUntW534GobNuN0F2F5oEgDce8EE/t2EtzkWAsNVHB2vGqqSzFGOdY7tKV8l20t2vZTJvLi1RmP9M88/LlYA0KTd+xg7LpJp+9ZsO6T2jGc+fArOfpqofIYjKhCTibIk9mFuQa3JUUHbSyzhQuAL0F6qtcZD8IIQWyYDl74Y81cI198O1C08IqeHkMmNkbNXtpBU8CblC9TWu55/76Nw01uDhBZM9ciUZSQ8BmFWqbAGaG3+DafK5J+R7BoiTMrEr1Hz/Ub9N3utHhnYQDH5h6zI7Qc72oq/tSmycu1w3ISYntjWVFmQOGSelXELz5q+vHhkCaRmruz9B/8G7/6A0DyqzwierJLevxkem7HbfyYx9YUUAH/2VA8+XNrSwjk8vq3H1UeRnURqu/g3OzpEWPl9KJW1zcAXsGntfbH9owzs4LFxBn955pC1Ekj91J7wKr+kRiGPM6trTjJthPELFZqwaytcdtGn5zSLoEalerM6gDB9X0soqC27P0syd+56NLUlyr03lqwDbN4YpXu70eZWY+y+KsBW4XkHKMjX+jnOdtCsLF+DURwexEGU13+B95mi+BNsUaNxL8bjvuXWH9KSrCLqrpB5UjPcv3+Fmzxr6K/Pbkcd4DfM0FTLwLxqkUvQ1lNapNViUf7F1HqH6rHnxbrmbONFg==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB4165.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(376002)(39840400004)(396003)(366004)(136003)(451199015)(2616005)(83380400001)(6512007)(186003)(6916009)(33656002)(41300700001)(85202003)(122000001)(38070700005)(8936002)(5660300002)(38100700002)(6486002)(6506007)(2906002)(478600001)(66446008)(71200400001)(64756008)(66946007)(85182001)(4744005)(8676002)(86362001)(66476007)(66556008)(76116006)(36756003)(91956017)(316002)(32563001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?SzNNclNQSXBTVGZ2VXArY2p1R1RVSjNYL1hXWExrdzk2bGk3QlNUUUV2c2My?=
 =?utf-8?B?SVVaTjFEVzdwWXMyNmhPdjlSdTBnaUJKVHJMbXE2SkV5eXlkN2c3NW8vSXNQ?=
 =?utf-8?B?azI4N2piTktKRkJaUllIblVJNGxYT3pjdi9aYk13ekV5NEVjaG0rR2ZPaCsr?=
 =?utf-8?B?RlE3N1EyaElZZ0FkM3RZNTRJeUFsUFBtcktYdlRYeVRVaGp1TlBsa2dBZ2ZE?=
 =?utf-8?B?NVE4azRkNjJiOXQ4S3RDQjVRQ0gwbWJzbU5VTEQ0cDhRN1FiVTZKOExHRzhn?=
 =?utf-8?B?cVNhWVJHUHBXQ1F2YlgvMjA1MURoUTZrWHFsQ0dMZXpPQ0YvVnFubGRjSUVF?=
 =?utf-8?B?SHlOMDZEbmd0TzlOWlBwNnlmV0RsZUV2L2IvWm1FUWwyZVlBNVRBMlpKMG9R?=
 =?utf-8?B?NUJHU3JSN1Qxd0hDTTMwblFxVURZUDVWdlJ3KzhhUEM5cks4b0F1Szc4NGpJ?=
 =?utf-8?B?MXFDa3hOeVVDRm03OU83bU1ja0k5RTc0N2lPNWo3ODNYYTRqWTlHRnBQai8x?=
 =?utf-8?B?cFgrU2JkbWpWdVR2NzdpcjJVVDhKVWFqRVlJZUwyZllMTW5QMWJKQXFFSGhK?=
 =?utf-8?B?MHhaRXpicHlaTnZldVZNWFUwbEY5M1pzWmE3bnF5bjZLNFMrS2VaRHJIZnBO?=
 =?utf-8?B?amRpd2UxZ0h3NUlWRnRTRC9ESzMxei9PVEhPRXNxTmdCUlhROVVxTHdRTnpH?=
 =?utf-8?B?V3VlUlk4SWFWMkJ6R1c5RC9sNTJRK0lzYXNObi9tUy9qbFB6Y1hZR29hRUlX?=
 =?utf-8?B?Q1M1L2JwUTFxazYzQjU3bG5zZ1JkMXlNTXVHeWhiaFVhK2oyNFNkQWVIUnp6?=
 =?utf-8?B?akJYTXBCN01LNXlVVXhsQXkybE5CcUloNGl3Y2RwSzBTQ2pzeXBPRzRwQTJD?=
 =?utf-8?B?YnNrOUllVkk5WGFvUzVHQ21aWW5nZFdCdE1uUXVRZ203Zk9vQnBoUzBFazFa?=
 =?utf-8?B?RytWSFVDNFhjNlpuZUNUZzFEeVpaZnNucnBNUWRQcW1iS0hmQy9xN0NHbzg5?=
 =?utf-8?B?V3hGcU5ZNk0rdWpOeEJkbWt2bGRBeTdsd1VHcHpiVUhEVDlGcllVOURObnRt?=
 =?utf-8?B?WFQydTUwWkYrMFF3UHMvYXdwNGx1Y1BQNFlaaUR0bVNYcXZQTndXVlorY1VG?=
 =?utf-8?B?cXZZQVAwZlNUWnBVNlpxU25hUlZvaHFiTGlibnVlcTlkaXVrMVQ2TzZzWDNp?=
 =?utf-8?B?YmJRaVRVZW14ZWdoNGhmQ08zYjNnMGRhSU1yOFM5ZmRGM3BQVEJhQ0oySEYw?=
 =?utf-8?B?UWRXanY1bTl1a1o1TlBwNFFJSE53ejY1T1FHMTRMT05Xc3krZU5TMUIyMmUx?=
 =?utf-8?B?QzRNUzJRdjJOcUlNbXd3SkdWRVVzZ0thb3ZaNldIRWFCbmN3NzJuR1JOVlBj?=
 =?utf-8?B?cGpod2ZuVmI5RWp1TnN6NS9ab0lGWUhYYUUwVkNFWjBaODI2SzRSZk1CZFFP?=
 =?utf-8?B?aFdqNDd6NkF6akJ5aUZZV3ErRWdCQ2tIbjZYbXFNNmc4ZTk2ZzQ0K2JZbXVV?=
 =?utf-8?B?aWNlSFNxaXd5cm9kQ1lGZWVGU2h4dDlmMnJ4YjBIVWdGNzIxeFE0ODhZWklq?=
 =?utf-8?B?b0wyUkRzMTlRcmNpNW15UEhrYnh4aHNRM0ZlMDZGYVRVTm4zdXRjZ2FhTFZL?=
 =?utf-8?B?eFVacGRuZStZdEVWd2xtR3pSWS9iMFlxZXd6WVV5Y3J2UzN0WHFlVXJWKzl1?=
 =?utf-8?B?L1FMVU9ub3RiZ3hLOFIrbWIvYUxYYkF6M3lnNTVveXJMTHVINzQ4NGxycTl4?=
 =?utf-8?B?c3c1NGYxRmlvc0g0TVlpUy9rZ0dZVi9IbGd1MHo3ellkT3FncTE4WWpwWDRH?=
 =?utf-8?B?bzN1WFhBRmhIUnA3eEVhSy9sa3hWTXB3ZmtScTRJclNhY1NsMGtkRlFnQ3Ev?=
 =?utf-8?B?STJwVVJkNEhwckFFTndPYWV3L0VzclZBdU5EOVdYVFJkM2dkOVpJNjdHVVZW?=
 =?utf-8?B?UXVkTVhwSzJzVDZFclBQNS92aUhrSTVFbXFmem0zTGMzSDJaY2hBaGVHZTdQ?=
 =?utf-8?B?eVJURmpkdmVpWjl1b1N4ZWJraittSUZZNXRnWGJGcytheDZtcW0zczc1VGpQ?=
 =?utf-8?B?TmhsU1REVVRnODhQRUM3OFc1QVlPbHUvYzVHcjYwN1N1NGJCdVlTNUxRa1BE?=
 =?utf-8?B?cXBMVitVd1NCWmNQdkQ0eUVDdTlvdjh4T21LTGxod3daeFZLMTJCTDlKWWJC?=
 =?utf-8?Q?nznAjs4xcq3uGCWlsb7m0ozJyUevGMrRtXMTgvS2ikVN?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6F35406D9F50B4498549FA86FEC06DE4@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: datarespons.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB4165.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f4fa00a-00a4-4770-88b2-08da98a4d336
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2022 12:04:51.1502
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BgVEzzdxoDIJ0MO3OaZ6pDdopWiD7Uu+YOPBLNjdQdIFJFvfJbr+ew1ySqd8z1HmSCjdizpiVQI7qcqEmUjQiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR03MB7485
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_050500_949708_5FD12169 
X-CRM114-Status: UNSURE (   6.58  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Imx-usb-loader broken on IMX8MP/v2022.09.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhpcyBpcyBvYnNlcnZlZCB1c2luZyBzdHJhaWdodCBvdXQgb2YgdGhlIGJveCB2MjAyMi4wOS4w
IG9uIE5YUCBJTVg4TVAgRXZhbCBraXQ6DQoNCi0tLS0tLS0tLQ0KDQokIHN1ZG8gLi4vZHJpbXg4
L3NjcmlwdHMvaW14L2lteC11c2ItbG9hZGVyIC4uL2RyaW14OC9pbWFnZXMvYmFyZWJveC1ueHAt
aW14OG1wLWV2ay5pbWcgDQpbc3Vkb10gcGFzc3dvcmQgZm9yIGhjbDogDQpmb3VuZCBpLk1YOE1Q
IFVTQiBkZXZpY2UgWzFmYzk6MDE0Nl0NCjQgaW4gZXJyPS05LCBsYXN0X3RyYW5zPTAgIDAwIDAw
IDAwIDAwDQpzdGF0dXMgZmFpbGVkDQoNCuKAlOKAlOKAlOKAlA0KDQpTdHJpcHBpbmcgb2ZmIHRo
ZSBoZWFkZXIgZ2FwICgzMkspIGFsbG93cyB0aGUgYmluYXJ5IHRvIGxvYWQgdXNpbmcgdGhlIHN0
YW5kYXJkIE5YUCB1dXUgKFVidW50dSAyMi4wNCkgdXRpbGl0eSwuDQoNClRoaXMgZnVydGhlciBy
YWlzZXMgdGhlIHF1ZXN0aW9uOiBXaHkgaGF2ZSBhIGhlYWRlciBnYXAgYXQgYWxsPw0KDQpUaGUg
bWFrZXMgc2Vuc2UgZm9yIFNEIGNhcmQgbG9hZGluZywgYnV0IG5vdCBmb3IgZU1NQyBib290IHBh
cnRpdGlvbnMgd2hlcmUgUk9NIGV4cGVjdHMgY29kZSB0byBzdGFydCBhdCAwLg0KTWF5YmUgYmV0
dGVyIGp1c3QgdXNlIGEgc2VlayB0byBwdXQgdGhlIGNvZGUgYXQgdGhlIHJlbGV2YW50IHBvc2l0
aW9uIG9uIHRoZSBTRCBjYXJkPw0KDQpGb3IgaW5zdGFuY2UsIEkgYW0gdXNpbmcgdGhlIFJhdWMg
Ym9vdCBsb2FkZXIgc2xvdCB1cGRhdGUgbWVjaGFuaXNtIGV4cGVjdGluZyBubyBnYXAgdGh1cyAg
cmVxdWlyaW5nIG1lIHRvIHNoYXZlIG9mIDMyaw0KcHJpb3IgdG8gc2hpcHBpbmcuDQoNCkNvbW1l
bnRzPz8NCg0KSGFucyBDaHJpc3RpYW4NCg0K



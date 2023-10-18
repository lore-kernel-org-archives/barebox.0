Delivery-date: Wed, 18 Oct 2023 13:30:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt4lI-00CvbV-Gw
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 13:30:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt4lH-0000Vg-70
	for lore@pengutronix.de; Wed, 18 Oct 2023 13:30:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=91POtsSsnnwmcJVYHiqCfE5uMSV5AhZSKjzz/A2rNC8=; b=K4sVB+cL+nA+khQe4Po2vufVY2
	42Y0TNtFctzneYlcYKSQWIIAmTXmYHZ0Yc4niKuSxrtDcIaN+783MlaRZOtiG+T1/kdKFwfaFbDAV
	BKktZcZthYZyXVXGUdjCzU39AfA1WjbSHn++5KbFl+LdoLobri6F2F8JQf85BFLSWuz0JxdBEs5oR
	fposg3dnnIlv1+AOu5iYPk7ixUNe082FVSl52VHeny3q4ep9xXFCcOVdg/zOwr3aSq4k8590eeYym
	JzqZdsWcZ/7y6q+XAHkz7SnVgn8UeCN1rwlw/7SsjbLj/WzYJ3a9F7b8aBMft6HAYXJJRh9T4l/pr
	L8uieteA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt4js-00EYH8-1i;
	Wed, 18 Oct 2023 11:29:24 +0000
Received: from esa2.hc776-43.c3s2.iphmx.com ([216.71.158.83])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt4jn-00EYFo-1O
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 11:29:22 +0000
X-CSE-ConnectionGUID: MTaz6tPZQTmuix+XMNT8pg==
X-CSE-MsgGUID: iD6wcjgiTQu+d46mo9BLFw==
X-IronPort-RemoteIP: 104.47.17.104
X-IronPort-MID: 2954265
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-db8eur05lp2104.outbound.protection.outlook.com (HELO EUR05-DB8-obe.outbound.protection.outlook.com) ([104.47.17.104])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Oct 2023 13:29:14 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dXHI2eJBo+Ms4HLz2oxnDo89CsTcwIZat1bTTrFB9pi6xB9Y5kZJQm+l/zFtM4l6BzzXqvtr8uugEWItjHWJ9jPTEykHseGMXnvbLVsRdw1cTBGkSzc7VL7aSOxYOLOgQznQMUFz/+iWUQga9B/WirVqS/boayovyk86FDh0XeU4TNzTvKcY3EO6l4KdrpAFbKGXFSqtLhfVxdmKnohNzffEHIcBuZMISswwxtKXq9OnFbppVvXrwKkXl6grCAgBQpqGl57OifUadlhLm2ICOGngqXSQdXzxD3z2aouDzm+nRfCrBmi3DoIRtrSXObr1XzLdYbHoHAYqLAqAWM8ljQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=91POtsSsnnwmcJVYHiqCfE5uMSV5AhZSKjzz/A2rNC8=;
 b=awFG5zsjDm5xi8k8MLWgXwVxwvEmEg9cDxvDjU5Slkeq1K64R4fhnm42wgXGyYjdnO2UpAF2Z20fIED0uhdYdmrIu5VLF8xfR890GujfsqX+i05R6QzEOXYu43kt5O4ofe1Iw7o9aTtUNad+srbvdeGn1+vIqPDcmEqYjwDMeztbJgFfZ1ZfFWvCKHmvOOexGFB1qQigYsKFocRbVixTeJFfxcwyeEHvHsAO5x66pMEZ4bI9b2Be4jSKPOqA+ddpmg8/eeUQtoDvfaXJKsLAWIKd/6Y9Kuz1yPwgxDR/mKceg5Fm7CVjtpl4i1kIiu6t6mp2oOtj9912ivXvlK8qKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=datarespons.no; dmarc=pass action=none
 header.from=datarespons.no; dkim=pass header.d=datarespons.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=91POtsSsnnwmcJVYHiqCfE5uMSV5AhZSKjzz/A2rNC8=;
 b=StUpIKQ3+SqcIE2+JHBrnZGlmaUXFTVfX5uR/AWO6w3RDZYovLoi05RSuHG5uyltKDmLi8ceEq2gQz0SHQ8fuTCiuBdUeD3OsOOPZNXeSQ/wDZw/po/aXwHdFdEd2Qd65u+VAZxl/D1gE/uTgsUua9Ph0tB+1msLs4vY9QuwhTg=
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com (2603:10a6:20b:8::23)
 by GV1PR03MB8432.eurprd03.prod.outlook.com (2603:10a6:150:5b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Wed, 18 Oct
 2023 11:29:10 +0000
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::35ab:41b8:3c63:8982]) by AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::35ab:41b8:3c63:8982%4]) with mapi id 15.20.6886.034; Wed, 18 Oct 2023
 11:29:09 +0000
From: =?utf-8?B?SGFucyBDaHJpc3RpYW4gTMO4bnN0YWQ=?= <hcl@datarespons.no>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: IMX8M and Optee support
Thread-Index: AQHaAZquCCRtS0xfVUiOONoVMdKA3bBPQZ8AgAAnvoA=
Date: Wed, 18 Oct 2023 11:29:09 +0000
Message-ID: <99FA6255-7807-4790-BA19-5BE02346DBF7@datarespons.no>
References: <EE0A8E0F-465F-46D1-A366-676E9047EA0C@datarespons.no>
 <52fa194d-441c-8827-00ac-49db2cd72661@pengutronix.de>
In-Reply-To: <52fa194d-441c-8827-00ac-49db2cd72661@pengutronix.de>
Accept-Language: nb-NO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB4165:EE_|GV1PR03MB8432:EE_
x-ms-office365-filtering-correlation-id: aaa059f0-57e4-49aa-3730-08dbcfcd7272
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fD+ZuAh72R88av9adbOFjMd2aSFnH7wov8OhQUUX7RAcYzVXAqfOMhlsT+IxAD5+umaq/weISAOGhnsGuBJat2hopCRuWJZzP7h7ve4bqIKqZ/I/ygh9p/ffTEJOpZgvkKw6vQo+6lSmkMVJHcFzrW6KMIvsOzt5vYc6kT2F0fKfCKXQnqE/h9yNae3GTHLU9J5IbOX/9ubH9pvMcYQrFpn4a5G2EO3f8vY3uVKN15Dt4CC2qAUkoH45uGYHlZHowIIl9lm0qpcHe6T9a6jSo6/pkB8JIi5PPVeuUj5JvoDcqPh0WAI6S9ZHm8KR3Bs5G0ApxiNQlsaVQi6IXqoMKUqrogFeRTzWTwXxEA0yOZDAb5neiWAGlGrpYrVpILvPNMtIgC5uPC0f9EmU5nK6aeDVt+7TI82hlN5bKRjYVrDwUxGIKlhbMBF8f4Fh4IepbGIc+EslgVtzP6ToY22JlA33Gp+QavX4F90aqbKJUMlU38f8OJFmoMir493ER4/8XtspozC3YHm8T3uY+wqGhf89bpZ2MAs98+3AGXsWN3/iCl51nQY+GwiOI6B6VFZqdFu+k5TtpjIYR6ThgyKyVsDFpa8Yd/6dqbSyDMhMwFeEQ76L43oWFCs1+EuxzuWnP/elFRUUCX51aJfTPII6xIG0D55jwUO8JHKIcjIuV0w=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB4165.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39850400004)(136003)(346002)(376002)(396003)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(71200400001)(6486002)(966005)(478600001)(76116006)(66946007)(66476007)(6916009)(85202003)(64756008)(66556008)(316002)(91956017)(66446008)(122000001)(38100700002)(41300700001)(85182001)(36756003)(2906002)(8676002)(33656002)(4326008)(38070700005)(86362001)(8936002)(5660300002)(6512007)(2616005)(26005)(53546011)(83380400001)(6506007)(66574015)(32563001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tm56WkZ4UjZxN2pSYTZPcWxlUGxNZnI3WU14azhKZ2h1T1VDeitnYjB2YTBz?=
 =?utf-8?B?UGFRSFF3MUJ3OUZoYlhQS0JSRjVsYVR0RXpua283bTNCN0lHbW94dDJEbEwv?=
 =?utf-8?B?NWlXUkxFRFU3cHZQeEJGLy92V0pjWGFsQVptK3JBQ3g1anRDUmlRNjdWdHl4?=
 =?utf-8?B?VlI3bndpQ1F1S3o0RVBmUEpxcDZuZFE0VGozTW1LUEExTXRGSmJKSW1pZ2Iy?=
 =?utf-8?B?OFZPSHM3enUwUndXU0pGdmdiQkNiUjMyblZ6K1Zpd1QxaGhlQ0JxQnViTWJB?=
 =?utf-8?B?eDVEZW1rby90QVgvbmtZNHQ5YmY1ZDZJZlNhWW84UUVMeG9wVTlHcWlIQjZE?=
 =?utf-8?B?QUVlbnc2NW5KZktuanlVVkVoSHpyQXhhdW9yb0NwVFB6aGlnVFYzU21ZenFi?=
 =?utf-8?B?anBBbDQ1eGQ5YWNiUkw3MVQwUUt4TFJ2bURGbWJOL2RncVVaVVNaVG9hWGpN?=
 =?utf-8?B?TEwxSUZwR0svY1EzYUZ1MWhYL09sRnNYcmNHNkQrRXBXNmcvSFlVNjBrOGh5?=
 =?utf-8?B?UDE4MEVSZEJ0bnVmNmw3NXh4b3ZaTW5OT1diM1RoWGNpcEVBaG5RRVI3RWxZ?=
 =?utf-8?B?Vk9Xd3hacXY0Qi9IOGdacDNEZmtiRUhKajIxNmNqQWNOTnpNQ0xRZktaTDgy?=
 =?utf-8?B?eXQzWmhRY0VyTEZ2TmlsR0d6K3J3YnlWdmk2ZEJBVVRuZ1BUcnRjNVA0cGRa?=
 =?utf-8?B?K3pDUGl5SXFIaHQ4VlhpUTk5NGVFT2VQTTRTTk9YV0tpcW1zNFpXWjEzamVy?=
 =?utf-8?B?am1ZOGplNTBMZ0llbVJXbFNFYXpEN2pwKy9qYU1KZGNzZElWaU5lbDhtQjVl?=
 =?utf-8?B?T09WL0V3VFVUZWpCdGlDY0RkcTZiUWJHOUM1Rzc2QzB4RzVlUjJ5VCtLS0xL?=
 =?utf-8?B?aDZPYW1rN1ZZNWxia25ybWc0WUdHRXVnUFVDMnJDSlJCbDhxU3JSYm53c2dO?=
 =?utf-8?B?ZjQ1UWl0MlFSdzN6anNKcEhWaVg2SnJCV2t1dm1VN0xWRUVkLzh2Wk54M3p4?=
 =?utf-8?B?RXkxdW1oNU1pV0QyNkhoUzJXK3hNQ3VIanJsY0U0Q0hKMVZ0Zzk4Z29sbWkv?=
 =?utf-8?B?Y2tsQXpSc05kWXluRkE4ZjRCcmxhR1VlUkU2SjN3RWFqN3F1SUZEb0M0bUl1?=
 =?utf-8?B?TGU3TGtTQ2Jxa0twcnFudkphLzk3S0xwWGN4T21Yc2hqaEljNExGVWlYUU1r?=
 =?utf-8?B?Z21RbTZkZnBTM3F2YWRlQjFqUmpUbUxSK3ZPbzhpeXRwY2dLbWVyWGpwTHhL?=
 =?utf-8?B?MGErSXlQM29LZVUxZmRCWUFaT0k2OUdkYU5OY3RRMjM0Q0RNSFR0aXlFZjhH?=
 =?utf-8?B?UmpjSWtUenpWT1NRdzJZZXNwWG1GZDBWRkxFQ0tmdFhEVWQ2RzVDSHliL2oy?=
 =?utf-8?B?RjhnMTNNV0ZMT3d5WlpOT1VjTjZ6L3FDRWRVRXMvMjUxb1pCcFAwKzdiTUV4?=
 =?utf-8?B?a1NnMVJMTGV5eW5XNVVUNi9lQWRUSUJtSW1FbUgyeVU2cWg5ZHRqOFZQaHdH?=
 =?utf-8?B?ckdCaXlJYmVwUXRMNVkyL2grQUJrU0VPQ3l6K2FmTkVhVnBoc3puNTBiZTNy?=
 =?utf-8?B?Si93MGF6MFEwbmJLUFZlWjdMTnphcHZBNG0zNHQ3dU5nZjJybWRNNFYrNzRJ?=
 =?utf-8?B?Rk1JeTNXNCtpWXJYc1RON2E0SCtWblowWk5FdnRNdUJQcXdpV2xkWTgzOUdh?=
 =?utf-8?B?RVdTQnJObSs2YWozZ0Yvb2xzTkowdERRQ2dySEp0VXYzcmFpUDAvMnJlWmJB?=
 =?utf-8?B?OG1yRDYyQTAzS0hsZDZHT1QxQnBjSlZ4bWRZcVJ3K3VKbi9iZzFHdUtWcTJh?=
 =?utf-8?B?VjFCREQ5Wm1HUHNvWC8zenltc0t5OFAyWlVJTml2UWF1SHpxNHIrajhHdGcv?=
 =?utf-8?B?QVQrMHp3SFNmUUFVT2hJU3NKMDVkcUYyRXlCTFpwa1ViSG12ZnB5dEVDOHdr?=
 =?utf-8?B?ZXdJczUxZzdoT21HMUVnUVlVWnJEMk1Zb3NkdjdPaDZKRll3UlE5T1FRTWxG?=
 =?utf-8?B?TmJyY2pYKzMrRmFHN2duU0grRitRZit5Q0lrNCtPT2RMeXFWbi80ck90ZUZt?=
 =?utf-8?B?b0xZaXVkMEpDb3hYOS9UdExjOHlzSEVyL1lJQUQwaHBYeENXSW9udXB6Wkdk?=
 =?utf-8?Q?lOkjNeSErabUvp/wcPSLSCW/0?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C8F76DFCA81C354E8F0ECEE35F345B26@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: JzI+W3ikR5UD77gQr1KwtFFvk/WR+3NGmcwxWArdsd7jJNjT3fGaGctqQR5gHwWBnXuHZs+VMUwUKcLXqSQ68OzkjWPfIavAPEaJCsVbcJTm2O8HlQVe0SUVBMjAWSWke9iua5StIZbWlyFlVAyHI2LVwCqO36//NKa2hMCOmYtuxqteHSPm7ZLXZhzveO9L1rJG7kqKZzE29JVxlsDtwiZVO64PM95jhoTrCjFIxbP13UWAJuI7KfzIC2N9YTr33FrukytkML4aSYSyEBgsOEJNmglkZt7tAkqIQ7e0Rbvirtn5jj0E2FUtsS2Un0ib/xOoNRnXf0Dk0oceSfUsFbHoqkWXow81znnN7t04tbtzuhxMsXQTAChC538a2W4zskb1kQqqyblOPYHu0MIWQZEcaGXADASm1dR0RILj8EVCB6dGnpCfvTv3MD0YGx+PVsJYzkDwUdj3qhpgMPOYoI9YVGSIA3wjeYmn/k9dBQ03S/B2UjpIrq27XGF+P+6yBqbkyneXCkWTN2c4Pcdv80ya/fwXq3ZgzsBqxybgmztMBvJF2ek+h+D6BDjWAEyfaOBAKxFR2LW6/eNCwCwUi/s09L7bCf+6XIXbDOMo2yP+bjCRA92/bSo8e88R/H7rc8zc5LpZHcQAb8Ibllhi05cnZylYtw6iCUD1q6preIyIxLITRFBR7sE8EkvUpbQN7eveAylawxM4QwQqzx68DDgT2N07oaHwmGY0L9fRH0Gp++XFkT4x2NcDqVMdIJRnN6DqyHr99HDhvRW3ecwTQpYG1o6tSJyc+DnIGfPq1lBCo65SKvzfxGpNE8Uj3undsvS9g0wsU1IAAvya5zzguNRJyXKF2f8cfFYNW+XLEXQ7itH7Izy94MGV4pOwWwJL
X-OriginatorOrg: datarespons.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB4165.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aaa059f0-57e4-49aa-3730-08dbcfcd7272
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 11:29:09.7884
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yYSRYE/Uw4cMOL5nyTCp5mv8lNWYRIk+S07DgJaqEHYsgXnybnUnt4JNWlfAUDdDkaF0EhI/Klh+RNJURgg9Iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR03MB8432
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_042920_568093_DE89E409 
X-CRM114-Status: GOOD (  21.75  )
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

V2UgaGF2ZSBhIDJHQiBJTVg4TVAgc3lzdGVtIHVzaW5nIDMyTUIgT1BURUVFX1NJWkUsIHNvIGV4
cGVjdCB0byBmaW5kIE9wdGVlIGJsb2IgYXQgMHhCRTAwMDAwMC4NCg0KQVRGIGNvbXBpbGVkIHdp
dGg6DQptYWtlIFBMQVQ9aW14OG1wIEJMMzJfQkFTRT0weEJFMDAwMDAwIElNWF9CT09UX1VBUlRf
QkFTRT0weDMwODkwMDAwIFNQRD1vcHRlZWQgREVCVUc9MSAtag0KDQpPcHRlZSBjb21waWxlZCB3
aXRoOg0KDQpDRkdfRERSX1NJWkUgPz0gVUwoMHg4MDAwMDAwMCkNCkNGR19VQVJUX0JBU0UgPz0g
VUFSVDJfQkFTRQ0KQ0ZHX1RaRFJBTV9TVEFSVCA/PSAweEJFMDAwMDAwDQp1bmRlZmluZSBDRkdf
TlNfRU5UUllfQUREUg0KDQpCYXJlYm94IGNvbXBpbGVkIHdpdGg6DQpDT05GSUdfSEFWRV9PUFRF
RT15IENPTkZJR19PUFRFRV9TSVpFPTB4MDIwMDAwMDAgIyBDT05GSUdfQk9PVE1fT1BURUUgaXMg
bm90IHNldCBDT05GSUdfUEJMX09QVEVFPXkgQ09ORklHX0ZJUk1XQVJFX0lNWDhNUF9PUFRFRT15
IA0KDQpUaGlzIHByb2R1Y2VzIHRoZSBmb2xsb3dpbmcgb24gYm9vdDoNCuKAlOKAlOKAlOKAlOKA
lOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlD48LS0tLS0tLS0tLS0tLS0NCg0K
VWFydCBpbml0aWFsaXplZA0KUnVuIGxldmVsIDMNCkluaXQgcG93ZXINCkluaXQgRERSDQpIYW5k
b3ZlciB0byBBVEYNCmlteDhtcF9sb2FkX2FuZF9zdGFydF9pbWFnZV92aWFfdGZhOiBFeHBlY3Qg
T1BURUUgYXQgMHhiZTAwMDAwMA0KQ0ggZTJhNzE3NTE1MWZlM2U4NDIxMTY5OTBlNjJjODY0MzM0
ZTFiYjAzMGNhMTQ2Yjc0OWQ4ZTZiMGMwMjQ4MTM1Nw0KSUggZTJhNzE3NTE1MWZlM2U4NDIxMTY5
OTBlNjJjODY0MzM0ZTFiYjAzMGNhMTQ2Yjc0OWQ4ZTZiMGMwMjQ4MTM1Nw0KICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5P
VElDRTogIERvIG5vdCByZWxlYXNlIEpSMCB0byBOUyBhcyBpdCBjYW4gYmUgdXNlZCBieSBIQUIN
Ck5PVElDRTogIEJMMzE6IHYyLjgoZGVidWcpOmxmLTYuMS4zNi0yLjEuMC0wLWcxYTNiZWVhYjYt
ZGlydHkNCk5PVElDRTogIEJMMzE6IEJ1aWx0IDogMTM6MTQ6MDksIE9jdCAxOCAyMDIzDQpJTkZP
OiAgICBHSUN2MyB3aXRoIGxlZ2FjeSBzdXBwb3J0IGRldGVjdGVkLg0KSU5GTzogICAgQVJNIEdJ
Q3YzIGRyaXZlciBpbml0aWFsaXplZCBpbiBFTDMNCklORk86ICAgIE1heGltdW0gU1BJIElOVElE
IHN1cHBvcnRlZDogMTkxDQpJTkZPOiAgICBCTDMxOiBJbml0aWFsaXppbmcgcnVudGltZSBzZXJ2
aWNlcw0KSU5GTzogICAgYmwzMV9wbGF0X2dldF9uZXh0X2ltYWdlX2VwX2luZm86IHdhbnQgaW1h
Z2UgMA0KSU5GTzogICAgYmwzMV9wbGF0X2dldF9uZXh0X2ltYWdlX2VwX2luZm86IGJsMzIgUEMg
aXMgMHhiZTAwMDAwMA0KSU5GTzogICAgQkwzMTogY29ydGV4X2E1MzogQ1BVIHdvcmthcm91bmQg
Zm9yIDg1NTg3MyB3YXMgYXBwbGllZA0KV0FSTklORzogQkwzMTogY29ydGV4X2E1MzogQ1BVIHdv
cmthcm91bmQgZm9yIDE1MzA5MjQgd2FzIG1pc3NpbmchDQpJTkZPOiAgICBCTDMxOiBJbml0aWFs
aXppbmcgQkwzMg0KSU5GTzogICAgYmwzMV9wbGF0X2dldF9uZXh0X2ltYWdlX2VwX2luZm86IHdh
bnQgaW1hZ2UgMA0KSU5GTzogICAgYmwzMV9wbGF0X2dldF9uZXh0X2ltYWdlX2VwX2luZm86IGJs
MzIgUEMgaXMgMHhiZTAwMDAwMA0KSU5GTzogICAgb3B0ZWVkX2luaXQ6IDE3NiAtIGNhbGxpbmcg
PG9wdGVlZF9zeW5jaHJvbm91c19zcF9lbnRyeT4NCklORk86ICAgIG9wdGVlZF9zeW5jaHJvbm91
c19zcF9lbnRyeTogNzkgLSBjYWxsaW5nIDxvcHRlZWRfZW50ZXJfc3A+DQoNCuKAlOKAlOKAlOKA
lOKAlOKAlOKAlOKAlD484oCU4oCU4oCU4oCUDQoNCknCtG0gbm90IHN1cmUgd2h5IGl0IGFza3Mg
Zm9yIHRoZSBzYW1lIGltYWdlIHR3aWNlIGFuZCBpZiB0aGlzIGltcGxpZXMgYW55dGhpbmcg4oCm
DQoNCkhhbnMNCg0KPiAxOC4gb2t0LiAyMDIzIGtsLiAxMTowNiBza3JldiBBaG1hZCBGYXRvdW0g
PGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPjoNCj4gDQo+IEhlbGxvIEhhbnMsDQo+IA0KPiBPbiAx
OC4xMC4yMyAxMDoxMSwgSGFucyBDaHJpc3RpYW4gTMO4bnN0YWQgd3JvdGU6DQo+PiBKdXN0IHJl
YWNoaW5nIG91dCB0byBhc2sgd2hldGhlciBhbnlvbmUgaGFzIHN1Y2Nlc3NmdWxseSBpbnRlZ3Jh
dGVkIE9wdGVlIG9uIHRoZSBJTVg4TShQKSBwbGF0Zm9ybS4NCj4+IE91ciB0cmlhbHMgcmVzdWx0
cyBpbiBhIGNyYXNoIHdoZW4gdGhlIEFURiAoTlhQIDIuOCkgZG9lcyB0aGUgaGFuZG92ZXIgdG8g
T3B0ZWUgKGV4aXQgRUwzKS4NCj4+IA0KPj4gSW4gQVRGIGl0IGFwcGVhcnMgdGhhdCBCTDMyIGlz
IGV4cGVjdGVkIHRvIGxvYWQgYXQgMHg1NjAwMDAwMCBvbiBJTVg4TVAgd2hpbGUgQmFyZWJveCBh
Y3R1YWxseSBsb2Fkcw0KPj4gVGhlIE9wdGVlIGJpbiBibG9iIGp1c3QgYmVsb3cgdG9wIG9mIG1l
bW9yeS4NCj4+IChQYXRjaGluZyBCYXJlYm94IHRvIHRoZSBleHBlY3RlZCBBVEYgQkwzMl9CQVNF
IGRvZXMgbm90IHJlc29sdmUgdGhlIGlzc3VlKQ0KPj4gDQo+PiBBbnkgaGVscCB3b3VsZCBiZSBh
cHByZWNpYXRlZA0KPiANCj4gSSBhbSB1c2luZyBPUC1URUUgaW4gYW4gaS5NWDhNTiBwcm9qZWN0
IHN1Y2Nlc3NmdWxseS4gVGhlIGhhcmRjb2Rpbmcgb2YgYWRkcmVzc2VzDQo+IGlzIGluZGVlZCB1
bmZvcnR1bmF0ZSBhbmQgaXQgbmVlZHMgbWFudWFsIGFkanVzdG1lbnQgZGVwZW5kaW5nIG9uIHRo
ZSBzaXplDQo+IG9mIGF2YWlsYWJsZSBSQU0uDQo+IA0KPiBUaGUgY29tbW9uIGNvbmZpZ3VyYXRp
b24gaXMgdG8gcmVzZXJ2ZSBzZWN1cmUgbWVtb3J5IGF0IHRoZSBlbmQgb2YgRFJBTSBhcyBub3QN
Cj4gdG8gc3BsaXQgdGhlIFJBTSBpbiBoYWxmLiBZb3Ugc2hvdWxkIHRodXMgY2hhbmdlIHRoZSBC
TDMyIGFkZHJlc3MgdXNlZCBpbiBURi1BDQo+IGluIGFsaWdubWVudCB3aXRoIGJhcmVib3ggQ09O
RklHX09QVEVFX1NJWkUsIHdoaWNoIGlzIGFsd2F5cyByZWxhdGl2ZSB0byB0aGUgZW5kDQo+IG9m
IFJBTS4NCj4gDQo+IExldCBtZSBrbm93IGhvdyBpdCBnb2VzLg0KPiANCj4gQ2hlZXJzLA0KPiBB
aG1hZA0KPiANCj4+IA0KPj4gSGFucyBDaHJpc3RpYW4gTMO4bnN0YWQNCj4+IA0KPj4gDQo+IA0K
PiAtLSANCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAg
ICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwNCj4gMzExMzcg
SGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIw
NjkxNy0wICAgIHwNCj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAg
IHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwNCj4gDQoNCg==



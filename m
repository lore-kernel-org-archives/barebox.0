Delivery-date: Mon, 26 Feb 2024 17:39:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ree0P-008LO5-1L
	for lore@lore.pengutronix.de;
	Mon, 26 Feb 2024 17:39:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ree0O-000105-I6
	for lore@pengutronix.de; Mon, 26 Feb 2024 17:39:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2jeibfIVBDBbUJ2LTrLlmGSaP+gDKhN39hXsO4Ey6Hk=; b=1gZNYI1MmdlJ4Juud1CY0QBSa1
	Sr03i+covYx7zDv0k0UEHIif3Cz+pZUYfuQwsbBe3nw4pQYb6UOh6/EfJF927ymC7cJvFf9sfnetL
	cKm3oqrzg6a9470xAb1TkzmZVgsLovV7El5MUU0oXt2N1DUHgrHrIVaesfo2GZ7fq5rNwaFlBup/r
	n0kMMEzzGh8ehyeauzFqKaeYXXOT1420Sr9h/20NVPzwYoi23NofRBgnukknSUrIA4bNgO9eLVYv6
	9EhmSGkMnf5ML9nsmsLkJCsEQSd8si3kOAIx0jJrAZ00KDStJwUGdY/tp0AlQNQbvZKRZ3IEPSkxV
	KrtNbmwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1redzm-00000001hbP-0xrk;
	Mon, 26 Feb 2024 16:38:26 +0000
Received: from mail-db3eur04on062b.outbound.protection.outlook.com ([2a01:111:f400:fe0c::62b] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1redzh-00000001hWb-3UnP
	for barebox@lists.infradead.org;
	Mon, 26 Feb 2024 16:38:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LjeS2rMPh9/+DRB1UcqoUFz+u8Wn1yERSKJlkkmogjwlwBnWwBeNps0ui1yjjKMdjfFl+QYxJayRTAUhgVd7B46NkAk4q8m9wjNdfnPvqd6dq/NBR6T4va5xRL5fwA+CLBX9M7FWT3egDn6x+PydAOmomrkcLmubgZDWLgODtTfx0HgfrO0SamWjgm7h7f5YGOkrPbn5SmTLIFGtP/DjT3eKXLoW2V1eUCYBqPoFeE7ixkOWxXc8jfQn9tl7cz6AFVKuUVVGgIgwCsD0wojZb8eXUO6/d0d8uFqylGOJg8HJKCdInb2Izs2dKKuAVNBH0b8QczJBVKcP/KBQJtqkXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2jeibfIVBDBbUJ2LTrLlmGSaP+gDKhN39hXsO4Ey6Hk=;
 b=W4XfblzrNVjCwfeBJ654Mu2R2lLVwi+ae4D6jcL6l8B0qYEQ49fFXD1+Q3fYjbVGBxgxJqdqIqss4HQjMyYvgQXrnp3uWcONf9TEuGTJ+7isB4PRHuVvh7yTQn0hcnZc9kvzrq9ys4AAnH9LlQkeRn2oXwNFd1d6XEBh2QPewK0ILPngE75pFzlRuNvsjUlPJlwH5S1KKDotglANqM1N1UyVWHhlglL/VNkj5eyZ5CzHkDEj9+aHPcygcMKuKeRceAt3o39auYmI683gIOo17/J/7X495iTkfLiXHwuNsby1RRiiAZHdZ9mPUKn4aQi1SKchKsEa5jnD6yzUsJdmXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2jeibfIVBDBbUJ2LTrLlmGSaP+gDKhN39hXsO4Ey6Hk=;
 b=SUBI5o13vJrwb03CktDWpjcuFn/9LEDWzXizB1dU8YQF2zJkNn9gzoNqdAqerIpTVK+QzBQ+wWOvG1sI81o47WLHVlVBusA73mz65CocgfW1YphZbK/pPzSgfcqT/r/dWHO10WT7n4QiyVYctXfVVEikfDiXih/QuELZt8A4qnU=
Received: from DB9PR06MB7388.eurprd06.prod.outlook.com (2603:10a6:10:23c::24)
 by AM8PR06MB7794.eurprd06.prod.outlook.com (2603:10a6:20b:365::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Mon, 26 Feb
 2024 16:38:11 +0000
Received: from DB9PR06MB7388.eurprd06.prod.outlook.com
 ([fe80::f924:dffc:865e:3cd]) by DB9PR06MB7388.eurprd06.prod.outlook.com
 ([fe80::f924:dffc:865e:3cd%4]) with mapi id 15.20.7339.023; Mon, 26 Feb 2024
 16:38:11 +0000
From: ZHIZHIKIN Andrey <andrey.zhizhikin@leica-geosystems.com>
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>, Sascha Hauer
	<s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Thread-Topic: [PATCH 1/3] arm: mach-imx: tzasc: lock id_swap_bypass bit
Thread-Index: AQHaaMHFYKs3O4eaoEWiQIWT5Y+vnLEc0oJg
Date: Mon, 26 Feb 2024 16:38:11 +0000
Message-ID: <DB9PR06MB73887450E933B09F554E0FEAA65A2@DB9PR06MB7388.eurprd06.prod.outlook.com>
References: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de>
 <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-1-2df2430da984@pengutronix.de>
In-Reply-To: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-1-2df2430da984@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR06MB7388:EE_|AM8PR06MB7794:EE_
x-ms-office365-filtering-correlation-id: c271d9e6-a8a1-401c-0de9-08dc36e95245
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QCJMPHbur1Pg5x5w5djb9vTmlMuBL3ilB/iNVnM72IvnFCVUcWXN0JIpKubd5q/ZB30da+Xu/nETQRpwpxyYFeRs8Tfu2hBRltwt/HBDC0qdUvmpvqClpDHVAY08hjMtx41ODHo/i+kHMRPB/WdDCis9i6sDeYDNsaw15ap2lvJxbQYWzGocNqWFDsBI6k9Sp6RCqqkKIfAK+L/R+RgBHLEWsJvoyEByzA85t46kGZevwAMB3tmNrJ8oSw1gbiOv57hXQYxGXwhSLg7+SiGnOnbvKiWbWwMpS2LXNkF2kPzuaxHoj3D9HQOaGVu6F8w5FYByfwvpuvFf0bZP4w9JQlOW57ccQu9CK7+w3/HGKlbrlgoTI/wlPB8sB6qPj+atlRAmFnAJetIoDctkDfULpN9PwYtFsr5AylNtMDomxAxRlmNcqUCN7Jv5vgCLW7xCWa1ezfezCLt+1qpQpfsxD2pMb7Baqki9Y2ksYVECyLa5WvY6nnS1AehZrADVGWZrpnwHM0Kznrq33umdZguEoNPZs1OCScSjyf4UaZFo7UHbKebWjbDWhD/wwGVpVY3n27yL0umcb+4n7AiJVUF6tFVkvar1irEUV8sJxjHCk8gxSFSfMQGGKRNo2YAVNeg9GtDG++cHRs1e0W0w4/nRz1Eiwt9ilG84a4iMYLd5OPzkvwmZbdQ2xSOxRPf3FW8s8QsT4zan+YCm4JVc6osbNQ05Yzk7IPX3Mx9KiMogif8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR06MB7388.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGhkSG5FVWNKbjdJOVFLSi9UWUlsVGZ6a0wxQ3dQNThsNDdPNHcxVnBkT1F2?=
 =?utf-8?B?b0F2YVZtUkttMytYZSs1cFhiK1FSWmxaQmV5ZTZ0bHFDR2NaYXdTRXgxREZ0?=
 =?utf-8?B?eDBzSkJMY213RUVuZUdSM3o2SkszbjRBaFFmYWJkR2lEaUxpTlcrRDlQQ0p3?=
 =?utf-8?B?ZGx1NGhmYjR4OHphMHd2RlFUTStwR0lzM0ROVThMS3FTb0ZOTDBrcGlzL1FH?=
 =?utf-8?B?YWJRZFZvRWw0dnoyYTBTMVFML0JZazZwZ3M1ZFY4aGg2dDgwVmxlRkxnYlZs?=
 =?utf-8?B?U1ArcXpoT3lsRURhdk5uVllSUzg3aDNERlFJZ01LMXNIOXE3WDZMZDBBTXhS?=
 =?utf-8?B?dThSQ2MzUXhVZUtBYllLVnhYK2ZoclNZWk82M3RndHl4UHhwRTBVOVd4NkxH?=
 =?utf-8?B?RTNnY1NHZG9Hd0t5RmdqT21EMkw0MWNsRFJiSkZTTHltU2ZoQ3Y0TXcxUVNu?=
 =?utf-8?B?TVNyYWU0S3hNSTA1NGcrNiswb2RPdjZZSldHTEpqNkZGK2duRFc2L0k4ZVha?=
 =?utf-8?B?MVJ2MW9OelN4cHJnNlVRTFNaR0VwZkdjUzVKeEhxS1BFU0l1MGVTU2MwY3pl?=
 =?utf-8?B?SStYNXRpMTlYRTFLQ1NmdGtuUHc4bmdQMHMzZUtTNXM0QkJpUDJOWjRLeVFS?=
 =?utf-8?B?R05PbFVleW9PWkEyMkcwbFVhZXRHbWxWOUZGNlZ4V05UYXc4dU5GZzIxT2JM?=
 =?utf-8?B?WE90ZGl1OGdUWTI1Sk1ZZ1R5UWUwTk9QL0VaSE5pcXV0cXkycFJLc1dIdU91?=
 =?utf-8?B?SEdCSkdSc2FZZDg0dEUyMjcyeUxqT1NiTldzbTlrMFRaMTc0M0VyekpsQVdv?=
 =?utf-8?B?bktjQ1Z6ZHR5azhJLzVWVEFqVldRL1F0aVZUb040QW1uQ1pyT0ZmTU1UNGdL?=
 =?utf-8?B?VmpPODJKUlVyTDhIUHp2Zmd6czZTdEYxMUJEV2tSQVRoRXcyN0JGTU5mcjlU?=
 =?utf-8?B?akp0UUlzMmtIeTFKNWw5V3BDUXE3TEhyV29ha3JUcFBqUUtXZ2NHWUJXRVlk?=
 =?utf-8?B?ajNvNE9MZEcrNmNRY3lyZ0Z2OUdkMGVIR1M5UW1IMktlMDF0c1RwRnp1UDhn?=
 =?utf-8?B?WmFHOXpjS3ZkWExlSW5PNXhYNHBsV3J1VElkajRvdGRaVUZjd3VrVWUrb2pv?=
 =?utf-8?B?QnZpVjQxM0dFR1lhSzNLZGF3OTZOUmFaa2lhR3dkUzdpYVA3c3NCa0h3T2tU?=
 =?utf-8?B?b004cGZVSEViSW5zVkFIRW8yS1QzajdTSjNiakgvaHFDNFJuRWlVeS81QUUv?=
 =?utf-8?B?M3FETjgrRHNHQlVGZGVOamhHaURDN1Z1NzFqNGpLTnFGVHAvV0E2TEttM0tS?=
 =?utf-8?B?UlRJa1dWR0l6d2lTcmJsemkrajVQaVdpckxzTFJ1MFIxQ29EY3RTRlVIV1Rx?=
 =?utf-8?B?Wnd3ZHllZUlJVnVkczU2ck53eTFUQUY0WXNzR05CS0dGS05ZWWJZdEtyblFa?=
 =?utf-8?B?YnU3SlhYRFFwK21MMkhadzNOeER0cFBVSmUzdWprZEN4MGtRc25TWVIrTDgz?=
 =?utf-8?B?OWt1Y08wZEdCV0pXMGdyQlZ5Y2tXcE40SFdPU0ppb3hZUzFOK2ZGaTFFOUNh?=
 =?utf-8?B?eE4vYnIxNGM4a3NnTUVqb04ySVhQTWhWcjIvbm9FWTk2T3dPeXBmZm82YjdU?=
 =?utf-8?B?REFXSXVNUTVFZGJhdFNPckFBMWt2bzVzTHNETjFkY2x4Z3FhQ2Exd0xUMkhn?=
 =?utf-8?B?WU4xUDh5T1VVNThYM0VhWDlST0NzdVROSU9YZVBWMFJ3azBScXVWdFRteVRj?=
 =?utf-8?B?MzdZeDhjcGlOcXhpN0NPNURoL1lPSHBTZ2tHS3ZOOThPMHNZeFc2dVNpV0NW?=
 =?utf-8?B?RTBrT0NSSjBnS2ZFS1N2TGo2RmkwZWtjUnRqQWQyMEJYeTllc21LaUR1d29i?=
 =?utf-8?B?Rk5CWlBmTjhKZk5vQXdtaVdqQ0xkc2ppQURVVG1lRlJxZUYyblk1ZTB0RzRG?=
 =?utf-8?B?ZWt1ZE4vTC9WcE1vZVJwOWVrNjZWRHlTanJyVHhNWlRLa052cW0rNCtmUGJk?=
 =?utf-8?B?bmw3ZWZWK0hjb2pjYjVHUnBUY2tFdXZTNSt3bThLeUpvTW45N0NUaExGWHgy?=
 =?utf-8?B?VDMvSUlIRUl0ekdjZ0VmSWE1Ymcwait6TW1OcUNidGl3L1Q1ckZtNmpMWHVS?=
 =?utf-8?B?M29ZUWJxRHM1QjJHcGxsSlNNUG9jaHdlT0RDQ0tWQm52eEtMT2tiWlYxdUlM?=
 =?utf-8?B?dnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR06MB7388.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c271d9e6-a8a1-401c-0de9-08dc36e95245
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2024 16:38:11.4814
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: asyvMAmprRu6Hqzdnk+XkuZm3zPqltPRIJqRsyYBaz4saXQHw2ipYf46PfFJDOND/h/CZANIZfz9lHd+cKrJLpx1M8EDgd0/mGFGCzXkMyBbiYVBK7/nHhqPep+5u6GZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR06MB7794
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_083822_021866_0728922D 
X-CRM114-Status: GOOD (  27.07  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: RE: [PATCH 1/3] arm: mach-imx: tzasc: lock id_swap_bypass bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFN0ZWZhbiBLZXJrbWFubiA8
cy5rZXJrbWFubkBwZW5ndXRyb25peC5kZT4NCj4gU2VudDogTW9uZGF5LCBGZWJydWFyeSAyNiwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+
OyBCQVJFQk9YIDxiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmc+DQo+IENjOiBTdGVmYW4gS2Vy
a21hbm4gPHMua2Vya21hbm5AcGVuZ3V0cm9uaXguZGU+OyBaSElaSElLSU4gQW5kcmV5DQo+IDxh
bmRyZXkuemhpemhpa2luQGxlaWNhLWdlb3N5c3RlbXMuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0gg
MS8zXSBhcm06IG1hY2gtaW14OiB0emFzYzogbG9jayBpZF9zd2FwX2J5cGFzcyBiaXQNCj4gDQo+
IA0KPiBUaGlzIGNvbW1pdCBwb3J0cyBVLUJvb3QgY29tbWl0IDEyODlmZjdiZDdlNCAoImlteDht
OiBsb2NrDQo+IGlkX3N3YXBfYnlwYXNzIGJpdCBpbiB0emMzODAgZW5hYmxlIikgdG8gYmFyZWJv
eC4gVGhpcyBpcyB0aGUgb3JpZ2luYWwNCj4gY29tbWl0IG1lc3NhZ2U6DQo+IA0KPiA+IEFjY29y
ZGluZyB0byBUUk0gZm9yIGkuTVg4TSBOYW5vIGFuZCBQbHVzLCBHUFIxMCByZWdpc3RlciBjb250
YWlucyBsb2NrDQo+ID4gYml0IGZvciBUWkFTQ19JRF9TV0FQX0JZUEFTUyBiaXQuIFRoaXMgYml0
IGlzIHJlcXVpcmVkIHRvIGJlIHNldCBpbg0KPiA+IG9yZGVyIHRvIGF2b2lkIEFYSSBidXMgZXJy
b3JzIHdoZW4gR1BVIGlzIGVuYWJsZWQgb24gdGhlIHBsYXRmb3JtLg0KPiA+IFRaQVNDX0lEX1NX
QVBfQllQQVNTIGJpdCBpcyBhbHJlYWQgc2V0IGZvciBhbGwgaW14OG0gYXBwbGljYWJsZQ0KPiA+
IGRlcml2YXRpdmVzLCBidXQgaXMgbWlzc2luZyBhIGxvY2sgc2V0dGluZ3MgdG8gYmUgYXBwbGll
ZC4NCj4gPg0KPiA+IFNldCB0aGUgVFpBU0NfSURfU1dBUF9CWVBBU1NfTE9DSyBiaXQgZm9yIHRo
b3NlIGRlcml2YXRpdmVzIHdoaWNoIGhhdmUNCj4gPiBpdCBpbXBsZW1lbnRlZC4NCj4gPg0KPiA+
IFNpbmNlIHdlJ3JlIGhlcmUsIHByb3ZpZGUgYWxzbyBuYW1lcyB0byBiaXRzIGZyb20gVFJNIGlu
c3RlYWQgb2YgdXNpbmcNCj4gPiBCSVQoKSBtYWNybyBpbiB0aGUgY29kZS4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEFuZHJleSBaaGl6aGlraW4gPGFuZHJleS56aGl6aGlraW5AbGVpY2EtZ2Vvc3lz
dGVtcy5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBLZXJrbWFubiA8cy5rZXJrbWFubkBw
ZW5ndXRyb25peC5kZT4NCg0KUmV2aWV3ZWQtYnk6IEFuZHJleSBaaGl6aGlraW4gPGFuZHJleS56
aGl6aGlraW5AbGVpY2EtZ2Vvc3lzdGVtcy5jb20+DQoNCj4gLS0tDQo+ICBhcmNoL2FybS9tYWNo
LWlteC90emFzYy5jIHwgNDIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1pbXgvdHphc2MuYyBiL2FyY2gvYXJt
L21hY2gtaW14L3R6YXNjLmMNCj4gaW5kZXggOWM3MTEwOGM5OS4uMWY4ZDc0MjZjMSAxMDA2NDQN
Cj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvdHphc2MuYw0KPiArKysgYi9hcmNoL2FybS9tYWNo
LWlteC90emFzYy5jDQo+IEBAIC01LDM3ICs1LDU5IEBADQo+ICAjaW5jbHVkZSA8bWFjaC9pbXgv
aW14OG0tcmVncy5oPg0KPiAgI2luY2x1ZGUgPGlvLmg+DQo+IA0KPiAtI2RlZmluZSBHUFJfVFpB
U0NfRU4gICAgICAgICAgIEJJVCgwKQ0KPiAtI2RlZmluZSBHUFJfVFpBU0NfU1dBUF9JRCAgICAg
IEJJVCgxKQ0KPiAtI2RlZmluZSBHUFJfVFpBU0NfRU5fTE9DSyAgICAgIEJJVCgxNikNCj4gKyNk
ZWZpbmUgR1BSX1RaQVNDX0VOICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBCSVQo
MCkNCj4gKyNkZWZpbmUgR1BSX1RaQVNDX0lEX1NXQVBfQllQQVNTICAgICAgICAgICAgICAgQklU
KDEpDQo+ICsjZGVmaW5lIEdQUl9UWkFTQ19FTl9MT0NLICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgQklUKDE2KQ0KPiArI2RlZmluZSBHUFJfVFpBU0NfSURfU1dBUF9CWVBBU1NfTE9DSyAg
QklUKDE3KQ0KPiANCj4gLXN0YXRpYyB2b2lkIGVuYWJsZV90emMzODAoYm9vbCBieXBhc3NfaWRf
c3dhcCkNCj4gKyNkZWZpbmUgTVg4TV9UWkFTQ19SRUdJT05fQVRUUklCVVRFU18wICAgICAgICAg
KE1YOE1fVFpBU0NfQkFTRV9BRERSICsgMHgxMDgpDQo+ICsjZGVmaW5lIE1YOE1fVFpBU0NfUkVH
SU9OX0FUVFJJQlVURVNfMF9TUCAgICAgIEdFTk1BU0soMzEsIDI4KQ0KPiArDQo+ICtzdGF0aWMg
dm9pZCBlbmFibGVfdHpjMzgwKGJvb2wgYnlwYXNzX2lkX3N3YXAsIGJvb2wgYnlwYXNzX2lkX3N3
YXBfbG9jaykNCj4gIHsNCj4gICAgICAgICB1MzIgX19pb21lbSAqZ3ByID0gSU9NRU0oTVg4TV9J
T01VWENfR1BSX0JBU0VfQUREUik7DQo+IA0KPiAgICAgICAgIC8qIEVuYWJsZSBUWkFTQyBhbmQg
bG9jayBzZXR0aW5nICovDQo+ICAgICAgICAgc2V0Yml0c19sZTMyKCZncHJbMTBdLCBHUFJfVFpB
U0NfRU4pOw0KPiAgICAgICAgIHNldGJpdHNfbGUzMigmZ3ByWzEwXSwgR1BSX1RaQVNDX0VOX0xP
Q0spOw0KPiArDQo+ICsgICAgICAgLyoNCj4gKyAgICAgICAgKiBBY2NvcmRpbmcgdG8gVFJNLCBU
WkFTQ19JRF9TV0FQX0JZUEFTUyBzaG91bGQgYmUgc2V0IGluDQo+ICsgICAgICAgICogb3JkZXIg
dG8gYXZvaWQgQVhJIEJ1cyBlcnJvcnMgd2hlbiBHUFUgaXMgaW4gdXNlDQo+ICsgICAgICAgICov
DQo+ICAgICAgICAgaWYgKGJ5cGFzc19pZF9zd2FwKQ0KPiAtICAgICAgICAgICAgICAgc2V0Yml0
c19sZTMyKCZncHJbMTBdLCBCSVQoMSkpOw0KPiArICAgICAgICAgICAgICAgc2V0Yml0c19sZTMy
KCZncHJbMTBdLCBHUFJfVFpBU0NfSURfU1dBUF9CWVBBU1MpOw0KPiArDQo+ICsgICAgICAgLyoN
Cj4gKyAgICAgICAgKiBpbXg4bW4gYW5kIGlteDhtcCBpbXBsZW1lbnRzIHRoZSBsb2NrIGJpdCBm
b3INCj4gKyAgICAgICAgKiBUWkFTQ19JRF9TV0FQX0JZUEFTUywgZW5hYmxlIGl0IHRvIGxvY2sg
c2V0dGluZ3MNCj4gKyAgICAgICAgKi8NCj4gKyAgICAgICBpZiAoYnlwYXNzX2lkX3N3YXBfbG9j
aykNCj4gKyAgICAgICAgICAgICAgIHNldGJpdHNfbGUzMigmZ3ByWzEwXSwgR1BSX1RaQVNDX0lE
X1NXQVBfQllQQVNTX0xPQ0spOw0KPiArDQo+ICAgICAgICAgLyoNCj4gICAgICAgICAgKiBzZXQg
UmVnaW9uIDAgYXR0cmlidXRlIHRvIGFsbG93IHNlY3VyZSBhbmQgbm9uLXNlY3VyZQ0KPiAgICAg
ICAgICAqIHJlYWQvd3JpdGUgcGVybWlzc2lvbi4gRm91bmQgc29tZSBtYXN0ZXJzIGxpa2UgdXNi
IGR3YzMNCj4gICAgICAgICAgKiBjb250cm9sbGVycyBjYW4ndCB3b3JrIHdpdGggc2VjdXJlIG1l
bW9yeS4NCj4gICAgICAgICAgKi8NCj4gLSAgICAgICB3cml0ZWwoMHhmMDAwMDAwMCwgTVg4TV9U
WkFTQ19CQVNFX0FERFIgKyAweDEwOCk7DQo+ICsgICAgICAgd3JpdGVsKE1YOE1fVFpBU0NfUkVH
SU9OX0FUVFJJQlVURVNfMF9TUCwNCj4gKyAgICAgICAgICAgICAgICAgIE1YOE1fVFpBU0NfUkVH
SU9OX0FUVFJJQlVURVNfMCk7DQo+ICB9DQo+IA0KPiAgdm9pZCBpbXg4bXFfdHpjMzgwX2luaXQo
dm9pZCkNCj4gIHsNCj4gLSAgICAgICBlbmFibGVfdHpjMzgwKGZhbHNlKTsNCj4gKyAgICAgICBl
bmFibGVfdHpjMzgwKGZhbHNlLCBmYWxzZSk7DQo+ICB9DQo+IA0KPiAtdm9pZCBpbXg4bW5fdHpj
MzgwX2luaXQodm9pZCkgX19hbGlhcyhpbXg4bW1fdHpjMzgwX2luaXQpOw0KPiAtdm9pZCBpbXg4
bXBfdHpjMzgwX2luaXQodm9pZCkgX19hbGlhcyhpbXg4bW1fdHpjMzgwX2luaXQpOw0KPiAgdm9p
ZCBpbXg4bW1fdHpjMzgwX2luaXQodm9pZCkNCj4gIHsNCj4gLSAgICAgICBlbmFibGVfdHpjMzgw
KHRydWUpOw0KPiArICAgICAgIGVuYWJsZV90emMzODAodHJ1ZSwgZmFsc2UpOw0KPiArfQ0KPiAr
DQo+ICt2b2lkIGlteDhtbl90emMzODBfaW5pdCh2b2lkKSBfX2FsaWFzKGlteDhtcF90emMzODBf
aW5pdCk7DQo+ICt2b2lkIGlteDhtcF90emMzODBfaW5pdCh2b2lkKQ0KPiArew0KPiArICAgICAg
IGVuYWJsZV90emMzODAodHJ1ZSwgdHJ1ZSk7DQo+ICB9DQo+IA0KPiAgYm9vbCB0emMzODBfaXNf
ZW5hYmxlZCh2b2lkKQ0KPiANCj4gLS0NCj4gMi4zOS4yDQoNCg==



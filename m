Delivery-date: Fri, 20 Mar 2026 17:47:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3d0O-0035St-34
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 17:47:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3d0O-0007xF-8I
	for lore@pengutronix.de; Fri, 20 Mar 2026 17:47:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4lTHeae0oFSq20epcOIaxDjT6h7Q6Khpb91VBp521Ao=; b=DkhMt/jmU8gQtV
	e6ElSEHWvEbPumcsTC9P5VAJdR6nhtdISbxdecvLrujYiDoGE1ZzOdndjYMly/BGFrWhbK27JVLgT
	hQvQeXJFtnSRNsVPhFqu3XKeTF1pM30mF/PBUgpGureuDuCwzA/iSDR2Q9FljM9W9VdYkUlEEyhy9
	WPr4dLA7Lbc4BX8Omr501rS8dORqyLmfoE//DNGZPNAygnVx+O1MqbjIUWcuNxZ26y/sEkfvf7sLg
	+EbjXkX8wtYF1+lLnPxySo5cU+/Ql/B0THg5mSvAQXFb4wJkrrocrtLx0ATq/URJMujUNVbkCkzr3
	ioHd3pkLnKrGnHOCwE3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3czo-0000000DBGK-3GyB;
	Fri, 20 Mar 2026 16:46:48 +0000
Received: from mail-koreacentralazolkn19011037.outbound.protection.outlook.com ([52.103.74.37] helo=SE2P216CU007.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3czl-0000000DBEX-0Xd9
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 16:46:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HoYnA5IFu3F9O4I7kn8lOgfrc0lUFvT4KUY7mptmYZqbd1/LfR4BR6Epm7NCDc670qKhGW0D+e1ai30lVdlaN8Gw1cq8FvjlxMaxF7DO173Ds7ZPCUr6VXo3hz05/6XSSOV1PxElNuavCKvNg7z0sUnmihPcO7qUI9VKbLZt4cLyr8Xgh68sqqVVtf2K1VYpYJCQSqwh7Exwq7JiJZN3oEtvZM9sXHBiqY+9YIdcobN0V/6JUjbcN+IPIMRBu5riZY4BIKWIaLd1Pi9LKwUHAbB5c0qsgE2VchKUSBqK3tFgb9HVBXdfkPL8c+mShu3goWSYqICSe7s5N2gNCIw0Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4lTHeae0oFSq20epcOIaxDjT6h7Q6Khpb91VBp521Ao=;
 b=ovhuK7cARgIByiYHK0lIe/6FaWcR2JqgSi+58oh1MyrODvz+d7v7bR917kDm+G+vx1msyIp2txAxaF2Ku514QWsNocTtFPD3finh9LLta/5V7h2ldT12qL5dWTdYtyI9lzz2R91dPsMDabC/TtZtehRVEBbpTQv8H9jWiAKtwNtBG5Tsh80lybrmk2O+9X8XnfIupBbphUQ75Oq5ALvAYnr9hA5ZyLJ/ygxmZPgGEkMFsLblDiEC9JNDgjHq/BMCyQpualuPwd57ATudqIYoQssJ3TeswhPJh/z5QtSwaI3IJeoKIZYKh5CFGoNWSHfaE7KKnI7etOJwJqpamOCnmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4lTHeae0oFSq20epcOIaxDjT6h7Q6Khpb91VBp521Ao=;
 b=No7RvjQS2nQIu4yh4wbbsnjSuhXO1NZE5LH1PI9PyDNvd+8Egl0jz7aubw6EkitstjGJrj9hLqFgiLinSMtyIxFENfxjP7rkkFGFhV0CcZ6418IaFGPC0e/aOLoV4rXfyiZVTEW/NO+nAV9IvXmJy82cuOVc8RtHwl9EbdKtmHino9KArX16TXNLMH3+sP7NlnXrB2cx/DeE+3HFy3TD82zWangOKRACYPYBtc7crmMs/2hyPUZmS5MUtS7eaz0CIQ5fpgTyRfQ7tylS1czmSqFkGiuZEprzi0QFGc7OfuPN/tWfluMH/gDR511gXB//ZBiCZYK8t7XjMaubICaLjA==
Received: from PUWP216MB2399.KORP216.PROD.OUTLOOK.COM (2603:1096:301:13d::11)
 by PUUP216MB3283.KORP216.PROD.OUTLOOK.COM (2603:1096:301:16a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.23; Fri, 20 Mar
 2026 16:46:38 +0000
Received: from PUWP216MB2399.KORP216.PROD.OUTLOOK.COM
 ([fe80::a26e:7614:c059:a19e]) by PUWP216MB2399.KORP216.PROD.OUTLOOK.COM
 ([fe80::a26e:7614:c059:a19e%4]) with mapi id 15.20.9723.022; Fri, 20 Mar 2026
 16:46:38 +0000
From: Lily Easton <lily.b2bdata@outlook.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: RE: Capture decision-makers actively engaged in NAB 2026 events
Thread-Index: Ady4iR07GdHUmdIwQAqwVTi6jUjJDA==
Date: Fri, 20 Mar 2026 16:46:38 +0000
Message-ID: <PUWP216MB2399846575231C900EB5121AC04CA@PUWP216MB2399.KORP216.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PUWP216MB2399:EE_|PUUP216MB3283:EE_
x-ms-office365-filtering-correlation-id: 63d219dd-4f1b-47bb-5030-08de86a0414d
x-microsoft-antispam: BCL:0;ARA:14566002|20031999003|15080799012|8060799015|8062599012|13091999003|12121999013|39105399006|19110799012|41001999006|24121999003|22091999003|37011999003|24071999003|461199028|31061999003|440099028|3412199025|102099032|40105399003;
x-microsoft-antispam-message-info: =?us-ascii?Q?k6PPb20juAMB1+FboFTKdtgc2tZZ1jfNwhmoBHWYObXjfalg7wz265IP4Z88?=
 =?us-ascii?Q?CMtyErlTcSkAmaTlySR/u7a0GuXAigogv5DoV35T+ucJe6JEyiYNGWk18qh0?=
 =?us-ascii?Q?XxSAl+smHrHkBTwSby942Hc/4hFLRrnW2GGopH7k/GAuM45XvEthwkuvovdL?=
 =?us-ascii?Q?WQlBKCsJAtqAt/UW6cHj2kzqas7NSQE2pBmRcH/kfmF7Ozj9MvlrgA/B+tKr?=
 =?us-ascii?Q?iFj62Jd/qD9HOZ1xlQwRrFiNdjzrVeqfuvLP3zGa/PBPHxeTNTLll8mHBz64?=
 =?us-ascii?Q?fXgq49ejSXnPaX9ZExm59NX+QORqQ3Xr62l6iUNI4QnBDZvSSM8BGAfMo4K1?=
 =?us-ascii?Q?DTQt0L6MNhzOWNoXeJmUei8EmCvxmH3/n+SZuQQKl8LsY7XWID9oHjKPdsPV?=
 =?us-ascii?Q?QsMYd8t/JeKdlO+ANKA2YvG37t6aM/qgc+9FTywGn18O3H/kjpW3uia0CE4Y?=
 =?us-ascii?Q?9k8WogO474zhiTyk9bxt9GmomwLpyShhd/SQHhmC+FICeR+AAM+IJ+lNJQqs?=
 =?us-ascii?Q?997Zp621A8RWyxPr61TNCEE6gx11pRZsOOtGKcrsASxlbMWa337lupTVGclo?=
 =?us-ascii?Q?56q/N90oAKjf58yODuO+j4LFAoB5frVqUDhnwQdbBsdc+85w5qrBGnLIsqaD?=
 =?us-ascii?Q?nDVATZURUQV9nWzR5TJI62ErBZurkTrNLgUErPvceF7ot1dgTjpJLYYqzU38?=
 =?us-ascii?Q?qPwDq108Sy/vxeHsXXCCPwgvc2CBO0QCeyVWxJFNyM/T7fDcWa7wji5rzrg1?=
 =?us-ascii?Q?iaJtk3Pq1zUKx97VCuJMR1nbPfIwz91pq/r+7WyDVHaG1gKaVGiob6+b5PgO?=
 =?us-ascii?Q?q/FDiC9G4eRc70IoHlBXwCK0VGvLSA0VEDmSTzX6es+3HzRL2LS9n6rlDBJA?=
 =?us-ascii?Q?scKd4Nv+3+4pVbqoD/mQnAsFmt80FwPkLy8yxBJYVcjngAXUPVSYIQkguVS2?=
 =?us-ascii?Q?660MTQgNp86DaW8OuyBy4tPK7soc7VYe7EO4ldKxFRoK2PaMyuTur4pEZ28y?=
 =?us-ascii?Q?IIN3+hEX0KyQ9hMehFT1kLB2FdVpwnXbPEjiVqWIDbkpH+RV02xo0YSJ+zZX?=
 =?us-ascii?Q?dbunPbKLKiRr4oVsNR+XIVJZRsPudM307Ug4MXf6Zg6qYc/cF/N6Hl764t2O?=
 =?us-ascii?Q?VdVpELT3IMkHxBJfhtrtDU3UD0dcwrjRFA=3D=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VjC6WiVcwllk+v+0ZfPGWxVtBC+4SbqmLtyc9ATYAb4FqLDy29EpacP92TGF?=
 =?us-ascii?Q?TSjEnuL/YnV7GMGzTsppVMaC9RQVwCTN96s0iF0Gzx1PCNvguIaLwVUuOjJB?=
 =?us-ascii?Q?2b3F2BotY586cawiFqLzseTsofHQymvSvr2YPjLyGQ8598iQynp5ny2sikrE?=
 =?us-ascii?Q?/AgLmvbyQEP9MGhlQ6KkKQirqb/oGUwmmfOlVKQ6zCtyANciOntXBmjyACTp?=
 =?us-ascii?Q?Owk/KhHeCSiTSAYVHzHmrZUYsqH+Kgp0289Wuqav8vAQsGn0kU/vEozPXFLi?=
 =?us-ascii?Q?1BZxgNhtS0jVTn4oOFLVlFpXAXZEzSGZe/4MjMtp3mFU23THYHr896a//CdC?=
 =?us-ascii?Q?KCN3LZDpxfcnGWlvEikv3Vpk6WMwtvQvbIHdaVeRqX0iExhFS4SsrTmTsXRW?=
 =?us-ascii?Q?ovjHHOOZ8hnGNyopdUrXdwuJU027MVzDuSMZF/Wn9+uxViWyqy3pzaDnrJEK?=
 =?us-ascii?Q?dBmVQpncQ9KprR0uKgVroaqqEnyKZJ6CrxbtaHknpMfaUG/UEXpbRvW3OP3M?=
 =?us-ascii?Q?qSVpOqCMxypGpLtOiben87tyvJpJ4pAQTzW8UACuI2K5gDgtbO3WlDj/s0hP?=
 =?us-ascii?Q?eGpxq+EqsiVvQXAv99SkEPHV135Nqg8yu/lYVKj5Vb7jeVoHufbWapDlwCE3?=
 =?us-ascii?Q?AxSPgWb+uD1OxkZLDvWd0af7E6CdsPMejP+aUfqeGbbYBh9nXrSk9Tt5ctqT?=
 =?us-ascii?Q?Z+8BPs/28GpfqAwyfPejWXlFJMt+5UgNYhhrc160xiVQEwYMAK6VbN8OAz/q?=
 =?us-ascii?Q?hkMBHio23B3hJRhFZGiGzPi40tvd4RvP/y9f72DPES9sxLiYSb37c+qldyrI?=
 =?us-ascii?Q?PgKemH5j1QgA+3obNh8WQC5vWHeETay1bUpfSzVplnaFNJt/y/v2tS/sm0OB?=
 =?us-ascii?Q?JO8fMNvXwyad4Ln0a89P0s30E5bziInW+0JVStTo5p6uXCfnq2qpOgGcH1oF?=
 =?us-ascii?Q?8ZJ1VT5GUaNyEywzrJaC8p73iu74ET3lgXNHxJefnb94mytqoT5WQYk94LQw?=
 =?us-ascii?Q?S9N2DvNntxI3vWjoP8uK2Up7NPtlrJkBtAl7t37ssRUlM1MRGBIAhbzVlWeb?=
 =?us-ascii?Q?nEsIumyX3kaVSJhAGLLWWuI5E93RXl4PQdCyJY3s2/v+dHvLii/80uzgtSuT?=
 =?us-ascii?Q?rUDR48GUC//F+a2TfvA++oV9M/XEaOMdlGRNAGKzM1CSK7Jb8UnmEti8QUHn?=
 =?us-ascii?Q?/J6Uwb4Z9y2WxKWWGNd1t9qlKhpmgMReG9QiB13JtZHusm9DcTOJFkvIlwy6?=
 =?us-ascii?Q?MxlFuAS+y2g2oAOnwPWKHmApwxtiLGIbkKrkGyLnbRcUI7E5ahGKzSqY7Wl2?=
 =?us-ascii?Q?PKuTM0vELg9l1HgOG0wp8JBWZJqA+/y0AnbHkeheHGzGz96TCQgmqVoa9zKO?=
 =?us-ascii?Q?X6fxi79AOdH7yKbFQpjc1kHcuVwbc3bDWK2Ke5/HE2oT5gmgNvBwQj7qTiV0?=
 =?us-ascii?Q?qOP8pdm733lvzDAmWqxOKx/cvgqpZmWo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PUWP216MB2399.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 63d219dd-4f1b-47bb-5030-08de86a0414d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 16:46:38.1157
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUUP216MB3283
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_094645_176085_A1195983 
X-CRM114-Status: UNSURE (   2.32  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: Capture decision-makers actively engaged in NAB 2026 events
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi ,

Just checking if you had the opportunity to read my previous email.

Let me know if you'd like to review the counts and associated costs togethe=
r.

Regards
Lily Easton
Demand Generation Manager
B2B Data Inc.,

Please reply with REMOVE if you don't wish to receive further emails

-----Original Message-----
From: Lily Easton
Subject: Capture decision-makers actively engaged in NAB 2026 events

Hi ,

I trust things are going smoothly

Is the idea of buying the NAB Show 2026 attendees data appealing to your co=
mpany for increased ROI?

Expo Name: National Association of Broadcasters Show 2026
Total Number of records: 41,500 records
List includes: Company Name, Contact Name, Job Title, Mailing Address, Phon=
e, Emails, etc.

Augment marketing outcomes using our top-notch B2B data solutions.

If the data sets pique your interest for purchase, please drop me a message=
, and I'll share unique counts and pricing particulars.

Thank you for your time and consideration

Regards
Lily Easton
Demand Generation Manager
B2B Data Inc.,

Please reply with REMOVE if you don't wish to receive further emails=



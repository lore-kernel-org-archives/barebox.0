Delivery-date: Fri, 10 Jan 2025 17:52:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWIF7-000RJJ-0F
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 17:52:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWIF7-0001Jf-55
	for lore@pengutronix.de; Fri, 10 Jan 2025 17:52:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TBL6dqO9f8fM3phV9jci5LJuWkaVeeZ1/2pjIbrUeI4=; b=sN6h9V18VBgH+v6k+tTy8qo3+g
	wqTCMbqKRJyQ/3FGeOUUDp3whQorV5jktZp/odqzEP6qCrF0gkgnzKiV06RIsqtmJ+T7hQpZc0sWJ
	ru3+2SnQfn+mtHrgfXrNBrXP/Yj8kDgn9XrnCMvFnc3nEObGnX/MLS66/G6k7/CIegacnYWCqvZBI
	Si7Qv6+q4fviNauQyLfr/O51/8cyBYSm6Euwl+vnCaPjzz4X9653St4KpxhevayNyr11TahPwED2J
	F7i9G4zaP8qvnRSPBzOV1/aa8WhWmPRDBuGzmDXdwz9SajjFVfgLYjd2uKxRGFJl7bkW/lMupWhT3
	8l8WK3RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWIEU-0000000GKlY-3umB;
	Fri, 10 Jan 2025 16:51:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWIDc-0000000GKXT-0HR9
	for barebox@bombadil.infradead.org;
	Fri, 10 Jan 2025 16:50:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=TBL6dqO9f8fM3phV9jci5LJuWkaVeeZ1/2pjIbrUeI4=; b=MDduOzvDKQ68qpqJkNqEwLXWYh
	Zqv/CER16fwmQM3TK9gnNxUUzR4/WPfJ7evyYl5MUBv6WQST7BcBgc6PhQFTi2qVpAea/wfmKk0Qr
	aaHJm6KKPuPtSSEyjRWr1Un8YbvBLTqWpQPregeFGJ6CNV0Y3vC5nKU0j+Z9VQ9STGDta0yjeiyG7
	twkCt3mE11Zr8XdH0FUYek91zwy91Z9u0f8jg8JtXVaKgs1FjqHLq+bWGZCKbOUMCNCdYKS0ZD085
	48MWsjBeKZYaLLHLB3Yvfm5AWYBm2G2FP3pkD1RQ9+qVFKwf/XvmETDVS/ixVl7WcJiSgW0KsaKL8
	ykxkbN2w==;
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWIDX-00000009qHc-2HFD
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 16:50:42 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50AGNnUI022772;
	Fri, 10 Jan 2025 11:50:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=TBL
	6dqO9f8fM3phV9jci5LJuWkaVeeZ1/2pjIbrUeI4=; b=UyxQ1v874lsF8fF33zo
	Eufwb+TXeiEMSYd9LH1BZLjBErwliD/257tfq+z10O4F+egCG5aGYJ+5Jtc6MCHD
	M6H/oAXL3Dj8YOwIIpOSDGW8D6ly3EjBJziKg4mlgS23ekAHMxDp1jtSXWOZxpbx
	RpmSG3UeLxpz2zXBHuE87SdSnjQb34RWWWZH8bJ6jr41KHCdlQKbfUhyWq3HHfXZ
	OkhklGC+iJvRi+4WmtRNa2TB7NjLYUY5ZPV9Bk8RGm5zyDXsnTAsbGJB6S6BtbA2
	VI4ZYEx/4L9lguw7z4j6DfgssPftcFY9b/nDaGfLY5QTWUbgoeNArykqWNdBzvV2
	vJA==
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazlp17011030.outbound.protection.outlook.com [40.93.14.30])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 4435rdrff6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Jan 2025 11:50:32 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Atum918wdsttu8JWa9pdRro4XF1W/egfxDj13+KKX0LcHZMQ8dvRlNF/myrumcRJDrkmKEXWHFvi2JJPV/zXC48TLfvTxb7XXygs1k15g57LYGJ9H+Akk/VIjruMm+OC6g8kRaCBoOIVWHjot3FB+Dceza+cUN4+upX8mWhLvV63e9QEacq5absUrTp1j07a7TjUXKXX2dl+j7VFUxqf/ZI+vSpWbZCHef78TBZApRu36S5q/EQQWivENgboshXJs8GlY4wva76RRs1TR7Haxsl0rD7oCRBd09yXRkbhcsgDkeql431YynHyRhaM1ACHp30nY6inY1dAZAXetxSE0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TBL6dqO9f8fM3phV9jci5LJuWkaVeeZ1/2pjIbrUeI4=;
 b=MD0Jbe/JzsNeKLiMC2t8pXQBuEq2Zd7PU2faFWSttXpCrPA7/g7tKF4B7Ls4HaSnOw5/VGNiC4ynRHSJYwGpKQ36XYnNmLgFPhy006lpDHJPSqrg7D1p6veYTw0d1RFAWMQNbOFOVgD5tznhd9sY0+vgNgiI6OcNhLffCKkrvQZHU+G9jbzhAc/iwTUnIs+C4pUgiDiuvMt7nNoHvC1UjYC4cVwM4zWj6Y2CZjupZWP8V6oJku70zD+d36gjyIR4krLFGncAxzWI644//o8ye/y6ch2LPQukMXaoDZJwDakiUbmhsO6TfeagNo33wougCP5yXyb4umPSt1wSXLmOAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBL6dqO9f8fM3phV9jci5LJuWkaVeeZ1/2pjIbrUeI4=;
 b=Z1UO6rAiIdpdGxTfHdoAF5Y1cCBuqC/pk5pWidZ//UThVvLx9G7RyUEycD3pdma4dWJNllfceZKucKEb/xjUxSewptx2pNxGo26gwqrOTMBoSCkKGvuVk6p/qZ+cdOYLwMVi0PVQtBSiRXTsgFmynW56ERGy3xnrVuOLEJgdrBQ=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 CH2PPF6A1094CEE.namprd07.prod.outlook.com (2603:10b6:61f:fc00::4c9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Fri, 10 Jan
 2025 16:50:29 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8335.010; Fri, 10 Jan 2025
 16:50:29 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: parted crash on NVME storage on LS1046A-RDB
Thread-Index: Adtidh82wT6z2NuYQ7C7JxRMnax/ewAElTcAADsqUBAAAKL9gAABzHYQ
Date: Fri, 10 Jan 2025 16:50:29 +0000
Message-ID: <DM5PR07MB35323C5ACC09A936C91F8450EC1C2@DM5PR07MB3532.namprd07.prod.outlook.com>
References: <DM5PR07MB35326945A0F013DF45CE9C77EC132@DM5PR07MB3532.namprd07.prod.outlook.com>
 <2aa13c0d-1820-4f9a-a52e-95917f19f632@pengutronix.de>
 <DM5PR07MB3532C9D58C2D8848C7F08136EC1C2@DM5PR07MB3532.namprd07.prod.outlook.com>
 <f8c0ecb3-6c8e-4d09-b258-8f898ec744f1@pengutronix.de>
In-Reply-To: <f8c0ecb3-6c8e-4d09-b258-8f898ec744f1@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|CH2PPF6A1094CEE:EE_
x-ms-office365-filtering-correlation-id: 8b6b1ae5-96e0-46b8-bcff-08dd3196e3da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cFdKVlozN1JmNzZFZzBpNFhrQzVVTzFTQjlPWmlsRi9JRGJrT0owN3lXQ3dj?=
 =?utf-8?B?SXpabThhdHM1NDd0U0ZnU2FIeHJobktIbm1DUVR1emNjRUU4eTZJVEJORlA2?=
 =?utf-8?B?czliak5OVUFxQXdEeVJjck5PMmtGR0lVbW9Qd084YTU5M0wzRG9MSDRFdHA1?=
 =?utf-8?B?ZkZJR0RQV0ZsTmRONmJpcEFncjA2NWZyNEFLV05sc0JxUVZXU1Rrc3FZaktm?=
 =?utf-8?B?Qm05TURPYW9NOGZBeHE0bWlBS2lHYVBKYS83NzlQV0JJSlgvR1ZHbnJFWUY2?=
 =?utf-8?B?Tm1HWWExVEJRVHMxUlBSenFnb0lSZXBWeXZ6Y08rNXhndGVhbmZySy9CeEV6?=
 =?utf-8?B?cUlTYllpSjFGTS93cW5oQjdhSmJ3aFBvUFliSTZjMWdlMExVMkxqWHpvQnNl?=
 =?utf-8?B?Rm9wWVVDUitrOVZyR0R3RzhaWjRxbTFSQnlGWlJzRStlMVVkNzFWRnViU1JB?=
 =?utf-8?B?TmYyckx0Qm4vQ2dRK01BNVU3WFJZaGs5TG9tQVhWNFowRGRlV2ZBSlMxa2py?=
 =?utf-8?B?d1NONDNMZC9hVWFGM01Tbm1yS2ZKZHpiTG5yWHpjRHVMdDBodmhvazdKS2NE?=
 =?utf-8?B?bW8wL3NnalFVOGFjaDRMU0RYQ2wwVmRWRmw5R0ltOVB4SXkrMXF0RjNHcmU2?=
 =?utf-8?B?R2RmY09VUUN6aUZXcTFkVzNmVzQ4UlU3S2VQeElhR25yaGpWMlQzTHNJVVI4?=
 =?utf-8?B?RS9TRjBNOW9ZdTBqSVF3OUEwMUVIQjR0Y01WU2s2UE5yQmdJZThnZVB1Vlhr?=
 =?utf-8?B?MzFPSlJoNzhzUlAwalUxS3ZXcnBuNUU1Y3dCVWdmWExmVXk2S2QydURQd0J0?=
 =?utf-8?B?a3BWSUZsVTdaR25xY2dWSDhwSzFCS2t3YlA5ODV5cWl5YnhzSCtkc1BWdXc4?=
 =?utf-8?B?VVM4L0VYV0hNclUyekxBei92S1doTUdZSmdpM1owVGtCNUwwUzZCVU1qbTVS?=
 =?utf-8?B?d0pZSm9oWWtqRmltVjdnOVgvNTk2a2xTRGphZ2I2eW03d1V6Nk5BWHNXbW1w?=
 =?utf-8?B?SkRadXVZWitWUWZicWVrdkxWdjVzRElSOTRQOWZoT1hmeXdaZU1GTUpXdGI2?=
 =?utf-8?B?Y0hnUG1LOStINTJpVlh5RFJDUWxrUzNIcmV5M1drK3c0U1NVblFUY3FzU21T?=
 =?utf-8?B?cisrWGFnYXhOb1pyWHhMQytveEE5cEpVNG9sd3NuN1p3Wi9mY3I2TFJDWmly?=
 =?utf-8?B?NGl3c3RKWFg4VUlRbWlhaWFyT2MzL1k1Z3JIbGFxdUN3VHNCVlFUMjZSNU9j?=
 =?utf-8?B?Z1BGL2pIeUs4N3NuU0plUVlJWWVoVkp0TE5LbUZtOUNXaEUwV01xMEdNSWo3?=
 =?utf-8?B?M0dKVnpvTDhZaEg3eEhTVUdZYUhyMXUycGpCYy9ZNnYxT1NQbEVyZWR1cmY1?=
 =?utf-8?B?a1k1YXgweWF5cmVwbE01SHBzN3VKVzJ0aUUrbmRpdjhFOElhelJTcm9QbHpE?=
 =?utf-8?B?c1Mxb3ZVRE9NVXVPTVA1VWdkcGF6eUthVVhUZEl5eDhOSXpOUU5wdGtnMVNv?=
 =?utf-8?B?SE45RmdOTktFQVZYRVB2cmxqaktmVXhxdkJuNnM1NDlKd3A5K0NZOHJsYjNR?=
 =?utf-8?B?dkQrSGJYYVp3cjNhT0VlZ2wwcTJ6L0hxdnhWTkpWNzBybG1JNUU2bjVOaDI3?=
 =?utf-8?B?NGorTWo0a0VqYjF2dkVTcDNnaDZZQ0d5UzVxZnZPQm0vZXliMEpBZUx3aTFQ?=
 =?utf-8?B?ckFyNlNJbENzaXJMTHBFVm1KdTZ1dkRMZ29oZ2NLRXgwR2R2dWpPSlFEVnlJ?=
 =?utf-8?B?WXE3eUNXL01sN1UzenRJNnJqc0lIYWJhazJXM3dWSG9YalZKbGU5a25NQTRW?=
 =?utf-8?B?OVlCN1NGK25zaEpBWDRZRmlOa3YyZzRPYm5ycWRXcHJYT2x6VUF5MXBwd0lx?=
 =?utf-8?B?Y0tqNGNZZm5jRDdxY241eE1sVkRvOVRLRGlsbFUySHozT0tEZ2FTQ0NEUVZM?=
 =?utf-8?Q?K5VnidMtlxipLuzLe15Sa2LOUAxpsG+v?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TGEzcHJvY1JCeHJGMTc5Z3U4UlJ5VmdyYVQxbU05S2hVVHhacUhNNGpCTGJx?=
 =?utf-8?B?Y3R5bDJCSUxHeHl1b28zMll5VU1hZjVVY3AybWllUjlQM3U2ZnRwZ0lnZDMr?=
 =?utf-8?B?RXJUR0UrekZMNjJRTG5sS1pXYzdKNW5VQXZUaUR2T3R1TjYyRkhKaXdIdEdh?=
 =?utf-8?B?N21scTF6UkthbmhheUVGblpuMy8zSGdIOG9ldEp3ZmJLSGMrM0pEYTRNK3hD?=
 =?utf-8?B?aFBaT3Q0T2lRVHovRnFsMlVNYXlrT1pvU1ZmMXVyTFVxcVBaUGI5SGlMVnhi?=
 =?utf-8?B?WVc4Tkc5TWZWWmFTN3NVZkJDdjkvYm13TDR6OFJES1pnSVRBZXJZNG5jMUs0?=
 =?utf-8?B?MWlleVlpSU0vVGZVNDZvdWNYN01rU0FhM1N4MmhrazhwdXdqb1NHckRiMmNY?=
 =?utf-8?B?V0h5ZFp3WEFnVVZ1QzljSStaZ2cvelREaTFmMm1CYUhrWTVic0c4bm9tOG1u?=
 =?utf-8?B?UVdiNTY3MkduREZNYXYwcWZ1S0JWUDFBdktXaXE1QVVwV0NWTndpVFdCaDB4?=
 =?utf-8?B?T2l1bm93dzlzTXZ6bG9sU0p6UmlCQlo0RTgydllJTUdWeTdvaUVVMjNEaWxi?=
 =?utf-8?B?QVgwUmoxR0hVWThNczB0Zm91Ulp2UWJKckUrbjNPell5WWtpRDU0M1FHQzFO?=
 =?utf-8?B?NDU3VmYvcW9LUUswMGhnTnd6WUppQWxtMzJONlFnUGEzYWE5U01sTXVCMjVk?=
 =?utf-8?B?U0oyWmo5OUl3eWN2RHRab244TW5BenBpcytrTmdxMTR4MDVmTlVMemNpR1lQ?=
 =?utf-8?B?OTBCZGtQakZXc0Jab0NJeXFBbVFaK3F3SU5tY29NUzJhZUsxVXpDNWJES3dB?=
 =?utf-8?B?VVNSN0pKZXZzcE90cGFSTTdmV0tHRDR6c1ZDZWtTOHR2YklVVzRoZlVRZEly?=
 =?utf-8?B?QkwzU2Q1S0ZhT2lxYklCMTBRVFlxZlRHOEN4TWpHK3A1SE1hM0hsZXRRdStQ?=
 =?utf-8?B?NXFtTjNUSzZZTmU2T3ZGMys3YysrbW1iaGpVS1ZtWkNWdWorTTBiMSsvMzNy?=
 =?utf-8?B?SkNIbVZOalZyZFJONFhudjh3aElQWmNqV3A5NWR4NlRMOGRKR0lVZ1NKKzJu?=
 =?utf-8?B?R3UrSEJVRzFzeHd3ZGVDU3dYOEtBdDc3YkV6YW4ydjhYTzFITVhtL3BxWHhw?=
 =?utf-8?B?T3ZpbU9IejRIUWttbG11Tk9sQitFcGMwWTE2eTg1VExCZG4rRVZFSkpMOVFM?=
 =?utf-8?B?TTdyTUJzc0FCL2VZUENnK0IwMXo4STc2TjVjZGdNOFBZQmF1SEpiZlFUay83?=
 =?utf-8?B?MGJpWVQrbTNCcSszUDZkN3BhUDJOakNja3VLbDhMUjFPSUc1dTRFalo1RnIr?=
 =?utf-8?B?Nm5sNDR6YkF1ekxyVTE3Y3plWkV4emRQOGlRR0o3MFhHa205cEhVaXNaYTlM?=
 =?utf-8?B?Um5ZaEdlbzBySVVZUkFkeVN5UmhpYnk4RERVY2cyWWUzaWs5TWs0K3Z3S20x?=
 =?utf-8?B?M1JHeFJ6S2ZTVFFTU0F4UGJMRkdjUUYzc1Q1NUFBeVZaT1A5aktMeWRFeCts?=
 =?utf-8?B?S3FRb0RJczl6NzlyRk5taXhrRWs2aXFvV3AweFBJcFl4cE5mM2dWVlRIT21z?=
 =?utf-8?B?dHFKMFNFMXpFYUtlSGltT1RMZVZaVmg1eSs3a0VhOEc3N1QwVGtvZjQzUlBo?=
 =?utf-8?B?ZithZS9UalZld1VFWjd3YXBzcm54NzJNam02KzJLeUFHcEFZWGRhMC9XdGU3?=
 =?utf-8?B?MTB0bUpkdWpFNE10b3B5UkozTjUzQWljS2ZqdzgwMEpMWGNtTEgxeFpMaW03?=
 =?utf-8?B?Wk9Hb3I0SmgwNjc2QTB4amhWKy9KaDlGajlOck94UEJSN2F6cGwyTTJRR0ZN?=
 =?utf-8?B?Z216RFpDT2tManA1TGRjcGUrREV1d3dXYWNVM0M3ZU5NVVU5dzJLMDhnREl6?=
 =?utf-8?B?Y3ZRaklCNXBnWUR5R05vTXJUbG1yVWptZnArUUwwd2NCQzI4cmhtUHVhQ0l0?=
 =?utf-8?B?N2doZkV1RnlKZ1hlN3g4Zm5GaEdEQkZHN3JncXRYWWJpcGF0clJWU1pPRzAv?=
 =?utf-8?B?RVVhVEw1OWRzVCtzNm5za20xTWgzeW9rWFBWSGl1dndhQ3JoVzdRUUZFeVVs?=
 =?utf-8?B?Tk5idTE4aGV3L1RYQ1BOdkxzVlRHY2dvbklNb1I3cEJWT3NvYStvalArNjlZ?=
 =?utf-8?Q?nOw2yGR/SYgwHOpbdQZTWzfV5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b6b1ae5-96e0-46b8-bcff-08dd3196e3da
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 16:50:29.3590
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X7SVfJefbVr45xGBkwz6GZmxZtOUEEy88T3wmDeVKxzIlK1PfhG7x4XLunxnKFtRZeJhnbsZ7ALXJ4/69s6P5ydD5rApBtPJKktk0ZZCXto=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PPF6A1094CEE
X-Proofpoint-GUID: 5tsmV22F3SPFEEHhfgqTU3o8WoU1AyDb
X-Authority-Analysis: v=2.4 cv=XaBzzJ55 c=1 sm=1 tr=0 ts=67814fd8 cx=c_pps a=uiDhKFZJcG2N7b6OoV3sKg==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=VdSt8ZQiCzkA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=RkvyJ136BeP3zt38ObEA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: 5tsmV22F3SPFEEHhfgqTU3o8WoU1AyDb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 phishscore=0 mlxlogscore=601 adultscore=0
 suspectscore=0 priorityscore=1501 mlxscore=0 malwarescore=0 spamscore=0
 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501100132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_165040_155336_8800B0D0 
X-CRM114-Status: UNSURE (   7.18  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: parted crash on NVME storage on LS1046A-RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

QWxsIGdvb2Qgbm93Og0KYmFyZWJveEBMUzEwNDZBIFJEQiBCb2FyZDovIHBhcnRlZCBudm1lMG4x
IG1rbGFiZWwgZ3B0DQpDcmVhdGVkIG5ldyBkaXNrIGxhYmVsIHdpdGggR1VJRCAwMGRjMDQ2NS1h
YTFmLWFkNGQtOWFkYS1lNWFjMWIxZTVmMTMNCmJhcmVib3hATFMxMDQ2QSBSREIgQm9hcmQ6LyBw
YXJ0ZWQgbnZtZTBuMSB1bml0IE1CIG1rcGFydCBsaW51eCBleHQ0IDFNQiAxMDI2TUINCmJhcmVi
b3hATFMxMDQ2QSBSREIgQm9hcmQ6LyBwYXJ0ZWQgbnZtZTBuMSBwcmludA0KRGlzayAvZGV2L252
bWUwbjE6IDQ0Ny4xIEdpQg0KUGFydGl0aW9uIFRhYmxlOiBncHQNCk51bWJlciAgICAgIFN0YXJ0
ICAgICAgICAgICBFbmQgICAgICAgICAgU2l6ZSAgICAgTmFtZQ0KICAgMCAgICAgICAgICAgIDFN
QiAgICAgICAgMTAyNU1CICAgICAgICAxMDI0TUIgICBsaW51eA0KDQoNCg0KDQo=



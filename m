Delivery-date: Wed, 15 May 2024 12:36:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7C04-00Fg8a-2Z
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 12:36:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7C04-0003Mk-1w
	for lore@pengutronix.de; Wed, 15 May 2024 12:36:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jf6cIIBffaJ7qiJEtkub39AKwYp6nczcNJPFKaC/77w=; b=aYsRPN8IkjbFb5bQuLT1XbaU4v
	420xhVZ5Ox3v1xFnV/3Nj5n6IJ33DwEGUJk0Czww2fEt0dMZV0JQhq8jZDzEUoHTW5PEv9TBJav4T
	PuriTSD638+ip6vzzoV57gBA3iMq4zbOAQrF5hcQqjMRGlYizc82E5euIOb2c7LBPuxWTe/1vf1Fr
	MTz4LSOK3LdtNYLC/aApOeINnVGIr4h2grf7PEfvnwI0VORQfXXlNN2uWisMEzLZfH+OsBeaMVLmJ
	7nqnZhBPieef2epjLEBundzKU83b+Dzy0GOitcfLWv7oYI+SetrucXJIn/aN5zDuGGBbEoz1TcEyC
	/N9bOUYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Bzb-00000001FUN-1CTb;
	Wed, 15 May 2024 10:36:15 +0000
Received: from mail-am6eur05on20700.outbound.protection.outlook.com ([2a01:111:f403:2612::700] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7BzX-00000001FSF-1YZD
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 10:36:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YXoR2humClGsfkH9kpH+c4//HvQy6SNO17yQ9/Qbn0q4KALk/CLrp0GwHxZ/+GHD0aGenjyn3VUaiWHXax/d6+VNnGKG2D5txDfhKkcqyh3s2MoqzUgocYCSdwSEZwsVavNcrVE/RhhmGVVUEd/I7WfYB1AUMKLe3a6i3KCgCOgxTDFhJ1HF2S9/ExlYzn3JlYzvrp2zINF/s5KIF9OC4o/ZqIkWay3MMiRioVTjm0u6xRKVMsKWivWDYAZPsLYJvN8kUYquuVVnilqfDAeBJG0QaYMVljND7EEvSiKN/ls9rzuqjVRWgajUs/wpSDUPmEjbC4j6jkge17Y2WjNydw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jf6cIIBffaJ7qiJEtkub39AKwYp6nczcNJPFKaC/77w=;
 b=aU4QA88O2Zg98sEEpegcMpDCxkkZy3F4AfuYl8RypsgMHvd1OdGGFvbrCM1hNrq6utuI65fo+374y2JBy0FHMyX+5NJGZLkcJ8Io/bdZZiNKZJZPTMn1/rSIL1iG+ayhDKiXYNNpwopyOGUnN9DE5zCweNu3IZth2YZ0N34QQ0rqqeCIeq2NORbEzi2FcPjQe563DJ8ULfME2WH9cmPrWB8hpyVNA+6vOp9EyBEQeY7UT3+rfhVSfTPO5hGGnwS4SpzUG9UzKuWPQHBExC6ptH8oK64ZGGXUItyEy6gGCY71VeAsG46s9TF1hf9iPim7f9KJaJr7rAt87KQmNHLF3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jf6cIIBffaJ7qiJEtkub39AKwYp6nczcNJPFKaC/77w=;
 b=u40P/LemjgCROfiB4nofetrXBzaLgL58Wisk/+HZ3wt822ml1cM2FnKEQkujWIArdlh7qm0X4iDe991fnyV2ZqMZqLdzrj7ZrdnUC0sCHz0Lg73tzXvo9iuRQxPaHSf/MjnAwXXodJv3B6ohagJ9DmUxtUD8BdAivGUfUbsszME=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AM9PR08MB6083.eurprd08.prod.outlook.com (2603:10a6:20b:2d8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 15 May
 2024 10:36:00 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%7]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 10:36:00 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 15 May 2024 12:35:56 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240515-b4-pf5-fixup-v2-2-7c2aff3f7465@wolfvision.net>
References: <20240515-b4-pf5-fixup-v2-0-7c2aff3f7465@wolfvision.net>
In-Reply-To: <20240515-b4-pf5-fixup-v2-0-7c2aff3f7465@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715769359; l=1071;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=TY3qV2dFwnhpMebCmjDBLvDD3M0mvp7e4cAyQ0WJRSY=;
 b=RF9TaSm5Ksh1R0PbFMxi7B6MDeTzE05nKyXcssxcbJhtTx10ECrkE6/GoBC6t6PPwHuaCB4yl
 W7kpPWriM8BCwVYN/tQ/Uqjr6DZEH4ABt8J4X61vIHNta48jwVaYOQH
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR09CA0156.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::40) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AM9PR08MB6083:EE_
X-MS-Office365-Filtering-Correlation-Id: 89841f08-6f0e-45ce-f1a4-08dc74cad01c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|52116005|366007|1800799015|376005|38350700005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?czlYR2pxNzJZZlpLSHl1WFY4emJxem90T1pDSXlHUVQ5SXNobTAzSDBJTkpu?=
 =?utf-8?B?aSthRVdpbk81ZXlkOENkQ0ord3NXQlErTmdqNW5NcW8xRVFleHM1cnl5WXBu?=
 =?utf-8?B?MEU4RmFVaDBiTUdqKzFVU1hIVGVKZUhqbHZNVkZyMUwzVER5bS92R3A1emV3?=
 =?utf-8?B?VGZwSExkUVcyNXdDRHcxbGhGQi95S29zTEl1UTZuc2swYVJlRUdIOVZNUzNa?=
 =?utf-8?B?TG1mVEFPUE9vTWtCY0JTblBoSFI2SVZEM3FjSXRNVnhFbVdpSHhmTit0TkZh?=
 =?utf-8?B?cmREQkVTc0FuZ3M2M09sSkdFQnVKamJYQnQ2bTZFMkpOVWRVUG1GaUU2OFFq?=
 =?utf-8?B?QVNveFZ0RUUyZ3dvRjZ6eW5ITS9vbEI0amdpOEVNL2Y4M1RFZzA5SzMwK0xI?=
 =?utf-8?B?eVJnVFZhUVRlRjZGV3NjRXNKMmp5TCtyaWEyaWV2ZGlFZ2JVSjc0VmxvdHNw?=
 =?utf-8?B?dzA5REJPTmhNbkl1TTRvSnVNZ2RDL1p1aXhaOU1DZUxtRUoveUN5R2pUWE9z?=
 =?utf-8?B?eXZTMVNmZENJQklkYkVBTTRXUmVsUmdnQlVtVlllK2NhWlhhbkZJVFJnLzYw?=
 =?utf-8?B?bCthRW9VUWdkTS9UbDAzbWpyQ3J1VXp3VGRFVXQwY0VVZWpSY0JJMjBnSmI0?=
 =?utf-8?B?UjZGTG1FQmVIaXZidHROZVkvQklINnphcWU3Y1lsVHh3WTVSdWFSOHZIK2RI?=
 =?utf-8?B?UytUMzVZZnp3T2daeWJIdlFsc2Y2TGY0M1VZWmtob0c0eC84alpneGtNbHdD?=
 =?utf-8?B?emFKQ0RBYlEzU0R6cWVNaml6bWxTaXdIS3dvanpnTUk4cjAyUGQwWjRoYWxM?=
 =?utf-8?B?T3hiZHNFVWpCSWZVQ3lYTVlSQyswL1lTSklnbXE2T1JURGNZRDRyNnRMQjZM?=
 =?utf-8?B?bUp6RXJScXNwSkFSaG5CWFFJdjBQT2dWN2xvTjE0R0xMKzZ6T2NyWVViTk85?=
 =?utf-8?B?dFB3d0NVa2o4djhFcThCSGVxVzlBa1lNeEVFdUhGY1p1WGo2MFB3R0gzS01q?=
 =?utf-8?B?Nk9zWVEzcHk3cVoyZkQxOXpLOG1Xelgvc3EvZ3RGRjNpbkE2NVQ2Rlc2Qnd2?=
 =?utf-8?B?aGkycFo0MlFSQTdFSVJDaC9pRUt6Y2VnbU50WEFENW1Md1B4a1dRbjE3Ym5X?=
 =?utf-8?B?MTdlWVRLSnFCNjJaRXhEL2VpNWx3YmJkTW9TdExnM3V3QkhmbGJKWG0rOThw?=
 =?utf-8?B?a2lSZXZFdDlrTzg0Y2cvb3NRL2ZNYlcvREpOdlU5OWthejA3Sjc5YlJLSVRi?=
 =?utf-8?B?ajA3WnZCM1hxSm5xK1lLcUFkYjNNSS9RVXVyL1A2L1laUkg1Y21rRG9JUkhp?=
 =?utf-8?B?eGxScWJBdnFITEl5RS80TDU1czVBK2Iwb2FQMCtlNjJZOVVYQnRHSjFRcnp5?=
 =?utf-8?B?SzFUZU1CcW9NWllWTHdvNnA4SFVNek5nRjM4MmJORDB1b2hHbmFhN3FMY3lu?=
 =?utf-8?B?TjY3RGg4UjlzRWUxOEU0d201TnBaK1RLb0RPemNKYXhuNkEwTk9aNzlEdG1P?=
 =?utf-8?B?WTUzUVJhUWtWeFo3Z0ZzRmdhclBQUEVEcTZ4VkZnTk1reElRUHkvUTJMSkEy?=
 =?utf-8?B?TFJKZ1RzOTVYNGFnYUJ2Yi93MXlodFJjR0RkUThBcjA2dlNZNTlYTnJNMHNJ?=
 =?utf-8?B?MDN0N0hTZGxsblBQRlpsOUFjYTJRSklyYjdLbkdrazRDQ1I5WEdtWlRGSUEw?=
 =?utf-8?B?K1NHYXVjcDE0M1dBeFFxMGRyTHZ3RlhJTnh5dEI1NHR1QWg0bytocGJIUU83?=
 =?utf-8?B?cVhNZm9KWHk4S1ZhRkd4aWxWVXlJMmlmejM0VERSclNCYUo5bUhiUjZ2bUx3?=
 =?utf-8?B?aTBIYlRSSDFjWHF0MUU2Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(366007)(1800799015)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHlNeEFjMVRnK1M3NnZOemF1WERmUS9QekFqbU9SOTJ0b3ZGb1cxOXI1Wndu?=
 =?utf-8?B?OEhTdEdLRmNZNWROb01tYU4vdzdJeXhtdGFmdWNmakpZNThDTXBhenIvZTlX?=
 =?utf-8?B?R0RGRmJHT0I1UHJaNTl5M1lLZjdWTDdwZ3lGZEpSWjNibGhMTW04NzVjc1N3?=
 =?utf-8?B?U0todWFSN24vQzE2aXVMcG9seGJQQ1M0N1FjWXNmUkZOeFBZUlZxVEpMeUxw?=
 =?utf-8?B?VDQ4TlhYMmlYTmpYSUVFUG84eVd5Q3Erd3RKUk5BbmpoYnlCQUxWUktuUENW?=
 =?utf-8?B?bHpJQ2FZTVM0OWxaNy9FYmdEa3dwU1NhdkU5amNyNHN2Rm82TmpIZjdlSnhr?=
 =?utf-8?B?ZDhzOUFQRTBDenhNYUFxUy8ybndrYmgwNVhuUXFvUXQ0ZHR5UitqOEtYTEM1?=
 =?utf-8?B?RUtRUmZVMWtsTUtMYm5TSWNrcXM4NXFZNzNXbGR1UXF5ZzNtZXNESTVDRXhn?=
 =?utf-8?B?My83bmliQnFxRTUzUjNuSVRlSzZiN3hCNTNVSUlEUWhqeDlBYzYzMSt4OEp2?=
 =?utf-8?B?ZnFwcG1sS2xGZ0tmT1NWOTZpZmZoRWk0bmJPYVoya3hiQU1vN2tBN1h3TFJt?=
 =?utf-8?B?dUdZVCsrV1IvbU1ONkV1cXRxZjZhemJEZlZKc0Rwb2ttQktzUjRmZFpHZnB3?=
 =?utf-8?B?U0NuZTdid3ROUXdEUGtYNTFKaTh4eFgrNXkrQnlWZGhmdmpFelJtTStRdENZ?=
 =?utf-8?B?Vzd3VWtHVnNmZnVXemFpRFhMdUpCaDJwNjQ2VkR1OWl6WUh6TzVwVnpGOW1z?=
 =?utf-8?B?aGFmTjJpWXFrNFNGUW5HWGd3c1FsSlB5S2FCdWVFWmdlNFEvVXlkSXE3TXVH?=
 =?utf-8?B?YlFUS3MrekFDRDFOc0hiQ0lWUmJIUkZObmxsdUFhZW8wVkExYkRiK3IvdUk2?=
 =?utf-8?B?dEpsbmM5dVFjT1RTb3B6c3owbmhBb2NRMWsvTjZFdzZzZUVXOW9uSG43aURW?=
 =?utf-8?B?ZTlSV2s2WC8yMmNDM05QQTBsZG8xZ3lIOERyR2YwTmljK25qZzNPc1FHbEZO?=
 =?utf-8?B?ZDlXUXI1Y0k1bFYwa2JJMXQ1S0NCb0cxSjNrcHZXN3liQkRvRGZmNVpqRTJx?=
 =?utf-8?B?ZHRXMHovd3JhUE1EeVcwNFVuODB6SWRISFZXa3BaSWZXSXovWkRDaHdVRjVS?=
 =?utf-8?B?WUtkc0NrZys2eStSUjQxMk1CT0p2SGV3RUdJYWZqRUozSkhHSUlyZmZaWEpo?=
 =?utf-8?B?TFgyck12aEtORVNJWG5KMnNCM2poQkd4RGxMQVBPK3h4alJ1YXBycGNyV05i?=
 =?utf-8?B?VHBLZXhLS25lT3RCakptYll2VlM4a3FmVFpCS2dPOWJHRTk1cTJEdnBOZHMy?=
 =?utf-8?B?S0FKUnhPSFk2ckNURGNhSkJwd3B6VFZXbUJuV2toUGVSVWl2NzEyWHhmTFVy?=
 =?utf-8?B?YzM4Z3RVV21pZjhkVzFPNngxRUMyUHNwbDZPZ1ppT3RTYkt1NnNFbmdUc2Yx?=
 =?utf-8?B?Y1dPVTgvT09XZmZWVUt2c0kzYU5jV3NqN2E0elNVeVJxOVlSTVA5eHNpVmlp?=
 =?utf-8?B?M2JzK25PTXdwaHdGaHZ5NWc5RTBmazdGWVZMOFZZUkRjY215blpIa3ZTSFpB?=
 =?utf-8?B?YlVHWXl1S3kvdEVXYkxJbWNhMWU4Qnp4a3p6akNWNjU1THpkdVJFWWwrTndu?=
 =?utf-8?B?cVJ4bkprWG9TQmNGNktrSEp4NGhuNFBJM3RzYy9wQ1VFeHJmUk8xTTY3b1Yz?=
 =?utf-8?B?WHNLNXJJTmdHNVFlY3ZBOVArd0MzRWNRRlo2bHN6dHVwU3BuYllGVHBIN1dI?=
 =?utf-8?B?Z0UrdmwwLzhJZDlxWC85by9YVVBGMEluZ3RkcmZFSTZpc2NaNXNEd1lPVlYz?=
 =?utf-8?B?ZUF2Q3p1NGl4N1krcDdkSFhDbWVsREdQSWNIcFV4V29kRUVoMENOUCtMSWw4?=
 =?utf-8?B?Uk1mK0tiQUhLUTB0c3VETk9sTEx5KzRiVGRQWDUvYzZINklLODZIYW50VHJp?=
 =?utf-8?B?Rk5qMENIQzhXTkdzWHBWOWdpZDVDdlA1c2RwclQ5aDZvYzdOQzFLTlg3SjAw?=
 =?utf-8?B?R2N1YndRQ1dNWXYzdTB4cGFwM2MrMjVuTUU2U1RkRit3NVNiT1dCQWJoeE9U?=
 =?utf-8?B?QnNkZU5kcW9Zd0tBVnoyZWFaWi8xM3grbWUyalNKaG5QbWp2czNkUk5DQ3lj?=
 =?utf-8?B?MWEzTGRSRUtBTHdudXUwSDJNZ0tUWVU4S1Z6dGRGOC8zdDk3Ry9CbllndW4y?=
 =?utf-8?B?R1E9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 89841f08-6f0e-45ce-f1a4-08dc74cad01c
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 10:36:00.4455
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2g3y9svMRJvPWgyzS0M+UuA/0XcrJujoURYyitYYnbjG0SvHZsKxu+TyKnDfd/CmIJ9E4FTK45up1EYtddX7b2/eX8C2d4fwpK485BNWN0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_033611_434039_8940357B 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 2/3] common: boards: move dependencies to
 wolfvision board code library
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since hardware ID detection has been moved to the WolfVision board code
library, move the Kconfig dependencies as well.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/mach-rockchip/Kconfig | 2 --
 common/boards/Kconfig          | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index f373624f5c..e7c0c634aa 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -117,9 +117,7 @@ config MACH_RADXA_CM3
 
 config MACH_WOLFVISION_PF5
 	select ARCH_RK3568
-	select AIODEV
 	select BOARD_WOLFVISION
-	select ROCKCHIP_SARADC
 	bool "WolfVision PF5 mainboard"
 	help
 	  Say Y here if you are using a WolfVision PF5 mainboard
diff --git a/common/boards/Kconfig b/common/boards/Kconfig
index a2a51155ea..586a54d7ca 100644
--- a/common/boards/Kconfig
+++ b/common/boards/Kconfig
@@ -17,3 +17,5 @@ config BOARD_TQ
 
 config BOARD_WOLFVISION
 	bool
+	select AIODEV
+	select ROCKCHIP_SARADC

-- 
2.34.1




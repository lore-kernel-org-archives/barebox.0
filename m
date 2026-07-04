Delivery-date: Sat, 04 Jul 2026 14:40:30 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzfa-000CCd-13
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:40:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A1E542026DA
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:40:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gWHX9HMk;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=IjTmSEAE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yZHA+KAl+nvKGuemp/MvkSDFCE++ECBllJtQt6A2g9o=; b=gWHX9HMkmE1AdxylNPHSj3y50d
	KYcbyT6BrhGejJxHgVYe+EHRpp/QdzB+SC+PUElN6jSwayHMnbxfvyDpYdM01xCrihWJPxYZSc27q
	I5CdKJ+k3voGAobXFQTzkkh4zsrVSLEpDYKmBwHz4GVe0mKGCAAriHvHco+N2h7r4w60yzU95gc6H
	Fbu3N/qpzFFKG3KuwAYzrC8mb7z1u6GD2z2OHozfawnu3r0AxNSEM4Ute2L4lyp52d3hfljZas8Vi
	EFie4L7UMloVNHYD1VFTjmk4u+0cWZYHkhK0f7pQhTvw72gBTUbP67tJpQPb8JpIELoGwvLU/nyrS
	K25ohqcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzfD-00000008ROm-2h0x;
	Sat, 04 Jul 2026 12:40:07 +0000
Received: from mail-northeuropeazon11012012.outbound.protection.outlook.com ([52.101.66.12] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzfA-00000008RO3-2WN9
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:40:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CkZTmlW7xET/yp2aPNm3V8byoHQYjLwg7jh4G7m86CInjSHbpg+pz9nZb1+A+6UjvezYzoUHRfMFciiV1JJ2bs0PoHjUjMH9xS1GlS3FiHimRiMkwZtGUej/P/C+ec/vhnEpGoFihVNSYGRMNxwBcXW/gx4SIdkGw6KeFfcuDUhWLpdWdmvGf7w4EsGuzSDkOAhz7r8c0v6uLOnUmT9nr8VRV6bPjRN7QT7rrcEYfNjwBrX15X98+ZZlj6mKrAPcEIZnTGztik7NkLzD2LcqiIiJOtrBXmKy10NXmDt4L/CQQdFlWiYo7kgAcbNTK40xwZRUoJczutiCaQV5yg2a7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yZHA+KAl+nvKGuemp/MvkSDFCE++ECBllJtQt6A2g9o=;
 b=IIzzzGO8IZAkdmwwq3st9axG/bel/HSmlkvKPc2mkBT8kuROh8rWcoopepHoLAS9r6ZT3iNT7UwxXD6JKDn+kgTgLFaILUCjL2xvQmwIC60Fqv+MzBlG9/aVj4GGHuGVxy9sbg4uVqXsATW4v0t+hHvnv9kY/ifFr0JXVm05kiInGl8UfvMUKb/Bh4psRFUXRwIz51E9O9n5ooWvboBxpuBD0VlVpjrswFyy4nmJydw8JX/WIT6A7wIutKEcQq9QKu/O5gK3Z7c7fs8GSdLjpWCaBD9Q7V3HcroJIlxBd9L1sciTVNiFBu3PMVHr2R9boxAx6ovHk+UErrBEKykcnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yZHA+KAl+nvKGuemp/MvkSDFCE++ECBllJtQt6A2g9o=;
 b=IjTmSEAE1KtJQoVJHU+obzMBQDXgvzo/QHuTUXqLvey76fX7AlEdiU10YxVNLRadgsZgsQbnxUlbdTpKDbzV0IT/cBd6udioJQMCit3Ph//bXQjgqTVwz4xXLVO/AGeVrXEsLIrW5bkAMWiLAWu2cRjmjPUdVPLiBY/PylmuROc=
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com (2603:10a6:208:6a::27)
 by PA1PR06MB9993.eurprd06.prod.outlook.com (2603:10a6:102:4ee::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Sat, 4 Jul
 2026 12:40:01 +0000
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc]) by AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc%4]) with mapi id 15.21.0181.010; Sat, 4 Jul 2026
 12:40:01 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Sascha Hauer <sascha@saschahauer.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Subject: Re: [PATCH] crypto: sha256: PBL multi-block transform via ARMv8
 Crypto Extensions Crypto Extensions
Thread-Topic: [PATCH] crypto: sha256: PBL multi-block transform via ARMv8
 Crypto Extensions Crypto Extensions
Thread-Index: AQHc/aGqPgde27Gf40WUEagao5GFDbZZ8/eAgAN0sOw=
Date: Sat, 4 Jul 2026 12:40:01 +0000
Message-ID: <AM0PR06MB4148C9EFCC3967FB213F5FDEBCF32@AM0PR06MB4148.eurprd06.prod.outlook.com>
References: <20260616144924.1614561-2-johannes.schneider@leica-geosystems.com>
 <E1wfCCx-003FrC-2i@saschahauer.de>
In-Reply-To: <E1wfCCx-003FrC-2i@saschahauer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB4148:EE_|PA1PR06MB9993:EE_
x-ms-office365-filtering-correlation-id: 335ca7dd-0410-43ad-5e4f-08ded9c95d94
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|23010399003|10070799003|1800799024|38070700021|56012099006|11063799006|4143699003|6133799003|22082099003|18002099003;
x-microsoft-antispam-message-info: NOBcDSAvsyNHA9UEImo+FB71TD1+iqhf3djOMEUA02nkfBx5zIkwRKKn9Hh2xaMcU1k93h02jEAsi9bfb8p9ZA+z0uSL2HCRSIgYl+FAfQhCwx26jh/M2NYgOZIvxhUJRcRdTBIVUddDqI0IGZRSkmgiseqfe8vGAHZkJsPDhxcO4CEulG697HFY4rBb8rHauvr3vYz3JaNT6Lhm2XLRrpASTY5U75SqRiHAJ5rOVBXqk1eApN9t2QLEZ30F7h0HVnD7DEOd3G+HEVbhqp1S7oH75Mi28NTbJYgPPKl1BIFAY4PlVkNG3jSYKILw/qCgpAALZWT46ZwnrPxjwNbnd44fAkYW4NqA6Jza8uNBLVxWSFCRll993BrxIDAsE/MyoL+ursQFz1P5zm6unh3/nhVLimpxKS/iJdBFjy//Ktjz+biyXmQFhR+DLxldW8zSramzRoFQsAxp3xeGk987j4+UaJYqjPRq54uGSusLcFlJh2DRhTDLh968G4Gip7sBj51yGqv9VrNPp69ZPTfeQbXCRNg+i4H/eNEAuzy9Aky5yFVeTMSyK4cIi4FIGgSTO17WhBTARdMLGIsfuMrcLbTlhgBuWxfgt1tcRuz09qTA2/Pk48d5XGL29fCHAF94ETsGf41rtctYzFHWiReMv3oLrsWUW+TVYbwISzrmJMoRrl+ok6Q9tIMbBkYQgjB2P9r4SrbTBmJmQu/2uvgvdrcCyahBKzlm/y7Jht+Nk4E=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB4148.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(23010399003)(10070799003)(1800799024)(38070700021)(56012099006)(11063799006)(4143699003)(6133799003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?arf2c6zL3ubk8a1jKd0XmI6DfjkyXM72LezUA3xPxa1rdv7LaIVA2dLlAI?=
 =?iso-8859-1?Q?XyFopPwsEh9fsFn5GwkbVNe831d3M70gtT6JNqwOdsXwyGm1i82E16uMpV?=
 =?iso-8859-1?Q?ghyG+ESskPCes6m9ByDHw76chWPLZ/V5biQ9L2Oq/2fEMZqXJzXJG8N3hv?=
 =?iso-8859-1?Q?zOLOEAbkSMwe915w1yFv8GupmESX0TlfIiyafXe5JrVKY3d8xITpSotH13?=
 =?iso-8859-1?Q?QTM4TiPTbdothHuPkvKr+QBHJ4YFvMRXPJC5YIk9X474n2zIpr94sIOOai?=
 =?iso-8859-1?Q?uIkmBVWcUdKZcMSLxZRE0LI+D2xgIR/9CYC7SdyCzqgymqdZ47fHVnqZO0?=
 =?iso-8859-1?Q?7MDrDLdjs25gaoKhiNRy8JpqQakEK6ZDKaWbufeAQWPbNp2W28Zy3i/3Dm?=
 =?iso-8859-1?Q?6dsvl4G2yOM3K3UEpL8nqNHQ4UGJKOgHOC+uKGSGVmIhbrb6etYQJ8qjEW?=
 =?iso-8859-1?Q?tU3a/C+qBFHMYsf+U7JUIezf18uAJqdk/zQC1Lg4xIUEjoq0foySLu/Oe4?=
 =?iso-8859-1?Q?WWp6h8PR2cWpoF30ochX3V7wNl7tlF1XOeUKuWwfu1pgC/OGoTHPbTW72v?=
 =?iso-8859-1?Q?EtqdMpMuyOqKpCeKoUXDcBkXJVz9bCzYCvIzH7y6l6X8O2BPtWAxlXyQ0T?=
 =?iso-8859-1?Q?67lWRceBkITW8SOSlbz/FV6O9rLZsFChZYolaoGyn1R2E497CYAlqX//It?=
 =?iso-8859-1?Q?l+oZF3YxewAfaa6da+tmdB54eFnBsx/ZJQYFZiBuQV7+SsXMek9HGVsi67?=
 =?iso-8859-1?Q?xc5s3lFl6FJzRP5lCGDS2v+2zvwVZSBhDNFNbfGB9ujset79g+1tCE24a3?=
 =?iso-8859-1?Q?0/WAqDRvpRugYs6VSszPGAPXSannN+5dcbd/ustG9ifXcFNE7CrmpfwI8L?=
 =?iso-8859-1?Q?L9yvjEpW1RsH47GYL5CBJjiNNbIoCiWNXais1O4vTzlaSobMi1XG5ZJJtr?=
 =?iso-8859-1?Q?3MlwhI+c7ST2cCHXssa8ns6NOP63LF+22IxvEzr/klr1NX2dgUT5zK4TBR?=
 =?iso-8859-1?Q?Gy7m1jDsTM+0tsuwoVXd5LSoz3fDyCi5yAfvM3727rEQUxx14l3RQwUJqB?=
 =?iso-8859-1?Q?G9NBWVL4Eui4lLBmq4saqgJKjwiess0UmCO2x6fuuev4/36Y9YHUz6BlEY?=
 =?iso-8859-1?Q?ml1K2TAlFsue0ur2V1KjVZKNtwfCcITOkR5wOwipA0gMFiu7mmKbxG32ZM?=
 =?iso-8859-1?Q?3oTDgpg/g+9Adwv6eWoeq7427+Y2yRILyUo3LSehUbMnmFMdkMAlP3aAp3?=
 =?iso-8859-1?Q?oocJnB6pPnwantocBnycPVlfj1a4qCPb0qZC3SaIq7s2n6OVoqI2Y8d1ZM?=
 =?iso-8859-1?Q?9KbZ8PwPiO8kPBM8k5M4OmQ6q1GMSHv49wPkFr1X/1j7WaB4g0dM3nenQU?=
 =?iso-8859-1?Q?+K6ImyxnYPdWymtIRCbpJuiJ9Ge5LegdfJQdzvMgSHRgEjgAqqW27F5WTx?=
 =?iso-8859-1?Q?yONBTE99LtGXDLiD8KYZ35LeM3R0Xqy6RkfugaNpMdoeM+pZlTEMCQ2GKk?=
 =?iso-8859-1?Q?RPkE55XjJtPeETiE+2lgLT5T7FUJ3Q9P9gI69M2kWw86wfQrjOM3rfJyT+?=
 =?iso-8859-1?Q?JDU1NUAm27qp3pjK5p0jNjiAq0Z0Q5AfKWi3PVztsofouSXKSi75tJEuRk?=
 =?iso-8859-1?Q?NVJunDbbvR/nnAQiQA6mU5wwYaeyIYXyDqv0r9A/PqRcgx15fQZr5navd2?=
 =?iso-8859-1?Q?R9JPiJVvCRgp+N1/iA884A6gW8Vqcg0aRKqejkp0brJuBziD3Di7UTmy3n?=
 =?iso-8859-1?Q?2kp7vycc8iTH1+hXyTN8E0guD3cPl2lesmJEf/2O0Th59s2+38mbCLoGVA?=
 =?iso-8859-1?Q?BK/w9Nmh8awYDtGdXzoUa5YYmdQANHrluDcuiJN5f6RvEJpvla1mEfk5HD?=
 =?iso-8859-1?Q?pG?=
x-ms-exchange-antispam-messagedata-1: oC9QcaXMUgn1OCfBMN78bcDWmuiG33AXCtJhlwECHmOK8mI8fTkUEFCj
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB4148.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 335ca7dd-0410-43ad-5e4f-08ded9c95d94
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2026 12:40:01.4327
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sA6RMJTCZ99t08UNJ3qwEOzopfYiqs4ah4ojcnjv1a3KDHeXUfl2rH2BILZHh1t9h90UrCtAGVkdkFO1lhcnyoUjukmm0aATbli32n4rJ69xrQUffSJajl3SRZifOMam
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR06MB9993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_054004_645252_C9B154A2 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hoi Sascha, > On 2026-06-16 14:49, Johannes Schneider wrote:
    > > barebox's PBL ships a generic-C sha256_transform() that runs roughly
   > > 1.6 MB/s on a Cortex-A53. Callers that hash MB-scale blobs in the PBL
   > > [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [52.101.66.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [52.101.66.12 listed in wl.mailspike.net]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A1E542026DA
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sascha@saschahauer.de,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[52.101.66.12:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: t8s7f4ek3exthjtwghyqdxbbmzae4c63

Hoi Sascha,=0A=
=0A=
 =0A=
> On 2026-06-16 14:49, Johannes Schneider wrote:=0A=
> > barebox's PBL ships a generic-C sha256_transform() that runs roughly=0A=
> > 1.6 MB/s on a Cortex-A53. Callers that hash MB-scale blobs in the PBL=
=0A=
> > -- e.g. the fw-external SHA-256 verify on i.MX8M, ~720 KiB of BL32 --=
=0A=
> > spend hundreds of ms in the transform even with the D-cache warm.=0A=
> >=0A=
> > Wire the asm core in arch/arm/crypto/sha2-ce-core.S into the PBL link=
=0A=
> > and expose it through a new sha256_transform_blocks() entry point.=0A=
> > The asm has an internal multi-block loop; a single call amortises the=
=0A=
> > prologue (round-constant load, state load) over the whole input, which=
=0A=
> > makes the difference between ~200 ms (per-block calls) and ~5 ms=0A=
> > (batched) on the BL32 verify.=0A=
> >=0A=
> > Rewire sha256_update()'s bulk path to call sha256_transform_blocks()=0A=
> > with the remaining block count rather than looping over a single-block=
=0A=
> > transform. The generic-C path gets a trivial blocks-wrapping shim so=0A=
> > both code paths share the same caller-side API.=0A=
> >=0A=
> > The asm needs two link-time constants (sha256_ce_offsetof_count and=0A=
> > sha256_ce_offsetof_finalize) which we provide locally rather than=0A=
> > pulling in sha2-ce-glue.c -- the glue drags crypto-API and=0A=
> > kernel_neon_begin shims that the PBL has no use for.=0A=
> >=0A=
> > Measured on i.MX8MM and i.MX8MP, ~720 KiB SHA-256 verify with MMU on:=
=0A=
> >   ~300 ms (generic-C)=0A=
> >   -> 17 ms (crypto-ext, single block per call)=0A=
> >   -> 3-5 ms (crypto-ext, batched).=0A=
> > Both crypto-ext savings carry over with MMU off too, just shifted up=0A=
> > by the uncached-DRAM read cost.=0A=
> >=0A=
> > Assisted-by: Claude:claude-opus-4-7=0A=
> > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.=
com>=0A=
> > ---=0A=
> >  arch/arm/crypto/Makefile |  3 ++=0A=
> >  crypto/Kconfig           | 12 ++++++++=0A=
> >  crypto/sha2.c            | 66 ++++++++++++++++++++++++++++++++++++----=
=0A=
> >  3 files changed, 75 insertions(+), 6 deletions(-)=0A=
> >=0A=
> > diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile=0A=
> > index 55b3ac0538..72d4bd77c0 100644=0A=
> > --- a/arch/arm/crypto/Makefile=0A=
> > +++ b/arch/arm/crypto/Makefile=0A=
> > @@ -15,6 +15,9 @@ sha1-ce-y :=3D sha1-ce-glue.o sha1-ce-core.o=0A=
> >  obj-$(CONFIG_DIGEST_SHA256_ARM64_CE) +=3D sha2-ce.o=0A=
> >  sha2-ce-y :=3D sha2-ce-glue.o sha2-ce-core.o=0A=
> >=0A=
> > +# Reuse the asm core (glue is provided inline in crypto/sha2.c).=0A=
> > +pbl-$(CONFIG_PBL_DIGEST_SHA256_ARM64_CE) +=3D sha2-ce-core.o=0A=
> > +=0A=
> >  quiet_cmd_perl =3D PERL    $@=0A=
> >        cmd_perl =3D $(PERL) $(<) > $(@)=0A=
> >=0A=
> > diff --git a/crypto/Kconfig b/crypto/Kconfig=0A=
> > index 528e9a0d22..3dfb316b32 100644=0A=
> > --- a/crypto/Kconfig=0A=
> > +++ b/crypto/Kconfig=0A=
> > @@ -107,6 +107,18 @@ config DIGEST_SHA256_ARM64_CE=0A=
> >         Architecture: arm64 using:=0A=
> >         - ARMv8 Crypto Extensions=0A=
> >=0A=
> > +config PBL_DIGEST_SHA256_ARM64_CE=0A=
> > +     bool "SHA-256 in PBL via ARMv8 Crypto Extensions"=0A=
> > +     depends on CPU_V8 && PBL_IMAGE=0A=
> > +     help=0A=
> > +       Use ARMv8 Crypto Extensions (sha256h/sha256h2/sha256su0/sha256s=
u1)=0A=
> > +       for the SHA-256 transform inside the PBL. Roughly 100x faster t=
han=0A=
> > +       the generic-C transform; for callers that hash large blobs (e.g=
.=0A=
> > +       fw-external SHA-256 verifies) this is the difference between te=
ns=0A=
> > +       of ms and hundreds. Requires Cortex-A53 or later with the optio=
nal=0A=
> > +       Crypto Extensions feature.=0A=
> > +=0A=
> > +=0A=
> >  endif=0A=
> >=0A=
> >  config CRYPTO_PBKDF2=0A=
> > diff --git a/crypto/sha2.c b/crypto/sha2.c=0A=
> =0A=
> Don't modify this file for adding a special purpose sha256=0A=
> implementation.=0A=
> =0A=
> Instead create a pbl/sha256.c where you have a=0A=
> =0A=
> pbl_sha256(void *buf, size_t size)=0A=
> =0A=
> In this pick the best available implementation.=0A=
> =0A=
> Sascha=0A=
> =0A=
=0A=
Ok, done too - and also merged into the v2 patchstack with the PIO+MMU / SD=
MA,=0A=
since the sha-ing also wants the mmu enable commit.=0A=
This patches follow up version is this one here:=0A=
https://lists.infradead.org/pipermail/barebox/2026-July/056908.html=0A=
=0A=
=0A=
gru=DF=0A=
Johannes=



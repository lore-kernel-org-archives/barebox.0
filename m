Delivery-date: Fri, 12 Apr 2024 15:33:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH1j-0095K8-2F
	for lore@lore.pengutronix.de;
	Fri, 12 Apr 2024 15:33:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH1i-0001MU-Rf
	for lore@pengutronix.de; Fri, 12 Apr 2024 15:33:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	Content-Transfer-Encoding:Content-Type:Message-Id:Date:Subject:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JZhgiYOY+Cve/W6LuoZWlSICcetm12gQ8RoX8Az5Mys=; b=mClVXgI2Xyrpoo9zQLFhZawAE6
	RU9LkI2dxPbHET4mlrTD7K0+WQ5CPIt48960yT86FLWv1yjf8z4uGp3HIEzXPPzyt5PYuikBgkE/t
	98HTk0jePpcTlG2WrB4mXnAjOrRT1Tu32KbtmZF7QbFS/Maqgn6Ahp13zJ32W7t1NeSdZPhC4aOLI
	FbFLU16qcrJU66IFxx390OUrUFuvuNvlN/A7Qh3UoCIUZLQdirZb6K/hW7wVQ7v/HUCCZbDLx9Rev
	UyZYg5nXOJhf/+VGoRkCSsSxP1aeRccOlfBTPpxnKu2AgUhilRYZBJ/X7utQmYRz8b8NSPtiqQosQ
	DNCdgZpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH12-0000000HLM9-2n3i;
	Fri, 12 Apr 2024 13:32:28 +0000
Received: from mail-he1eur04on20701.outbound.protection.outlook.com ([2a01:111:f403:260f::701] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH10-0000000HLL1-0gOr
	for barebox@lists.infradead.org;
	Fri, 12 Apr 2024 13:32:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bigjY2sh2jDV7VEt72fgdU6ng89z4p+pkp7bEYPMzjSZAsNWACWejNdDh7Qf7JqLd5ZdokfQEOPEscmeRRaAp3e3Bm4Jt2VcepN8cJ2wfkNLmGucJu0MOHmNDlcP5tExJiha2281TIInuFCJ2C4LRfLwgCjJxyEC3G0OtXT7lCvKVLZkuRdhNU4rRRVAATTHL0514/Ed5bOreR56C6iAmm7ECY2/1i0BwMMCGv/XDg3ZUxQlRb4xrxu8xe46EOHgMxIG1lNVakRhQYXuNo5z1H3BbDZcggzUfNfizre367d8bPMZZnvIVMNcFkb8kWLXwbJv2XxWLCJh3of9ru6ZeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JZhgiYOY+Cve/W6LuoZWlSICcetm12gQ8RoX8Az5Mys=;
 b=mS9Ezt/w4TTPEWHQDRveqdZMeSbpqMlwrbCDCiJWJmIGoFcvr/HMw65Qiq/pofqXFXSqXLLfBrcNYObjYas4v20DzpTDEsWlnYxdnh/aH6/QEhcahLrgZGm1WHLDH8m12I/Vf70eRxVUf8rYAD6UyqoSoGfGHxxKiHpoeE3+I/udon8eSOMNmzTC1/tIrfNURyO3O2qwQ55LHAM8Uc/HgcZLjZkyEvr2i7CMLyTkNz+sj84EKi/JUyLm2igDPhFDAHf2kA2bkmMBcQJ0rvi38oOTXAff5FgS255qpvcIy9ZHHOx9W/OiWxIXZoGbnhqymBbAJg2E6fbGcF7pzBkSHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JZhgiYOY+Cve/W6LuoZWlSICcetm12gQ8RoX8Az5Mys=;
 b=SLLU/z5KBgqfma3o2Sv03FigeojlKRvw+RcGDYofnuK4EXQSItTTUpJ/9hsYh2V0SJFkl0ZUssNGwmH2Xaw7UZdGgC4gyW9c2KqWqml/iIkA8o+u0v4unU0t26sy6oOOlQTOsy24YIGrVKiWSz2RJ2NK1DNp0mcsrMC/D0Q0OWs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB5PR08MB9998.eurprd08.prod.outlook.com (2603:10a6:10:489::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Fri, 12 Apr
 2024 13:32:20 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.042; Fri, 12 Apr 2024
 13:32:20 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 12 Apr 2024 15:32:11 +0200
Message-Id: <20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANs3GWYC/yWMSQqAMAwAvyI5G4ilRfEr4qHVVAOi0rqB+HeLH
 gdm5obIQThCnd0Q+JAoy5xA5Rl0o50HRukTgyKlSZNBz3bbA+O5TP7XcfUGdV8YS6Vy5CpI8Rr
 Yy/WNm/Z5Xi8n1iVoAAAA
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712928740; l=2369;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=R0NikpjVHxWR4Nx+Jhgx1iPMahTVtG90RAag4yLYwo0=;
 b=E5on0GHJW15TCAy8EXf0v9DNgDgRqTvKv7ZnXCSF9kxekQQzDANVF4ET6tZRujqi7fl1Wn0rA
 g41mu/mIkfzDLZUeS07GKg82GymOzYkBzTQVITIHaYOGAzkxD2KgxXa
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR0102CA0008.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::21) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB5PR08MB9998:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b7afee1-42ee-40b7-c83e-08dc5af4fac0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NSGduOqDZfGTNQnbErUoVzohYPxhorrJdHAuNQWhqP3sidD6eZ2xd7FCQ9mz3fCoW1IqXY9y/WeXEtXYW0hV5EiU0z9E3gArCSlKQE5D6OajO+c/CieEgB3fdke1vxEgGy85480xMGPkKt5FCDenZqvrAFBqBwpSYbnU1vcS+k11vhj+z7kf74tbuLgw00xExxrR1ETRqE0qvENZD7p+NLbG+CiGjtTn3atKHVPuN0yi3/cmUPdDM5i7CPbLlFIxOmphyRkfn4idE971FabK13OR0iSyalAA5pGM+r/ZaFXH3NAN+5N3O9mOe4J9Tihdl/9pBASt/kzSj4yP6bu1cwLZCHg7HDW1u4CX5E7ZVEhz+VpoC25Av/EjhUjx097VtmhvgP20z32QjTQtnAqCb8vnE7bziMYL9y/ChEvNg4XQHQFVo7dVTyxBm0sQE74FiEJ849IxFp+AMYC1ghyumdaeuzjoS9vIxy3pPFbhA7wWyq+Odn21ZTdENhA9zgk3KHFC7n1MC21HnIuuoRm1EC+DUdEaMV5V7xOT46LlHo7x8zRc7IczUn1p9ps/RJK6o8V5oDRxclg6UMjTsAkT4C7db0IkXEy9VMnrVGIth5ba/fOK1te0w4Z9PNvoCz7029IVyWCRmEVcTjZ4hHr0WTa3NZRJmcI6fnpSFNBA1bkAISysFqmwX2Qkhe4mI4y0BxkpyJHur0wbuZzST2v6bA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlZjekhVVzhCbHlWTElvOVl2M0ovY2Urc1hyMDc4WTMxYkh3bDdQckFLVXF4?=
 =?utf-8?B?cHczbjU1NHBLWGNoa0RSWW8waWxBT1dXTTM5c1gxTzY3K3FrQlJLWHJjTXNS?=
 =?utf-8?B?bUZaOGxxWlU0VExmRU80WGNmS29oWXZhT1orSk5EYXlDMmQzN2w2M2hPL2RQ?=
 =?utf-8?B?YzFmVkVLYnlWQmdBZ1VXNzlOOVdZZFAvMzNIdGlOencweXZ4Y2dtTUtkMHJu?=
 =?utf-8?B?Q2QyUm5QNFh4QWZDaDYrdWhxcFpYd2xzdlhGMEpub3FiMkhaQ3g2Szk0bHNT?=
 =?utf-8?B?aERoQS9reS9CYjBrNUdUUTFtRGdFanAyQlFzWTBTbmdYTjNrL29tTkY5R3Vy?=
 =?utf-8?B?SysxYllHMjUyRDF4cWt1bDhud1VxMW9oYnd5N1kwb0lrZVZUTHV2cXhtb3RQ?=
 =?utf-8?B?OXhBWkNWOEdMdjFGYlAzY2hPOTFrdW5uZkx5enJsbTIvYjJWZ1F0bmUrdXBn?=
 =?utf-8?B?NVNMeVRrb1hCR21xdC95Y1p1Sk5oYnNmNXVlTUpab2NDZXY5U1BCa1VFbU43?=
 =?utf-8?B?T0FxM3NiTDhZVjdPMzllYzRMMEx3UmJFNVhTWldSNjk0NlNZcklNWUpUSlBV?=
 =?utf-8?B?NDEvMUtoM3F6dmFMUldVSmFIaGpJU21Yd3daSDlhN2xldnlZRXB1NnVzWXB0?=
 =?utf-8?B?aGhVNEU4UmdRUzNLNkpKVS9CdjFCSlNiRHlmazFTd281MjUyZ3ExWmVoRnFa?=
 =?utf-8?B?Z2FoMzM0aUpySk16d3pka2xaRGcwS0gzNXZtSFc3dG9GODZQcVMxV0s4Qmsr?=
 =?utf-8?B?bjlaOGdIUE5WeWhwZlpNTUhBelEyY1YyQTlqUXFyYVNMTG1vSm5pSzVJN0oz?=
 =?utf-8?B?S0FPOW1SZmw3N0M3enNTTWlCc3YxZWNtVDJVSkNLelNhWmNyQmhhdUJYVjBK?=
 =?utf-8?B?REswWXlxcmMxVUlwMUVWZm01OHVBWllOSDFsYmZaa0ZURU42OGQ2clhLWFor?=
 =?utf-8?B?bktYbExrS0xlZXBYWTNLNHYzZks5VGJiL1lYcFpsODBpaytVYjNvWFVyUnBt?=
 =?utf-8?B?NUtPWDc5d3lDOGd6cStBTTNGZjFzNTZORWo0R2tMVXhVdjVUTFZoeXoyNFN4?=
 =?utf-8?B?emhrNXZIN25SZVZxVXpJS1JVNldaNTJhbGxubFYveUZERGcvNTdGczJYeDlD?=
 =?utf-8?B?VWJjbFprWEp4YW15THBHNEFDdXUyeUdST3RKaGFGSVhSTVZRcFdSeFJDdURC?=
 =?utf-8?B?QkpmS1p0Q255bXlhSHIzcllmN1VYNTRNNUYwbjA2YURjQm5qK08rZnlaQnpY?=
 =?utf-8?B?Q1M4U2x0VVEySnFVWEZMK1BOeC9iWTRjRm10OGlhWnVFTVJpRjBYNHZyNENh?=
 =?utf-8?B?ejhGVXgvWmFpTUFyZ3R0MENIWUMyMDVpa2tkcWthVlJhZzgrdmViM3RkRWdB?=
 =?utf-8?B?UVUzSHdXVTdMTnEzdEtqbVFqQWZVL1NyZ3ZJaEFVVlkyaTQxUG1PeENxSi96?=
 =?utf-8?B?Zzc5K0FZTlhjMDMzZ051TU5CNUtDWjNwWTdJbVlRUlV5RzQvcW5JSWpZQ0R4?=
 =?utf-8?B?aVNRS0pSZ2VsQzRrK2g3RDBuZUdRTXJFSzNtQlhhQUxDSVJMZ0JWZ2xPSVFW?=
 =?utf-8?B?Q0hCVTBaK0hyZVRrMC83Y0tIWndZeUZoRWZtKzR0bkxFUjFpYWdzWWhwb1Ev?=
 =?utf-8?B?RDg3WUtMakI2S2h3anJIcEFZb3VMbFpFWHdXcG5SUmpRTnVablFDVmhtdGxa?=
 =?utf-8?B?NkZ5cmpzVFRHSENUaTVSYmJlZUpTQ2loVmNHWUxNdTlKTjYyTDRSVEhoUXhF?=
 =?utf-8?B?TXpFWmh4UGthdVlMNnlRc3gzVHJKYXIwVm9vb1BjZm5aRGFTN1JNUkFMOGQ5?=
 =?utf-8?B?SXZ6V1JkUFpoL3FvSEtPbDRZYWFDMFplZUl0UkdkYy8yZzNoaFN0VUZkRTlu?=
 =?utf-8?B?TUxNTEdMNllVb04rSk53WlI1bit1NlRPMkVjR0tWSU10MlhUZStWeFBtbEpw?=
 =?utf-8?B?MUxKVzk4MVBnV1A0R2Q4ZXkyTTlaNjdOMW52a1A1WGdLbkl6WjdDM09YSzJE?=
 =?utf-8?B?OVV6RHpXS0hPSGdZMHF0MlJrUmZVYXJ0aEwvL1RURnRlRW1aOW10VUVha1h0?=
 =?utf-8?B?WnFJSERVYUhqR2V1K1lxaFpMTEdDVGU5TzV4OHY5WWZ5eXBLd2YyNi8yK0lM?=
 =?utf-8?B?YmdWT1RHcjU3SUYwUURyVEJwbXJCTjNCZDhaZkpyODF0ZGlQQzFxRmpMQ1l0?=
 =?utf-8?B?Z3c9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b7afee1-42ee-40b7-c83e-08dc5af4fac0
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 13:32:20.5831
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KoIjqU/2nr4yAfWt2BJTtK1p5dnD/Gb2KqH7svrRpywSBZq6M9sUDp4myWhrfe36LXdBC6GQyE+a/ebFyuLTJA4h7P7rOucRBsqKZzw267g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR08MB9998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_063226_313643_A0045B86 
X-CRM114-Status: UNSURE (   7.72  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/4] arm: boards: add wolfvision pf5 mainboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Habidere,

This series adds support for the WolfVision PF5 mainboard, which serves
as base for recent WolfVision products. It features the Rockchip RK3568
and can be extended with several different extension boards. The
WolfVision PF5 IO Expander is one example of such an extension board.
Support for this extension is also included in this series.

Patch 1 copies the device tree (overlay) from mainline Linux.

Patch 2 and 3 provide a library and state definition that are envisaged
to be used by all WolfVision boards.

Finally, patch 4 adds the actual PF5 mainboard support.

v2 addresses comments by Sascha and Marco -- thanks for the review!

Looking forward to your comments!

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
Michael Riesch (4):
      arm: dts: copy pf5 device tree from mainline linux
      arm: dts: add common state for wolfvision boards
      common: add wolfvision board code library
      arm: boards: add wolfvision pf5 mainboard

 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/wolfvision-pf5/.gitignore          |   1 +
 arch/arm/boards/wolfvision-pf5/Makefile            |   3 +
 arch/arm/boards/wolfvision-pf5/board.c             |  88 ++++
 arch/arm/boards/wolfvision-pf5/lowlevel.c          |  36 ++
 arch/arm/dts/Makefile                              |   3 +
 ...rk3568-wolfvision-pf5-io-expander-upstream.dtso | 137 ++++++
 .../arm/dts/rk3568-wolfvision-pf5-io-expander.dtso |  11 +
 arch/arm/dts/rk3568-wolfvision-pf5-upstream.dts    | 528 +++++++++++++++++++++
 arch/arm/dts/rk3568-wolfvision-pf5.dts             |  48 ++
 arch/arm/dts/wolfvision-state.dtsi                 |  71 +++
 arch/arm/mach-rockchip/Kconfig                     |   9 +
 common/boards/Kconfig                              |   3 +
 common/boards/Makefile                             |   1 +
 common/boards/wolfvision/Makefile                  |   2 +
 common/boards/wolfvision/common.c                  | 142 ++++++
 images/Makefile.rockchip                           |   1 +
 include/boards/wolfvision/common.h                 |  32 ++
 18 files changed, 1117 insertions(+)
---
base-commit: 8351de807d1430977fe83457c85face9537357d4
change-id: 20240405-feature-wolfvision-pf5-4d15a072b0b8

Best regards,
-- 
Michael Riesch <michael.riesch@wolfvision.net>




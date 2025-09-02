Delivery-date: Tue, 02 Sep 2025 21:10:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWOQ-007NX6-1w
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 21:10:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWOP-0005tc-AX
	for lore@pengutronix.de; Tue, 02 Sep 2025 21:10:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sfL0jCxngpAeBHH/OnzsGdBCX9zMqHd64E1w41p9EOw=; b=imPonMNqzw4swA1oAaG95JgPwS
	WhOTgWW+YnrI4EJzVUEgvTjnY68X94lA0MJM6uilo2PxltnvwnaRwzd1ei2Js9IhGTPnyP9V83Vc9
	xxLECEvS80lXRY1UVvesHzq/6IeIQo33hi5Pc7LLZ5sAZhWBz9/mBFXrByddGdwtK7J8jqo3Lsqm8
	/E7fTc0BwIkzshX0g2ucuafuZMKV/pFLU1A2U9UPKoO3hY56ZusJrx8S1EbdDRkOvb6sDKgiJtC1r
	SS+nM1teGiIm8fsR0SpLZEvPcZnrq1tgZ+ZNAdGr1A6wBAtI9l4dHp26genoooYYWSKLU8cfYPqug
	k6MVzNzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utWNd-00000001ZAI-1Unm;
	Tue, 02 Sep 2025 19:09:21 +0000
Received: from mail-germanynorthazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c20b::1] helo=BEUP281CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQfQ-0000000HV6T-1CS4
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 13:03:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x3cE+LbpTJ5OnxvMSGQ0JAQ+fZYLnUllBybaAwjT9lzDu0NJryG0iJ9V8Wjfq4AJ+lhms0JqFYUddgMzVwkJaz767oIdaoE5cZ/nkZfP/ScN4Hx0d+JbT117xUiqip53zaGcUCmufKirFl3V8ozZwPndgj5lK8iZq8wg9XlMHS10/lCcG6y9uHARAoVKtfzcbpQ+8tKOaItlSo3CT6smN+JXQduJHQhhwyk3Frb4FXiWSxNFX5XDzSFG52Ts6lnwlDD3Gppr1AoYaTEbPiOcfNTVRTrPpXpLYZThCXtJSoZXWv56BI2exZwS4cOAvOP82h3Su0EBPezHpJgMnJLmpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sfL0jCxngpAeBHH/OnzsGdBCX9zMqHd64E1w41p9EOw=;
 b=aeo8V9lUHGspshS9ccbjEQ29xw0jpH/mT8dkkXOIurji9aVqYWMRAHUsNSwx7DOmP6zZggZ5lK7PA/fIAYvWAzfgRHAGHCayFxTlXQuuq/xoCIVWTvlapl3TvSWwlneoAEHfnCLAx7Us/Xpk69gBnte6zVFZNv/fHDD1dBeOZZ98rVO17pJYhpAITuS5YpaCnbo1fPNDBwxdD8OIollp7SbYaVEN6iQ8+0uWSrK6DupKxUnJd2VR+P36eMvbpDHFN/MCuWhD3saIKjTikf5m5TaZO1H468kx6xiJfD4jdU3vxjUXAbn678zfDI+XH5ZrwmIPN4ekZSpvKQu3n73Tgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eckelmann.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sfL0jCxngpAeBHH/OnzsGdBCX9zMqHd64E1w41p9EOw=;
 b=ocYziJj+EKZ5V8u1296tHbrHUWZvBDmOi1F99ZCTg5kpeQhpYkJq7fCXK81fzznwGBhnWfiXoW9o5ygwP4AkK5tLAm9/Q70AxaLeQcO705uPbOyO/6b0zsagX5whcQlhAu9DOf8Iu1Cl6P45jNpUNbmDfzibVD2thSy/UeuELrE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:da::13)
 by FR1PPFAE7C0AA8F.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d18::f85) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.24; Tue, 2 Sep
 2025 13:03:12 +0000
Received: from FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 ([fe80::3927:fe99:bb4:1aa7]) by FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 ([fe80::3927:fe99:bb4:1aa7%3]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 13:03:12 +0000
From: Thorsten Scherer <t.scherer@eckelmann.de>
To: barebox@lists.infradead.org
Cc: Thorsten Scherer <t.scherer@eckelmann.de>
Date: Tue,  2 Sep 2025 15:03:02 +0200
Message-ID: <20250902130302.142251-1-t.scherer@eckelmann.de>
X-Mailer: git-send-email 2.50.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: AS4PR09CA0030.eurprd09.prod.outlook.com
 (2603:10a6:20b:5d4::20) To FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:da::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: FR4P281MB3510:EE_|FR1PPFAE7C0AA8F:EE_
X-MS-Office365-Filtering-Correlation-Id: 73682df8-72c5-4888-a521-08ddea21124d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?orOkdEGwbk1p+PueESH29BcwPH4fWhChMgVt4TFu14NyjOuQZn/J8Vy+4v9z?=
 =?us-ascii?Q?OGD0P/DAPS2NXMtSfG3KB+oQ3egnVMR2GLximqBxIcLOFcJWAAkym4KT9FuR?=
 =?us-ascii?Q?ENvwc8aGq3wcMkCsJAz+e1pI7YXfZlHBiomMAYeE6aaRx0dX+ynJ7r0RjAOy?=
 =?us-ascii?Q?xkri2hHxX6KUlN6HTrBDcCI10ByJ1RPwvPUqFP+hdQufTGtZU4TTIhg2+vHV?=
 =?us-ascii?Q?oWZfiWHnki5EiwvMaWyI9yXimqpgU2PlFaX1hi98xYNqeQuXswiugccxfwmP?=
 =?us-ascii?Q?kRNxxQXcG6+L32HxrxAz2lA2CKLMacMelTdDBNhP/xDjpWTznTIoOeDcJpL9?=
 =?us-ascii?Q?AIx8XWzPZF+StZABns0EkW1YPCvll31JzMq/VSyyMEM9yvasUMxhKTsiAhg0?=
 =?us-ascii?Q?eaVrTV7wjd4PdnOiRDmKMHGNwpqMWGKeBc3XBO9iIpkfeqpiOtwpW8d2bFyD?=
 =?us-ascii?Q?S34JorCxzn0dsSXWn1R10vsAdYReqtDQmzk1iDHXws5HEUXfB4uVhGjYHN5T?=
 =?us-ascii?Q?aXmvSXHUpyGx/S8RnWeQrC1Zj1g5PCyleCCIUm9SEThxtt0huz85H+u4K+Wo?=
 =?us-ascii?Q?1uAUtQgzt1zTm3d1s5ENMyFUPUYQ0ygpeDC/dRbWRc/fe2H8jEbV3NGfH73x?=
 =?us-ascii?Q?QAFsgsIQFBhfZJSogNHXLUCoBaQS1yoCrNn/uQvxCqwR6qCPQVsMvbdMtqo2?=
 =?us-ascii?Q?BNyiLenrKi2pS8VnV5lAzIyCGIzPr7+S/lnxMfmyWno1E2ttfTotxpKaNDko?=
 =?us-ascii?Q?FtDgSTJgdnv/eoYLVKE/aMpj3ND3fnNjaJMyos96ja2UB/bLKgGBShl9DaUu?=
 =?us-ascii?Q?38g2qcqWZILkgfvOm/6nV52DhKqOiO/Rwes4DHYTZ0htuf67UKeVeSIAOSDy?=
 =?us-ascii?Q?fBm290G8QEureB7yOQ/JIN3T4fREciFGwx/CpilHCIgwk4NLakV4LTrgYrBQ?=
 =?us-ascii?Q?WQAB8ddt1H/BxrlKeznI4gHl4YQpTuQIp12xyC/402D8BwjtRAYwt091xE60?=
 =?us-ascii?Q?Tp5EtkyUFFPPvdPtOOyM+kvM+l83t3lB9ViGuIsYy/O26N8O7KBmU5BU0UoX?=
 =?us-ascii?Q?hg11S0Tfw27cqhDkTJANRUZyIST5L/s3zYpS75Zf07HTtms2XQSNITIFNAxK?=
 =?us-ascii?Q?B+kkcdyqYeu+P9qt8IFGPlftRaL1C6VjQxRvvZEYfYMPL1p5iESSw/0HlyA8?=
 =?us-ascii?Q?USq+ISxUfmBt4/x/fhb0WahpfD3g0qAGQH4i3wUacw7/IDPNXNRLEfcIn5yn?=
 =?us-ascii?Q?DR5BRP3t1Wr9LzzNOhVVaKu9uv8grSEkaM0PB6znS/mHgBPUvPKwmDccUMFN?=
 =?us-ascii?Q?LO9gaeWP07EljbIDMJ3BL7waGTaw39ViNfMTYj9rOwEeX1wupYDM13/mJ5Lp?=
 =?us-ascii?Q?+/JARVF1McumP8/eaN3ijeabeYwMvcLklxkOd+2ceCF8a2gwMUt/aRRjDN1U?=
 =?us-ascii?Q?OyN+VHCusK4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3C04Ud7zY1FGSKDn7f7dxeu3gal4bJKjE3AFCb8I1evWCZu/nQeX74OWT49T?=
 =?us-ascii?Q?WdrS+JJZclPUHLzSEq2wCeV2qweYs9deb9rQQAGm+BvdS2J/FfFh8Rp8nEkz?=
 =?us-ascii?Q?WV7Ot9XrBSMMqhnc+Z3gewDjtiCK1QeBYYI/Dx3GvmEcPTSFF8HCT6l5qY29?=
 =?us-ascii?Q?vEoAR2W42SKcgS1mAHW8SJTVGIX3HwFg+tE0U/3cHswRhgX8JVJauErPsZnn?=
 =?us-ascii?Q?3xl7TbVsjef21SbhQSfW7sI8q/RWggIAQvn46iIfTsEONCbjoIkfeoSwh+nj?=
 =?us-ascii?Q?os0Xal4sYSS128U+/qrhGZwmom+iQRI9fQz4VbMjAuLlZ5JtpDrRR8etwCDG?=
 =?us-ascii?Q?Ht7wM9k1zSXou73TpGE7Vor98ZZ7wVBHxkK0JwWlL7zejqak4tCfpKKhOsAs?=
 =?us-ascii?Q?7GDrSXn3OY6U6XsDEh9razOCHTnWbwRJA2gj3ajtvmIn5mQHizYs7mgJNMSL?=
 =?us-ascii?Q?wCSgIUGKTKYyX94UBt5B+q/OI3Nv7rK0PG1Kh7g/ex1zkwHyH2c1RiyWFW69?=
 =?us-ascii?Q?2NtfMN2zfFAaOn1pJzmxXwXyQ0wvjhuFxxXY6Cf/QaOOIcUNgjA3blxdOx57?=
 =?us-ascii?Q?mM5gi6IjLoBz69s6+CdLykhvElGHEifhjsDfUNXyfAXnrx0s+8g8hmE68k/O?=
 =?us-ascii?Q?Jt4pJDBqCeCtYdtpkjzBm70uge26LVCyZjG+GoSiSfKNhb2F1Gv2Z6+tN2ij?=
 =?us-ascii?Q?CP8/AnFSTxXe4HfrgldS0Cdg8/CXwU2jcq4hSKX3n/QjtBoq6HcKdzMTYE/Z?=
 =?us-ascii?Q?23IsGY2mVBwiu5kkUjixYr/Ldx6SKv9P4lcJ4N0gSr1nxV7Dd/66xY0icGgl?=
 =?us-ascii?Q?hFVhWNlNwrB5Y312i6vETTIq1FHFhcAAzPdP3blOu7dge4HLMdYPnjpGXUVT?=
 =?us-ascii?Q?lgWpPvhRp+qVSLu98CaFmxQ3e9TFCqobD/ATAB5VMUtTsKEe00wAJ1yMvBG0?=
 =?us-ascii?Q?TSUsqw+uH6A5WfTs3hpmK1RsTdzqraehYnYJST+EPUkN1+cU0HpIf9lnWVP0?=
 =?us-ascii?Q?6CpkXyRtUxSuB8A+10deXMNQy9JH8OgfBZ5sJ1bKmI7gON6rrOTaTW2gKCkq?=
 =?us-ascii?Q?ZGrkjNz7jZS8EqXh9JKRVAEIVyKVlfe//vpiUiHEUOBbr+gQmALj7jccMyEW?=
 =?us-ascii?Q?ikPTyUa5GAsZuzC8BrvVJvHCNch1BpHFTbC9Nbb9Gznu/gI+81CNLsyK3eFx?=
 =?us-ascii?Q?lESnIvKq3Fo4aQDfKsYHsLS/cajbGOGEn9IFib7A3OSOYjEiIw+CQJHOPmsv?=
 =?us-ascii?Q?v0O91cyWRvAlgoMV71R9NqlqlLRUvrBv1230e5y4tV4OjIsZIpq4ejtqrzSV?=
 =?us-ascii?Q?I73AQRkuUFEh6JU886oXxtCrU280PmUhMauixK0yHtS1z4K4kL1zB31xZ8o6?=
 =?us-ascii?Q?RtgN2F5V6hLDHGHSPXqdhB2Y9CAkXVrdlnEBJdZgq1Jfevv/abcKpsP0paJb?=
 =?us-ascii?Q?IKenh82ON4k03M2G4oKbvkuLjjG31f39PWj7UMv8UEccsVzSd0IAXZ5nx+x2?=
 =?us-ascii?Q?cefngBL82f2EMlUDBKUcVOJ27tmGO8cpqiqf2swa900s+M9XPFMTAjnCCp0B?=
 =?us-ascii?Q?L1E8OxZbZgEEfoRIBGfAqr4lWzK3KGHNNQlrLIsZ?=
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 73682df8-72c5-4888-a521-08ddea21124d
X-MS-Exchange-CrossTenant-AuthSource: FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2025 13:03:12.1077
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dw9Xe6PE10dNN9hD5ARYDNza2il8e1uPz9XBMRC6B45hLbGejg3EnAOae52lNUHOC9MsTCv7xCF/11ZKNvhLPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR1PPFAE7C0AA8F
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_060320_341909_3D971DE2 
X-CRM114-Status: GOOD (  10.02  )
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
X-Spam-Status: No, score=-104.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] doc/barebox-tlv: Fix typo in path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fixes: 5a7fc3321407 ("doc: Add User-Documentation for Barebox TLV")
Signed-off-by: Thorsten Scherer <t.scherer@eckelmann.de>
---
 Documentation/user/barebox-tlv.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/barebox-tlv.rst b/Documentation/user/barebox-tlv.rst
index 3db13ec88b22..4e83cdf47fc7 100644
--- a/Documentation/user/barebox-tlv.rst
+++ b/Documentation/user/barebox-tlv.rst
@@ -75,11 +75,11 @@ TLV Binary Generation
 To generate a TLV binary the schema for the specific TLV must be defined.
 Schemas are yaml-files that represent what the actual parser in barebox expects.
 
-An example schema can be found in ``srcipts/bareboxtlv-generator/schema-example.yaml``.
+An example schema can be found in ``scripts/bareboxtlv-generator/schema-example.yaml``.
 This schema defines some well-known tags and two board-specific tags.
 
 Afterwards another yaml-file with the data for the TLV binary is needed.
-An example can be found in ``srcipts/bareboxtlv-generator/data-example.yaml``.
+An example can be found in ``scripts/bareboxtlv-generator/data-example.yaml``.
 
 With these information in place a TLV binary can be created:
 
-- 
2.50.1




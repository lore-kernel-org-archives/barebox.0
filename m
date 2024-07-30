Delivery-date: Tue, 30 Jul 2024 11:23:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYj5J-004Q1U-13
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 11:23:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYj5H-00039h-Nc
	for lore@pengutronix.de; Tue, 30 Jul 2024 11:23:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oT3O7IX85/Zx4tYqA+sn+DggjaoHxF9x6uKp6JC34II=; b=MxQWs775wixlnSjUF73tGvr1Gg
	R7Ig2CUsaUTIAt1XeiWh2WL3Yhyoeids0wu2IWVbAsP9UM4syiI7v8G1xMLKUWTfEmgOLsRfOM2IX
	LzQmydP8MZ1ClicOJ+3BO5dlpztkv8vAhmlCx8px7X6C9m/g/Fnb7nmvQwosBmce49ckB1Di7Xs3w
	CfrfxjmKmnt3W7ZRi6OqXH3qTSpiYranOFEIXutSVFL1mSxMvIL0pa0MansXrP6yLTL/oHrqRlfTc
	++R6FjU+1j4HnY6e2kv8qDE5oVlj6qA7w9cTB76u3QV7aB+EbaiYZ091xydguFE6lPhwILu1vpSzm
	mysDA3TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYj4i-0000000EUtw-3PC4;
	Tue, 30 Jul 2024 09:23:20 +0000
Received: from smtpout146.security-mail.net ([85.31.212.146])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYj4d-0000000EUqw-0I4v
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 09:23:18 +0000
Received: from localhost (fx601.security-mail.net [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id A93193496A9
	for <barebox@lists.infradead.org>; Tue, 30 Jul 2024 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1722331391;
	bh=UDqkPC2qJEiYBHpYS+pYfD0/VM04b4Kc4fv3eII+/S4=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=kQSFcuNr5LtRLtBkAP8TBoUdaO8mNZz7wpmP3zkjvFBXQZ3HD5bfMM9O9MS6kRjsb
	 KcYDF/7j0KW7iWM7csMxGo3ETlRDG621hyTWsTilb0m7EbhY+04PqDTC5V6GwV8MH4
	 0P33GCkQXFb9I1gPJXv6QvthbEWkLv+4uAP0rv/Q=
Received: from fx601 (fx601.security-mail.net [127.0.0.1]) by
 fx601.security-mail.net (Postfix) with ESMTP id 846B9349696 for
 <barebox@lists.infradead.org>; Tue, 30 Jul 2024 11:23:11 +0200 (CEST)
Received: from PR0P264CU014.outbound.protection.outlook.com
 (mail-francecentralazlp17012050.outbound.protection.outlook.com
 [40.93.76.50]) by fx601.security-mail.net (Postfix) with ESMTPS id
 AC4033496A9 for <barebox@lists.infradead.org>; Tue, 30 Jul 2024 11:23:10
 +0200 (CEST)
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:14b::6)
 by PR1P264MB3696.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:143::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Tue, 30 Jul
 2024 09:23:08 +0000
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39]) by PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39%4]) with mapi id 15.20.7807.026; Tue, 30 Jul
 2024 09:23:06 +0000
X-Secumail-id: <6e83.66a8b0fe.a85e8.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JBlmunNrVF9Js3Ke1JNM4m6JWi6XXVkSTUsqJMVxaY02kcxDfXGA3odibL9tRKf1ZlqZYFRh5BI0uU3T7HUs3nBM3IfmwTdjt4Rs4ke/kEX3HcvBaZcS7mluj70Wh+R+Xs+I+nYVQoCxAcknXDk76ADWQ5sZ3RBKIaY78S1tmGYWcq0yVBnj038bF3w5g5iHOCJ7C2obmik6+G1NDcUpEWjvV8jcDKDBiQffXAwwMugiuTQ8K2e/mmQsskztZRdEQzO9s7BgGQlxVjyvCfQQ/NBTsqstqkA4awdMz9u/rS4lN4VMXfxfiBBIsfMZ71EJuQrvSsxofiOWPyjQ4x3/kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oT3O7IX85/Zx4tYqA+sn+DggjaoHxF9x6uKp6JC34II=;
 b=MhHTuXG3JP2oWumTru5z8jbKMzRgB4iMnXzStbGuNYDivFlRtjbhmj6oS1M8V9NJt0medH8nJllBdMRmG1Pqc+2TqSw+/U+ZakTF+QUUnJ/qdWWfN0INkTThULlq8VUANLMMoh8ABnFG2f0SJKlv91sn8BBV7ZBN7Em8dyRl7MG/Z6uw2Lz2Vnaf1vFav+VppakO9NkjGAd3z3v7OdbXRDCSJDUYH6WHPUPyEw/eQgeWPW+kTxPFcveDosbKRWQ7SfxNapa1Fvfw0ykMzvUtZ0j/vXYVY18sHeTiq4JUA1xcv8ltPLLZgvxa3TRmiI6zLxEvilFXPtQRg46/FvyGkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oT3O7IX85/Zx4tYqA+sn+DggjaoHxF9x6uKp6JC34II=;
 b=p7h4oBwYpIGlKH8lChKZZZR5DUmuFm2AUvOcBz+2mPZ8O90GTGiakYG1c6jlPJLlDMD+A4gCqT0Z596UMoDYy8f7MMgQGoKncnqhfajrGkTiHh3+BvksosBles3gnPu5m145ASfqamEK5bYawFyvOdi0JkIYpuvTdS3wRkHnKTZPLv4yPOAs3Lyr+k/8GZA58axEmYRDkb/G+a6kILG280Z3R+SOK43mKYGSYJKQqZrxkk1QQOHfj1kP0bxxK+Krj7W/xpBvlhJEYyt4xVo8rAoMY7YkggdYvNHZaKeQp5TvNYdwXdCjjapuLA/EkYdLaHcbIiF0eEtZtIqR3fI5hw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <ce9e12b0-1644-4c3c-a3ac-0508b243c607@kalrayinc.com>
Date: Tue, 30 Jul 2024 11:23:04 +0200
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-8-a.fatoum@pengutronix.de>
Content-Language: fr
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20240730071929.2016537-8-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR04CA0029.eurprd04.prod.outlook.com
 (2603:10a6:208:122::42) To PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:14b::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR0P264MB3481:EE_|PR1P264MB3696:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c00f647-0755-483e-ca8e-08dcb0793815
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: rwShV660NFFUDgTvPefH0JyXCgRYi/lzdkBNkgDxrqvTuPZzIxGU4zFZ0Cj/4V7ePYKW1HKCUMN9DE82VuQ87nUBvgEOnZqJNk1yXVII9/2B4Q2fw5v5SGfiaHe5gwLKQkY5tTwmLj6TSKTGVJms47Fyat1L5C8ooSqcC9OLQQesKaT/RaNcS2P+IXJz6LqaesGUdc0F25y/847sqKlJU0UXjpxlJF/dB0t2fdjB24GXAWfk+UdNF+xLDBtiayf79s7/Q7LDapP7La+Yqf7bFmkBwfEchFcDPi4HXMEPqfaIwmyhcHNUHWcvbE9UQSOffvQVKLRJWusiZV/O94XJDcjBVNkyYwa77UhKVRc7Ia50xPbi+EYxlOPOY0J9sLl+VH8xcQyaRDu/YBqXj8jQ4HcnSaCwNrFzWO7cVeRSidKF4WhCeO/Ic071BmF9QOuQvRi/QcMIgK5M3hJJT+qqixuwgO89GNY2/fkI/KPgROeW+2UZ8RYWO19ivS3PTMNM7DcjwtHFhT0+2QmIRZuZHdgYi9BwvMlkrZRhBFwARDFdDJUO1VaczVa+qlArp9N96YUXEaQkOzTb6/6irgsWQORYitXM9pJykrCDuaHHgbzWGpOvuApiuoqEvAyZ70DORibiJbu2z5t04ChLEKiJvzgXLs+P9NRaT2iSIYwB+Br2YhSJ8T3OleasSpeJjlLP0IlUTX73yIO43WOBtkhvzhpxzk8IqlNTVKanFG/BXf6OyFQiap6ec32KrU39mSqHBh0ztWw83lnBTCf6Nxw5UqJv1muO6+6LCbO7lBrOvipxka0x7ENJG8sIXmmoU3OCU896kSBIDVAmTcS1RCX5KS8j/3Du8OIKLFFyiXpt48jSE66KppnkHso2ULe39zcnjSGO5FS7yUjTCfeLpFQc+RKSyJoeb4T5QY82rllfARH5kQkJkfFbCO8W3fxBQ2lUOtf
 RY5GWRUVrFknhYveHpx9D1lLQtN5xMpjcDB5/fa9IBUo4HKAQ3nePkc5G9OWILccMCKuLe42Hy5sOfRsCfQ1yKVj1oX0R1hM6E3lr0FlExBXWjG66w0Hrj6e7TWqo6QN9Ul0jKrcEe1lPV3HwI21fYnpI7fm+NIAohLM7Igpxldog2RHJe4y4Ho8HpnkGxRxqDEWCP/DRyewJY1dhyJ5vzdB8ogmZi30W05QIUJaYVnLQf1j0YLdi6O42PTXLeEDNxL/OAuBATKmB7X+N/ZIXImXpmsdTrfXy5Jjy7G0vRK+cSccRSarpFKgk6aVEZAL5NCh8qRh11gO2jEEMKfpKYTqGKwFPGTZaExd/FSSnad+KHv5DfAezA4R6O+rlztJ982KTfeEjfuMKLzzYSA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: c4IRDt3ZhFCxxOURuccMjkHAxLSF4HNX04z6/irlJs4rVhwPGMsGMKFv6Vl6k0gNHuB7ZarAS2GaBXIc77Ayn5EkUr9f/Ua5lJI97zFOJdPkhQZ6E5XpV2xtpoBP8xTjCA70wfs6r2gvRvFqrnc6Qdcm1OKZ7QX87O0zIw1aQjOboKWo/RJ8BMUoZEteeMoq+vkFWYRnreUcx4uprG48AhvhXvfr4Xj/4KitWFxkgXUpxKI0jCFBpZ6CUmDCME1xZcon0sFj4WDJo+3z5/osNIJbGmaTM8h6RXK1m9aO7wFjmUPCu4yzt3bkZPHSORO2KeB+CDboRqBjjvlnDp3FHK9Wd9OcQNFSCT/22XymFFATuqJLReI63Jy/xLKftAz4JTWPTdRXVHfyR8mcoGTSxjkvdmMKha6j70HXDw4DIyGBfT3ThHB+YZE2PDAIlw6ClcrjIkpvw73ge0BEA1JPY6uq1rRMF2edO5779nnyNefksuGAufa4qs5SdYK742C3dRUhBsi9B3R3kIfEVX0ky7SxlR7OZ5csyT7NK972CAv1aZ6l7bu9fDLx8FItFt6eO5oFQ0vFAqt165xYV9o0LNgAY5akt5o3An/l39HcQNS+OGc5v/3GJzZS6iwzxyR8u3ZAEn9WlRZtHCiNuLWjel8M7qVnef9kDKEdy/rSW1Q8aL/7+a9hhnpc94XC5L/KyqIAt+GqWTWTzxICa0g5T5h3uOOkfbML/sYXJxEabW1jtYauLDs7c24286TxtBZ7tYq/EA7+HCeOVllOBAvevgClYS/xTVI7VYbXbZmvIsqU4a2OihFcdoHzSj8LZE/gJVnI5hN6TGYgifvDVxOJ0G4kbfhwKh+GnyJWc58laRqNKnSD5kqbkV73D1moshNFJSDshf9pb7Ml+/lHsgW0+Ch0SB4WqDUcQ6Q6blghem4hbqV8yYsGqEy+n9qv3DR1
 beOp9FJOhRZ/jZXpklYbwHgexe3OPDatVbdyyWJ3CnPiu2WXz7ZHtwgrJN9nCRUOnA6huv2CnEct0Mly4oEEO+y1KWSbHFZAY/zi38mS8fxs1mwn8jnXEXt4n2+zDrl/bRyHi4EoAJjmYNnk/9kEoXTlqdh1MEJ+olSmIMwjcXR3eMak6/Jxx6sedXebOQ05QOPikRUspbpc8AipjoBxKw9Q87vu3qHVUZL9TcStZ4UTuKqpqq0sFywrlBdUwmIhurx9pYLTfQ9/qWmL5ArmKutzRmAiPcLDWQISV/26Ol/cY6Sb7j6yFeonJnFEm/U52YX8iKmxt+90e2CXbkrh9l1EXTzOlYisNtI5Z+5VV0M/SUPnJLCd09J/8QvLIOspunmKVpzPRwz8hevUWU8F66/fmghm2LUm2dK7ib/JI2kDH+c5UnOv4qQifS+NIFYrLfNH1ZveALbtnYNx8siAL1Wm9gkc8dFOFIsnJCET9Qj1QRYB4NwKVFDYHGbVhvd07qJaKEF/KXmdx6D1krJsGS/ODXDEjgylz7ddMr7sDhNDnZjmdZ+/bol4rbh3RcWggfEK1wx5E4YY0KdZ57vdOeeQkZi14b3xeu5VKrPj7tEjJqkfd6hAi3HPbXcpXzBTRwuV0VrDPyye7tt8y+E5Yw==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c00f647-0755-483e-ca8e-08dcb0793815
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 09:23:06.0160
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RGR84a4dydgIZZRZOLB53XP2yHs0qCMWx9Vuiwf3cIhvKoADw26ycpoaBV9yzK+S7Fml+XY0y9J3dt1+fW3ZoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB3696
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_022315_572576_BE64F573 
X-CRM114-Status: GOOD (  40.18  )
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
Subject: Re: [PATCH 07/10] mci: add support for discarding write blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

Le 7/30/24 à 09:19, Ahmad Fatoum a écrit :
> From: Ahmad Fatoum <ahmad@a3f.at>
>
> A common optimization for flashing is to skip gaps between partitions
> and only flash actual data. The problem with that is that data from
> the previous installation may persist and confuse later software, e.g.
> an existing barebox state partition not contained in the image may
> survive, when the expectation is that a new state is created.
>
> eMMCs can support three different commands for erasing data:
>
>    - Erase: This has the widest support, but works on only on the level
>      of erase groups that may span multiple write blocks.
>      The region reads as either '0' or '1' afterwards.
>
>    - Trim: New in eMMC v4.4. This erases write blocks.
>      The region reads as either '0' or '1' afterwards.
>
>    - Discard: New in eMMC v4.5. This discards write blocks. It's up to the
>      card what action if any is taken.
>      All or part of the data may remain accessible.
>
> All of these don't enforce a actual physical NAND erase operation.
> In case erasure does happen, it may happen later at a convenient time.
>
> All of them, except for discard guarantee that a fixed pattern (either
> all zeroes or all ones) will be read back after the erase operation
> concludes. Therefore let's use them in barebox to implement the erase
> command.
>
> The behavior of the erase command will be similar to the Linux
> blkdiscard -z command when the erase byte value is all-zeroes. In Linux
> blkdiscard -z is emulated with zero writes if the erased byte is 0xFF,
> but for barebox, the erase operation won't care whether it writes 0x00
> or 0xFF.
>
> Note that this is considerably slower than need be, because we don't
> erase multiple erase groups at once. Doing so could run into the
> send_cmd timeout of the host hardware or its drivers. The correct
> workaround is to calculate the duration of the erase operation and split
> up the erases, so we always stay below a specific erase operation
> duration. There's a comment that explains this and implementing it is
> left as future exercise.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   drivers/mci/Kconfig    |   5 +
>   drivers/mci/mci-core.c | 393 ++++++++++++++++++++++++++++++++++++++---
>   include/mci.h          |  10 ++
>   3 files changed, 387 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 1e8c85643b9a..f760614725fa 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -40,6 +40,11 @@ config MCI_WRITE
>   	default y
>   	select DISK_WRITE
>   
> +config MCI_ERASE
> +	bool "Support erasing MCI cards"
> +	depends on MCI_WRITE
> +	default y
> +
>   config MCI_MMC_BOOT_PARTITIONS
>   	bool "support MMC boot partitions"
>   	help
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 3a5fb0330700..200b23ffb604 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -20,6 +20,7 @@
>   #include <disks.h>
>   #include <of.h>
>   #include <linux/err.h>
> +#include <linux/log2.h>
>   #include <linux/sizes.h>
>   #include <dma.h>
>   
> @@ -168,6 +169,32 @@ static int mci_send_status(struct mci *mci, unsigned int *status)
>   	return ret;
>   }
>   
> +static int mci_app_sd_status(struct mci *mci, __be32 *ssr)
> +{
> +	int err;
> +	struct mci_cmd cmd;
> +	struct mci_data data;
> +
> +	cmd.cmdidx = MMC_CMD_APP_CMD;
> +	cmd.resp_type = MMC_RSP_R1;
> +	cmd.cmdarg = mci->rca << 16;
> +
> +	err = mci_send_cmd_retry(mci, &cmd, NULL, 4);
> +	if (err)
> +		return err;
> +
> +	cmd.cmdidx = SD_CMD_APP_SD_STATUS;
> +	cmd.resp_type = MMC_RSP_R1;
> +	cmd.cmdarg = 0;
> +
> +	data.dest = (u8 *)ssr;
> +	data.blocksize = 64;
> +	data.blocks = 1;
> +	data.flags = MMC_DATA_READ;
> +
> +	return mci_send_cmd_retry(mci, &cmd, &data, 3);
> +}
> +
>   static int mmc_switch_status_error(struct mci_host *host, u32 status)
>   {
>   	if (mmc_host_is_spi(host)) {
> @@ -286,6 +313,56 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
>   	return ret;
>   }
>   
> +/**
> + * Erase one or several blocks of data to the card
> + * @param mci_dev MCI instance
> + * @param from Block number to start erasing from
> + * @param to inclusive last block number to erase to
> + * @return Transaction status (0 on success)
> + */
> +static int mci_block_erase(struct mci *card, unsigned int from,
> +			   unsigned int to, unsigned int arg)
> +{
> +	struct mci_cmd cmd = {};
> +	int err;
> +
> +	if (!card->high_capacity) {
> +		from *= card->write_bl_len;
> +		to *= card->write_bl_len;
> +	}
> +
> +	cmd.cmdidx = IS_SD(card) ? SD_ERASE_WR_BLK_START : MMC_ERASE_GROUP_START;
> +	cmd.cmdarg = from;
> +	cmd.resp_type = MMC_RSP_R1;
> +	err = mci_send_cmd(card, &cmd, NULL);
> +	if (err)
> +		goto err_out;
> +
> +	memset(&cmd, 0, sizeof(struct mci_cmd));
> +	cmd.cmdidx = IS_SD(card) ? SD_ERASE_WR_BLK_END : MMC_ERASE_GROUP_END;
> +	cmd.cmdarg = to;
> +	cmd.resp_type = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_AC;
> +	err = mci_send_cmd(card, &cmd, NULL);
> +	if (err)
> +		goto err_out;
> +
> +	memset(&cmd, 0, sizeof(struct mci_cmd));
> +	cmd.cmdidx = MMC_ERASE;
> +	cmd.cmdarg = arg;
> +	cmd.resp_type = MMC_RSP_R1b;
> +
> +	err = mci_send_cmd(card, &cmd, NULL);
> +	if (err)
> +		goto err_out;
> +
> +	return 0;
> +
> +err_out:
> +	dev_err(&card->dev, "erase cmd %d error %d, status %#x\n",
> +		cmd.cmdidx, err, cmd.response[0]);
> +	return -EIO;
> +}
> +
>   /**
>    * Read one or several block(s) of data from the card
>    * @param mci MCI instance
> @@ -773,6 +850,49 @@ static int sd_switch(struct mci *mci, unsigned mode, unsigned group,
>   	return mci_send_cmd(mci, &cmd, &data);
>   }
>   
> +static int sd_read_ssr(struct mci *mci)
> +{
> +	static const unsigned int sd_au_size[] = {
> +		0,		SZ_16K / 512,		SZ_32K / 512,
> +		SZ_64K / 512,	SZ_128K / 512,		SZ_256K / 512,
> +		SZ_512K / 512,	SZ_1M / 512,		SZ_2M / 512,
> +		SZ_4M / 512,	SZ_8M / 512,		(SZ_8M + SZ_4M) / 512,
> +		SZ_16M / 512,	(SZ_16M + SZ_8M) / 512,	SZ_32M / 512,
> +		SZ_64M / 512,
> +	};
> +	__be32 *ssr;
> +	int err;
> +	unsigned int au, eo, et, es;
> +
> +	if (!IS_ENABLED(CONFIG_MCI_ERASE))
> +		return -ENOSYS;
> +
> +	ssr = dma_alloc(64);
> +
> +	err = mci_app_sd_status(mci, ssr);
> +	if (err)
> +		goto out;
> +
> +	au = (be32_to_cpu(ssr[2]) >> 12) & 0xF;
> +	if ((au <= 9) || (mci->version == SD_VERSION_3)) {
> +		mci->ssr.au = sd_au_size[au];
> +		es = (be32_to_cpu(ssr[3]) >> 24) & 0xFF;
> +		es |= (be32_to_cpu(ssr[2]) & 0xFF) << 8;
> +		et = (be32_to_cpu(ssr[3]) >> 18) & 0x3F;
> +		if (es && et) {
> +			eo = (be32_to_cpu(ssr[3]) >> 16) & 0x3;
> +			mci->ssr.erase_timeout = (et * 1000) / es;
> +			mci->ssr.erase_offset = eo * 1000;
> +		}
> +	} else {
> +		dev_dbg(&mci->dev, "invalid allocation unit size.\n");
> +	}
> +
> +out:
> +	dma_free(ssr);
> +	return err;
> +}
> +
>   /**
>    * Change transfer frequency for an SD card
>    * @param mci MCI instance
> @@ -845,6 +965,11 @@ static int sd_change_freq(struct mci *mci)
>   	if (mci->scr[0] & SD_DATA_4BIT)
>   		mci->card_caps |= MMC_CAP_4_BIT_DATA;
>   
> +	if (mci->scr[0] & SD_DATA_STAT_AFTER_ERASE)
> +		mci->erased_byte = 0xFF;
> +	else
> +		mci->erased_byte = 0x0;
> +
>   	/* Version 1.0 doesn't support switching */
>   	if (mci->version == SD_VERSION_1_0)
>   		return 0;
> @@ -1083,6 +1208,47 @@ static void mci_extract_block_lengths_from_csd(struct mci *mci)
>   		mci->write_bl_len, mci->read_bl_len);
>   }
>   
> +/**
> + * Extract erase group size
> + * @param mci MCI instance
> + */
> +static void mci_extract_erase_group_size(struct mci *mci)
> +{
> +	if (!IS_ENABLED(CONFIG_MCI_ERASE) ||
> +	    !(UNSTUFF_BITS(mci->csd, 84, 12) & CCC_ERASE))
> +		return;
> +
> +
> +	if (IS_SD(mci) && UNSTUFF_BITS(mci->csd, 126, 2) != 0) {
> +		/* For SD with csd_struct v1, erase group is always one sector */
> +		mci->erase_grp_size = 1;
> +	} else {
> +		if (mci->ext_csd[EXT_CSD_ERASE_GROUP_DEF] & 0x01) {
> +			/* Read out group size from ext_csd */
> +			mci->erase_grp_size = mci->ext_csd[EXT_CSD_HC_ERASE_GRP_SIZE] * 1024;
> +		} else {
> +			/* Calculate the group size from the csd value. */
> +			int erase_gsz, erase_gmul;
> +
> +			erase_gsz = (mci->csd[2] & 0x00007c00) >> 10;
> +			erase_gmul = (mci->csd[2] & 0x000003e0) >> 5;
> +			mci->erase_grp_size = (erase_gsz + 1)
> +				* (erase_gmul + 1);
> +		}
> +
> +		if (mci->ext_csd[EXT_CSD_ERASED_MEM_CONT])
> +			mci->erased_byte = 0xFF;
> +		else
> +			mci->erased_byte = 0x0;
> +
> +		if (mci->ext_csd[EXT_CSD_SEC_FEATURE_SUPPORT] & EXT_CSD_SEC_FEATURE_TRIM_EN)
> +			mci->can_trim = true;
> +	}
> +
> +	dev_dbg(&mci->dev, "Erase group is %u sector(s). Trim %ssupported\n",
> +		mci->erase_grp_size, mci->can_trim ? "" : "not ");
> +}
> +
>   /**
>    * Extract card's capacitiy from the CSD
>    * @param mci MCI instance
> @@ -1229,6 +1395,10 @@ static int mci_startup_sd(struct mci *mci)
>   
>   	mci_set_clock(mci, mci->tran_speed);
>   
> +	err = sd_read_ssr(mci);
> +	if (err)
> +		dev_dbg(&mci->dev, "unable to read ssr: %pe\n", ERR_PTR(err));
> +
>   	return 0;
>   }
>   
> @@ -1700,6 +1870,7 @@ static int mci_startup(struct mci *mci)
>   	dev_info(&mci->dev, "detected %s card version %s\n", IS_SD(mci) ? "SD" : "MMC",
>   		mci_version_string(mci));
>   	mci_extract_card_capacity_from_csd(mci);
> +	mci_extract_erase_group_size(mci);
>   
>   	if (IS_SD(mci))
>   		err = mci_startup_sd(mci);
> @@ -1791,6 +1962,189 @@ static int mci_blk_part_switch(struct mci_part *part)
>   
>   /* ------------------ attach to the blocklayer --------------------------- */
>   
> +static int mci_sd_check_write(struct mci *mci, const char *op,
> +			      sector_t block, blkcnt_t num_blocks)
> +{
> +	struct mci_host *host = mci->host;
> +
> +	if (!host->disable_wp &&
> +	    host->ops.card_write_protected && host->ops.card_write_protected(host)) {
> +		dev_err(&mci->dev, "card write protected\n");
> +		return -EPERM;
> +	}
> +
> +	dev_dbg(&mci->dev, "%s: %s %llu block(s), starting at %llu\n",
> +		__func__, op, num_blocks, block);
> +
> +	if (mci->write_bl_len != SECTOR_SIZE) {
> +		dev_dbg(&mci->dev, "MMC/SD block size is not %d bytes (its %u bytes instead)\n",
> +				SECTOR_SIZE, mci->read_bl_len);
> +		return -EINVAL;
> +	}
> +
> +	/* size of the block number field in the MMC/SD command is 32 bit only */
> +	if (block > MAX_BUFFER_NUMBER) {
> +		dev_dbg(&mci->dev, "Cannot handle block number %llu. Too large!\n", block);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static unsigned int mmc_align_erase_size(struct mci *card,
> +					 sector_t *from,
> +					 sector_t *to,
> +					 blkcnt_t nr)
> +{
> +	unsigned int from_new = *from, to_new, nr_new = nr, rem;
> +
> +	/*
> +	 * When the 'card->erase_size' is power of 2, we can use round_up/down()
> +	 * to align the erase size efficiently.
> +	 */
> +	if (is_power_of_2(card->erase_grp_size)) {
> +		unsigned int temp = from_new;
> +
> +		from_new = round_up(temp, card->erase_grp_size);
> +		rem = from_new - temp;
> +
> +		if (nr_new > rem)
> +			nr_new -= rem;
> +		else
> +			return 0;
> +
> +		nr_new = round_down(nr_new, card->erase_grp_size);
> +	} else {
> +		rem = from_new % card->erase_grp_size;
> +		if (rem) {
> +			rem = card->erase_grp_size - rem;
> +			from_new += rem;
> +			if (nr_new > rem)
> +				nr_new -= rem;
> +			else
> +				return 0;
> +		}
> +
> +		rem = nr_new % card->erase_grp_size;
> +		if (rem)
> +			nr_new -= rem;
> +	}
> +
> +	if (nr_new == 0)
> +		return 0;
> +
> +	to_new = from_new + nr_new;
> +
> +	if (*to != to_new || *from != from_new)
> +		dev_warn(&card->dev, "Erase range changed to [0x%x-0x%x] because of %u sector erase group\n",
> +			 from_new, to_new, card->erase_grp_size);
> +
> +	*to = to_new;
> +	*from = from_new;
> +
> +	return nr_new;
> +}
> +
> +/**
> + * Erase a memory region
> + * @param blk All info about the block device we need
> + * @param block first block to erase
> + * @param num_blocks Number of blocks to erase
> + * @return 0 on success, anything else on failure
> + *
> + */
> +static int mci_sd_erase(struct block_device *blk, sector_t from,
> +			blkcnt_t blkcnt)
> +{
> +	struct mci_part *part = container_of(blk, struct mci_part, blk);
> +	struct mci *mci = part->mci;
> +	sector_t i = 0;
> +	unsigned arg;
> +	sector_t to = from + blkcnt;
> +	int rc;
> +
> +	mci_blk_part_switch(part);
> +
> +	rc = mci_sd_check_write(mci, "Erase", from, blkcnt);
> +	if (rc)
> +		return rc;
> +
> +	if (!mci->erase_grp_size)
> +		return -EOPNOTSUPP;
> +
> +	if (mci->can_trim) {
> +		arg = MMC_TRIM_ARG;
> +	} else {
> +		/* We don't use discard, as it doesn't guarantee a fixed value */
> +		arg = MMC_ERASE_ARG;
> +		blkcnt = mmc_align_erase_size(mci, &from, &to, blkcnt);
> +	}
> +
> +	if (blkcnt == 0)
> +		return 0;
> +
> +	if (to <= from)
> +		return -EINVAL;
> +
> +	/* 'from' and 'to' are inclusive */
> +	to -= 1;
> +
> +	while (i < blkcnt) {
> +		sector_t blk_r;
> +
> +		/* TODO: While it's possible to clear many erase groups at once
> +		 * and it greatly improves throughput, drivers need adjustment:
> +		 *
> +		 * Many drivers hardcode a maximal wait time before aborting
> +		 * the wait for R1b and returning -ETIMEDOUT. With long
> +		 * erases/trims, we are bound to run into this timeout, so for now
> +		 * we just split into suifficiently small erases that are unlikely

suifficiently -> sufficiently

> +		 * to trigger the time.
time -> timeout?
> +		 *
> +		 * What Linux does and what we should be doing in barebox is:
> +		 *
> +		 *  - add a struct mci_cmd::busy_timeout member that drivers should
> +		 *    use instead of hardcoding their own timeout delay. The busy
> +		 *    timeout length can be calculated by the MCI core after
> +		 *    consulting the appropriate CSD/EXT_CSD/SSR registers.
> +		 *
> +		 *  - add a struct mci_host::max_busy_timeout member, where drivers
> +		 *    can indicate the maximum timeout they are able to support.
> +		 *    The MCI core will never set a busy_timeout that exceeds this
> +		 *    value.
> +		 *
> +		 *  Example Samsung eMMC 8GTF4:
> +		 *
> +		 *    time erase /dev/mmc2.part_of_512m # 1024 trims
> +		 *    time: 2849ms
> +		 *
> +		 *    time erase /dev/mmc2.part_of_512m # single trim
> +		 *    time: 56ms
> +		 */
> +
> +		if (IS_SD(mci) && mci->ssr.au) {
> +			blk_r = ((blkcnt - i) > mci->ssr.au) ?
> +				mci->ssr.au : (blkcnt - i);
> +		} else {
> +			blk_r = ((blkcnt - i) > mci->erase_grp_size) ?
> +				mci->erase_grp_size : (blkcnt - i);
> +		}
> +
> +		rc =  mci_block_erase(mci, from, to, arg);
> +		if (rc)
> +			break;
> +
> +		/* Waiting for the ready status */
> +		rc = mci_poll_until_ready(mci, 1000 /* ms */);
> +		if (rc)
> +			break;
> +
> +		i += blk_r;
> +	}
> +
> +	return i == blkcnt ? 0 : rc;
> +}
> +
>   /**
>    * Write a chunk of sectors to media
>    * @param blk All info about the block device we need
> @@ -1806,7 +2160,6 @@ static int mci_sd_write(struct block_device *blk,
>   {
>   	struct mci_part *part = container_of(blk, struct mci_part, blk);
>   	struct mci *mci = part->mci;
> -	struct mci_host *host = mci->host;
>   	int rc;
>   	blkcnt_t max_req_block = num_blocks;
>   	blkcnt_t write_block;
> @@ -1816,26 +2169,9 @@ static int mci_sd_write(struct block_device *blk,
>   
>   	mci_blk_part_switch(part);
>   
> -	if (!host->disable_wp &&
> -	    host->ops.card_write_protected && host->ops.card_write_protected(host)) {
> -		dev_err(&mci->dev, "card write protected\n");
> -		return -EPERM;
> -	}
> -
> -	dev_dbg(&mci->dev, "%s: Write %llu block(s), starting at %llu\n",
> -		__func__, num_blocks, block);
> -
> -	if (mci->write_bl_len != SECTOR_SIZE) {
> -		dev_dbg(&mci->dev, "MMC/SD block size is not %d bytes (its %u bytes instead)\n",
> -				SECTOR_SIZE, mci->read_bl_len);
> -		return -EINVAL;
> -	}
> -
> -	/* size of the block number field in the MMC/SD command is 32 bit only */
> -	if (block > MAX_BUFFER_NUMBER) {
> -		dev_dbg(&mci->dev, "Cannot handle block number %llu. Too large!\n", block);
> -		return -EINVAL;
> -	}
> +	rc = mci_sd_check_write(mci, "Write", block, num_blocks);
> +	if (rc)
> +		return rc;
>   
>   	while (num_blocks) {
>   		write_block = min(num_blocks, max_req_block);
> @@ -2123,6 +2459,20 @@ static void mci_info(struct device *dev)
>   		return;
>   	printf("  Version: %s\n", mci_version_string(mci));
>   	printf("  Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
> +	if (CONFIG_MCI_ERASE) {
> +		printf("  Erase support:");
> +		if (mci->can_trim)
> +			printf(" trim");
> +		if (mci->erase_grp_size) {
> +			printf(" erase(%u sector%s%s)", mci->ssr.au ?: mci->erase_grp_size,
> +			       mci->erase_grp_size > 1 ? "s" : "",
> +			       mci->ssr.au ? " AU" : "");
> +		}
> +		if (mci->can_trim || mci->erase_grp_size)
> +			printf(", erase value: 0x%02x\n", mci->erased_byte);
> +		else
> +			printf(" none\n");
> +	}
>   
>   	if (mci->high_capacity)
>   		printf("  High capacity card\n");
> @@ -2180,6 +2530,7 @@ static int mci_check_if_already_initialized(struct mci *mci)
>   static struct block_device_ops mci_ops = {
>   	.read = mci_sd_read,
>   	.write = IS_ENABLED(CONFIG_MCI_WRITE) ? mci_sd_write : NULL,
> +	.erase = IS_ENABLED(CONFIG_MCI_ERASE) ? mci_sd_erase : NULL,
>   };
>   
>   static int mci_set_boot(struct param_d *param, void *priv)
> diff --git a/include/mci.h b/include/mci.h
> index 610040937ee5..3bf1455a401c 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -616,6 +616,12 @@ struct mci_part {
>   #define MMC_BLK_DATA_AREA_RPMB	(1<<3)
>   };
>   
> +struct sd_ssr {
> +	unsigned int au;                /* In sectors */
> +	unsigned int erase_timeout;     /* In milliseconds */
> +	unsigned int erase_offset;      /* In milliseconds */
> +};
> +
>   /** MMC/SD and interface instance information */
>   struct mci {
>   	struct mci_host *host;		/**< the host for this card */
> @@ -629,16 +635,20 @@ struct mci {
>   	unsigned short rca;	/**< relative card address */
>   	u8 sdio:1;              /**< card is a SDIO card */
>   	u8 high_capacity:1;	/**< high capacity card is connected (OCR -> OCR_HCS) */
> +	u8 can_trim:1;		/**< high capacity card is connected (OCR -> OCR_HCS) */
> +	u8 erased_byte;
>   	unsigned tran_speed;	/**< Maximum transfer speed */
>   	/** currently used data block length for read accesses */
>   	unsigned read_bl_len;
>   	/** currently used data block length for write accesses */
>   	unsigned write_bl_len;
> +	unsigned erase_grp_size;
>   	uint64_t capacity;	/**< Card's data capacity in bytes */
>   	int ready_for_use;	/** true if already probed */
>   	int dsr_imp;		/**< DSR implementation state from CSD */
>   	u8 *ext_csd;
>   	int probe;
> +	struct sd_ssr ssr;
>   	int bootpart;
>   	int boot_ack_enable;
>   







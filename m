Delivery-date: Tue, 30 Jul 2024 11:26:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYj7u-004Q2U-0v
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 11:26:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYj7t-0003MQ-FA
	for lore@pengutronix.de; Tue, 30 Jul 2024 11:26:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VrCTuN0+YuqMXxR/Sqx5SLcwtk6T5t3imZqfmz5dqTk=; b=zsXC08K5ELeB549L8zRu5fDpr8
	MqZF3HpMK/ysrLCR4PnHtHbLRpLkACbNLE7FdBGBZv4bQnvoMLj1WFZYA14XQ8DdiKoPqLp03iA4Q
	iqJ52hlUxKJi5lqs2P3z8oHu78Wn/6kCW7kCcbyU3/HdBd+3c9028u73/uwimlzU/0/ucVc0wrc4T
	nRDE/lAnZjL6tSAoR0OH+PJ1NUeltSxf4AFiibXVLvPRqToh0rwMmCiI44nLx59ecsi2UT0kx4tvA
	qqtKSVD7a/NKbRgSEVZcKpGWDA6xb24e7bE5Xhd4MVj46Kw96CXgsoKWLo5ZHPcIXMDWdHZ6vLut9
	+TR0oE9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYj7O-0000000EVMa-1sMK;
	Tue, 30 Jul 2024 09:26:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYj6z-0000000EVJW-0PNV
	for barebox@bombadil.infradead.org;
	Tue, 30 Jul 2024 09:25:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=VrCTuN0+YuqMXxR/Sqx5SLcwtk6T5t3imZqfmz5dqTk=; b=glN7guwPH7aH2nNnfGjjJ0WSNm
	banla87tqpTpmvlIXqLM0XFMMAWkhuvNSrDsAQ2eAf1nvfOtyk7zE6bxkZkpDWeasETW6YdX19Uo2
	mKPs8G6TP+j46X8YE1kvr1f96CynYUsOXEZV7PI+ksmcQimlxNBMqbGXExZy6yHMNN7NqmxqXU2NO
	NLvG++TWfOgXaxQ2oS46DNUjdfZ8IOU3ocmW3d9yYNIhkFItk33dTAynG//CjxvmAyveAteBpGuMk
	V/DT8zTz8q6DLdY9RvsJl8Q/bgTe/rzcfwVmj1YUKveMmhenr1OrIP0/gFg5O7oBvDsSDCBXrYXk9
	T9aXwdQQ==;
Received: from smtpout42.security-mail.net ([85.31.212.42])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYj6v-00000004xAH-2jmG
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 09:25:39 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx302.security-mail.net (Postfix) with ESMTP id C0DB71DB653
	for <barebox@lists.infradead.org>; Tue, 30 Jul 2024 11:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1722331533;
	bh=5PYPHaMlfSvuLMbVv/8VNVksHROxcmumRjb2aeJe/D4=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=MSUpSo2aI24Bq9WnAgOKQ/6VpJuaG8TuV4R3htw7WVzxyiAE7o2DahAbXcuK5Z0NB
	 Iul57fdVoosVqvTYe+rJ4ndSV9YdH5hla3g1Bxd223ffsK48+xD9zUq8Evp0DfbB0U
	 l2UgNcUXIoKfuLIZdVRGPsPNoZpNALCta1Q4lveY=
Received: from fx302 (localhost [127.0.0.1]) by fx302.security-mail.net
 (Postfix) with ESMTP id 9DB751DAFDB for <barebox@lists.infradead.org>; Tue,
 30 Jul 2024 11:25:33 +0200 (CEST)
Received: from PA5P264CU001.outbound.protection.outlook.com
 (mail-francecentralazlp17010006.outbound.protection.outlook.com
 [40.93.76.6]) by fx302.security-mail.net (Postfix) with ESMTPS id
 244391DB1D6 for <barebox@lists.infradead.org>; Tue, 30 Jul 2024 11:25:33
 +0200 (CEST)
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:14b::6)
 by MR0P264MB5007.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:4c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 09:25:31 +0000
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39]) by PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39%4]) with mapi id 15.20.7807.026; Tue, 30 Jul
 2024 09:25:31 +0000
X-Secumail-id: <81b.66a8b18d.226e5.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tPNn8tAgrUQ8YWU/Naq43juWzIUEjcnmeVf0VD6a8hELECELCzNWxNSBc/3WgVwmEnFgSey92b9r7etVd4VHgbw3XqKtyRyHFUrOiuHWRSrhMf16A977f/MJrkgL+W3IpXbHpC/n9Vd/5ByAmtRGO8p/40P9InxSbhllgnpge8AJo6c44/xtVyJfhZ9gkRJqxtZvsFvObsAVZjuhgM8XVsjS4J6i3Qx6h0B8BOUgwEk+Wi6yZWscW+0kAH+Sdu/csrOsRsH6h3os27RMn/RbR1ROfeWFG3/djd2aVaZzWzqO1njY7Kl2XHDzKn10MeqjawQYAxGSEMpoB3ASSCjrZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VrCTuN0+YuqMXxR/Sqx5SLcwtk6T5t3imZqfmz5dqTk=;
 b=PeF2AW5Kv2PpVV0KY5uaePzqPTi6ak8fsgOdGPHPHB0689AXwfG1Ap2/zYPczXGFbqKyC0hwUJn09tDtSE8E5CgL4H4rPDou4HWUkEZT7oezu4fSOkSwC/4DdAztreprQfllxoQ1nnnKNQMk41FDrFFmkkeKd5Ty/2NSKurPBKz7lbwsYx7DXjl8wVam8zBA3asKgnoDl/EjIglvkUwbjxsWWcr8gJICwzhHxcgcLrog8KJmr7Um67muBmY2WFrQoU2H//z9Fp1Cfsybh6bjb4xnNM71CJ6z9Lp8yxyln17+gR4JzPXfsrAYfr6rxMiXocM4J64cMEOZUxlX+g3Jrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VrCTuN0+YuqMXxR/Sqx5SLcwtk6T5t3imZqfmz5dqTk=;
 b=S1jRHKdiMRDGkm0+ysmvaDVLeoAG3TCRlOoXHWxFi6XGTKhuspqOGLR0ih+pyzB+PuZRpeBHh8VBT4Xr8fKJpSKFq/cQ572ax+18ghkECmhEUlPqCg82SjrGF6r1FOeb1p+WKYjVA31/y0nM/HToRynRnGBVOyACrJBwWPSHKLbzVdpN7UICjbQREc5lI5dGBAmlS1r5oQdLhUsnxRTmt8jXbQHpGT7O4sITp0T4V5zKg9KaL9axJjOFnZxTG/5uU9F6nLoALaw9NgitidmGvWid/AwHwzNp4JA1bYRfjQ7GGYWnbze/jFiN93gn4mirgyWbXrjgmBsHDxCGufqUfQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <4d94da30-d6f4-4a3a-93a9-4ef3a0cdcb32@kalrayinc.com>
Date: Tue, 30 Jul 2024 11:25:30 +0200
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-6-a.fatoum@pengutronix.de>
Content-Language: fr
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20240730071929.2016537-6-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS4P191CA0014.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d5::20) To PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:14b::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR0P264MB3481:EE_|MR0P264MB5007:EE_
X-MS-Office365-Filtering-Correlation-Id: 005ad260-94f3-4230-9dd9-08dcb0798f00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: mJFQQ3uO6+vIfAPTDPpaW8r0D7ZKHySfBNHABRUNWMpZ33F2A9058Oz/rN7mbMCdbLrYLrAG+O/UnUsRDmOpUpeoWbA2Urcf07HJ9qMnA9YCWa6cX3j3XS90kUHgFtgM/Z0ojEz2TusffSbYJjYZfowZeB2APWZ0tFgMQlKDJRJ/L4aQHtajWVes53UHqdbWh0A0Bp3y7Gbt2lVe+lXxWbKd7UHWcJIF1g2XQuyZiWDAKy9fXi6GLSgyYXmQ8oIk7Ytodw+CEIb+sWVmrIYdRgi/D1kD8jbLA87v5hX1ykF3pSMqHJUWHQOHTm86YjG5N2xjDfIlL/m/SiPTWEZqQQcAAoSUNB7nkrPHirOGIWd20ra5tQc6XgZHpl8Hoqk8fkyGQqDPmiXhRK6HbwMC2AwAH/7pLJDI/xK3hlPmRAsAhVkipJ43g50XZDNlnAclG2IHghhNGU2hn2GGX8gaD8bSsZcbnOW2qwrUX+ZTuiG+CTdls7DOQgD3qlvSH2WQuAZfE2GNr9/2IfiQFz86qB1NYdP54xUrjTIxpQJDVntM9rM9OqfPm05Pa8+w4/eCEJ4eU2l01WSFoDD1gaMTRdi+4BI/SNYRQp/mDRVBW3HGuNunKIiX8PTOwTZnFFVcXnslAvNBuJQbsXNfwoGBkhjcGGW5iAQv9GTALJN/9Hn0jZFt2QYoOg2NmUCoByEs9qcf9X6cNw2G3SEAfiVU2CuMwSDUJ/IoRqo+GhTONDyKpAKh60kNmVT/RDzubVGleAqjocZ5DQd3gwTduTYhy7XDUBmwoai+YKBzT7VzlOWebXYZxJ29dQj0qISt1MJwHtW5BuT9NQoVwjnDC6C6C1B33VqozyonO2NHgGTcKtQw1Qar9R7dSIYoTHl9keEVgc3bVK+mhl5/FnZ+hW4fOi9xru2C/jcDcpWc84XWdz/9VPnn7LiM6G1TJoz5Nxbur2J
 jZinFea2yi/MxlSPtjOqP+ZHmBgPVI5b8OsDgMTLTwLfXD9hTWOnOwDLcnTUwROumiqlOLrMGjA8eBbD7O7Uv+iZOp9IiM2FYHuUwlwytRFF/cWHtrQSyzNAGy6OleHPxWoi39OC/4TzDDlacbZUsucngXNDTbBsKZxm/2OC4WSCJooRP49xEycYbIFgt5UFVCMglE9p358l/bktV+UiUbYYUQ3fs4IuF3SF36yoCye3DUHDsdEzZEWp3eZizVf5KPZSco4WdP88sJB+xUndvDfszyDCjbj8wOS4X6sUrR3RTIPRLoUB7alBc4Kh2Hm1OAAT3fAXdhgcl2igr42ZKsheYZ5pPJLzSp6jzZGGqKlfT5BAzOlvXvxIXcwNS1uOgqy6dsWkQFVFS7hd5IA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: nbCRq5pZ3NrN1HhCNyQ/kISojtW34UN/2vqd/5eCPFCL2AqDGLWKZYpoFg3eF1NFtCEI7cREgwpwoK/odNPtK2Yucl+uDCMv/tmUEDnqAOKesr/NFv0n5e4935aIRTh+jU01AAphPeaBFWjDBODUmMSgWbZ9DJOetJNnh4Klm+8ihkuCdw6xg25SfjJFQNxcIK2gnol36aj3HWupQhENngyWr9znUXLjFORnL2xtjDpedHMu08U0umur++gjrLo88c7XSmPw2wlxdDislHn6ITKTyXNsLt5sE/oUs06A9wBk8PtKAOP6ShfRMrj8YfXlhB94tQDNCIvilR95Mq6VKaLI+KKqvf9g8n7/xDpTjVU8z0ukB6ywAvNQpY3khj9ofdWVVZV4JPCbrebCiWx1IvXMW2TbPXqmz6jN/zuTk2kAxEgkgxURtGt2vZTwQA78KjNRdmt8mgFkMqHR8iwj0mwt1LF6D2ItXdZLwkUK97zxPeBYs8bWjS9DrrKjcDF9tDYTpu6C3uKeCABM52dzwRw61p7716is3WG4syaDtENtVG8tAsp/Jc+9fVXoA2iXumgWQwkERxrDyvKDkxDrQYHpl8EeYpzCoaDsk/L4QZk3r5sEYw6gO/AgLvPjVx4Wcuzro46ZgFLFZp8tkkei1onmSSd5NbvITiSliQBtn6LSckAjNws8m0W0cDLu8HODq8jIePjT55efIe6LQGVTqgwvMK9qXvPpdRHh/XrwARWVc0L+iLQNb0/brVo4VzLwmSqhYvsCwHT/lhy367E+U24p5R3votqjFQH4k1VPonUUj9AMAapNODh3AccxEQMzU1SrVqEeSAWBHma44RR22uPcb0RuxBOGkhgFcQUztiNMUpt5IbeldZdMWVkiK9biT/SSmGDC1iOaeuj748UA83hyu0SmADidpf4dn/0vyC7Yi6VOPJTY5iap4LcQgNW4
 dFoS1L/y/nmy4n0fIBayuyNv29fY84bmPh8WANZbzMvrpKA806NbWpfFgsr+3uMjXGjB9CyJnZeKtMFrOz+nybfo9KuF1Y0J1PgabkZNowcQ6kdpMGUYUDpG71pydmzBRXy32zttqGr38uo+Kk/W/2EBxkbOJGilalhklO2cTgJK6BNFLeGSkTaLaWJVK9TvVRVYBUnH8AJVEFmtRKHZMfh+lybsU+/SZsH/j/Hf949TH8HaUvrjfPi6Z0pbSjyuAIBtMgmVFv6iISezYGROYiEo0bwb33LQmZTOYslOP6CRYPbpXmgujRDhWAaIFHGAw73czpWzS4w6R2ZhtDWwEVi2bLg8+1iKAXmeXGzKEJ7DGI8xCGCCokBcW0MW7ytKBZuEJN7sjiURIYxl5AwBGlCHYPV8LaK6lqe45Two5vdXw44v+1D29k18z2gttMav/jOuHJMskYIO2zl8Gb4Tyix3a85xpid5QAxFcVvIzddC3Ob8PrQAq7zptI8my8rrHge1YKX9cmomZ99LLEZR+f0uEhuMSirkgQqvRF5ZKyo3bsYqPq7dG8yKsyI49VW7P7TZQhnZuYQOSz/3QresLQv8pe1WGQG2vdeXvy3jdkFIx9zDC7wlE0KlMF3f3IzSlP9Zn36LFanHd56nCLGE5g==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 005ad260-94f3-4230-9dd9-08dcb0798f00
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 09:25:31.7848
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /bRa2CacNsJ016IDhzMDKAVsBxWvszPBAg1wsbaTNMjvrSMTtW/jYMtwPFhdIo+ufO2tmOUx8vfzoILTl3DN0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR0P264MB5007
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_102537_956125_69785859 
X-CRM114-Status: GOOD (  14.73  )
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
Subject: Re: [PATCH 05/10] mci: describe more command structure in mci.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

Le 7/30/24 à 09:19, Ahmad Fatoum a écrit :
> This introduces no functional change, but adds a number of definitions
> that will come in handy when adding erase support in a later commit.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   include/mci.h | 61 ++++++++++++++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 60 insertions(+), 1 deletion(-)
>
> diff --git a/include/mci.h b/include/mci.h
> index 4f1ff9dc57c8..610040937ee5 100644
> --- a/include/mci.h
> +++ b/include/mci.h
>
> +/*
> + * Card Command Classes (CCC)
> + */
> +#define CCC_BASIC		(1<<0)	/* (0) Basic protocol functions */
> +					/* (CMD0,1,2,3,4,7,9,10,12,13,15) */
> +					/* (and for SPI, CMD58,59) */
> +#define CCC_STREAM_READ		(1<<1)	/* (1) Stream read commands */
> +					/* (CMD11) */
> +#define CCC_BLOCK_READ		(1<<2)	/* (2) Block read commands */
> +					/* (CMD16,17,18) */
> +#define CCC_STREAM_WRITE	(1<<3)	/* (3) Stream write commands */
> +					/* (CMD20) */
> +#define CCC_BLOCK_WRITE		(1<<4)	/* (4) Block write commands */
> +					/* (CMD16,24,25,26,27) */
> +#define CCC_ERASE		(1<<5)	/* (5) Ability to erase blocks */
> +					/* (CMD32,33,34,35,36,37,38,39) */
> +#define CCC_WRITE_PROT		(1<<6)	/* (6) Able to write protect blocks */
> +					/* (CMD28,29,30) */
> +#define CCC_LOCK_CARD		(1<<7)	/* (7) Able to lock down card */
> +					/* (CMD16,CMD42) */
> +#define CCC_APP_SPEC		(1<<8)	/* (8) Application specific */
> +					/* (CMD55,56,57,ACMD*) */
> +#define CCC_IO_MODE		(1<<9)	/* (9) I/O mode */
> +					/* (CMD5,39,40,52,53) */
> +#define CCC_SWITCH		(1<<10)	/* (10) High speed switch */
> +					/* (CMD6,34,35,36,37,50) */
> +					/* (11) Reserved */
> +					/* (CMD?) */
> +

Why not use BIT(xx)? Maybe this is copy paste from Linux and you want to 
keep it easy to synchronize?

-- 

Yann









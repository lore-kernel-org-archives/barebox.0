Delivery-date: Mon, 12 Aug 2024 11:30:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdRO3-008oeZ-1c
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 11:30:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdRO2-0004pT-Pp
	for lore@pengutronix.de; Mon, 12 Aug 2024 11:30:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:Cc:References:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YDx/iTo+OVyecJlY6fTjbu293zRbM3ZiO32j2ycPaeo=; b=SIfsT1QZsL1VNRfsLZqfLHOs2i
	/66dmRKd+lsXH8zlj2uMJVar7R5w+N6YB3AHD7sKqkMmd7TGTYX4/Is2AvwzQvPm0wzrsMwR7BBi+
	VfwGsIV2Ilo7KMddMixjIJ5411CaW8LeQ1GeAoSz4EC7VFAiVANtsZkxwT4LnyJBBXsuJASczCW8U
	XoIPkkH05mZBsV9Kpk05L9Lp4mzSKLtacw+uyao9I8aseiLFPJW95jTbB85KLkSnc9onQA7t5/S8p
	cyDxm6PO6NQHPxeUlxaPaOOUwWGBVTzE5eMXz942EjmGsBChqokpmhRNP1AVnM3mFtW4weaaYG1rI
	45FDOCAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdRNU-0000000HSOJ-38Hy;
	Mon, 12 Aug 2024 09:30:12 +0000
Received: from smtpout42.security-mail.net ([85.31.212.42])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdRMu-0000000HSFm-2TqW
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 09:29:39 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx302.security-mail.net (Postfix) with ESMTP id 43D482BF2BF
	for <barebox@lists.infradead.org>; Mon, 12 Aug 2024 11:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1723454973;
	bh=4Tglq3uO5pAoF4AVjbmnHazWB3Bgi54L4R+Ynp1uYeY=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To;
	b=k30CuHBPL7F7qYiVzY76ciLxifLNMjsqNtp1YdmdDr7NrSt1kAYOnavqmSxcREYkr
	 aJ+Z6RtbuynArlaU3Nzf3ZPBmyE0jiCBuV+NEC9vR+1CUkZfHkgTT0tMeHYV3APdrt
	 zQWTCrY97wsaHcL4RrzCDC0BP45Tu/BMgqJOwwug=
Received: from fx302 (localhost [127.0.0.1]) by fx302.security-mail.net
 (Postfix) with ESMTP id 1F65C2BF847; Mon, 12 Aug 2024 11:29:33 +0200 (CEST)
Received: from PA5P264CU001.outbound.protection.outlook.com
 (mail-francecentralazlp17010001.outbound.protection.outlook.com
 [40.93.76.1]) by fx302.security-mail.net (Postfix) with ESMTPS id
 9128B2BF42C; Mon, 12 Aug 2024 11:29:32 +0200 (CEST)
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:14b::6)
 by MR0P264MB5367.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:61::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.20; Mon, 12 Aug
 2024 09:29:30 +0000
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39]) by PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39%4]) with mapi id 15.20.7849.019; Mon, 12 Aug
 2024 09:29:30 +0000
X-Secumail-id: <a8ec.66b9d5fc.8fd1b.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xhGYJEuzPQ8eXU5efkLNVQ2sPAz+weF4Tv8tjbcim6sgXRr6q0ebJ3h7qAhkoiH7wsRDXMI5GzuTxAo/oIgXYLgcC87OXweNoqWlTdETf35AAJja+5Q89xQQUCAq5CaGdQ+4hxBJ67FS2PKnq953FVjQEIZwEmMOr1wBF6rpuYUYNfLaxtRpaW+egAoXa3Btwbl8xT4p6cQ6Di+eoD289ygFePv6qIJncLaPqyzNIL8lx70wwiKHzclPnECONLCzSDHS39WqHwx0MaMHtJN6u2JhbCT+SPracNZaRU9J5rjwIMafLrPF066/nUVulRbQD5ObzZ5u+l+AZxvbMjhdHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YDx/iTo+OVyecJlY6fTjbu293zRbM3ZiO32j2ycPaeo=;
 b=OlDatVZD/Bq0tO19SvRfKV5Z2uuS+7jsPrV0hlywdXpSBj75XjNnLkSBpoZSAOpboGFl7YYRRb/7IXur4OSxsX29Puzp/C/LMWYnqOuKc0a1M2M/AFGCqWqR2+tuOW2qrIrP81A+2ys/6MuNlzRd+sJCXHu9TsfVpu+fcassEeOMy/sJ0B5Kyedm3hj+eur90clWB85uCSKdGHzXul7ujCQYnkRC/UPPDLH9CKqX1dtE5X41Nm6N3DYiwBWbjCIUEh36/VNNDN9uCzarDJdapquId1Lx5vBLiE/FsFvwX5Y18LbA4Ql442jdrEY3ddrvnUydmThjw0YvixZHOhplvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YDx/iTo+OVyecJlY6fTjbu293zRbM3ZiO32j2ycPaeo=;
 b=fk2l8DaMcqi3IxD6nhd3bwUNa5Xq42fMDthd9J7iicYGAo/EcnZsnuBhBhlwwcHV9AsKE5KOarlc44EsY9mRFwlNgQe23EReyjda3PzsO7W1leNUX08+5P1iHUapbwmRBLrxqCls9GtcA/IrWeLv6TPCLVeFHKjHnA4U3dx8aw7JEfM7gmCb+lF2wn+AyDD49+BZe4kVtU01bUGkVyt36LZ+GkMrK4UtBtd+dwjBvzZhnp3p0kd9P47swpnP/2aBceyXpmkRK4F7Dco3qiw/DlJzubeFixSHBeKdvw+OJ9Q0q2GHcMz/hxkkV1IyL5hBYKzHo0RBbfVnzr7+/cBlQA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <ed853c9f-aa3b-454b-839e-759ffe3caa88@kalrayinc.com>
Date: Mon, 12 Aug 2024 11:29:29 +0200
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
 <20240812091522.3035469-2-a.fatoum@pengutronix.de>
Content-Language: fr
Cc: Julian Vetter <jvetter@kalrayinc.com>, Jonathan Borne <jborne@kalray.eu>
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20240812091522.3035469-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS4P189CA0055.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::22) To PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:14b::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR0P264MB3481:EE_|MR0P264MB5367:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f282985-4207-4ae2-6553-08dcbab144bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: lmzmNOHxLCL2rFVgdkzdENbiwVzzj2GA3l3iDD5OLeMn7DTLAFIynoCc0cumRQtd6kiSu4uiztWnIu/TZHBhrkwndMqiVUdXq6RSNl6CnZjNs+vPzDHsE0CJQC0bVU9r4eMN1v1ZcBoZmcdTi0dLJYeSV6UNXO3q21g31Qjw61qE66H5kVZLgvQHVaO7uQDVOpeRsW+818foRgkahjCbtCQuVWeKFFfkEUoEpI7la5AhE58thuHOeMTpqZMr9b8DgheWTZ77HLOw18fvO5mSlHPto9pJb1WLyzmQXLiFvXiJKREyCDBKwIqX0PpqqFh3nlGXNCCWdIRwuD/2m9tf3p4N9AYiYf9LWuV1BvQ/+JGqFaerqlb/kjoUolcPx4KY4V+em7sNeMPigsibVwET2wt/oD4LR8iVTgD+9qyc8Mx0lByRtCWcCdDKgUq3y1dPBmXqrN7dLUp5YeR+8UzQKaF/IFvaRqzddtGmOKk7X7v9HTc1+crtD9dL/sMF5P5EYBkkWkTmVzfNzZyzehYazTPNKM03V4hsDcnRpThGLv2d+QF155KDLwBpo4eDd+zZqT0Cis5QYnEsb9IkjuMvpExjP66V+WfEW3dulpNbw7xKokqK8z/95I2TmFOWp+4NpCcbL1Ddx2vHaYPhoVaxzWpS0WGCtpNMKBykShOnn6aGvPIAK/Oo+KRWqP9OPvoqIbfn0V/o0HhmNoDxGTKDuMb3EBq+5WUZJjKjG2J/0+hbOSJMKw5+ntteC676OFUeHhe6FguKLVPsTUdPKGfI7lAVht+KIRL0HlI3Pn7sDYerCeseyUz6O5KV0/qGrxaX/gYuLV67INX4jZ1YNfLHZGuFL2E3XM7OVJoKfNCw5owDoQmZCtbI3kNyYtdZOU32xfQutqYzlEnv7hX5wA9kq5/le4qTqN35Dp+JBT0CTBSVSuT41WpYNBnCdG8M/rC0I2V
 L5LTXI5Aj10zVFuewoTn4matEBr9dVOsIMEHkm2+NEg0NjAMbLhY3LcCvPPzN7tV5oBF2zLqbqpQazrTDcS/WNwuWGrftkQgw51hNV/120RcvVAhqoye4AuSiTp9GnnW8CWDHDZ/n73LW6E6cBQ+NfWSgwzWsGm/g1BSUZ9Cf3o9QEZnJL7eMTtApo7NFYhKHSuYCudluw1v2iU3gOLZBa2RUKPrQb0Bft+xUTOZBOKqlrSA08wY5NvlPvnqTG/WgOwzPJCzz/Lxz4yUyOUP8INWxo9F8w1CGkq/h0HJ4yBqmByfpkmArbr4HwqLJHIyL8R/1k70sqT4w3+sWXeRRtHSzFaFQpO4CCfXsL8lEPZ5wOa0H8z9407Y1rOIM
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: st4Td31+rTzpsuYjg0tsuA4o27DfU+5+3z37xUaahplUkx7M8K/Hpk+yX+KsPQ3YsZ1gE17qQDSUKdpgoiT5OYl64JRVaSVUCJvMC9uq9E/y7c4d4MqLravGIboVE3HYO0zurNw9Gx49wYL/xYyF7vSX3EuQRFqMBJXWAy6bOHB1FYSnZVrBPfWuLUypNoGZrp0w8r+kvHyooag4A6HFbZwFUj18B6Nk5XPzMCCn+TaIYg9oiTLzvyDuqn1mGNCi0yx8uOVDpP36PP3UKjBJd773UdCYJMW+1fxfzzIdpRNacN9EOaWeMjMfDrrTNWC3qyNZ7WdhVX9v4M96QVK1NkGco5gzpMb6/dnoYI6J8umx4btLvihaJznpSrCWqvKZ2ikw3A9q1innS+9MbrfjWrVnnJw4WFyUrmA79XeQnSKZbFASs1EfcPx75L1Y6ktrtGMLvq3pki7mbhKOVPpya7cElXhFIJjrYL8wpc62GxdUUGAXO+Q/4QuDfY8aqfAjiVj5fNoxbULD7SZKC2iFYraAixni0pWn5w0X01kY25ZcyYj831InxlhyJGk3+9L8iJk+vZ6J3W1/22SwZEpkNmTfGGaFPWKBchHgi886z8jrBxBqiz2OAvQnlukqzu9eznFm1aOT8sz9yKelXyCd5z/7mltMufhirtG5R2yAX+3EC2PzSZmHuNosVteV4/wkVtWKvmR/9NQ1WHXDXuC9C+X8+qNN5lFtojGwkrpZ3r7+lDk7FCtnkRVd8areHvHJOy6haZTdgCAZAlDNXTlVnJLOS6SpDvLm5dc/ilDaCaSt6yUdAk9uhou0XT0D7RlUtYg7ZfWs9kMThBkTmcZ96XdxRY59dni3OCvC7kNH4qbwpCDNhllir2X7A5AXr/6HzTQX01JxxjHrQVApmyr5h2RaIRWhcTSYF/jBjQvw7w7lMvyU8P7YyVAgiAUHBhNG
 IaJgkphTm2YVHvaQNcYxBbUug4C7uJILybWSEqJ0UsQFK1/XDUpAg3ytl00iVIczuMX6xPGC11/jVaR34nktl+HujwlwvxLAUsCky7+kFzOzgOCeyj8KUwShbBHWfuEXm5Wi6jHHe3JZWbAiwf/iGqnMDxHWBHkQ4VztnUNEujcesrUW2nQONVCABLKKVP3/RWFVAMnEp725lThhVQsna5q0zKal6ygobQ5LFw1c/t9M72KtBMsiDq522qEK2yl18mYmsozVWTcuijT17kNrHn2OuLj7/+332Foc5d/amDdKk/5lPVdShRr6h7axB2GNlcGb8izCk1OepnhzkcwoqWUKcqgbrNnACDWMRJZSrsKjHBawu7H3v60de60rSCXlt6ZrAt8Dy+21N6the954likwgRNDTJ0zNfQIxWWCwa9k87efJubacy1KMkJDHfkevVkidlDE3xYvxKrwCcd0J2ggL+52eQd8PVBJ/zDI2hjzxRyP7HZkktZiEQT3qkKnBUInlPJSAJzdHxO8JQ0nINJJl6RdcRwjTjOaBBjEMoPuyz3Z4FiqosnU7vYLnq5RPM0ked5BXqsi43m3QQ8FYU2depDZTRY76LLawdO9mKMk/jP77WRvLwG4tAmuW1bT4hGXYxbk6C7Dp+tkreBjGQ==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f282985-4207-4ae2-6553-08dcbab144bc
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2024 09:29:30.6156
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vj2SHiVm3jCmDaPCJj8Psp+lJQEyGGzLDv/lMYyojMSd5FVxB5cNYlD3fYo89Kfwtl5jUGDPn+ZsaBeup8GIyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR0P264MB5367
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_022937_280305_7687D955 
X-CRM114-Status: UNSURE (   6.49  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/6] ci: container: add kvx-elf- toolchain
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

Le 8/12/24 à 11:15, Ahmad Fatoum a écrit :
> ARCH=kvx build has been broken in the past, because it was the only
> barebox platform that wasn't build tested.
>
> There are prebuilt toolchains of acceptable footprint (64M compressed),
> so let's integrate them into the image, so we can add it to build test.
>
> There's no prebuilt Qemu unfortunately, so actually testing the result
> will have to wait.
> [...]

Ack, lgtm.

Thanks a lot!

-- 

Yann








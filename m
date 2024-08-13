Delivery-date: Tue, 13 Aug 2024 08:36:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdl8x-0096sm-07
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 08:36:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdl8w-0002or-8U
	for lore@pengutronix.de; Tue, 13 Aug 2024 08:36:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K8G9RAT9MaDR60GUi9W+RpNfjtPizy1hChPsPZdXEm8=; b=1LJURUnZyxz5yQS2HdZqUpA5Rb
	suhTDXDE7SXa+gwImKHsYcAKz1k3y2gKzJxEFBK6NUvZY2r0zajZTY+S+2Y7mx6MxoLFyq8rWSQrv
	4mnDDKa61EN+4Gfb4y/TcVKwDP6aNR+ztR3HiYP8v5hxovql/JdyPZy1I0/c9LmXjO3xulGlVG27s
	aseAvcq5soSXm2WRNmwFSv1Viu+XrBOLAH4o5CfvF0pbV/NAkdYuyuqRHQYqFxEc4pb5btztqUEgX
	1pbtQ+dcUC3xBXwk8C/m+/hpzM3UfprPS+TcMZjCCDCKmK9PI5hpFP4Y5Ko6XMVJE/ebFKIpBrvPn
	44CqeGWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdl8N-00000002anW-2zv2;
	Tue, 13 Aug 2024 06:35:55 +0000
Received: from smtpout45.security-mail.net ([85.31.212.45])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdl8J-00000002amq-04kH
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 06:35:53 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx301.security-mail.net (Postfix) with ESMTP id D977D2DB3D4
	for <barebox@lists.infradead.org>; Tue, 13 Aug 2024 08:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1723530948;
	bh=7SM/F040cp6Q7NtdXXSQP1uYWQm1s1UrHK/jJjAX6jI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=ADcagaZnkQlVSqkdLRUkp2AOe3h8hOLib5uchHLXuKTKI8abT2/SnAMwVVmEAXaSV
	 HkvMktSUlnWYpo8V4BZEYWWbw9q1f8twQIas1JZdad+B4KdHVJojzfwA2bk6z4bXmV
	 QN5tAgWQhWPmKDa38cElvZNgWkvrUkolc0+KDxeg=
Received: from fx301 (localhost [127.0.0.1]) by fx301.security-mail.net
 (Postfix) with ESMTP id 9A2952DAFE7; Tue, 13 Aug 2024 08:35:48 +0200 (CEST)
Received: from MRZP264CU002.outbound.protection.outlook.com
 (mail-francesouthazlp17010003.outbound.protection.outlook.com [40.93.69.3])
 by fx301.security-mail.net (Postfix) with ESMTPS id 013B82DB5B0; Tue, 13 Aug
 2024 08:35:47 +0200 (CEST)
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:14b::6)
 by PR1P264MB3429.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:180::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.22; Tue, 13 Aug
 2024 06:35:46 +0000
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39]) by PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39%4]) with mapi id 15.20.7849.021; Tue, 13 Aug
 2024 06:35:46 +0000
X-Secumail-id: <3a67.66bafec3.f2bd3.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Oem0mhUgjz6zi3M/hGcPeTPPNc90ksLZjp5exBer/YFqhpJ6jBRUTERcTpjfA2WQQ2gVSjHl0hIh9gqrxlIKoCPCH6RZjDGyYFg6rAzeSXC8YVd196FUliM2WeYvN6q+gJDyhyQDjLvSu+Qp/aSbiwQH+wBIOibAtUbhiMJXXSBg37EGKGflBPgpJcQYBYfS5m+XAqFvhAlp65icOEbIfbYevd2G+H6ifIOkBmHyvUgpf6fBBtPDWCcEuiN5sJ8GAe7UHbBKCf3WKNai1lrpQHL778VtNskIspERHbVu/yAkx2WdwbDNmfniDafjFF0fE2+VNgwISHYtSxlDheczuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K8G9RAT9MaDR60GUi9W+RpNfjtPizy1hChPsPZdXEm8=;
 b=qyolFFRgu5YcjrKHVzfy7gR5sBGZggLrTTM4qZYaf+DpajqE90XaWGQn5b43wfpm7FKU/tgI0/1m1iiBI2MNDwVKzw7oH9ZwMLuYqA44o0z9vVxfrsMHr7291Rw+O7DCEteNzRihosgMGFO0HNRfsSj6oO7pEqNH2uRQFub5Bn82EGkHLp7XYT+WZhcUnZiYTzVGJS/x6AfGW51ZTXUc8OPPCCAxHoKHrJ8e2El554POdoluVaXhcQKn9XupFRsAjf96a1cZ+cD7iP6C6fTIeAHrBJzHq1kRlVltBLaq0kDsK9hbSml8D3TmFvNX11EsEb/lb9FCPy8F3ra65LCtvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K8G9RAT9MaDR60GUi9W+RpNfjtPizy1hChPsPZdXEm8=;
 b=rG8M9rnSRNUwgDPeFzWBbpPncrxz0iZzpi/V5w6qQ3YqIF2sdb2wpoY5rREcFxZY+mHLCLMF3iluAU8MFcdYt/eBi7qh413e7HLssszV4jawqVJ4wYHHu/59WgRGOTNbG2mFE0JVkNqyYlvRasSvbiAZLisK2LkYMMaQJ6BGKgVVQDah7bbL/dYdGKmXfcjFh/XrlrsEuFq7ysAy7bY9gVAogMHj8BvYesEnZYkwA1Xk1ugp+HlkMcPTHrJ0mJExZwhhUVLMOad6ndP/7JCNnkkrfvSCA1JEd/w0g5gcZDbykZYMnaeO65lw+QhjKCgTDQpSV0OjJiV4I60QtfgGEA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <accdaf16-42f1-4db9-9343-302c64f6bb61@kalrayinc.com>
Date: Tue, 13 Aug 2024 08:35:45 +0200
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: jvetter@kalrayinc.com, jborne@kalrayinc.com
References: <20240812144150.27707-1-ysionneau@kalrayinc.com>
 <520a960f-7adb-403b-a2c5-ee608177b7ff@pengutronix.de>
Content-Language: en-us, fr
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <520a960f-7adb-403b-a2c5-ee608177b7ff@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PR0P264CA0094.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:18::34) To PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:14b::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR0P264MB3481:EE_|PR1P264MB3429:EE_
X-MS-Office365-Filtering-Correlation-Id: e52eee6c-a1ae-4198-e54b-08dcbb6229da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: vsnCNoSsgTHKsLoehfgEdq7hnUJ8MbLyi+1VcXRYmNXZ7LvhZYmZWfab+5sVM+undVIquGIp/uTYFFC0wt5D5v+rTaZQZ3qGqALfcRQUgkANiVQHUlztEoFPGml2ml7ZePju70S4VezGRz66WZk4gmh/HKEoH/JkfCztWF5rIKRAGzG/arr2msN75WiY+R3FnIgxZJW+rVbtlK/3hFJR2xU50/QoBcKolHKgQofbu89A3LZxS9PwdwFJCX2ATR7e+P+dp1TDpyS6u1ntE+a9UIaGU/qetrnCLiyVXgqUfjsnBwurUy6JP0jRom4J94sShPoldLX8NFAJ3pHz509rZ8QTz7xOyocRrXJfc4ZAW1EheSET5U5pgEbZ2rDdVcm1p2FMDp+FaQulXiKjbZnM92vcw2wOaTJ32JC85UylNMqExojDD9AXpKB+ueC0bQbogdTynyyiAqzTv5arRApOtoDCrK1SYvje/C8WIu8iTPb3KV5qUF43x07kmdorcYkjiMvZ85netuW6+6K3C5TxXZz+SPjd1V2gV3wPNteGI5EaHwFu256YTD0IR8ZYvk3Yub4Oa417MzA/J84/tml6PlRe0iF9kQyL0ieuJx0ByRMZxYdGX0QWz8aRRjbxgIpdhf19g27nLb6NkKegyfps88xHuwWYIPyr4xyaA10GsbNOybpPUIotxXRpRyobBOrmBJIhPH00NxMrg7mSU+wPCONGTDO6S94/v1i2JLWVOMJEJYoPUH3VP3dV1ygf+KPPlOC0ArRo6+aIxLA4fb/D/uHRvmPFZa5YxVnO73541aLwkF9xCMP9ChRX9i28RVWNcnehGvoFmH1rugJasiBEMiLLH/BTBm5F8yXYPY2DuyeKmfoLDNkrRif1fLTgQLbxyZa2jvYQ1+CVJ6Kgm4/WputD55IIouZjnAyD49hqkfw4jVNG8sv6VHVP/usuMSSpwzS
 21P3+St1l0Ja3wkG7rFNWjS+i4KQFa+DhblnLffx7TSvP55iX+EtP8M0M+J+2W7A9U6mBRihEhR37aDs6ZgpDxBh9z8pLaQknRQ+cWYx1Z8vVe6eqmTZCjKZ0u3ZDVLMUd/rnhiy7tznPE6/fDWJ/JngPQE3nHTyljU1L3jzcW7zytMW3cygosc53vjJquQtHvOjmG/7COSBohU1N7aCMke5wv2nwz/+fopDAoxwqRkV2qUz7TA6FRPt2MzmXQI/S1zjUsGdAVAhmzsxVtGL1blB+GByWcV9gG31laHZwaIMQRDZtL0K4OwYRROhEasRxhqBhRMoS+00qrsXwvLZqOzHrmJ6fF5ba1xsoF4BMDM5f6DDbvrfVslRo3/V8UbpIvopYkPtQDd+HL1S+xQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: b01qh87wFsoQjdPAdw8XBldKmuZRGuLiPRHmL9/HD5z9mMuaVRD5XEu7aOErncZtqsEDN1WSOu0XdZS6vNSLwVioIv8Sku8eKSejePc1XU3RzCdVULHHctqFxYOJGjfRXxGhKvwNxFzGX5usBOmyveiswKC3mCM7L/u88GPKxNDszbz3qKz8DDHdCvUul5TeT3BzmpUdg/HkWs/bgM5WuNT7/i3bkDCHXptOSY76BWqLlI91zIg4UP6TkPZjsvqDiiqdKhYooSUKaYi6R9JxusBye1Y130m4Kg7L3uqsy2pjBty5zA7e2mX/zgWPstFbi69dd8tkngFix9vseFddsky7xghfNe3P/A051EyRuov38IJS1JAcKdYlQptzhd2A9Itl77bDjdPYXK54ikf/NJSEjXPQq6ECFqgfYfSJfms5WjL5+Y6RyqcWubFLNUj/sttERiamyD44m7kUb7SCoD1MEzlUH6ukZ/wRunHoIJ4FIsqiR1kLJM8+ELTl5AQklsln6sP/lz8KawgufAmBiBEo6pqyV716WcYn7TmypdBjA59djcHgYN4iJyk0HPjpSfP0DCO3dDSsYvVtN88Z4MJEqaTOgjb/Y8waGwkOEEIN3+N6pKPt0dODZapnqeWEoFXWeDjmaiuAgD8/T8PDb1OIv+Z8bKxs37FCedBdLqw3kJBAmqQtjpZcLVNT0bxzsUvBQu3/LJEZyNvV9yGErbsU7IA+l7IueVU5RehS+f/xrHtHw4kQOKHu0J1xpHSz/2IKm9TZBnN9UzU0excAMFTtQpeIuFkdbLskN8CD2PJdJ5rzZMea8lnPpFDhChIaHQdJ+Kx9lHbMhAWfq05l5iDH0WFVex9TpjJYXHlHOvoQReo9RX1xrmU99IE6weHUMAkms4ztwkrKWL3OM6GN2DuDgN0kSjl//F6HZkMpubvS9B/HQ8WHqqAtFdfn/Z5D
 zR+PEo7vgsKpjQsq8Zlznk9lQ5z5frQrPY0SuN1cYzqLrH8Vd9kzHKlmhQw+MWmtiCFdIy7M+7XHMkI+KeGYVIzj7s15aBpVE7ZsBWkcMJ5eazyyuyBRATD8+QyJf8C1J37jN8ng7X2gFHY87lbDTYWSLltuDHgO2s1VPgkefOuM300fKGQBfwytag7Zb1xFqs2DWxZ8sAVueH+kpskKZ2Yvr98VfYcXKMAQkZ0eeT9BQGzV2VRwPNvQKaLXdhlFmU2OpO6ADT88CWUsPMgtGu35XgIRKNSaCZ4TOdJBV+7S1JL5xtIHEcwpkTqlQtqJo5toBJA8rbAJxPvBHso0vXUpPdSPJA43/Xtu9qmUYfA2IO1GZkSplPjjb/CWcVkNHPNbq9nMyj+0GXhyT37SnRlMFZjGjlxI6BFycT47RTH3y5hHNoe8TEJ0Dz2EVVTL5bhtBvTnmeCu4uJXGRN07UdGCRjjkMGnsMCjNAU2rZpqP+H9z3hltPhGLUmZPJH3+hjg2ZRkuW5+3UQhpbHfvYgHHZK+QSG2cD/PlJgTCP+dN3/7MVzShQcdrTbf9rRyouZU77l2HeWTlUeMr8o6BKhuGF3+bvokiIIpN5lRcFyiwt4oKr3ZHUYNbKpECkecJNtWBE+7dkVtTUCQCRuHX1F4Mc23cHOxek1tS+mbXFo7ytX/6TM2AO2QdBOV7H8o2lL9TKO82EqHaeSni77GuQ==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e52eee6c-a1ae-4198-e54b-08dcbb6229da
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2024 06:35:46.4031
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u2KlWLwyvg4+FbGGDDkaCpyrbq+KipS1U2p0c0WukiJWGi5lBWGoAQARak5qHl0bZVEkxGKXBnzn3JOUdNkuCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB3429
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_233551_707580_F8750A27 
X-CRM114-Status: GOOD (  10.78  )
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
Subject: Re: [PATCH 1/3] kvx: add qemu dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On 13/08/2024 08:28, Ahmad Fatoum wrote:
> On 12.08.24 16:41, Yann Sionneau wrote:
>>  obj-$(CONFIG_BOARD_K200) += k200.dtb.o
>> +obj-$(CONFIG_BOARD_QEMU) += qemu.dtb.o
> Given that you pass in the device tree externally anyway, how
> about yo make this obj- an extra-y and drop the Kconfig change.
> That way, the device tree is always generated alongside the
> normal image.
Ack!
>
>>  
>>  clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
>> diff --git a/arch/kvx/dts/qemu.dts b/arch/kvx/dts/qemu.dts
>> new file mode 100644
>> index 0000000000..68d242c113
>> --- /dev/null
>> +++ b/arch/kvx/dts/qemu.dts
>> @@ -0,0 +1,269 @@
>> +/dts-v1/;
>> +
>> +/ {
>> +	model = "Kalray Coolidge processor (QEMU)";
>> +	#address-cells = <0x02>;
>> +	#size-cells = <0x02>;
>> +	compatible = "kalray,coolidge\0kalray,iss";
> Is this a decompiled device tree?

Yes, you got me ^^ I replaced all hard-coded phandles with label references but I forgot about splitting this compatible into 2 strings. Will do!

I used the generated dtb from qemu as source for this patch by doing `kvx-system-qemu -M mppa-coolidge,dumpdtb=qemu.dtb`

Regards,

-- 

Yann








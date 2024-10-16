Delivery-date: Wed, 16 Oct 2024 11:42:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10YH-0050tD-24
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:42:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10YG-0002id-UL
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:42:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZgRgKYrLnbstrokzKuFtjrsX9AC0huV+p1pXH+2hdfY=; b=Gc9PKXuyDrhJYKlssNfRtjkEgB
	ViglzdnfRQm+sIF0tv8Vq9lC0q4fEUZSOLcFiv7cQtzSKXiBwMGcKZClWkXxmOSBIhrI/FHcVeAoH
	EO2bqHtqFGKg83G11Ych4isP0ZRrl/sZ7Z4MPlDlb/HnCSkZOlxHjqlxlwz0WBhcZtq+SpccR1myh
	I43TkxONFulgxCwkl592391nb3NHvSgtkyZNOSEjTHJ8VUMRkb9+X9EAGN8j9mC0U/hSxL43pJXep
	fBOuf8paSz+RrOciRXJUNNe8gwtd4rGdqm+zYU/apiKcM+nlrrmfmGM+HLp6n+cTu9Lzwde7VOh71
	a8MPuOuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t10Xk-0000000BH7v-0Fji;
	Wed, 16 Oct 2024 09:42:12 +0000
Received: from smtpout42.security-mail.net ([85.31.212.42])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t10Of-0000000BFHZ-3INy
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:32:51 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx302.security-mail.net (Postfix) with ESMTP id DA0065F6457
	for <barebox@lists.infradead.org>; Wed, 16 Oct 2024 11:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1729071164;
	bh=+sRxPduaUVO1j7QwlEM7nmYd+VsPstgAcW6+7lJ2O5Y=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=bXjui9mXGefIJGFcbZHiHADxT4JzPqQP658pjiLAio98M9TuoKWzvuwgvWFGpX0iw
	 vrQVoePHsSFhHQZUHvQg9erjfAEU0QIqp+dElcr7S+gaygLZ1oJVmn7dA8yfDseZ3x
	 KWm4oAGTTvJDFheGjFSieCGJRD/puS4eypiurvFY=
Received: from fx302 (localhost [127.0.0.1]) by fx302.security-mail.net
 (Postfix) with ESMTP id AFA605F69A8 for <barebox@lists.infradead.org>; Wed,
 16 Oct 2024 11:32:44 +0200 (CEST)
Received: from PA5P264CU001.outbound.protection.outlook.com
 (mail-francecentralazlp17010001.outbound.protection.outlook.com
 [40.93.76.1]) by fx302.security-mail.net (Postfix) with ESMTPS id
 254175F67B3 for <barebox@lists.infradead.org>; Wed, 16 Oct 2024 11:32:44
 +0200 (CEST)
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:14b::6)
 by PAYP264MB3655.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Wed, 16 Oct
 2024 09:32:42 +0000
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39]) by PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39%3]) with mapi id 15.20.8048.020; Wed, 16 Oct
 2024 09:32:41 +0000
X-Secumail-id: <111cc.670f883c.2411d.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JHUkx0+txW3Uqs8elec28wvsJ9DsyoSHDMH0HzcGpTeqJS7oozWrZVwxbeAA0HkRO+nRSPo3MMgC2wQTqhWXzTgZWYtqqgJuWI9EUkNxBAh4/a8nU9UNpoetxLbkb+Ht0docb3xfd/Kjhjr/zzPfrgpZiUbXPfS1zby9g/wT18J+tZ9/S1WlT3kZaSN/lFzjETHq3ZGAaWsqI0VZZFS+Wx7GFm+WZZP5iVct9DSXfZSnbUW02qcApw1o2GYFEXi3l1+6K1c8wRhv7AuANwv7TNNOj/NJStU7ZhYxpkhoiyB45VRWBhMCBN4IA5vL9nUDw1VXQhj4k3/NPlAE4la6nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZgRgKYrLnbstrokzKuFtjrsX9AC0huV+p1pXH+2hdfY=;
 b=V1ThpNe8jjVQOx3XXp/GPDZdz9LHdv/ZZn2TeyYEJiO4FVAulLQ3E+cspTHi6r2RHAOUwGCTgF8+paibUEy02WQqJbsaG+ElYZfxDq3UrZMaG5CBesIQir+t/UNcp2lVnz0KDqLnVba6Nkvm3OO7CTN2lABaltKcun+/f9ApmB2ecRL0M8IyQzZaUYvNb+NLfOcifE+82ufg+aQaS9PBNTKrLiS+LdJIQe2r+HeQ/eB5MQGoJDc1MPUDoE++o25r5FWeNdThP7KifnsLFM+upjeVcd9jOW61qfzFG8jcyRlz96BTV9ttdBKV3YgK12nX1SVYeoLkmdXq8UZUw1TtHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZgRgKYrLnbstrokzKuFtjrsX9AC0huV+p1pXH+2hdfY=;
 b=NY2btjb7/3akEDeWOcDcpwvMK7JhMfgcBFBO1zrJVQI/KtmdRVxaiTW9pfRQS7lx8/2p55GM/pPbFNXU0XXOSMlHcW1qpFLsQcd6zSZ2yZELlJQ7cZ2IY7AeNrQOicCVyx/2dts378viT7jnxGHhG2XQeOq9QRZlyTIxCzx0p4r/OpzaylJobGC0A+TjDS20yab6KDKU9wEqHTVIDGYMUSzwK6PjMgINSzHTEjMbXsF4eHoQwhmH0eDTqWPyPwPqKNCYhDUfjRsqyZcai+0Poip8Kf/sdOXzZE9uIzDLBl38M3MdPLtv2w94UhRQ8drO1Vv0LT54q7vWcAZ4sIQeJQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <777ad095-34c5-43fd-bd52-a7ca938adcf6@kalrayinc.com>
Date: Wed, 16 Oct 2024 11:32:40 +0200
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
References: <20241016085543.3961965-1-a.fatoum@pengutronix.de>
 <20241016085543.3961965-2-a.fatoum@pengutronix.de>
Content-Language: en-us, fr
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20241016085543.3961965-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PR3P192CA0020.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:102:56::25) To PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:14b::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR0P264MB3481:EE_|PAYP264MB3655:EE_
X-MS-Office365-Filtering-Correlation-Id: 615150bd-3148-487e-c99f-08dcedc57b4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|10070799003;
X-Microsoft-Antispam-Message-Info: beotmh2jtm0O2FzWlRRv4p5KtCkJaEMUPOMZGtuYPBI4WpWWQkJnzsu9wpswTNPgxIPOcWEhB5ZNbvz+fb7ig1X3VyMMklkrbk6t6sPr5dAtvQsXYCqw9Cpc3NPIFR1RUAvc1uelhTQ53/P+JC6eiNAmOEF0xOPJ3LrmXqAs/xgIKCptNLYGxx6f7O3PFtbWlrQsBi+TH+Vwdg+9KDbVPxAP073MoQvXUCEZquPt6sP3eZQB2Na5g+fqOhIaYsePgQhqSWugdhxAOp4HyR+oXwmu9TpN4K3kidigH4kz765XAZ1jhWUyq3OaXvHCQf6eSgOzQADULQXxOmbA1ZFDKSeX178vTKHM0ZzB7jXGXbJZeosal9gdxFTJmZA3yaLmW9Q1zcJepDRj98zSrpeIDnk6NqxRirhNNlTum92dhUUoGGqen9K1WvH3ieD8VY2MKuf/wGW42+mc79h+mBzRIwm/9lnjWauCpj2fRf+JgcT/wIWvOX0BmfpMWiE/Ar9qDLOWpPjW+7fteuiFwU9vH+fSpm8oHBzNOOTAK2nB/Xy85DIcIb4efuygl61fSpoTFWayfJPbb0VpMqi7US2tlFLUyIySmpfmRzDjaRWwOTEVPTEdK8Tw3+vRLvviP1tG0jTxBEOr4OBJiczKi28C4SpZXFKfFHnIjcVImFJa51uKkg3nfSUWgfZmZgkT9pzJYHJ2QWE0Vpx0tR/TgEGrs63YVIDeYuUkNoY6Wjr5djnqz5dloewtVI1+XUdu/1sPGLy8sW0jXl4goWGXv2pZf/Nx/JB27vLEPkNBxByJVLy+q7fgBnbvJZdJYd7RBL+fC4IQNUUfUuk8tVsnt+TOiyRLVaGsWbu3p3ksk/j+bxVmS+eWadSfo2AzXk5Go89Jfmk47QpoG9TeuMkH0kJYBp8nVZatZtwAFd1FTlpkhfi9ORaye+RE1KZX8n+hB0EOy+u
 bEHgIfOu33A1wB223y1goEmfycXOSejbb2FzcrNhZElsRAs6yX968rFDb1PVJe6JRtkCa68+DVMmgrUAVyvpAzO4g1vd4Q2WiTXkRUI9KA3S7Upgda99igNM6ywraiL4Jv4HG+0hQxTxMOzbFLp+560mgUTsLe0mbZ98Z8qHl/Hy/Hu4p5zR1JikUD5sMe5XS+FbcumX4Sn/YYjOJfxkESyv4Y6Mpf3hUNAXZsqZrGuvPp54mrRTKe4dfSBd01RylPQSRPm99nayBFY1wZA7q/wJvHXJqSH49TKgEKMT1NOwg0mLohiWIkNT/LOk8d4q5x08znnZvq42GObl55w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(10070799003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: a6bpG14N5287JJEz9umCw7dzxUOkkiLSNroUDesHZmujACQqgkxXZKFrz7Wi9kYNTVHoJA7OOruwZ6yTVO4A6H1YlXtUdGFC9eZmpdhQd4cAFXPNQKt6eLHWIhiM/DHsrMS7B4osPmdnfcFyLQXb5+cBnEzFPiA3ONSBTPg8HzVrHM9TdgIJvkGNDs34o13KRic7rJHYdf9Db4p4D8Ig1rVOcIRrxw21woVP97Mvway760pINivZtSgwVsyXSQR1HYrxeyYg3fyPQrppRER+hkSr7PQ7WIgP8hmZgvyMdwKsHbT1ZfAixGI3629c2OCKIrjNxb8+rp7GadyQWQGMlVZo6yymDbD/hYQXFnKQb9K9RzyR6lxJqDdKoQTlVaYAGGWu20CPlRdwg5JXOBqzi7I6sXGcTaEGy9C04DnnIRvmK3tSvRssogylYaXb9HKJQpOdS+dneHRZ6y4MlwqKtFBMRWbcnrEaW/EP4WS9qs5uZNNnpXDDLjLHtHw0TCP0KNTyR6vktCNZ+YAaDWWI7aKIrH+il9PBvDh2OHTOWWy658VO9yONLvQSzxfeTkhd3nozoft/gxKrWULQAsgjnk6BcftyzeMOk/UG4+ulONiz+ohSU/v28A51lgn+pEIeoIg8WwaJ6RcyZe/ajkOWsym1TJvGM+JhQjygzZPscYC15KyMM4slWPPbxgxV7RTD2BW3MVvmZWyi1d6w0pMKSyoc46lzi2O1oXqLTcNjl+k7Y/eM2KZ4HW2la1oTRtzPSi/ix6GyyjSgDE6Hvi9MCe4qMlgM8ikPxNiJBlLjUFebhO+WFSx7JwFQjxfn1stb1Jm7IgV9GYxkTDZrimNUz5DUT5YHuy6qPjZTalfVqyNdL6SjEGrwOja0Z0ag8t8GaznxMcHgKOYMn8zxoS9oFIeIIJe/kqp8golK51t7uPrTOmazoIpl+SeuWZkhOo4M
 F1UjrWv2k4n5SltruIo0QgLeNtzCArKf43FFsYXQlv/XfzyaTaefQ1il0XMjlPv8/5OBJ7yn1wzL3XaGlfYO7fVV4srAeooTLWcFPMm3jdJm6XBbxGsUxQhYLdJjvGoVQQ9YoLOCzEUyHiBIF1JTc9mYHkGO5HBZBFCqiXGttKk0AgXysnjHPsA4MuSsBBMvVzRC/yTSAOkB8Ee31BgQMekcP1WnBliW3Vj0inzASmr7wQ+seEXOglNiY1DfIWr7XFcabzEW3LyOZOtVbvjmc+9LxIY5NEYjwLE7IMtE17OnccBwrLaHJxEGhw91rsyuju5rlgBPdvCVZLfaj5iMfy9GcomXyF6nWNGxkCd6txGXjz+TIgfWJQ1BiFnYwTsr2tzZTiEWW/oA8gmMBWKND10wV6GRFXy4bQTebf8ItfQow7/OruqLVaLoNFlbrPeypdOijRf1GVjEZ0jQWAunoU3XHMGc4OhY6I6lUa6nMmsxHnJ4LyMxEYsSq23D4pEb2i5By210VaiR5C2NltkYRIMnPeQg0x98Ogud6iL2LTnY45DEKMG/3/lvLUsQGstvcvK+P2rBOztK1i2ggkvKa7CM2eCoLDVjdx3UxXKUUWUOfpDrEiwcQrRACvdH1YSQS+tRCJs7K3HhxQvWG3XbyNa9c0ffkhMJ0oiFesKuL6moQvorlSKGVs25xooQydwPOfAM29/68KbLdFfJbq59Jw==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 615150bd-3148-487e-c99f-08dcedc57b4f
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2024 09:32:41.5627
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y2aZtvBe0fN5KaPMbFAbFS0oyQdacXKL0IffMKG3KIfk3J1sc2DLRoDWV+DQ5iBUCGmLSTVTf316J3AVIcYx9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAYP264MB3655
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_023250_130918_4811E856 
X-CRM114-Status: UNSURE (   7.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] sandbox: add cpuinfo command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 16/10/2024 10:55, Ahmad Fatoum wrote:
> We have stack dump support in sandbox via AddressSanitizer, if it's
> compiled in. To make it easier to test proper operation, let's a cpuinfo
Small typo in the commit msg
> command like we already do on ARM and give it the same -s option.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>
> +BAREBOX_CMD_START(cpuinfo)
> +	.cmd            = do_cpuinfo,
> +	BAREBOX_CMD_DESC("show info about CPU")
> +	BAREBOX_CMD_OPTS("[-s]")

It seems the -s option here is mandatory, maybe remove the [ ] brackets? Not sure if it means "optional" here...

Regards,

-- 

Yann









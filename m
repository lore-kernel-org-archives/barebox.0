Delivery-date: Tue, 13 Aug 2024 08:37:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdl9Z-0096tK-2S
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 08:37:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdl9Z-0002tK-0x
	for lore@pengutronix.de; Tue, 13 Aug 2024 08:37:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k93k14vmHdr6w9Kcq4jFSfUi4CAlmKTv2eB6doLzFik=; b=lfawZzYruKo+5EyaI+oW8ACjDk
	FpfBrZ5BpHtX93uFIWDHRU5UKcElFKr1vLM9FPkPKKqTqt4ynWJ0Yzv++6lwpjXGRNWBvTqvIYcWB
	yc/uEnyyytNf8wIsYaZOsaLEkeIQnlcrocFk0tEr6lCjyWr9Arva6JJoe1x1o9IvfaOP2nHh3S107
	rkY16sJzUPgsbW9q+7dpzsJMIrDt+W5sw3ULgph+v4EnGl67JVaON1BDOqm+68tByGqGJljIaYLLa
	EmJnjxYq5bCEWDu7H0/A4tQgtXLTympz9OOwO6NVqFdgVk6ti/2ojnBKFUlw9r8b48tWTfLbBzgTw
	7AnJwPlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdl98-00000002awp-2krL;
	Tue, 13 Aug 2024 06:36:42 +0000
Received: from smtpout148.security-mail.net ([85.31.212.148])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdl95-00000002awE-2Cht
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 06:36:41 +0000
Received: from localhost (fx408.security-mail.net [127.0.0.1])
	by fx408.security-mail.net (Postfix) with ESMTP id B00363224A4
	for <barebox@lists.infradead.org>; Tue, 13 Aug 2024 08:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1723530997;
	bh=B0BF32Ts53579EzCeSNqihFHb0zvx79chYmdGgP9ay4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=G/QC5b9coI/sWRbxmu2pjRtSNR8tGjezofifBfyJwO0XVmSJ+Jv0PqvAruhJlEDwu
	 za5LaJ9X4aA9cg7Me/KO+kzm7/E/yHFSZ+edFStxNBwCg8aJF/Bo6AFLvKOaKgpKmW
	 ViBkibDyiX/mCsVJL9XZABOXyDaN7AxeOyNiU1pg=
Received: from fx408 (fx408.security-mail.net [127.0.0.1]) by
 fx408.security-mail.net (Postfix) with ESMTP id 841903224BA; Tue, 13 Aug
 2024 08:36:37 +0200 (CEST)
Received: from PAUP264CU001.outbound.protection.outlook.com
 (mail-francecentralazlp17011029.outbound.protection.outlook.com
 [40.93.76.29]) by fx408.security-mail.net (Postfix) with ESMTPS id
 038D83224A1; Tue, 13 Aug 2024 08:36:37 +0200 (CEST)
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:14b::6)
 by PR1P264MB3429.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:180::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.22; Tue, 13 Aug
 2024 06:36:35 +0000
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39]) by PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39%4]) with mapi id 15.20.7849.021; Tue, 13 Aug
 2024 06:36:35 +0000
X-Secumail-id: <1757.66bafef5.18a1.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AQTj97kgieEo9vTO48wyah7xSO5DWRG03jRtuX/RHTBPxOVrszKp9fHlxOAB+OEVkZpwmnRaT+h1PYoLnRv8bSJySvSjB+bdJmyE4JsHTvy3v6nQIRZx6OWz37MJp+MOcZu7hcE9lxDTc/Xwk08VAIY0lRQkwQ8bHZ9VrGk1agFcx2E881NM6CopdvxT5HN30MuY/cnZESOgOJH7uACuzsGhD2/XHAFrDcMOL5Zlo7hf3aeIP6ZfTLqnBBgHGmmcjJUiyBQvBVvpT1NVytcBz7EHHROWoYEH5bXozvGyVfGoCbwHTVa9rK5Xj8dYtjSRmggGTtpyunuyLSodT5qLrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k93k14vmHdr6w9Kcq4jFSfUi4CAlmKTv2eB6doLzFik=;
 b=BgcC1r7Gz8MlAbxBad+BBqhHSvbZ7X3Gy7b7Zvme4V+Nwe27cjf3uRV/l25G687pGAmndj6iZZWKzOXdJbtNxW9TVuDr4V+YjrlpuvpzJubcyswXWqbrzhUQHm4/XzT7bZnRXppWvx4x62eZXsb7hMCftUz5virOwQO+2LQWZjZN3tZW6gjXO3ucq/QLKC282Miy14f+ROLhtdU74GlhLSmMobbxZcEJ5eQ02CeEBWV6bMgoXDUP/rJ5QFviW+8OZgz4ye3srvgLmbnFW1rgR3EsAPOLs2cvqj7WruPqacj9V/e3VDKAPy0IC8WgYTEx/F8IG9x/jK+uzgrujoEHCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k93k14vmHdr6w9Kcq4jFSfUi4CAlmKTv2eB6doLzFik=;
 b=eGI+1MbxeGDG5D0yETilofw1ILwOQ6mBLv8K6FBnWv/oX9k5t3CCgG1oquFsKR2mnzMT4CehgHjkIhvaaGqUvW60l2o8db1t0ERXtR7p3fTUdbyRe0wcJO7g0CUKcpD92aeuxbbFxtnqNmJWZBVh07MJ9MIuJGfWCwXw6+NWbXmeGp/gvH18/jDH3fpX+DMBHO0XycUPYZBNIeoJmCvm4kGv7y08iwkgtp7NhvFXd1eoCJoNms1qLRgie0FZJaP4ZgEOgqGmJWTADQt9cSL20iptL9K2FiI9CAboZYR9oDaBykskf9SmbmQRobVzf2h5DDgNmLl8bOkg65EdCJ19nA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <75461e40-fcbc-45b5-982e-577b68b42119@kalrayinc.com>
Date: Tue, 13 Aug 2024 08:36:34 +0200
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: jvetter@kalrayinc.com, jborne@kalrayinc.com
References: <20240812144150.27707-1-ysionneau@kalrayinc.com>
 <20240812144150.27707-3-ysionneau@kalrayinc.com>
 <47a7870c-0ac1-43ed-8f4a-6fc99d74259d@pengutronix.de>
Content-Language: en-us, fr
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <47a7870c-0ac1-43ed-8f4a-6fc99d74259d@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PR0P264CA0096.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:18::36) To PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:14b::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR0P264MB3481:EE_|PR1P264MB3429:EE_
X-MS-Office365-Filtering-Correlation-Id: ea4e6cd6-ff13-446a-1f68-08dcbb62474a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: kFjdngPcwbFhD40tETkVaeByMSIg2+wFOH0oxFVz67srmDsrrqUWqndQKLdZfE9HFxUjwblXFCazcK/7Zk1hrmbKv87tbpAzIekV2BOwAkjTH0RMpU/Ro/9sgVYHPQkG9LLza6NT5s7PjKhk1S6wWzGrnPK+myRzmzxHzbtr0zfi6w7oxrPYWzYjfUdzcEptzoMCjPMCr4uhLT3H1I3bfOp9gcA3tbhvUdKk7Z+AWChYgtv7zjIHiDsfN5xqsKnHM6wFthsb0Bp4VA8RBD5gXmq1gMhnSFXGEtBcSq7w8ux1b20r9xH3Kk8YI5/NN/LKp8W7r9LO/fFwYbKYoB8bBwareX3M8EjdsU5TNZtfR0ecJkmO2G1yn7PQ8w2yM5jpinyR5ypRGvXWahyMI7Qccx2fqTpY321fkBcu6uLXfvHGzIqxrhH2rtebQfY5xvjtJQTBWOgCse0ZmGMFsivPEQxBlnSNw4UEQ7i29r/yd94Hf8FzH9UKP4bvkFtEAnOEI5Sos4PKSRLbG1K6gQwzwMWMmGxy/geoMTG2fUKXHMPOKtQamthv9B07JuvMW64tolpA0deppqGnBxfWt92QtFK0DY/Ez471CP74Hn+yjCElZe4bb5//NQhAiCQ+hbk+f5hVYyhwjlyoCP4ZAa34PzRVqPlrWPJED4qFJ/jFHKwFxRl766frxBglWSesNJAsq/Izgnzom7Xs2Z4sUcGA6mev9iR54rArw/3MGaurSX2BjpnSZYUWI9uzKbLVUGpyrlzceo12/rEd3lJpISfYOxch+AGYytB+R0pHckY4Rx/RTFfi3h436Pm1Q3rhXOSuQnXdGJogIBf7mZRtp+EwwQHb5LD1KYaHuciv8iY8kieiqSS/01p0YC/tTTP4L2UxMR8o3EwkQUYnBKO41/9zWjl/SmoT+lSlIeyrUG5wG/h+peQ6ude7/efWjE2w9nP2iHU
 RD2N3774tSlrhzFvTCTppg68v1c4KWbt6wZ+j+dGKK08PcNxA9VHzgjm32ZhQHTTFpe8AMJh9JS84KB7vP3XUwYEW3YoTyVI1i8xNfOxBTRQVK5jSrPK5NCRXWJhlTUW300VZhesiRw39x5f3aqWWds/EZX2PSZK9ctqXw4Dt3obYkTCCU+Bwoof5DxTB8amvFAyw0QPudnCjphFamp4T/s4XCnypxfbJmOOfNAIhXlL6f2T33O3A9KBxJSnLH65B+H4aiknKhY61C8IGHOCZgTdvY+fAvuHLFfszUFRGEPwhbBibwdfd1mIbFr6QNrRjYNzgQTCLA1tb2i+518JBVDcaFhDC/v+satuR13vnntr6p9II2n7vG5S3u7U+pxujgmPO2l+VNmxdgkg+eg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: E9mO6kMazVv2CLWeObZzPl+sZJAy1wPshMqTzDbKUNR3y0R3YvINuJefdmRoeZwc5KwM+LRCMSP4v19ZrGvYBsdbiApmPC3d2XXXUto7yoovTxe8iog5vFK/6L3j/C02jTn4/5cxbQC6pV80wtDQoDU4EIiJeufoOE18n+8rN/N7658gQa/mnwNhINxJ1WxXp8NJ3uZMWEGD+BX2tcP7U2Jk/tV/HUx2viqkbnuk9Iv/zI+K9lRknV9xBXN+jRBMLuu1gSEM8UVg4KybORJbwFTKVqZynoyropwBCB5ixu2LL/7iqQ7ulgXqF9L0M3pp7OyqkFd9PzzpsRGwbyFb3DQOHTYhcMwdxEbNbcyX2tUEgKGH1ZcxULd1CJL5fboV7Q8WQUyI/c07ehtgYVd2kpIqOgVbU/TOKYjZgaklRnuPwVpKkYp5TNuzSN5BFLIu90ubpQbgQn1INe+UMa0KNB/uEFMLnFAS5Rv0mZhPB/NDAThyP2fcHx+biO+xU0PISMTh8DoFfTUdXW1d4PVV60V87sZFuaXIuecUlbiDuIlCicYn2+iHCxWcqhq8SDYfI5ZMlrzV3nyViTx2y4YX4dx9FM8UDM3rYBQQyXyXmTZ5kcnDJ1T+qEMQn+jLlePVOAyFR2bZZ6Upl6JXL1uhKTJ4UxAGkdYwullqFa/uI5cRVkuI0+alLI/4gWLcjbypHpaNgFHEoMGxo6XvL0IIf5K2yDfwoY927KvHO8js4rt6FqUXzpg/+nl9HVoH8ptMo3hpZTevVsvhMhYkLdsBkwZPGa9ZBWIcjMX0rPVrJRvDbQXL0EYdYubQrXYeNDgub0xL7u/fVC6fNyAyytUOHSQvwD8MtJJ/NMqMlfPo7bAY+eELJQ9bU9sT13ipHxVG8x6iLXk5ueutGS2LydcWFYNyX3wA6XfCuq4iRk9oy+NsFgfrGW5/MdjKyznlP+az
 oFoLu3yGOcPsZ5MVVx9raNB02jQsHaafkSyG+flh88ULcv5nrggJmPa8I5y5vxboN9MA35XrHDTomVyMAB1wsXlJxh4d6Ucu44scO1cCgc2WaHPHrnZ2jdtYRUf8+wnvLw1IrYntMVs72w6HIhtM+x+iUhXbHXFZXWbcQoLRHjtsEreRRxvHQpAgsArZCy8zANT+wuPm0MyoOtHFQbAmqIArW4IkLWyO3Wer1BZshjvgJB3z/y5RzoY4VeqWe2wDSD3ObcSj6e0K9SEDcf7iACklVOdAYjjASd6OCFyi53hlYVViNem14h2NhxrUthjGCDzsbQctcZ1fyUZmvNLV9LbfgBifpdyp1sJI/xZu2G3ZRcCoBpnB4u+hyNNVgplGVpRHnZE7eb2nFe35Dnlnn/7maYLvb7RGymPFHXmbZ5b416VTGzAALTBCN4ehAPfuAfzK1S4eoReQhiOJV5c8uUiuvB7aMmdgGpBL6BSH8oSdOyxIO07T6/IoSg6Tp4j37heatyOQeNAKqewSaeuTc0rcFreSjb5zvIySoWXMD5FW8qK5SuWvneoJgo/uG4/0IXwbTEbXKosEQ4/hjGU6xKHiFAAt8FYXPrzUn3frHlK5QqPOFIFDju3ZD445MbdJHAXTxgj876eUGLJrFftb4oGnqlcevEtUG3hbPfTEAsltdYMTHl7E4QJCKCcQVVsOPXWfCFT1UIEFxbA5TnUnIA==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea4e6cd6-ff13-446a-1f68-08dcbb62474a
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2024 06:36:35.7754
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1V4PLe93bIzCu0tJoz+QuLnQQu7Em7VMwph+srSNZzN9LC8FcLQBwXkx5ZlGgb//Y+Pjxz2Sg76DXrL1ZCU/iA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB3429
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_233639_766778_1459EE90 
X-CRM114-Status: UNSURE (   7.34  )
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
Subject: Re: [PATCH 3/3] ci: add support for running basic tests on kvx arch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On 13/08/2024 08:25, Ahmad Fatoum wrote:
> Hello Yann,
>
> On 12.08.24 16:41, Yann Sionneau wrote:
>> diff --git a/test/kvx/qemu@generic_defconfig.yaml b/test/kvx/qemu@generic_defconfig.yaml
>> new file mode 100644
>> index 0000000000..bc15afb632
>> --- /dev/null
>> +++ b/test/kvx/qemu@generic_defconfig.yaml
>> @@ -0,0 +1,18 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu-system-kvx
>> +        machine: mppa-coolidge
>> +        cpu: kv3-1
>> +        memory: 2G
>> +        kernel: barebox
>> +        extra_args: !template "-dtb $LG_BUILDDIR/arch/kvx/dts/qemu.dtb"
> There's a dtb: attribute you can use instead.
Oh, ok, will do!

Regards,

-- 

Yann








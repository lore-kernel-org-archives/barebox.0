Delivery-date: Wed, 16 Oct 2024 11:55:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10l4-00514l-3A
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:55:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10l4-0004wX-9L
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:55:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ewkjpw9je3Tz0XPzIRpxCYParHmJ2/bnflvl1vvU0Q=; b=egp7/ey7Xlx56zOrLdjXFB5RKz
	EsbVVUb7+W8qydnLiEYAHHXnMQVkJz6n/9SyKO6yEBj9u64rhnCIhibifBgGCcMcAYajP5mLL0DPz
	qsv3rHGJss0ZHvdkz4ngilrkh//an6CbyPnoauUTcqvFMcGJLHD/j3WjIGuXKN3rAROFTJQ8/1DfD
	qQMyk+3iPEgWK9kqF0TJXcLPjCfpo38Mu1m+gNPHUK9VH/3Iosq4Cz0N2HrNlOD41jVqMEdnF8R3u
	fxKUTE9rZhu2s/Nl38vT8gfePtyFnRtunLBiUDvpBjSCUXEGkpBfI5ebCaXM3wTy5Bc4zaw8mu4/0
	ETZWFq1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t10kU-0000000BJoW-1SaU;
	Wed, 16 Oct 2024 09:55:22 +0000
Received: from smtpout34.security-mail.net ([85.31.212.34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t10jj-0000000BJfw-2cb5
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:54:37 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id B913E6D7D24
	for <barebox@lists.infradead.org>; Wed, 16 Oct 2024 11:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1729072473;
	bh=mLko1SWM4IeS/OU7t+sC88hBbGsp0tk2BwI0GuGeNtc=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=QTRbZBY1ggzVSKeRmNR5eIEscxvGof0wFx8Ryf+Q5CI3Yc7ppINT5pmSBrK5ow+lP
	 EGS8a/Mn1oFFQ1kvXiqlGVtbgkgyu+5LHVeWjuBu5Y38//BOgLtQzSvdiY0UHoP8UN
	 T4F6G2lXECPZzdOVCv3yc2Oc5WMw79LUa0NmpRoY=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 939986D78F9; Wed, 16 Oct 2024 11:54:33 +0200 (CEST)
Received: from PR0P264CU014.outbound.protection.outlook.com
 (mail-francecentralazlp17012055.outbound.protection.outlook.com
 [40.93.76.55]) by fx304.security-mail.net (Postfix) with ESMTPS id
 16CDC6D79C7; Wed, 16 Oct 2024 11:54:33 +0200 (CEST)
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:14b::6)
 by MRZP264MB3036.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:31::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Wed, 16 Oct
 2024 09:54:31 +0000
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39]) by PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39%3]) with mapi id 15.20.8048.020; Wed, 16 Oct
 2024 09:54:31 +0000
X-Secumail-id: <17eeb.670f8d59.15a8d.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zGXYxxDUfInraHAdn5Iocbu81tAN8vLehP+gxWm42iELK/YHTp8fTogub+iFU7TTqQ+0l0Nu8h0X72/DCITw9y/E6pDo8Em+MBqk8Wl3I0ykeR/8SJc5V1u+VVhEv+VKv+AfB1NWUOEYXIQUascrBYQMZq0pVzPVVk1Ty7fuHYL7VLEjQqj7yE4jJtWZsQtOuuDRBJ1OJiPjgfD8PXJsuaYY/IlxvzeQxfO9CKU+icNgJHzznNPXxU6IPkbFyLpYsQ7Kf3GyWcOe3givWNAJFvoAmdK9klzsuDINN//DvFMBBBccn7mGty3aQ//CrYC7qjFr6j8Avs0OAZ+3LBYkmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ewkjpw9je3Tz0XPzIRpxCYParHmJ2/bnflvl1vvU0Q=;
 b=TlDLJrDJyKkVg8uowq5WziA83Ctb2/SlEZMcVw8WdlD3qagpRdg7iQ9o24ySoCPsEHAkAlQgo8fE/zNJEtn4Vqyjt2EZsmfWWYl5Pm/ftpphX34soNsKv5aFH1XFpr11HPRfgtZLQOeOfO37UNRFxgcdNhtpnevzKp3cqhkRmBr9EYjJnuwhVGoX56IfjZsPr790EnE8Y9zfWw6m2FIEQRoNYgip1x6Y+sauH/gex5GfBd+cGYL3kRjaSCoVq2sd+PPd5WQzNo7/lbAngLy/aJ610RLOZC4Gl1mwsfpZc4HYJ4ffV1LdpJuY+TCP+zeyhoYIM4IuQEWH6BBgf+faBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ewkjpw9je3Tz0XPzIRpxCYParHmJ2/bnflvl1vvU0Q=;
 b=ExnCeB13W0Y0OmiiTN3E6gBPYrmBCxr12a8RVbSi+rdJOrJf9KWzbuscL0Sy4O73+tvOBhi7DCD2VFvZDEQzHB+Q+qkNWAFPeH/aQ5pFFaeR1l9TI5XbOWPDV3B2QciyZJxTkoZe2WXCaZmH86uGNGhQrAdBdk9Zo/tS0xBFDyQdMzGqwiwPdmfDEwOTaGnJEDWyYr7hZhYZHx+JkRFobMwob50Mj0/sRupPQB2A9IkGwobqxv2RSZJL7Apx6+cFBH43d2WGHwjah9ywoW9sd7ua1vtc+w9aaghnwIarOhBgcjiD/x3jCsEyuov1gx4ASyXD8F/sts3YrBYvFg4xGQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <bc43d89b-dc50-487c-b270-b5328ef26ba3@kalrayinc.com>
Date: Wed, 16 Oct 2024 11:54:31 +0200
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20241016085543.3961965-1-a.fatoum@pengutronix.de>
Content-Language: en-us, fr
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20241016085543.3961965-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PA7P264CA0407.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:39b::27) To PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:14b::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR0P264MB3481:EE_|MRZP264MB3036:EE_
X-MS-Office365-Filtering-Correlation-Id: 00e2494e-9b06-4223-f839-08dcedc88835
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: 5w4OxLT0C15W/aYTWWZUzl3T1HHG0YmoPrN6uQL1WGf6kQtKInhNuJNTOlsMiNBl2NrcJEBH92T4OEwSU4QShavD1V8eOTMtU8EFcc/zerygWKTWx1c0sOw8LOcId/oLJ/k5HfI7/XcrBoMl1KoiBk8EyISt4kXpE0i6lPJqNzp9etl0djExON2dFDCBomfRPng+nwmrMqast0Qp+S+gvjF/NMUqc+We1ajMB7lfmxYGqPrbzOuaSWJGZzaNYiAwiqSOXjsbNM44wgInrwZXXbb6A+BFkZ2J1CmPnQcq+E0kN6NLn8Sx9ARqDYOWySLqUuNxXtXNGtfbMveA8YX/RewPy7+f30SX30je98+sRwqh3wBiiY35RG3ROOIJGhuNwboXXWJnEkuk3BW3nl2qPvgtAVCsExrglRK0y6UZPCYJ5NpR5Q9INdkYv/W+/Y3ALlrahRB4o8SFXbiZNLdFR28TKEOclLpfPG/JeN0lJcDpmVYRjV3LsaZYamaell1CfejHVZxOPc3myK13JbzXC2evP+kl4KjXNIqRZRKeRONDdv5OehB1awYG3IHAtovIuViZAngyXTWwZXQeR4JgkLrqm4YY3aM4Rap1uxY/OI3CN6rgeoHs5KUaymWJ5D82rKfwpntj+bFb9TgTFzdXp1EDq4JGSqZs9cDkIvMrNYJ3r1AJZ4prm0TwKMYhvAyZnLE0vv4GiFNX9wV5UO4C6PYiMuxT/O0TFxz0Yt6WgSB30xAXg1RYqoxj8fLAlPutOIIQLyKgvY58ZhG2Xu9jUmHlc4bXNdsnIBh5Ko6h/dR3LSxG2I7oKnZwVlRHfWv/gLsSCJkOSudnviiSPIjYUggL8Yst+lJmt5dVh/FqbwcXH5jfzRNoZHP4PJY+XgXiVduQTJV1i4rvLP37SJeh9XULe+vaI+77FiC5+Sbekb3OoIjYhSoH2Sy0v9NGlyveVeq
 8NWPqItv03YlV0HJCKKQILkh0UgTmr0xdzqjsxf1VstN+hYmnPtU7zuDoD4Jb0ZkwgBwv9rypXb0mqSzyD2HEgNHc3Qd5hoyW9Veh5TuPS5bznr0Qf9kt/mlY/5bDEknCUv3x8GVtDEphIt34YjvSz/D11FJPYMkz8PuLFIx+DDOGziQE+yYpEzP793pFc39AnQHvqMSGeeKJ0BxqN/sa85R+9dnCN3EhhG9ez0G8aFJVYW9iShCCVyMwyc/7ripYQBR1fv7f/nCmw6YUqhJUF+0nLjKHN0XU0tHriYEUbDhPyU0JJbynPV4bBUsOBtJyI6zsxtlgQTh+3Iev5g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(10070799003)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 2QnmMnFMuJOiq+0BtZrVWoStmJk5HM1RsGmU+TzSYgtY/GhAZOpHtq6UkNCXUAlG7E/3CkDZsdXbXWltqQtEMSXhXp0ni7HhDVbkoBoos+Suv1f/CiSxu5oBW/mIQ2ajIVJuiWGj8FjzsKOVj+D3nbQ7ypKCwX3NtkjVIbUxN3IrYN0aw5c0VTTFJdwd992ofnLQ/WOrcurZ3JIIXMGvS5uc3gN0wmbbNM0ohJ0Agchuef7q+KeWT3lwd3sYk64Gp+L0eKlzMw8+je7HStTaBEutdEF8tT/VZUaK8DB7SoVVWz73aBx/MTnneycMjodRsBhukIcPBdxz2IjKKA5Ea95FVLcU4uJIkZ26QCcGaOA7CjGvq6cgN8VjI3F1bSETOrq84kKCT8/OojSVVYts8zdG2HeBLXxNIgPHGob5YJWkWnKO7a2QhpwiO7Ktm6dXZbb1DyaNE2+E71SDrienu0Wv22423Xw2Z/h9h4dfbEiR4IQyLrdfWxr7CEW0t185HnJmnqMZ6+a6hsQ2wEawpyglErmuL8GUaaKPa9Nh0uo9/Mjtj5vE8JPra3h93PMJf4qv5oqK4BKB9ml4TCD3Xx/HK/jnwQveorNv6+rz/Ti5kKbnWLZK85gUmp2L+Kte/TXBHsVHjasBN0PB+X1KWIN/AT5cJbEQ2O4rYlOppfM1eFaA0cUoBiMtYCEpwEltnijezWMv0hw9jWP6Y07zSZCp3w0PmhSAPxmhShBDCxxvS5pHG6ifFY44L16PzqwySqy1R6DW1ZB3WpXJJ70bz0vjfkaw8NljBmxV+miYnuGshF4B0ViyuHx5x9xJQwTZEuQxAUKAMn/LDcry5JWdWKMdJ2Gwii25J3XmOSt/Xp6Y4rXFZnEBAktkxRUv69bhbq+lwX9BRXoJjUlIsx2//9ORyAfA3A1LJASj7DoIueBff4PJnZxF8OQHdKCCieEX
 XWW4Ufaa4cQ5i7BT3xxWDblprtc+xLeUW2X/AHyzZiP2P99glSSvRhKnYUxZePwUhrvWR/GjVnmYW2wS0JCyNjaR2+ojiV35nno4j4/RWFZUSgmPZXDkWjRfCV8xkJ0uT+yrRiikfgfizU7UcHDUzctOBOKza5pE46oYl5AnzhNIdKz+doFxB4PF23Qyb3dsSUJKphpsUN2cZcNfE8rniTxFx9HLb8fZpT/dnnvMC+zx8z1Us4w3cbh5qm00QjDyMkwRkLmUXJGRm1Ve80PAdiNlhBxJoRJIFxTprKdrQRNFKHyo1ScWwH/UNj4oh+IAhufDESvCQBeqU3Y1oRPgNJ1y2M7YwNDJIGVYf39W4BPe7tj9Kv+AzbQUUu/6c7NSgobk3dXXo9lwjis6GbP8o60Z1FeMiLbIQBFgGdJVr8kZiTd1WsL8NvQboK1gpF4fzOuGe3FiNFOH0BJvKWDbRyN5Y+n4QVMdG45IXoNwO8HN5OD10E6ldLnx0RdGjv25J0nlFCp7YneZ2Zs8CW0jkPcdfK6xZRNTzETIONwKCqrY+vQTbjnxge5ftt8BdmJdwyCDb7PbTIB2jyi5L6b4kvc7JcR1IxUDHgqHWxRC2nADWoJAjLUGwNzIJO9J2IzOCLOKA4Wrdi4g45bDGE0xtEO0WwJi7snbOFBniEiwjBJGzCf9QIzesL4wmRRgJizeMrPkSE9GAT7At9VhHJ1Htg==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00e2494e-9b06-4223-f839-08dcedc88835
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2024 09:54:31.5456
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ag5pt+DlP2XgM2WSZ8xxM1AMFOo2dS7CH77q9x4EPCEy3+7jtfZmpB99aaVeC5oSsvUo+XnX04Ow2DTZXGCnqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB3036
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_025435_819812_AC218BF9 
X-CRM114-Status: UNSURE (   5.61  )
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
Subject: Re: [PATCH 1/2] sandbox: add --command line support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 16/10/2024 10:55, Ahmad Fatoum wrote:
> For easier non-interactive use of sandbox, let's add support to execute
> arbitrary commands from the command line directly.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Cc: Yann Sionneau <ysionneau@kalrayinc.com>
> ---
Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>

Thanks, good idea, this could allow arch or drivers to implement a cmdline mechanism.

-- 

Yann








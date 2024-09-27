Delivery-date: Fri, 27 Sep 2024 15:21:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1suAu4-003Pru-1G
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 15:21:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1suAu4-0001Ry-NV
	for lore@pengutronix.de; Fri, 27 Sep 2024 15:21:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lKjFenaq2HKkT6xlpOKxEiv3JVKkfTyD19Zh1A3hDTk=; b=uNgBs7bOrb5ZCnGEvWwUuwARLn
	pT3swaZHRe57KWc8cRGhyUIouS+GvB+p10wWFXljO/xQ4hjjzaivrPd7fLWaVf7GcQSTFMZf0Prza
	4sHwbZvGMze00cA7sCgY/CGT482XNO0xzFHYEET/U/s0rQ9onl7wWex8OVg3+XmO3FoHcx3JPekWN
	GJYKtmXaZnGWqEL5+W1icEXZi4eB9g3eQmu0sjqICUizX830dVkcSZl0zudDBxSsP4Cd4O2Vh5zes
	I0aqvghV+NDmWDFas34gA2jsGpHrW1Ek+fmmMpHiOjfuWoX5Nir8gbF0ekJynARWEQ5Mp18sojwgc
	D1wLAF+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suAtT-0000000BGIw-45Iq;
	Fri, 27 Sep 2024 13:20:23 +0000
Received: from smtpout147.security-mail.net ([85.31.212.147])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suApm-0000000BFbi-39fO
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 13:16:36 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id 734D334992D
	for <barebox@lists.infradead.org>; Fri, 27 Sep 2024 15:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1727442991;
	bh=bHNgo+NYuFP8VHg1esflqLqvN3enKRlVUMnLk8NsxHA=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=YCQHDY0iNr/bo007nmr1jHe2wkTETzBJlmAMU/ye16Zzb3D75BrewaTPmBfkMysV3
	 t6GMndMXET+9090f+Bq+SCRoapYlc3iMuqnCQxE9+1loKpPRGVa53XwREny2BAJ0/2
	 ZjMJZGJlcYCObQPUUTceAiiMEDo8xQzVMRRJIdbc=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id 31A863498BC for
 <barebox@lists.infradead.org>; Fri, 27 Sep 2024 15:16:31 +0200 (CEST)
Received: from PA5P264CU001.outbound.protection.outlook.com
 (mail-francecentralazlp17010006.outbound.protection.outlook.com
 [40.93.76.6]) by fx409.security-mail.net (Postfix) with ESMTPS id
 B358634953E for <barebox@lists.infradead.org>; Fri, 27 Sep 2024 15:16:30
 +0200 (CEST)
Received: from PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:142::7)
 by PARP264MB5565.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:3ec::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Fri, 27 Sep
 2024 13:16:29 +0000
Received: from PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM
 ([fe80::9cac:130:f92d:451b]) by PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM
 ([fe80::9cac:130:f92d:451b%7]) with mapi id 15.20.7982.022; Fri, 27 Sep 2024
 13:16:29 +0000
X-Secumail-id: <2b80.66f6b02e.b22c6.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kEgv5tmAnrh+ULNw9rWmQjBmtero21vHztcXO31VEIROK/neNfYe3EYi45TIgXJzOmvCNN6an4cyZdT3PtbMkWCnvQlqid2XV2EaouUSPR3mymfB+XReTbdxIDFXxCm767nQ3SeRTOKFFIuxqZA7yDNOrsAEyyRS93aVS8s6e0iN0M4cx1HWSwNvmH1eslIN0wgcKnp84EMyo+lnRLK3/6YPno/RNIzNO6PciRa6fZGoyBSfvqdbY6zzS55XVRk6UCSa9Ul40BqgkmT4V5ONIAHhzSMEQUQQgLA4M9JZFXRli1b1U1ALaaNEoNbh6csZGgrWM9GVgI8nnDcEgQdEPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lKjFenaq2HKkT6xlpOKxEiv3JVKkfTyD19Zh1A3hDTk=;
 b=Wz+yGBP30dDytHmxpkpFspx3+d+B2XRFNyDApxXcMkl55S3kvWufyt1UyYNqDDhExBPd+zxoG4cRJ4szmXycww6IaC+Ukw/3uBG20RraZ34XIybuWvNdW9N1+XUIZw6VkGocJuozKIIGvYByzN8QtDfYMasDpdvykxJasRTWRy22wWWrWrwpOe6Oxri3DIsGusHa+J5Xdp1jS/NHDaVB9iAUBTi7A2vU5Eb8ZA24lRbj4ozdGu0lQfC4+AkT1OnmkZm3/vMoD2GP+uv7UDcCdSkCi+AI6CAhRpLQ9YPh9GvZAyL3/LgWj1tll+4b3ofN16UHUTUyrptHGt1AUOLgmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lKjFenaq2HKkT6xlpOKxEiv3JVKkfTyD19Zh1A3hDTk=;
 b=Z7ucDaV5mhCJDPLvfHun+ZlIbA9HJy8RX352ZkhNuLc3xmtJhYV6geXttjWRm77KhcC5rsppQBhpGpTnrKitf0FZ84LuvTfTe32aJQJnO9w89jxw+n7YaDmxAViWHtVv5Tu4Yucvhk5ibzG/6sJW5PoPbM90lsvfXiuw6t8gumICZhKRzUGN7m0ZuaiNZ/wrjE7hAmrA2ROyJ/Xyx+PJOvvREhjoNbDQtL6vu2WZZ/Xg9UOzAnjhspT1d/QSuZf+jXJSE51Ab7a35stYchpSPUUAVwEA+626+bIMx5B2NrIVt+1hD90mueBRM5u88T/HmyWnxxzfxEOWgc0iL9jlkw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <cd071ace-436e-408a-83e7-c1a2566c3291@kalrayinc.com>
Date: Fri, 27 Sep 2024 15:16:27 +0200
User-Agent: Mozilla Thunderbird
To: Julian Vetter <jvetter@kalrayinc.com>, barebox@lists.infradead.org
References: <20240927130701.1109201-1-jvetter@kalrayinc.com>
Content-Language: en-us, fr
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20240927130701.1109201-1-jvetter@kalrayinc.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PA7P264CA0191.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:376::18) To PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:142::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR1P264MB3480:EE_|PARP264MB5565:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a16e52c-e22e-4929-b526-08dcdef69952
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: j4WG4/hwN/obZG4/FzrdS5GZ1IsklRVW/ABDOy/lguxR1WVXI0QiDhRnrTyemHAUH7nSrRQZgORtYxKFyz1WpUvtSDret5LGD89dQOUBB+pEkGLxo+0MGbQs1PPjDoJMjzK9vkWBbEL+Xy36fFBfjM7zbfwqcCNn8JlIZXrUz0QMRjbsnod7SiU5Uml7JKkvxsfuqbBQccdtxglcLWPEWoCqZFpBKkaUjr7YDcpwaZbT9mZPUe8R4m/4vv7r9EjTux7jc8baA2wyFcD9Qs0sfn94+NLDFzdzVeSODJpto0d3UC1E54uwqrSsoZYd0sLqb1IzY1tchgOcBQJDG+3oX7q56RU2exrl6J7ZWHuxVa/3jvFzwhvJgFeYxFOKQnxBSgNj+rHozdojZkdGCgXS8Gyi7RnWwldq3QksiBHmEFpHdxSC05pvUFGyeTg+YoLukJbRaPotMoBvvXVW7oDxW0EB7rny8wCEujPRPvtYz7masthvHIq3X81u8oq4gf7FO+Tna1IKefdJ2ZtSvPrAzo41wpp5EUiUjJjDvdW/biShcxq9eGsgtXimb0pSeDDKCnkF7D2oetnfahw0LmbJ0neXZMD4kxM/rb5klAsnrKikT6NvDtGFLP4+gNiFRh5jN8V0/qtCfiwGsUxnl7+5PqupgJewzjfavP3uLxZOXkU1T8UO1hLO59IMKxtDpGeYbtctNYJ/Xu92CsMvlrn61uAgv0XFm5Iri3Z3zPT04b6+zX1CjmpdXz3wEa/JitX4siK6VcEUSlr87tkQhmyZt47dYYamX8KF2RpWFMKZTvM2C9+azhd9ZCNvuSO9ZphI1t5YyjdM6BxmfSkSWGqiJzEgyY6pN/rQfy1nXmaMiDOR1Hj2g6izS3y8JJi2y5cWKSXPZOxdCD7r35402E06D9z0EocKLIi+fask/VFiv3c47faxoJ9BKphvZupyFrtBCkK
 qPdEJpAhHMJKLpFYiTGSHZkutSeMv3DYg3Dep9FFiEUNGZf3wSiC6F2MYCgoecrta7FGR4GbsZ3BSMPi4CiOSNDG4kfQrtJzcfVj4rIpSU4dFgCcYLsmNfZDn1Wmta5+cmWzbPGoqkhTkWAYo+jFAMBoAC5MafkUFCNMCigWmTaqFZ5TSMGiuMiOQVmXzDLjCTf0FhhYf2m8OPWrZChkZM3Hvt6o7j8D2niplZJEetuoGLNrtxaArJhrZMOR1F81ZtDQ5aMpB8Uvl746hsmrMmFBSma52dU/0fbgYeeq/lITMeSUsow3A4Mg7nsX3wlgPxAXftkaahmm2cAGPfw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(10070799003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: HvHOIu8Jx+Rn0tmtQoAquSlOeGI6utyuFge5A0NVbZDgLOuLgGUHCns+JvnxRg5y12gTlSYkPD3+ic+LkOPVUbRcTgjRt6aYorFDFWfUA1f28SphSvUjLU2YzNEJQpwPK1+SfvLyPeV3T5C4GrbSgoFzVzSDNASD/+Qf26d6qwg7Vg//izUkJSDfJdCRMYe0gA7EOwH6/gkzD4vxVcLv1Jg577ozwG80isXxlbD3T589HurQMlZhlIoHuD0pMkks6QLsQrmCOOPZn+lDcC5bIzlJgI5G+GIoYDpEQHM5Q4EDquacd91YIdjkFTYs/M3ssACytboeZS4k2B/JfTCzfeHgQ0EbcfmTw/V4abqruzvZQT2zqMr6iDLRTL/6F9fqS1RDYPiS7aaxvoj6kaJ1LFmRkXSbcHk82Sj/alxRBp3QpSdATPh5VxI8BqobpJofNy+ypMfHbuALmRBDLb5Bp0VnYlEALevISUgnExGkiGXswxg4EMF9yJqSj0Yg9lfrg5mzG9VZnJeUhtfVHhsENgZAU83hfW4EZpw4MtYrgjtX3KSDVDrqG3e3HNgOJA+iZvYdXM/+6vN5aLHaAy8lWM+RUtuPr96yw/LHq4KL6JgQ9C0hTbT2Cp0k6XaPFjOmrBGCslH52KUmzHGd32sdUIofTnDcLWKATsdfm3SnMWgbpUvPcsr7fmeL/ehBI+WvOgxMrPr+ifJYp5UNQc2T6lBxT3F8Ts7UkYa9vJAvFXvWAUevi8qfg1fXj3+AAdnmV2CMys/xXeWVqmw4TX9HACUUZXyqHovh/yyfELfqsYwnhOyBs0s1AWCs+QHtknmt1XjFOrOEWcqv51n6DHbARY6n175F0nqFwXwcICsiNojwtrBu6eHY5DszRlHwTUtaTYUgGsDpv+tm3NjkfyEkQpobYDQ+CuZbNSbhfmjpK10Y0BrPSq1vvadj4IHTdaOv
 xl/mfwYjIiS2cNghqzCLrIjybwmtr+FCNEw/SRqCf8D9EsLHs26GHYVhK215JMYjKN3xC72hltsDX7sf2mdoWMW7KQpGkK9AIvpPEpclD2RY9ahj5bPN8rCmv/28OGFS3dxNrogwTrm3KJ4TqfEB+ZVqCnXu87+A/cmxXZLCsg5jsWPy9DZem3DdxMuDzFqNYsNyybJ83SH4+su2KZ4athl95hFRGieB36c1u1VeaBBUi+GTzvvCpHNNuUOQjtJzr6BaFhDZe5F8hvjg4kZYarDlpGCOxqD13VnxKKcjqj5ZVCKIlgTlaIsPtpuqc6MuXBBcxdC0fGcOpwrTxXVbR02WfWuyxClTSOhiIQMiNIwuEXRJkeupKLfWxh0Ic7u++Lmn1uUADuqrAGDEAt/voJj4L0Wt5xcu68uGVkmdirNnN976lQxH/JQAoenV1x/lca8peBaBw2oK/8nZm6UkPJYoJ54XfsauIbb4NC22uPdrx+cSb6Ca6yRvYhEnen/JP8HZaezSVZm4Rj1XigIAqhSA6p52BI9P36d1i08XxZeSGHbWzmBmKhqh0DpZTJWgRjVWQ6XGWAQJ2X8pUzdjkLBJDmsoxS0I9VXSQwJQhynOE6D3JamwCE9qpXBJ/UKT/OniUE7J/i8fo+6O4zOvjz9MNuIZLKXTcT9gVJb/210wcFDn2NMih7keCxzvt9Xo
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a16e52c-e22e-4929-b526-08dcdef69952
X-MS-Exchange-CrossTenant-AuthSource: PR1P264MB3480.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 13:16:29.7035
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jr7dlkZQ4B+EiZEeSBKEtPuapJOMZqUMkUzkdXnTYo8R+ob6NUQbGLuMon/GuFg+r7IGvRmKMWO4QhnIM6Fi0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PARP264MB5565
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_061635_024567_27168FA1 
X-CRM114-Status: UNSURE (   5.22  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kvx: Fix SoC version/revision string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 27/09/2024 15:07, Julian Vetter wrote:
> In the register $PCR the bitfield SV (SoC Version) determines on which
> SoC interation we are (e.g., KV2, KV3, etc.), whereas CAR (Core
> ARchitecture Revision) determines the Revision within each interation,
> e.g., KV3-1, KV3-2, etc. Since this port is only for KV3, SV should not
> change anway. But CAR changes depending on the revision. So fix the SoC
> info driver to give out the right SoC version/revision string.
>
> Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
> ---

Thanks Julian,

Small typos in commit msg (interation -> iteration several times)

otherwise:

Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>

-- 

Yann








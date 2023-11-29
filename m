Delivery-date: Wed, 29 Nov 2023 10:41:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8H4d-00D556-10
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 10:41:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8H4d-0004Li-6Q
	for lore@pengutronix.de; Wed, 29 Nov 2023 10:41:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EDMkHW85cNCqQL+B8JLdtFgXOl7t0OkS+Ti8c1d7SV0=; b=T/XMCOv2y57r6/3MBkUIbwvV3Y
	ac1uvuedVedbf1UOoQuTNdhTjPeq/uhMnvZHFwosuF/em2ZYhJNkwSvDu7eJxIJ79eB/UT6L4JMvN
	QeUSrTLDkYkUmZcjIQCJ0PDyGwuBxyJxvGlO4fmLy0to5p91wMHimhc5DJ7ruRKxq826XYMFHRcU7
	BxdwuYy3xqJiQcRnDbAAOZKqLBa1mmVsJ37gJ0mKj1vQIe11+EsG943RrIOFyn5p7h9487hQ9sPc3
	U87bLpzhXb7YSH+KwC3VSfALUwb6waXuvay/N6DCMdZpT1z3OmFaXFF4OyQlsuDHgli9fRFVz6dkk
	i7ahA4lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8H3S-007hlc-2Q;
	Wed, 29 Nov 2023 09:40:26 +0000
Received: from smtpout146.security-mail.net ([85.31.212.146] helo=fx601.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8H3P-007hkk-2W
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 09:40:25 +0000
Received: from localhost (fx601.security-mail.net [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id BE64C3496E0
	for <barebox@lists.infradead.org>; Wed, 29 Nov 2023 10:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1701250820;
	bh=Dwcw54RIVpS5XnbcRttltMNCk5d6TSb5QwjPsF3D9aA=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=Cpqhis25Gi3hqArPGa+1ZMe59cDkzW6U2z32Y/b5pH4P2fjfn5Io6SCGwI8bOZumB
	 rp9iape45NPUq9Amb84TtmWgTsLEFq3F5ELuykHZFc796qItMtkC7QBN9H7lEk5OlX
	 4nG0JydSGpu3oPw9gC5SxXMiswHz+h06oNOfs7mc=
Received: from fx601 (fx601.security-mail.net [127.0.0.1]) by
 fx601.security-mail.net (Postfix) with ESMTP id 12C23349774 for
 <barebox@lists.infradead.org>; Wed, 29 Nov 2023 10:40:19 +0100 (CET)
Received: from FRA01-PR2-obe.outbound.protection.outlook.com
 (mail-pr2fra01lp0101.outbound.protection.outlook.com [104.47.24.101]) by
 fx601.security-mail.net (Postfix) with ESMTPS id B68E434956B for
 <barebox@lists.infradead.org>; Wed, 29 Nov 2023 10:40:16 +0100 (CET)
Received: from MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:13::5)
 by PR1P264MB1887.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1b2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Wed, 29 Nov
 2023 09:40:14 +0000
Received: from MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 ([fe80::3042:26f1:ed67:603f]) by MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 ([fe80::3042:26f1:ed67:603f%5]) with mapi id 15.20.7046.023; Wed, 29 Nov
 2023 09:40:14 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <f37c.65670700.b41df.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CcVs0HBQy0seBFaNPM9a9YRCQu0pw/UNeInOVGGjYVwvrwmDFl6y70h6lQsST2udhmj0rvEPreECtBXQPbZaDq7Gv9ferIvRihCGr6DfKVx50ENVwQgC+CB25m7Oq0FZq60AOhN0LBDWpJD+YtIlJKMosueedgr3TmmJ5DjW+XhfD1COlmH0RYdBArRIpc5OEZMo4UfIQFgEcJ1tGNMdfsHnKI+XY51We3cBioShznljZ1h0peHDumAtM0JHwPYeC6TkdKwyvCgYU2JmZCR5kE7htnboHkYJ695FZl4yJtupRHyJStVGmKsEIMqAFhOpejj5s3mBq9quZqqbNcE07w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EDMkHW85cNCqQL+B8JLdtFgXOl7t0OkS+Ti8c1d7SV0=;
 b=k2BUwonn8o6hYgdKIlixbJkml884E6azxV33cQ45rmiIhUsTVZ9IXDpatmfw/yOKwX5vuZQv+rTCSN/tVzWLcP07gZPlBBPR+u/VZcoOW2T6bZ8yFPNEpKR5hJlwSZJasbubZnjJfoAP2bTIcnBJueae5pFJlLaK8fmaHJZY4X2sFfUcIuFEy695IOS70JLKAA208XBFYsMxIt8GsAVw7GHsDWQ86Q6ZdS5UxSVjgNTLJvwjVQLhqs0PxJLkqpk8CP07vta9Ud8FQDbF0zbjk2kO4XrIT4E0pZgoBgtgsY2fcC4OhVJpgj7IqlSoF3G/YJvWYIx1zageXCfm95OmFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EDMkHW85cNCqQL+B8JLdtFgXOl7t0OkS+Ti8c1d7SV0=;
 b=B+k9GJBezTkEJFtyBvF7wmT7dcOtihGYnXEzV0qltPhvJ7Yc5ZjX5rslc4DN5HZzQGRx+X3XR5zRO5r7kNoFonCceRhadg7A4rQhf3x7LmNiCDjmv2ARboBBsn+IuO+AeIuv2Ux+S9q5E2ppOUaAloKtczt0vybx5AiQVcwRmowCx3FFaUwRl2jWuF8qiPeNI7mGEf/Va/zpIw8kA7++hf/1YKd2Q3+sWnY+ImNVn1Gvr4tNRJzwGWc0K8SReQZzIXaqnj+Vx+yKEU3n91rm3hsJUX7Od++Ns4ioGqJqvUOyqwTPGAOZyrRLwMUtiepoFZcx+OaiPFERbJIeomztJw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <77c0a659-0c10-41e3-8a61-621fe2a29821@kalrayinc.com>
Date: Wed, 29 Nov 2023 10:40:13 +0100
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
References: <20231129093643.16383-1-ysionneau@kalrayinc.com>
Content-Language: en-us
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20231129093643.16383-1-ysionneau@kalrayinc.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PA7P264CA0078.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:349::18) To MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:13::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MR1P264MB1890:EE_|PR1P264MB1887:EE_
X-MS-Office365-Filtering-Correlation-Id: bb3332f6-8cdc-4254-352e-08dbf0bf305a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ujCSlWx7qTOB8QlC+tfRMtLNMf8oewf0emcJ6E2r0YMHGgfV8xMDsV+Vsbqp4RIMrVlNsQFZlasnyDtrowNC347Bdpl1GkF6az62SgvkRsIDtKoE8kiaolayk23b3DLKCqJK28PXNOF8wTO3/8/qfJijDNMuFWIo4Cq7QdgpuqO52uyETkVaHeSPNW0maW8M1H7aQScW/XJsOIdD9kR98BzAWQe6wmFSrSc+FjBAiUwE//d8WRM2bWfahGRZj4F6JRwEiEINSF4S0/mqTSZM4Nhp/9yEzrD9QO5UHv/q1XtQbvNTx6VJ+R1/6J1VMZq1rpCpqK+7hkgwbex2TASyiBjWkZOkuATjZBJgAMGz0ughgCC8+8rbRBPHW1/wWBzFr/GKMZXgbo7lX4CWVeYto6oggEaBESx5mlhVz643AH/zKI06PvKb8WVFJvEIyBrXkSwPeNU8cR0A6WLQWrcCFdivhoq6Ur40R4G9PraHYg6yQLr9OoxQUqvjzoLqrxFBxX/Zhpq/3JwuL1uKMwyK2D+q0YQw3Ke1ZmvdErBMDSAanRoK75ddJ3QdivMzFT03LT7HDShMGGIkAgDTKDxIL1LEHHT6+iQywz3uTa7fLlzQ1u+H2oTmojRjl1R8sbqOTDJUFJcRct6Tdl+6HccIjw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(39850400004)(396003)(366004)(376002)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(2616005)(53546011)(478600001)(6506007)(83380400001)(6512007)(5660300002)(41300700001)(2906002)(6486002)(8936002)(8676002)(66556008)(66476007)(6916009)(66946007)(316002)(31696002)(38100700002)(36756003)(86362001)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: KpGy7Q5iD9qbjZrdwgIEoZQDrRpOeOk7yOcwjhJK5rkcbYpjs2O5vWfYqh5CFKbAAYS402gprQWnazRbMoKHPOQ3ZIikdA6972pDOP48qOG7wRSLmwyemQVEZejYc2+IH2AN0iB+WFblXHKYWVL293k44dq8nhnWBMpJXlOVayLoMSlTknbGsbjrWO0lHy3DANVzBeOvWWhxNhRgdJJfOPWGhrxFB3rks8W2aTH8dLR+B5PrhTxDp8ckVvScN5ZVuqJ8RYIBfDVm/dsrvYRlYUkfdMb11i3ASjw0LkM8R7Bck2Khf+iLhHtLeVsGvTWIDHEFXlrTyQwwsufrt3cqtfQRSfQdJRz4CeWHb87yyb0LF/b9utNumHNZUiLcYPqgfOg5rFTvRYph9HO/hYOTt9DoKs0jB304AwhtLU/2TMn4Ii9uzd4OcsX5NQwXdN5Y81zCqpM3l8VpYGm2s+BCyYyAqXMi2oizuDkIY99P2XnC1ODGpqreaierq5rbxO/kVxUOXOLxxP0fA/2WjO/ehOYi70K0Zdfd1PCt/a55ZcYJYpfNPNr471j510z0T7bx+drOvgf9+luxNzfU0Y80HtIXwDKlYg14hjG92WBaaTgYWCC28/pbo5VF+uLgHEDf55du56DS83txTXXkWau5YyDIGbFgJONmfxFD/9tpgUeeGWqUvSr/k53+O0DNFpxJZfsGHy4B2gC+YtKVe6XzFWQ5oWpvLW/66aCTzzlKdKAfXQ/wjB8FQ3Polh2920aUbgZLH3OUAXuxJXhjf2tXv4UDubWvpPmuu8XgCUC8r3OgSeOsZ1PCTmx2QXq1EX7MaaLABAEFUMtlDv4V55KK9ZcddYaVLr77Mww+9GQZhIKmqKobjQeM46eWpR5SY35CPHcbZluv60nFh70DCkJbg/qD+YXHoSHnfRlddom0joNJEcNH7EJWOyyakw6/xbiL
 DC1qCw0+YOUalcV27lL+a0GNtaDocWN73ttKKaOS5eh224jdiwOfBoyf3DoDaiTt/HtLk0C/UvIaw3X6NBbx5W7oYawSOle0oUQvPuFWU+ThckIwEd/f0p1TcXfUuIs6K0Uf9dwXizoeEjWIM+7e2X3SG1WRiDQ6mN0a60TBEXxAG+IEeSETD3/LGhkRmTu1RX14EsG5KJMTzlEHjSNcUjFJoH28oHJTmHAruoT/eKCR91x6TOwW8XO7zeCrqM+RnVvVQv8KE+S5sCz+z+//+MXE4/NlmxhUbkkvQbPiD5cMjL9XpcB6w1w9MGiqGHV+6deBlT2JF5DfrAOk1CcretBjkv5aL1L+/8D3ZClQ1xjukfhlS3Qh/4U0WBIgFnc6aqr2/4SxRaa24cp2piuoa6CZOiDdHPEzrJ3K0tf4o3mSFUBxVnbbhdZlZ8sG4ehDmUg7L14qamStfbxUhTnK8PdNE1D7s8aDcTZX6wMaLWz0zT5MmKnm/5fRdIgYZMc29Xiv/6GzFausTFh9DKdEnNAKCJ0DvI+QQxrUHE3tYLk3heg8gDM6l9UOueSTR7Ub3SyOECCEqu76oThrXEtOrlbXDmqY8mNg0/M02JOzokwR98TCL96b1AUs6xcmHEpBvbjqk1sQxF0ijjupZBJZScmC/iGTulfg0CLerAuJGy11DZl1uc89yhSzOHTRh/O6a9v5xJeZt5VOS6kg4NBkkA==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb3332f6-8cdc-4254-352e-08dbf0bf305a
X-MS-Exchange-CrossTenant-AuthSource: MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 09:40:14.4716
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CFrMbNUSdAYml1BEtOZPNyyGdtuaoI1zetuAvrgY+arEcICGvwq+XIejJ0xEBODJ3Q2PIEC/8ZYe6Nby0wdnzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB1887
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_014024_236476_0EF3C718 
X-CRM114-Status: GOOD (  14.40  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: eMMC responds to CMD12 with R1 in case of read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Please disregard this patch, I'll re-send a new one that actually applies...

On 29/11/2023 10:36, Yann Sionneau wrote:
> eMMC specification JESD84-B51 states page 126
> table 49 — Basic commands (class 0 and class 1) that
> CMD12 (STOP_TRANSMISSION) response is R1 for read cases
> and R1b for write cases.
>
> Fix wrong reponse type in eMMC read cases.
>
> Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
> ---
>   drivers/mci/mci-core.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 3cd6fc73f4..f34023f580 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -298,7 +298,8 @@ static int mci_read_block(struct mci *mci, void *dst, int blocknum,
>   	ret = mci_send_cmd(mci, &cmd, &data);
>   
>   	if (ret || blocks > 1) {
> -		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1);
> +		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0,
> +			      IS_SD(mci) ? MMC_RSP_R1b : MMC_RSP_R1);
>   		mci_send_cmd(mci, &cmd, NULL);
>   	}
>   	return ret;







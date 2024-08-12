Delivery-date: Mon, 12 Aug 2024 14:53:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdUYR-008rRk-1J
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 14:53:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdUYQ-0005vg-Lf
	for lore@pengutronix.de; Mon, 12 Aug 2024 14:53:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OlNK1ne6jq0WjVUo8pYKvNfUNwihMNOCkujVrR/atI0=; b=YVNMfyYE0wPhQGLlsN+MhtKY88
	Ples8f23JL4BhYy5SlNdAzil7Xkn/AY9ihsiqo7YIQohQ1OIiKy6yHwZIFC7zNKF1TGMAGq7v3cSf
	4cezZx6TkAGgHlRHl4HJyY8nRmlPygQl7B/cQYj67TnX5+1fQCoZcerffurfI5Ce75kOMoWgPGwY3
	8X9u/ZJc8QfTVxLr7rgW0f6pYinUL/OVort50o5dWdy7soMMzTOQOJKw4R5FOtpggzyGtCizZLzGi
	dSJ/+AbbZqopSeClqNqCwti/gE7nQfmX1/MPAWSNEGWIDYsXOPSBqpHMrzB42OXJRFzbl1btGVs5g
	LOrgQ8cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdUXl-00000000KGu-2xcF;
	Mon, 12 Aug 2024 12:53:01 +0000
Received: from smtpout43.security-mail.net ([85.31.212.43])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdUXh-00000000KGR-3jiR
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 12:53:00 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id 152ED30ECFE
	for <barebox@lists.infradead.org>; Mon, 12 Aug 2024 14:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1723467174;
	bh=nmwMvW478/z6a2Fta3yFwewpk8KgaUH9zJhWA8Pxgpc=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=JR9/9005wrJqhA9KMYfWxNx1lfsV5256fWHPbec6QN9m7le1yhiwbJnqsYlJgxZk+
	 ZqHrhe6MjeBNcOD0/nqTrm5E0oNVcfIGwVNs+FN5WiINRAUWOBN5z031VKC0MSGH9h
	 deMtZs/7xqpbcBOBwGA2qlWUvWniVDyDSrAi2To8=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id D0C1C30E8B3 for
 <barebox@lists.infradead.org>; Mon, 12 Aug 2024 14:52:53 +0200 (CEST)
Received: from PR0P264CU014.outbound.protection.outlook.com
 (mail-francecentralazlp17012049.outbound.protection.outlook.com
 [40.93.76.49]) by fx303.security-mail.net (Postfix) with ESMTPS id
 3B16930EAEA for <barebox@lists.infradead.org>; Mon, 12 Aug 2024 14:52:53
 +0200 (CEST)
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:14b::6)
 by PASP264MB4679.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:433::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.20; Mon, 12 Aug
 2024 12:52:52 +0000
Received: from PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39]) by PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7a6f:1976:3bf3:aa39%4]) with mapi id 15.20.7849.019; Mon, 12 Aug
 2024 12:52:52 +0000
X-Secumail-id: <55e0.66ba05a5.37f87.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rQwsXvzbWrlCK+WNlR2W/Jl0I33pMHPRPBHWgRg3HRp8WXzj6eHsjEHDDgliWOEUukTDtDST6u78nhTZJbnhiTaaQ9zB1rr+ShLcCnXp1yvOmL8zMLG9YDPg7G9hcybT/G0WrQXEbfnZOVfXoX1gopZ8UzJBIDb0APDzcK2lAY8ZlbCEiX07LunbnnORfL2Xs/4QDSdGMx636MXLBKXJpDoP9flLPASlMaC3+025IZunxh4LqU28bKRakYVb4y9AuJhTlwb9rEJd/cro9PVks9tABPnr9TT6mp9RI47J9uO0HW4QDVtFHcqlQThdphDSLVH463Qyeyg1TrYh9ILzJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OlNK1ne6jq0WjVUo8pYKvNfUNwihMNOCkujVrR/atI0=;
 b=Lhoy2DcfQKa6SR6c1jbfrgxQ/qRmlRc1HNqZI46EGn55nDJxKfrq4NK0b1XhutGv3Rd5eFaho3+H4GD4h4XtnaHRhIm9aRWfw9iWgenjZQ/gmOy4GC9bt1M6udENYTomYgbgDTi2Eo1pn6hCP5cBURJOKh/8LrJIIYr6M5ZZeiLuBzA9Yc6iBBQ0p2a/go82fK9vHMWnpIsLi4SN4aa280BcKJX9g4xX6dXyYBX1o7z8w8GnmNagXafYnzaEBWkPvC+P4aCVKjH4086xJqUf/OLydfZi56/yKQBJWut7YxzDFE5F5LKkVAqG/pAa03W7Vlgbpkuyl0Qu8dCf2jGP/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OlNK1ne6jq0WjVUo8pYKvNfUNwihMNOCkujVrR/atI0=;
 b=W8GqeUkOjCbLz089jDzFLFSbD2exz0byW4pKBBo3zOm/Lv2l2LGw1Qkjyfpb/IdvwtsQ4q2J4E7vF5s3usctla187e0GPg6kiIpmefUq7K+FF5BprA3gSiaPH/xPnFoCPFC0LW/Ildra5zhoOWvg2uuVWbVBf4ZUApaiFeoQ5/9yQAIHXgdMeDL9HL3vBoMGPov08f+3VAosDk1qbvgXxMgL1EDA3plWQEBRsPtU9MmV1ZqL9WTMng0hok2uydjhRtKWQ/r+BUFRVcifhcFp9ueeeK/fQVguiX+SNGDPh/DSnWSSZsA8j7kNzCQwQvl8h5Smei/DbgJM8BACQJUeFw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <0a0ba36f-3987-49a3-b709-16b009ef25a1@kalrayinc.com>
Date: Mon, 12 Aug 2024 14:52:50 +0200
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
References: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
 <20240812091522.3035469-3-a.fatoum@pengutronix.de>
Content-Language: fr
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20240812091522.3035469-3-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR10CA0032.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::12) To PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:14b::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR0P264MB3481:EE_|PASP264MB4679:EE_
X-MS-Office365-Filtering-Correlation-Id: d89088d7-7a06-41e1-d3f4-08dcbacdad56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: uvhOgPLpAH10yFMOBe+xEqV4b8NlEWbFBU674BrZPdriMYBeeRu1Cj3jVp64ly0Vow9BQWPepEzL30uu7585rCSYkOihNdRq2LeUjiBFYAzBGICjzDaB6PNdaG8LceJf0jrpZ92pS1B+sIX6qcB4pL/Y6AHDqbDAGgk3dQYYkrqpVKd7tP0V+OZe0JEiNTZKbH4asSABvvyW9sBIFvXNLmPdV4hn1dVjGp5dfwMEGvm4RiLtRVZ0ALVCX1OJMA9JCG3MdIt9h0zbN8uSNVZT/7rFbF3l6pCTWUhlpU1fMWJJ86WTkLqt/IZEo+4lwrE26HATWShUTAx+ZrrKznGd2Gz0tGgM5haPXq3XkyQEyK7Iu892eHVDRxotJaeufI72PhD8S1LY297Lw6OfzKextZ5Ql5tplLjt4F4Ld/Deh0nLsxrCAJqJT4Hf7Btvl7EtKQWD5RV3AXp41jOBMuHGQf417FgJwyDsS+bQQXVH70XG8AQKCs64MD0RxqOvmRPffCBO/8vb/VN9PRCuSkKmx2+KTeyQDOORauZ6s9bQS8po77m7iqoaqBUqp1LyiPMZM/fkdWfbY/6BPfskSuak4239Z+hqpl/qblAecOY0TARyJIOBaUl2NDVdNQIXGC6GjgSVE2grCz+hQdV1llFcZ4eBky5UqnRyNOlIfxasYlZYepuTJrqVAu7Q5yH80y/yEvS01U9Kavg55iVqIeuRji/KClQ8ZGqaQbp7LbeFLyVeetinqbV80vp2StJm4dGdWmfBVr/gGNpWDvv2STmXxkyBgp4mweru3/BmXQqdnGFYQevpwP9tw6CxIE2/Z8a03ADEum0PediZ6DIg706vFRXpcucxOFvBf2nFvmfAnINJnjKJZOcukw5oyeYsePSCJWYKZCGJJY7IRbvNW+Z3etmETbl43MkWeiR/xcublZEyBWlwOj73B5uAzbM24+fptOM
 4PowrXJQrqzrTXKBMZk7CJlkK4VbfKKbSYfDr7MACXubTqK8F32Fr7BiGhafCRHxVXNMcFCCYeLVJF9TzW0LWc+L1llw0GInEat4ECvoRSZYfE3cc4SGy3XhtIMzsYetv+sIdborQK8RynWiYsiUlh0vM7+2pFFZkmjiydnH0UjahamUzGGq6dWTJ+alK1Ejka1274FCJZg54IWvo5tTcGfW0opaxO7mWtBOP/ehUPQgwLFiGMY+SONXppmygcBedBI3oU1u4V7OgX+cPpphk9m+zGkjGks7MwrItJebQXYp07xmm7YlbLvUCGMTC
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: nggelzOG0GlEu6j49AP87IuO4JjLGRlZ0YxqyD77/VI8BP94dciH7OLVXmxe86cQrsGeWcfTfUo+zk184HUZME9h24pPRsa1VZ9yWWuV2jDPqkSUi3ZymCgu5Jsatu1G810Kx4KZZaOPvL9/TYIItxsUPjHIeOfekNh3ugFrp6tUDzWfVW5UlBsQp0ZWyz7Hp0XQBjY5nhAyDPnoc9aVv6UCsmMGFVx2kRlX33NwwhZNkKRIp+tp6TfnF7bINpKLVwWfHFvl/wZUqToNakKA3xU7/iKvMUpsLO+A1i8lofmnOZcNUCkJZYS8loTajsP4t6UUiToTQLr59pd/jxH8H7Pv2JYi8jClGMV/cpC0A+LNGA9SxE+agNTr+RBmhgMiV2N2S0scYUzf6XGkUJYAFPtUP9Pz8jyMenorkxNU2+7Rd1mefjnTJuN0pNnvsDCC/D6qX/KakMcYXSrsrp4IxzPbXuZgJQKue4x9IIa6PU9vcPr+Vh11x2sJQEWCrLRsBEiWsbc5/dNayeJ6ptSE8uzFP9RrB75LOGk/LahQLCvsC5Pxk8CUNOSqOsnroRMSkRprIIZf1XgDQFS/vo1KGbkJVz4puC1P3VbGSUPTQg0NpkPYLqctkHKMGE4ndhu5wOAOzCxkMDg8xc6b5JOPK1qUzRDSRp94poqmrCyUP3bBpjKp/HunJ6wxoOSOZYDWshzNENXNc8Ox1avXlg9I1pdoWuoAVOpVTRIURlH24Pka1dmcK79dDZhsCQT2oSqTo7UfaYNn06Jc/cTRdLZxeKk9st7ZyXCN2enmm40zkP0ZSdJ6l1E5wJL4b5PlJq+RumsRDUOp8W0QOodnSxPXU06U6lrcL89XKAy0ebP69ZE0HdisTsJU5gJJ5y7aOFEEO5kxjCIQjnCj/eAtn+1B58Vqo2peUUWtF67fLQC/Bk6KLIfUz7T9v2TQcaCc6UU8
 oik5XUQlJzMhZlVHCWP6LJ75f4GKEqgfXcJeRj2cs3vLYrT5LfEdtdbwzqgr1hD/jOmp9f/v61LPS9HphS3ylAnM/lBILSUAAOG1Op0ogrFcPQi6Z0Uio2tEa22Dlfer62G+Unbj110Ig+b6vX+1PVQNYyPDHrOuCeAoNWWTl42643AvHhhgGZsHvhAPpJcQRJL+w9A6LlbvVFywHUourYHMfH2+NwDvJK97LkyYB6Sz2Tj0ZZu7nUmZ/jvsPDP6yxb1AbKAd8AC+OZt/TCZZgH/N1/Ah9r+rb0U/vXAFkll75ebn3NiN+h1lfWQDkYxzy5JZ/9JXPJxBs7vW0CW5BI3s/6f75grIL0LfH5XBFg+cMCnHSH2QceYqrb9ShBT84JdQ5Bys+x+1vH72Hx8tDaTm8MbLT3Y+RcnD18gQCQC8ilVJsDwo2jU6usD1yNxPiqyQB0pIN/Zv49ruOtOUzBk1j0u/+5FJNt8z5PlGQ85wEh2sF+CuvweCccFLA07Sdiel1hYOZ2qAzlSO+4znNuSs09NIRMVm0Hz/GCsVCqPP5VAkJOwkEi7I69+Exf3P/DSQxPMxEuI9C02/UOU+o6vMcvzlhlItNYVBimw44NsbJlndzI/HpHtbPnElNsJ9Q1qUeCCZCMdXvUcze8ivg==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d89088d7-7a06-41e1-d3f4-08dcbacdad56
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB3481.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2024 12:52:52.0578
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C+C9Ifq73mBpBZMJs21DjBinT10wR+IeGV9xeI7NK2mobzhTYMOkEQ4/KW8qdBHmTWyYNArKg8jQ7VDzufMuQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PASP264MB4679
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_055258_561964_F0D37B4B 
X-CRM114-Status: GOOD (  11.63  )
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
Subject: Re: [PATCH 3/6] ci: container: update to newer Labgrid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

Le 8/12/24 à 11:15, Ahmad Fatoum a écrit :
> The now current release is v23.0.6 from April 2024, but master has
> fixes, which enable us to run Labgrid tests against the sandbox
> architecture. Therefore point at the newest commit on the master branch.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   test/Containerfile | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/test/Containerfile b/test/Containerfile
> index 2f8c969d824f..c09051a1505a 100644
> --- a/test/Containerfile
> +++ b/test/Containerfile
> @@ -75,8 +75,9 @@ RUN echo barebox ALL=NOPASSWD: ALL > /etc/sudoers.d/barebox
>   
>   # install labgrid
>   RUN cd /tmp && \
> -    git clone --depth 1 -b v23.0 https://github.com/labgrid-project/labgrid && \
> +    git clone --depth 1 https://github.com/labgrid-project/labgrid && \

This triggers `error: pathspec '16db15a953' did not match any file(s) 
known to git` on my side

I suggest removing the `--depth 1`

Cheers,

-- 

Yann








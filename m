Delivery-date: Mon, 20 Nov 2023 10:51:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r50wX-001KJb-2b
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 10:51:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r50wX-0007Jt-E7
	for lore@pengutronix.de; Mon, 20 Nov 2023 10:51:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VUQ1/nQWFZdYwBcFievffrUut+qZfRT2qstQ8S2ziW4=; b=x+nHsLZ6ro1JU8QaZgx/KOc5lO
	rE5pTe9SzKj33aGTTn7DjNlcg2XJgznr5AbJ/M8KwQ38kQe1BBdD/eh8XC4W27aT0klJJB215H0Xo
	F7/FvLUe9G2Rtnrt4oEQLI0wThMlYq67URRmmGDuc51pySGmRLqQ3b4qngOOa10CsJd+OH0sccEI+
	H/yV3mAc7J0joILkpSlB1YZFom4VLL4mvFwCO4YdDEXJRrsV+pnrn3bB4zUcL3RgxiysflCw92PMH
	GwnLx28HG1Lmck2LTSsJyTzQLvX7xmhivsxXaFumA5KlZV90NbS00X1ThzCKKllNND/37W7xrHgXh
	RI670Heg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r50ux-00BgVb-2Q;
	Mon, 20 Nov 2023 09:50:11 +0000
Received: from smtpout143.security-mail.net ([85.31.212.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r50um-00BgUG-1i
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 09:50:07 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id CDD4B9D1592
	for <barebox@lists.infradead.org>; Mon, 20 Nov 2023 10:49:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1700473794;
	bh=SHiTPcBKaNtiC5GvHh9BBfsQXgqT76lBrhwblDvjMJ0=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=KbrYstddEMZkHEKJGlfqGebg4+XNSo6oHPAqulVZMBmKZ0OJqOW1Pbf3uA75TNTko
	 P2KjBaJbjljUSZQ8oCUtd83j32d4O41IifdtoyRpAk81LtYPYiuhuqjlDRguYH+IZ0
	 1weXh9Qfxf6YB3UcPO4grVNwyjWoccQ9tidbFphc=
Received: from fx403 (localhost [127.0.0.1]) by fx403.security-mail.net
 (Postfix) with ESMTP id A1F8E9D0AF2 for <barebox@lists.infradead.org>; Mon,
 20 Nov 2023 10:49:54 +0100 (CET)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0100.outbound.protection.outlook.com [104.47.25.100]) by
 fx403.security-mail.net (Postfix) with ESMTPS id 929B99D0EC3 for
 <barebox@lists.infradead.org>; Mon, 20 Nov 2023 10:49:53 +0100 (CET)
Received: from MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:13::5)
 by MRZP264MB2136.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.16; Mon, 20 Nov
 2023 09:49:51 +0000
Received: from MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 ([fe80::3042:26f1:ed67:603f]) by MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 ([fe80::3042:26f1:ed67:603f%5]) with mapi id 15.20.7025.015; Mon, 20 Nov
 2023 09:49:51 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <133a9.655b2bc1.8fd1e.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BEqv9CM1bHKb6Hxie7kkyJhPTgoNyUk92D98WMmZrRqM8SsMN7NnBKCZft9tY3XNxv4pSu5oBNxg1nSCeD1/Lvp3J4Ur6bNMdyOmqODRYR85V/2WfGLOW6dFbFEUTlCsGK5pqujlRu+Ipl6XS4DcDHOWKjekEHdcBKqbOze8yml6mjROh0Aui9kbVP/CaPphv0HTcK8GXYWhiBcNBhs1qsS+rPklGWIQGtBwZI6rnDkBn/BM3vSiyC6oZJvMLJZ0rJn9NE6yrkKzXbk4sW/sbI7eUkKtekwNJJ3ATsmwVa0arJ3SIZGwS3IkGEPDw/wto6/BA1/qN2yXgzoj979psg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VUQ1/nQWFZdYwBcFievffrUut+qZfRT2qstQ8S2ziW4=;
 b=B7cAqvRue5NHHqEoYPEoCT09ODcoNnnOS0qFOb4BkVE8zlFFgFXMfSQMiFLc8ywQZUFDwggLIJppXnavvNbILXVY7tZ9fEYpfCy5AXxZV/GHd3oW0SL071skT2Qw3QtwUxIraPGqsOUuJpFwPZYIU9QVHSz7B370vrP7anpaFVwz0+nV03cKP7a9mr/B4IR0VBH+ErjWfp3qLNwWMfDcMEq+5DMmNoQl0xcV1OnddXjXv+xfjJe38V2wYMjnJj1EV3HypbT4QNzKm95B4cyDKoNb6V6TgLkKdTHxC7FKNTklqj85d8mqq8FlJkBy8JiNB1mqGgfm3TL1DX8HNQiG4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUQ1/nQWFZdYwBcFievffrUut+qZfRT2qstQ8S2ziW4=;
 b=HDGdOdEFXfhWZNcYcCFYiRb19yEcObKaArcFzlyNYlcutNKn83uB37PwpoY6JQys5SeCyQPTui8fTtBOBCTydw2za6VNLlI7h9Cd57kuPZ38i20CB6dK3HHAUFqkyBx+ClfxeXjF0ggLLT2gg+5Cm/2d5H7bxPfPqv8SxX4os8ieCzUST/s/2SEbZAC/nHMqJsRjl1YjwPfUfx2b33NQFYBMx0xaku+i4n18xIOUBXDtwgPK2xenPRlSMU0B5ZszEdeUeHCFqDM/PG3E+OLwWx+uyqMM9wPwn/Sbn+0pV3WeFQci9kH7cTJJ9ELWn1Fq+NqroxKGtOeeKSk+W7PhqQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <e23250cb-47e7-e727-68b6-152aea7d876b@kalrayinc.com>
Date: Mon, 20 Nov 2023 10:49:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-us
To: barebox@lists.infradead.org
References: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
 <20231120083750.3967831-2-a.fatoum@pengutronix.de>
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20231120083750.3967831-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P265CA0112.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c3::15) To MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:13::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MR1P264MB1890:EE_|MRZP264MB2136:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b7ee5f1-5763-43ef-6db6-08dbe9ae0ac1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +77cVxqPr8txieju6o5PouxbfKrVW2HPWXkaXANB+6Z+pFgfZy9Cnz2hFc1tm6AEwbnceWR6V97GSbf9hY+CP1j9D7npTGtEOvGibulei6bqyZrwB+cU6uW3EdezJ6TpsqCRF+UaOfwZnACof4S3F+8WM4MWit7QVc9PGaSr8+X34pifHYwYMt1AvHXGcBx5dqaLcpS5QUKZIbGnPDDiHKNdHpXw4M028+g3MD8Wlai7+qv5/g4LKsr5oh4gdvd6zyeW/IdpT81S4BtoVEXAiOvplv3FTPI7xRhpmnRxEbCvipzuUS5heCGBryhdcQtoaYV6s7KgE4/JNfD33VmaWDY5GwBwVj1Pszeu/YiBEPQTQ9xDhvwFn/0G6+EDBsWpx1tz1mHiD6TLsr06J0R20rpi5mixGx9GHsCj5B3UP4LjHizXQ4xcNBF6WsQWsNs6xF5IYuL6tC1sWTJ8LQhQzGZ7DLDwefSJJjBSYxueFcJqOWkD9uIxI6PC69m/Q5wZejMEsgc6Ovqr5ZUhsOIOcWEOhkKiFfHdwdyc/e7Rn55UWxuh8DHfwxFWJhUzjde08kkBfn//j+3UxAYk/68CkAxzkAV2tWB2dPWKarm4MFqw1UC+Vvu3kCjkufwtxDYLDq6ueEWLankoUezXCHneFg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(39850400004)(366004)(136003)(346002)(396003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(41300700001)(36756003)(86362001)(5660300002)(31696002)(2906002)(83380400001)(6512007)(53546011)(6486002)(478600001)(6506007)(2616005)(26005)(8936002)(8676002)(38100700002)(316002)(6916009)(66556008)(66476007)(66946007)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: LDODr6ilROf0uGVYnkyq9xIwttJdYUTqJwgm3uDqPW3hl4yFjhjf1YrMKCJTQD9hBa2X05G8KsR9xzhJyV3l6AE/BIfqHLDSV6YfF+1mmVWbiZGrOhuYA4uxY/vIU+Jp01GHjPWSfURWhGnFaImI5LYsDsBlWHSehWEtMpHPbK/gwtbN5bXkrfd82SWHzjFvqLaxkD1GD2n70CUnloge8LSjVetGjYalGZl6DYGtTp5xs2rK5jQA3e6U4e+DhQoYt2Q+gkEyLDZzhjpZLwbmiwx8WYoh7pKWa9OCSpdTzcmFjwqqiMSuz+ooeYjzY5iQZ/flVggnEuX34gA4W906c9o938wfN6xERzk3a1/NZdiNMnyDhXMSpttZsutuPZ1NkKkoAjxD5hUkPKxDyhMsSj8RV+EauegKkSD3RXTH0kllpPR53ZRqQXngn05YqgHOqu7KrxR8wO0QUOK7iM2aH5F6Unf4mIoplAZ94hmKS2Az5546AnYejJtbq3vk6fKkzRWNuP4GKkLdxiirmNPVIG59ZsOFf/8jP7S/mI2F6ze6PlI/rZdRRsJ9wDTPBBm7jgY3sQc0c0zPt/aXh6vdiW3PsmKsQ82Kt2OM6ZqdFKsXC0qjeiBCrjO/juzvbCjpf2Z6EiPhRMyEd45vnx2jhk+paqN/hNrWxnsOE4KjdsfP0Eqi9dinrQakhb2DKK/APfgbrnP8MrmMrGUfILbm9uu1fEYuyI8cA74gFtwgLHxDzHJS55GcwakwnCjT3MMrpeyFo7z/YKDqbkzLsUGtmsgM9ITXiMPBbD/wwLXFTFMi2XnRDbqzodljoUg9xXmE4ZYIfC3A/Yd07w5beYaTMxVq95d0y39V8Ey/KYt6Ca+t4vaUtAaE68cd9KPCTvq47BoSswF9f8AikGa1dvmCxRTB8HsQJdzc8EKxQq0dQ2H5SxOtlLTRksGTvtZ2du7a
 v4fKUmmgDo6DaqyZvc8lng+JytSbf0BbEFcoZdoNzbAII+qC4wH2Z0I4l+Ja9qSEG8Z4YKZq8qjP0trJE04hw30rG2MAgOR12gr8b/GdQWkdHVz44GOc8oLvaotvg8wjlVzOtfbHvTdPplCbRofl17C4NEg2Bwc8Ay1EpESfjeeIwmJXhIq8K6KNF8v7e0xVAjeDm6YnwtumjQeI6JlnYmT/xLlSDknREhEvaiJJCiL9fxHbcakNmkiEk52ECSVYvr87B796vgoqKkJ4LaxNhAKTKaghKBoVSHZcTY7xu6eq/uw35fZv6SDh2qtGLEeHrnSMA9BwHp/k3s1etcuG4Gyqz0N0vO8tO0yU37OFcU4KS1RwK4v+9LhOSC2W28QxH64Z9pILuhF9u8a1Xn6nl+qtu9lH7d+M6WgPyVYmfn9rP1SvMY44jBBcGgS67yrOMyZjffJ0Qf7pnocMZoMmfD1zJ/aGCsX3SFjc3u7/itrlpLaZAo+FpvsfwnbZ5SZXR5Vq4pUNlRQ0HC1IOKDqwXp+i+CqlfAOmnFndgPAbwOPAXo2CcTnatC1ZR/jkxOaOxMtyWB4n2smG8CTdhjdVjANR0mKYIcep+avY6izYO+wkD4lwImOn3UjTuWet15N3jkOKIhY1U7rTSiaAhFV0g==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b7ee5f1-5763-43ef-6db6-08dbe9ae0ac1
X-MS-Exchange-CrossTenant-AuthSource: MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2023 09:49:51.8326
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oEkgvRGIjq/hNKj9FDl+ZRHAF7/mKmMsrR1fuQVPvXGQkwtAZinxzpxxkpTW5+yJzNGEfX3xokbgXs+q2oL6lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2136
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_015000_946350_E2E123EC 
X-CRM114-Status: GOOD (  20.95  )
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
X-Spam-Status: No, score=-7.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFC 2/3] libfile: implement read_fd counterpart to
 read_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On 11/20/23 09:37, Ahmad Fatoum wrote:
> Files opened with O_TMPFILE have no name, so read_file can't be used
> with them. Therefore add a read_fd function, which slurps all a file's
> contents into a buffer.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   include/libfile.h |  2 ++
>   lib/libfile.c     | 44 ++++++++++++++++++++++++++++++++++++++++++++
>   2 files changed, 46 insertions(+)
>
> diff --git a/include/libfile.h b/include/libfile.h
> index a353ccfa9ea9..423e7ffec5b7 100644
> --- a/include/libfile.h
> +++ b/include/libfile.h
> @@ -12,6 +12,8 @@ char *read_file_line(const char *fmt, ...);
>   
>   void *read_file(const char *filename, size_t *size);
>   
> +void *read_fd(int fd, size_t *size);
> +
>   int read_file_2(const char *filename, size_t *size, void **outbuf,
>   		loff_t max_size);
>   
> diff --git a/lib/libfile.c b/lib/libfile.c
> index e53ba08415a2..c257baaa2733 100644
> --- a/lib/libfile.c
> +++ b/lib/libfile.c
> @@ -306,6 +306,50 @@ void *read_file(const char *filename, size_t *size)
>   }
>   EXPORT_SYMBOL(read_file);
>   
> +/**
> + * read_fd - read from a file descriptor to an allocated buffer
> + * @filename:  The file descriptor to read
> + * @size:      After successful return contains the size of the file
> + *
> + * This function reads a file descriptor from offset 0 until EOF to an
> + * allocated buffer.
> + *
> + * Return: The buffer containing the file or NULL on failure
> + */
> +void *read_fd(int fd, size_t *out_size)
> +{
> +	off_t off;
> +	ssize_t ret;
> +	size_t size;
> +	void *buf;
> +
> +	off = lseek(fd, SEEK_CUR, 0);
> +	if (off >= 0) {
> +		size = off;
> +		off = lseek(fd, SEEK_SET, 0);
> +	}
> +	if (off < 0) {
> +		ret = off;
> +		goto close_fd;
> +	}
> +
> +	buf = malloc(size + 3);

Maybe check the return value from malloc()?

Also, it's not clear to me why this +3 is needed and the 3 extra \0, 
maybe an in-code comment would help?

> +	ret = read_full(fd, buf, size);
> +	if (ret < 0) {
> +		free(buf);
> +		goto close_fd;
> +	}
> +
> +	memset(&buf[size], '\0', 3);
> +	*out_size = size;
> +
> +close_fd:
> +	close(fd);
> +
> +	return ret < 0 ? NULL : buf;
> +}
> +EXPORT_SYMBOL(read_fd);
> +
>   /**
>    * write_file - write a buffer to a file
>    * @filename:    The filename to write

Regards,

-- 

Yann








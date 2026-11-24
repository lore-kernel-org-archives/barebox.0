Delivery-date: Tue, 24 Nov 2026 08:06:26 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xVkbh-002iLA-2B
	for lore@lore.pengutronix.de;
	Tue, 24 Nov 2026 08:06:26 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CCDA82004FC
	for <lore@pengutronix.de>; Tue, 24 Nov 2026 08:06:25 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="yI3/8KqH";
	dkim=pass header.d=barebox.org header.s=20260414 header.b=ELmffyhT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=barebox.org;
	arc=pass ("barebox.org:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503986;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=tf2XpF/+sxxhLe+gCmJtATyh/4gNTsyuRMdkBVBfuL8=;
	b=ZmMHqHqP7GzYQqzcQBX/xmQjJ0NygjhmhSUU/ldQPVwNW4SqDt9R+2DeTR3MgzvH3oldvQ
	q2bj8hf4GF7UU+P32kSZUtbE9f6+lCTXi9VrMZfueG4iCkmciMTiuwRXikFOdungktz2Hu
	SSOk7TQpuIcse9HygppK+1Dz2n9ARC3YD6Dq5VlPtSGj35VYUvqoOXQ2imLqUcddDVZrYn
	wKc8b9b7l4UXMQvH73b9tk+V/07gTANsz7MlWslGdU3+syRUIuo7/hYrdHvD6XtbcqxFZh
	tLQjNSBC366f8QBAR6e/P9PaZl5YokaCXNIMILx1W2QHQYQYfw/JpanSdYrQ/g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="yI3/8KqH";
	dkim=pass header.d=barebox.org header.s=20260414 header.b=ELmffyhT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=barebox.org;
	arc=pass ("barebox.org:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795503986; a=rsa-sha256;
	cv=pass;
	b=YnBjnMtKEip+RtGZi8LyDgM32beVPMXnrWd5IcfKrVTp4FE7Vcgl2qwkUkokNGvPE/Cqlq
	UoR7pqvvnp2OoSQxGg5dWAkBGr6lmrYpzxoobfUN++nleH9w0XuLHYy+715BZQnXEVIGU9
	46HLiKhTP1alEa2ATnnFxX6l9ReszxpK4J8rUVdvuKXh9Y/BI8v2as2azy3AQ0zNjVIKv+
	06/GmDV1CiMPFqzYkHzy1EOOUOLwyCTISzT/GT9tT3HH/vtXioJhcgLBEOu2F/FxjlQqs4
	t53blwHKt9/2UEuYXpChrMXCaMuYYoJ10UPNE5In+H5G8Dcz+rOzkpv3Sydprw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=tf2XpF/+sxxhLe+gCmJtATyh/4gNTsyuRMdkBVBfuL8=; b=yI3/8KqHI1ccCL
	x7KcyCVi8qgrGe4FQe+P+ipgRSzKxj3rEbK39i0etXlig9hV3U+NwtuERik+RjeNySx/8GcT4YbnZ
	rP3uNrc0l2ElXjpCZkIkP7h5IbE3zfcal+NQCCMjGtO87a6s9LOpwrd60eL3HOhReLzMaJn7TVeht
	WPznHfP2d9iOVdhP3ClURaGyC02vcaraBm6sxQj9NabbMDuXRAark2KisyjpC4Q+idVs+lHa7iea8
	6dEszTydUs1shpPz/spi9kV2UnloIcsltyG3HMAZzPPV87t/38T+kkD+vwNcRkvnu10mFq8XsIy5d
	pKnEJQ4UOLpaNLL6fyNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkal-00000005iDQ-3hwK;
	Tue, 24 Nov 2026 07:05:27 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkai-00000005iCD-1Yut
	for barebox@lists.infradead.org;
	Tue, 24 Nov 2026 07:05:26 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 675EB205A10;
	Tue, 24 Nov 2026 08:05:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=barebox.org; s=20260414;
	t=1795503920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tf2XpF/+sxxhLe+gCmJtATyh/4gNTsyuRMdkBVBfuL8=;
	b=ELmffyhTHQrIk9Huvj0Mj9MS4cb7QV6nFuNF64h55/13s7fhA+0nm/pkTWTm/D/YPp43AE
	1BMEf88SIxu7LHF3wZvus1B8Uj6MFH7DxZx0smtXwvTHBEIXdia4cqm5m7UWZhcj/zr9d0
	gfJDlhAt5scNmNQOnm0tbuxa51hSlC6nNsMj5j/fWCFBMh+lJMvddKE3epieqzAvI+xa3G
	EI8/ru72uf0hizwVLAHwEK2UsR+qcPAaY4PHnqdfiGL7zpTZh1jceDiVFOCJmkfmkN3usM
	s5JQVr23SQNA99p2mlNFgXJ43J22UDQVA9ANbno0FllqYR1eY8xGZLO5FKeyXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=barebox.org;
	s=20260414; t=1795503920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tf2XpF/+sxxhLe+gCmJtATyh/4gNTsyuRMdkBVBfuL8=;
	b=FjEQUmq7ybO81ovNexB6kZ1yRZufXYC47XDqDcPvdOvI7Z2PfSZpIwBUJ5Gj8UqG2tObQn
	DcF/slPbssqYonoN9p6MwmZCyU0sH7XYjxHzd2zHz/DdLprD3REA3QzyfERs/3zbOjuTH4
	6o9ZYUZ8dHDtzz3vvDTh3RUvHgFmwLvPkQK8MLuHRi0lIcLo7fU80RcGAKs64iyBR2Pz8S
	UsdOySLL7/6r+176mTNxkh7Xil1/oQVYW5TCzbGuyedN+r+GbvuFKW6COMjI4D5mxqVeN2
	tQizfiTMFgFHYCCY+r60faZdECZY9Ff0ZwZx3c9Innmdr13OFPC4pTE0TL1RIg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@barebox.org
ARC-Seal: i=1; s=20260414; d=barebox.org; t=1795503920; a=rsa-sha256;
	cv=none;
	b=T6I5hgltGkbR2U7rzhXxz+WPaB1O18c+845+7PKNnguxxMZttlU42fLZ9ySF+bfl8P2OSx
	Q4wDEH7Td3oJaIYxHUUzw82jbxXur1ZkWWyb22B2U4NPyBYJ0/2v9/CCPgUcfXd2Pq7X4H
	U90ZHLgyYcYiQc33S92LU7OaNnFjbHcFe0/RwxN9tq4QoWj+aweriG9F9DznC+khaT0KBQ
	/hPTgEfCjxy8IJSvXO4FFhyyu3ZZozA1Efef+Fc32guDsfxko6u+rp8YmxaLHOhAq99XHj
	zVcU9yN0TZ32gym/sTPwjTMGsJsQ/5/jYDcmXfPRRd2N2reU8SOIpPPuOia70g==
Message-ID: <c518cc05-24d0-4bff-969b-9caad22c3060@barebox.org>
Date: Tue, 24 Nov 2026 08:05:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] fs: fat: fix build of the fuzz test without FS_FAT_LFN
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20261119084042.2161333-1-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261119084042.2161333-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_230524_888512_80681E88 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 11/19/26 09:40, Ahmad Fatoum wrote: > From: Ahmad Fatoum
    <a.fatoum@barebox.org> > > The lfname and lfsize members of FILINFO only
   exist with long file name > support, so guarding their use with IS_ [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: barebox.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Stat-Signature: hqsr5dggdi9wypsbtbb8gar5h6tcgbie
X-Spamd-Result: default: False [-61.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[barebox.org:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[barebox.org:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[barebox.org,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,barebox.org:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,barebox.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CCDA82004FC

On 11/19/26 09:40, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> 
> The lfname and lfsize members of FILINFO only exist with long file name
> support, so guarding their use with IS_ENABLED() isn't enough and the
> build fails with CONFIG_FS_FAT_LFN disabled.
> 
> Declare the buffer and assign the members in a single #ifdef block, and
> zero-initialize the FILINFO per directory entry rather than memset() it.
> 
> Fixes: f585092b1737 ("fs: fat: add fuzz test for FAT filesystem")
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>

Sascha's file system conformance series fixes the same issue with the difference
that this patch here gets away with a single #ifdef instead of two.

Both are fine by me, but I thought this to be a bit less of an eye sore.

Cheers,
Ahmad

> ---
>  fs/fat/fat.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/fs/fat/fat.c b/fs/fat/fat.c
> index 7ef879ebad41..96075e4f097a 100644
> --- a/fs/fat/fat.c
> +++ b/fs/fat/fat.c
> @@ -408,12 +408,10 @@ static int fuzz_fat(struct block_device *ramdisk)
>  	FATFS fat = {};
>  	struct fat_priv priv = {};
>  	FF_DIR dir;
> -	FILINFO finfo;
>  	FIL fil;
>  	BYTE buf[512];
>  	UINT br;
>  	int ret, i;
> -	char lfname[256];
>  
>  	priv.cdev = &ramdisk->cdev;
>  	fat.userdata = &priv;
> @@ -432,12 +430,14 @@ static int fuzz_fat(struct block_device *ramdisk)
>  	 * directory or a cyclic cluster chain.
>  	 */
>  	for (i = 0; i < 64; i++) {
> -		memset(&finfo, 0, sizeof(finfo));
> +		FILINFO finfo = {};
>  
> -		if (IS_ENABLED(CONFIG_FS_FAT_LFN)) {
> -			finfo.lfname = lfname;
> -			finfo.lfsize = sizeof(lfname);
> -		}
> +#ifdef CONFIG_FS_FAT_LFN
> +		char lfname[256];
> +
> +		finfo.lfname = lfname;
> +		finfo.lfsize = sizeof(lfname);
> +#endif
>  
>  		ret = f_readdir(&dir, &finfo);
>  		if (ret || finfo.fname[0] == '\0')




Delivery-date: Tue, 10 Oct 2023 16:38:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDsL-003BVQ-GS
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:38:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDsJ-0001JH-El
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:38:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=geS+3ln0MtrQbXsM+Y8sy1ydR85zRYCzb7ZqeqaSMPc=; b=ZK9Zz7oFIXqiaydFwJa2uEyIYv
	viqnqIX6DnwFYVxmocsu/QWSERpE19SAEfNNWCTNhpDRPhMrPwUoA15WW5TNJiQDIoUuGglW2s9ll
	jlj8A9h5iWEuVwiukrzJBqHcoJNj7FSUyv0mqER5lmkPCkTi85jA/zbs6PHVTjw74O8JKGjOagSmz
	hf5+Q1U1t+ZCvla0yoeiMiLixBE2iaavmGuv83rdDti3xMc/oxDmV5air4Mg4hC5lVHEtPV2Oqcy+
	nVz4fGR39mwub1X0xR5Xhqv828VSZW03uLc5BBUdQuS/Rw51shtWdaihmnYovc9CZ+vtEy//PcmsU
	zUhCYBOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDqy-00Dbc6-2S;
	Tue, 10 Oct 2023 14:36:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDqw-00Dbbx-2u
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=geS+3ln0MtrQbXsM+Y8sy1ydR85zRYCzb7ZqeqaSMPc=; b=A56mVYcr/tPhqOODQbh2Yf3fuw
	R92hLajv0YSwrgH2kULPYNOWdjnqGFpe6KE00QxkWyhd/Z+ie7bTQSOlLO1BB/BHCTBSY1GRSgg3d
	6nx0qcwn/Hsr+SQHAwMOYcDcQYlk+VzJ5EbLKd3MidX0mhfbx96u8RCXIn+vwGj9dnWxvRgwuPCvP
	xeXHIRjLobtEeJhpMY2VXo5QkZAYybKyehLAGtkmpq+Qokzsu2LDc2MqiWlkcBBoATMW+yG9dIf/Q
	amxXbTW3myRZetj+ukLn0kBqHvy2EKqetAHs0hm1p3Ve1iUBTdz/FUVtv8Vs9f2MNnOcBgQ1vpucg
	xAsEf0EA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDqq-00GvOu-0x
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:36:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqDqr-00016v-6I; Tue, 10 Oct 2023 16:36:49 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qqDqq-000gbI-Q8; Tue, 10 Oct 2023 16:36:48 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqDqq-00Dl2q-Nn; Tue, 10 Oct 2023 16:36:48 +0200
Date: Tue, 10 Oct 2023 16:36:48 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231010143648.GG3114228@pengutronix.de>
References: <20231009115310.2398292-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231009115310.2398292-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153649_864284_5647D10E 
X-CRM114-Status: GOOD (  19.85  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] uncompress: make use of error_fn in uncompress_buf_to_buf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 09, 2023 at 01:53:10PM +0200, Ahmad Fatoum wrote:
> uncompress_buf_to_buf already accepts an error_fn, but didn't make use
> of it and instead relied on the default uncompress_err_stdout.
> 
> Fix this. The user-visible effect of this is that failure to decompress
> FIT image contents is now printed with pr_err instead of the default
> printf. No other upstream users of uncompress_buf_to_buf currently exist.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/uncompress.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/uncompress.c b/lib/uncompress.c
> index 0608e9f9d30f..71ac882b87fe 100644
> --- a/lib/uncompress.c
> +++ b/lib/uncompress.c
> @@ -199,7 +199,7 @@ ssize_t uncompress_buf_to_buf(const void *input, size_t input_len,
>  		goto free_temp;
>  	}
>  
> -	ret = uncompress_buf_to_fd(input, input_len, outfd, uncompress_err_stdout);
> +	ret = uncompress_buf_to_fd(input, input_len, outfd, error_fn);
>  	if (ret)
>  		goto close_outfd;
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Fri, 06 May 2022 17:17:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmziR-003rLa-E8
	for lore@lore.pengutronix.de; Fri, 06 May 2022 17:17:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmziQ-000830-3n
	for lore@pengutronix.de; Fri, 06 May 2022 17:17:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pa2jVY07/g1VRlzxwkiQskN2KrA+ENK0omQ/tHeo6gQ=; b=GZKZoS1DgkE2fH
	4AY1pFKmwXCyOVT4tRjdgRlfKTY8olSoW4athK0a/5Q8DBhLRhfIPZz31prdAQfa2Q84Jpwz9/G1l
	1H/gIvwMaFhFYwkld8XfolcXKX2Mg+eWVmnkH63Pk/fbOPh/EESvSEBDMZ0pTIVSJjV3zjvRZXenn
	mMUQw8tYG5QPPgaqoDBwhwuNOnRiepBJGQV+0n+pAeYTyly5SfzZs2vHbtd0OeULULAPkvaOSVlZN
	XVx26cHWvQpm/BIz6RJnRFiUhQN0J7sliulMr03nZTBBLMmpVu87uhiuez8biBkUAkQWFfcWzx6N0
	9wdWyygn2nYIUWxWymPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmzh5-0041QV-40; Fri, 06 May 2022 15:16:35 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146]
 helo=fx601.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmzgz-0041PC-Sq
 for barebox@lists.infradead.org; Fri, 06 May 2022 15:16:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id AB52D3ACC72
 for <barebox@lists.infradead.org>; Fri,  6 May 2022 17:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1651850182;
 bh=EcMa52qMvBVBOY4PXBdHRHHXpHvgQvAm2v28oCHu1+8=;
 h=Date:From:To:Subject:References:In-Reply-To;
 b=2JfQfMnpljhbB2U2a04/f8j0s9oOqIFk1N+KqTYu/95wxD0eIEboknuSG5e7uiv+/
 oDgTILvi6lnQZII8WNxUKgPJrhjV4YeL8oeGS3yee1IGG37JKIhiVRgkWW0EJoq9H9
 ypNMFRsWhDpwM/R0EY1j5qhs2eNjCqLAjuZFphOA=
Received: from fx601 (localhost [127.0.0.1]) by fx601.security-mail.net
 (Postfix) with ESMTP id 3CBD73ACC2B for <barebox@lists.infradead.org>; Fri, 
 6 May 2022 17:16:22 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx601.security-mail.net (Postfix) with ESMTPS id 326263ACC95 for
 <barebox@lists.infradead.org>; Fri,  6 May 2022 17:16:21 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 0CF4727E0457 for
 <barebox@lists.infradead.org>; Fri,  6 May 2022 17:16:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id E8CFA27E0491 for <barebox@lists.infradead.org>; Fri,
 6 May 2022 17:16:20 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 UCLDpvddDCTr for <barebox@lists.infradead.org>; Fri,  6 May 2022 17:16:20
 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id D78EB27E0457 for
 <barebox@lists.infradead.org>; Fri,  6 May 2022 17:16:20 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <691d.62753bc5.3051b.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu E8CFA27E0491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1651850180;
 bh=0o4Y0JLOSYnBheHEOY52tHyTwMnNukIPj37OkmnQ5Bw=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=nnmJVCCrKN/ceTuMY0YLJTcTCgD+NeXvLYYc68+R+6Iz4EnawI/dRsh4GXEbOArJL
 BJ4TJeYWT7XNZpdncARahpKrVXihhbgqvOczKeuhxk2U65bX1W6fd+WAbZkJFwTXUV
 8iTOiscRdERAPzCLi/MtAbVRebTNWAjFq4kFV5q0=
Date: Fri, 6 May 2022 17:16:19 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Message-ID: <20220506151619.GG10082@tellis.lin.mbt.kalray.eu>
References: <20220505100805.5144-1-jmaselbas@kalray.eu>
 <20220506145856.14831-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220506145856.14831-1-jmaselbas@kalray.eu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_081630_113597_E4E7548D 
X-CRM114-Status: GOOD (  12.28  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! net: dns: Generate and verify transaction ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 06, 2022 at 04:58:56PM +0200, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  net/dns.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/net/dns.c b/net/dns.c
> index 9ad316e33..9803ef475 100644
> --- a/net/dns.c
> +++ b/net/dns.c
> @@ -58,7 +58,7 @@ struct header {
>  
>  static struct net_connection *dns_con;
>  static uint64_t dns_timer_start;
> -static uin32_t dns_req_id;
> +static uint32_t dns_req_id;
s/uint32_t/uint16_t/

>  static int dns_state;
>  static IPaddr_t dns_ip;
>  
> @@ -132,7 +132,7 @@ static void dns_recv(struct header *header, unsigned len)
>  	pr_debug("%s\n", __func__);
>  
>  	/* Only accept responses with the expected request id */
> -	if (ntohs(header->id) != dns_req_id)
> +	if (ntohs(header->tid) != dns_req_id)
>  		return;
>  
>  	/* We sent 1 query. We want to see more that 1 answer. */
> -- 
> 2.17.1
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Fri, 16 Sep 2022 16:14:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZC7M-006jPz-Ja
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 16:14:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZC7K-0005OS-Sy
	for lore@pengutronix.de; Fri, 16 Sep 2022 16:14:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oStarcGnUkTFkW+HFunJdxGgaNVnOq7sASGF4by+QW4=; b=1KaEuWtMB8sQu/MhjoaSwIfLuf
	xjjU5lM/nozC67gm2/+2qDqxEvw3LKgBOwHUN2sT9UbuVnatTpf91PNl3gZPOAHXY5vTIyeMithYd
	pNVyj4daHDFeQsqc//R1fpqVLTFiUCv5KwoS3BJ6Qd8J5V7d/ngnJyN4S4dVtWHYH4JpOlnihU4gh
	SIGCcO8ORl6wOopQMV53EJRsMNF6yk5nsSCZljsnTTJgpHiEgdVPZVmHePjrvrHGM6WUZTE/TnEPn
	+DkxDwlmoASZ/VdYGKqMMXQG1mjsWzLWW8YeyItlNazcClxtdnCA5JLRpCqYVTBC3djH3MP7hP9xQ
	9H0ahmWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZC5f-00E1Lr-Ks; Fri, 16 Sep 2022 14:13:11 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZC5Y-00E0vH-8c
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 14:13:07 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28GECFVl1162808
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Fri, 16 Sep 2022 16:12:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1663337535;
	bh=oStarcGnUkTFkW+HFunJdxGgaNVnOq7sASGF4by+QW4=; l=2467;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=hhv1IkcYiQT7n/0ym7b/oAKnw9ifT1Ob/hpcedRdVl/rTGgFKXyrT2oGbP4ob5/2s
	 111s8zfj5mORd00MzJi2u4feT5WA9a5nOLIHttlOLlvqfSP+oPFd98FiZWoMVoccpT
	 AWsFC+ZwaCneSla/HocqC2tHlJu8b+F4ZDygTBFdPPUvOV8iaQPAy5Nn2MSpmAL6tv
	 +T/2IcLvmcPKjREsogGQ0CJTn828Twu+obE2/1/cygwAkEeenb6iRFK7Nq8d9T9oG3
	 zFMZYWLzaiLLkaCYg4X4Dq9ONm47dMITMwXRNM8E9RP6+2f3ju3LVFYr9X0w2pW/nu
	 gimDOUkPMQ8Vg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 28GECCof1211159
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Fri, 16 Sep 2022 16:12:14 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id DE85B40937; Fri, 16 Sep 2022 16:12:09 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28GEC7qY934321
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Fri, 16 Sep 2022 16:12:07 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oZC4d-007dWD-Md;
	Fri, 16 Sep 2022 16:12:07 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20220916125232.3775559-1-s.hauer@pengutronix.de>
	<20220916125232.3775559-3-s.hauer@pengutronix.de>
Date: Fri, 16 Sep 2022 16:12:07 +0200
In-Reply-To: <20220916125232.3775559-3-s.hauer@pengutronix.de> (Sascha Hauer's
	message of "Fri, 16 Sep 2022 14:52:31 +0200")
Message-ID: <lypmfv8l3c.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_071305_316055_45688F38 
X-CRM114-Status: GOOD (  19.34  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] tftp: implement UDP reorder cache using lists
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sascha Hauer <s.hauer@pengutronix.de> writes:

> The UDP reorder cache can be much easier implemented using lists.
> As a bonus the cache grows and shrinks on demand and no fixed size
> has to be configured at compile time.

There are three variants of the cache

- small, fixed sized array with linear search (very first
  implementation)  -->  O(n)
- list --> O(n) on insert, O(1) on lookup
- bitmap --> O(1)


Performance wise, I think the list implementation is the slowest one
(although the fixed sized array is O(n) on every operation, this should
be still faster for small n than the list operations and the related
memory management).

>From code size, the list implementation is in the middle.

I am not sure whether dynamic shrinking/growing of the cache is so
important or whether a small, fixed sized cache suffices.  In my
experience, only the first couple of packets really matter regarding
reordering.

Of course, the 'kfifo' could be replaced completely by a custom buffer
implementation where packets are inserted at the correct position.  O(1)
for every operation + zero additional memory.


> -static inline bool is_block_before(uint16_t a, uint16_t b)
> -{
> -	return (int16_t)(b - a) > 0;
> -}
> -
> ....
>  static int tftp_window_cache_insert(struct tftp_cache *cache, uint16_t id,
>  				    void const *data, size_t len)
>  {
> ...
> +	list_for_each_entry(block, &cache->blocks, list) {

fwiw, iterating in the reverse direction will find the position probably
faster


> +		if (block->id == id)
> +			return 0;
> +		if (block->id < id)

This will break when wrapping at 65535; the removed 'is_block_before()'
function was written for this case.


> @@ -614,12 +431,26 @@ static void tftp_apply_window_cache(struct file_priv *priv)
>  		if (priv->state != STATE_RDATA)
>  			return;
>  
> -		block = tftp_window_cache_pop(cache);
> +		if (list_empty(&cache->blocks))
> +			return;
>  
> -		debug_assert(block);
> -		debug_assert(block->id == (uint16_t)(priv->last_block + 1));
> +		block = list_first_entry(&cache->blocks, struct tftp_block, list);
> +
> +		if (block->id < priv->last_block + 1) {

ditto; wrapping at 65535


> +			/* shouldn't happen, but be sure */
> +			list_del(&block->list);
> +			free(block);
> +			continue;
> +		}
> +
> +		if (block->id != priv->last_block + 1)

ditto; wrapping at 65535.  Resp. should be written as

|		if (block->id != (uint16_t)(priv->last_block + 1))



Enrico



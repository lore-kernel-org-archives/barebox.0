Delivery-date: Mon, 22 Aug 2022 11:08:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQ3QD-0077up-3b
	for lore@lore.pengutronix.de; Mon, 22 Aug 2022 11:08:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQ3QA-00072u-MC
	for lore@pengutronix.de; Mon, 22 Aug 2022 11:08:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cLBUMSoH0ph35+K4AkhW5ClxhZoyZ2zUISwMSQPT2L0=; b=SmRda70vsBDbX1euHJG2aZeJHF
	yTbJ2ElGoF2i5P+90oqA5roj/kGA/m0BCXfpSeY/nL5/wTJENJHEYhXkGZOoCCKEsD5irpjb1J+sl
	QJOj1iAQG7AIHOGAxQIgQODhnEqPoSKTlsn4cKpzuUMJ8NjYjcg4qAa7u6OOo/VgfM7yNXBhTkT8y
	FsKphZ3g/JyYD9rhlMs6fP5RgKavEfcKsnxBSUftqqejCC3TT7pn/MUmdqwlZaR6veLtQCXsaNPXm
	Z1Fobi7ht3RraH5vpVh8ckTZpDj0eUwZ0MXHzqCJUN5B5UwAzor3WwKHYUVYuhfG0VvNVX1gc8N0c
	ajtikEOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ3Nk-006nqo-Ss; Mon, 22 Aug 2022 09:06:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ3Am-006g6t-C2
	for barebox@lists.infradead.org; Mon, 22 Aug 2022 08:52:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oQ3Ag-0004oC-Sb; Mon, 22 Aug 2022 10:52:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oQ3Ag-00025X-Iq; Mon, 22 Aug 2022 10:52:34 +0200
Date: Mon, 22 Aug 2022 10:52:34 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220822085234.GF17485@pengutronix.de>
References: <20220821132858.501018-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220821132858.501018-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_015240_499371_6544DA46 
X-CRM114-Status: GOOD (  19.39  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! pbl: export pbl_barebox_verify
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Aug 21, 2022 at 03:28:58PM +0200, Ahmad Fatoum wrote:
> crypto: digest: always export functions for PBL
> 
> We already build the digest functions for PBL, but the configuration may
> lack CONFIG_DIGEST, which leads to compile errors due to clashes between
> the static inline helpers and the actual definitions. Fix this.
> 
> Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/digest.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/digest.h b/include/digest.h
> index e4a521696434..b984d57d778e 100644
> --- a/include/digest.h
> +++ b/include/digest.h
> @@ -76,7 +76,7 @@ struct digest {
>  /*
>   * digest functions
>   */
> -#ifdef CONFIG_DIGEST
> +#if defined(CONFIG_DIGEST) || defined(__PBL__)
>  int digest_algo_register(struct digest_algo *d);
>  void digest_algo_unregister(struct digest_algo *d);
>  void digest_algo_prints(const char *prefix);
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



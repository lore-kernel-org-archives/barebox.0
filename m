Delivery-date: Fri, 06 Feb 2026 13:26:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKuf-009TtK-1g
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 13:26:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKue-0004b4-Go
	for lore@pengutronix.de; Fri, 06 Feb 2026 13:26:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gboc3Z73TctPnm9DnooicjFxKPK6VBI1rIoib5NptAw=; b=4gu3oRvdVh5dImCataNY3jLmvR
	os2CLBiIIoqbPBDk6VQlMQ+WjqbZgakVRQVqm70zPpylv+PczygyuUFmNNz1+5lE91vR1X47OWf2t
	cxalZq3zzuQ7dXxdA7F9+LmfdAHRH73JfIBllOSLHcdB6fl7d/6DZhuWMohISvu3JtMEgLNkoOq7F
	S3v4kIqhy4q4YYB/8r8q9qWE0LPbcP3KfiJXpwa0Zk0Dk/3H3anzNnJAxy4tK8NV35TFA7p2vbKwg
	vsrNhoBBcI0Gw7BLFwx6u0gFSOwsVMtcFbODHm08oZeYsXYwabqdLdY3slmwpAfjo/Dgqi6KROvs5
	kN9PeCvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKu2-0000000BIyx-1ORw;
	Fri, 06 Feb 2026 12:25:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKu1-0000000BIym-0OTw
	for barebox@bombadil.infradead.org;
	Fri, 06 Feb 2026 12:25:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Gboc3Z73TctPnm9DnooicjFxKPK6VBI1rIoib5NptAw=; b=R6OmM4m6rXaS8qheW5YuxVUn7r
	S40k20yBtBmrdOpUSm516RSE3uAPfdjw0YP8U78kiY6kwNK5XHq0BkeOWSvOEKjr53TjY7Z5g0G6K
	NdXwdTvRjxOVjtSOYljli6NxPqLK3Ygh9RVnSkk5y98URHGBpPSuCazy8+OetA+EiZUMx6zMp2xWO
	pLvccz8a7vpBU19+mp3Ekz7xMDdKEbEXKmA9702woozeyuREfHPnybNgNlFsGszgUzWY9smmMFM66
	cWj2B3iIBlL9hLVQ0sjz8pwAiEK6BbdgHimAHVUmkaKLzzjxn5whm0VxI+jisCNJoh7xqQ1StNhZD
	SCaCsiaQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKtx-00000003mKW-2XQB
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 12:25:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voKtw-0004Wk-IY; Fri, 06 Feb 2026 13:25:32 +0100
Message-ID: <4ca020c8-d430-4c6a-96ad-bfb93970297a@pengutronix.de>
Date: Fri, 6 Feb 2026 13:25:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-11-da075e6818e0@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-11-da075e6818e0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_122533_807468_7C141C50 
X-CRM114-Status: GOOD (  17.27  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 11/15] security: optee: add optee_handoff_overlay
 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/4/26 9:01 PM, Marco Felsch wrote:
> Add a helper to pass the OP-TEE provided overlay to barebox via the
> handoff mechanism. This can be useful to generalize the reserved-memory
> node handling since OP-TEE can provide this information via the overlay
> if configured in OP-TEE.
> 
> While on it sort the include headers in alphabetical order.

With below omission fixed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  include/tee/optee.h |  5 +++++
>  security/Kconfig    |  9 +++++++++
>  security/optee.c    | 15 ++++++++++++++-
>  3 files changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/include/tee/optee.h b/include/tee/optee.h
> index 10e829c04f8832c4c04771800f1963e25f425482..7126e3c6e24bbf0f37aee7827dc3b4d9619d3bc3 100644
> --- a/include/tee/optee.h
> +++ b/include/tee/optee.h
> @@ -37,6 +37,7 @@ int optee_verify_header (const struct optee_header *hdr);
>  
>  void optee_set_membase(const struct optee_header *hdr);
>  int optee_get_membase(u64 *membase);
> +void optee_handoff_overlay(void *ovl, unsigned int ovl_sz);
>  
>  #else
>  
> @@ -49,6 +50,10 @@ static inline int optee_get_membase(u64 *membase)
>  	return -ENOSYS;
>  }
>  
> +void optee_handoff_overlay(void *ovl, unsigned int ovl_sz)
> +{
> +}

static inline missing

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




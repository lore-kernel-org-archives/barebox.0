Delivery-date: Wed, 14 Jan 2026 14:46:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg1Cj-001FgF-1x
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 14:46:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg1Ci-0006Fz-IT
	for lore@pengutronix.de; Wed, 14 Jan 2026 14:46:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2h0Z4HqCQtqdUblBKNPp/LXcgFJwgRzBJb1yyurEvi4=; b=Pc14Z/PtPSy93HXPZ3sIS3Nete
	TjJl1/wDO43o43EYy1vVvyCPzGTR+MuOgq12RIIcXXm/JATrqaBHjciQFvqgkA64q1N3BDReT7k9d
	cbUtSadjhNlDl/aG/qF4R703B+a0a1s6VEuuAgwUl700rvDWyoVCCu+HwFXqjpQ/Id7xJhu3LBcST
	dEL9btPyZam3mRMTwIcs5a9lqs2cMk19XXrgC8ngzwNwKL5UJj10gPSAcT4+fiJ7Fi00vfBWUqcHm
	h8c++2o05qiWhnAhOMB99wlxFyq90ie8gtjFzcttkWaa9Qp3AQsqRqUgmrvuQlht+2HPwDbxKC7Wq
	wvQen2/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1CE-00000009NEA-0SdL;
	Wed, 14 Jan 2026 13:46:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1CC-00000009NCf-0DTp
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 13:46:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vg1C9-0006AH-4X; Wed, 14 Jan 2026 14:45:57 +0100
Message-ID: <1f1eac54-5166-480e-b3eb-1b996ea30b60@pengutronix.de>
Date: Wed, 14 Jan 2026 14:45:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
 <20260114-pbl-load-elf-v4-4-0afa78d95a7e@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260114-pbl-load-elf-v4-4-0afa78d95a7e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_054600_136789_6F7CA5C3 
X-CRM114-Status: GOOD (  22.35  )
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
Subject: Re: [PATCH v4 04/22] elf: add elf segment iterator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/14/26 1:14 PM, Sascha Hauer wrote:
> We currently have only one place which iterates over elf segments, but
> there are more to come, so add an iterator for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/elf.c  | 8 +++-----
>  include/elf.h | 6 ++++++
>  2 files changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/common/elf.c b/common/elf.c
> index f772018deb3c5a07a9f76bc654e54ff46cc3612e..af73396b351d96489bd6fae1f035d379703ae528 100644
> --- a/common/elf.c
> +++ b/common/elf.c
> @@ -161,19 +161,17 @@ static int load_elf_to_memory(struct elf_image *elf)
>  static int load_elf_image_segments(struct elf_image *elf)
>  {
>  	void *buf = elf->hdr_buf;
> -	void *phdr = (void *) (buf + elf_hdr_e_phoff(elf, buf));
> -	int i, ret;
> +	void *phdr;
> +	int ret;
>  
>  	/* File as already been loaded */
>  	if (!list_empty(&elf->list))
>  		return -EINVAL;
>  
> -	for (i = 0; i < elf_hdr_e_phnum(elf, buf) ; ++i) {
> +	elf_for_each_segment(phdr, elf, buf) {
>  		ret = request_elf_segment(elf, phdr);
>  		if (ret)
>  			goto elf_release_regions;
> -
> -		phdr += elf_size_of_phdr(elf);
>  	}
>  
>  	/*
> diff --git a/include/elf.h b/include/elf.h
> index 994db642b0789942530f6ef7fdffdd2218afd7b6..a062af77004ab7fe730793552d2cce9d5675dd7f 100644
> --- a/include/elf.h
> +++ b/include/elf.h
> @@ -439,4 +439,10 @@ static inline unsigned long elf_size_of_phdr(struct elf_image *elf)
>  		return sizeof(Elf64_Phdr);
>  }
>  
> +#define elf_for_each_segment(phdr, elf, buf) \
> +	for (phdr = buf + elf_hdr_e_phoff(elf, buf); \
> +	     phdr < buf + elf_hdr_e_phoff(elf, buf) + \
> +	     elf_hdr_e_phnum(elf, buf) * elf_size_of_phdr(elf); \
> +	     phdr += elf_size_of_phdr(elf))

Please cast buf to (void *)buf and either change

	phdr += elf_size_of_phdr(elf))

to
	phdr = (u8 *)phdr + elf_size_of_phdr(elf))

or declare phdr in the for loop.

Otherwise, it's too easy to pass the wrong pointer there and have the
first iteration be correct and the rest wrong.

Thanks,
Ahmad

> +
>  #endif /* _LINUX_ELF_H */
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




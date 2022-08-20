Delivery-date: Sat, 20 Aug 2022 18:07:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oPR08-005Nol-KV
	for lore@lore.pengutronix.de; Sat, 20 Aug 2022 18:07:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oPR06-0001KQ-6x
	for lore@pengutronix.de; Sat, 20 Aug 2022 18:07:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DLIJRzgt1tj3+LGlOUxuA9lB96aWmmuW5hwIyEZRHwI=; b=hg2lMdShieTQRfbVOELZAQztgt
	UnqYVzaMtch3zdGZVcum6YT1UTdj1xhdyG/B2IS6C/KXbHmMh1WtlC+fl3fxEZRuAU7WYVvpxdODX
	iz6PhCsmJ0v71Z1jHs2k8bmDw9/CH5oApV4xs2pkxLviLXtdBowlSYmx7FQPsLgWpzWXtJ/N3lPze
	yMCjxAMMCSnD/efipIY81sV6LgRdVlj84qrh26JRHTQHiYN9j0AWQmqCro+IEdf6BU2wNgYfzHrQS
	CcTB0putHd4JtkUfhV98i7tWm8bte9sHgk87/tkh6Vi1ORHYxqwj7Ca/j2mvtGHweXE2lgk4PdAKU
	5B6sp6zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPQxa-00AyDq-CS; Sat, 20 Aug 2022 16:04:30 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPQxV-00AyBo-9K
	for barebox@lists.infradead.org; Sat, 20 Aug 2022 16:04:26 +0000
Received: by mail-lj1-x22c.google.com with SMTP id w23so1896375ljj.7
        for <barebox@lists.infradead.org>; Sat, 20 Aug 2022 09:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc;
        bh=DLIJRzgt1tj3+LGlOUxuA9lB96aWmmuW5hwIyEZRHwI=;
        b=jm0m0POAd6nybryDfNgYQ7jp3s80H9osv4HhjC2w9neKHPMp1W8zcgv8Uq6fMQTTk9
         qRmRyO54wPbW8hYE9PGMC40+C3MWdysjX74Z5N1g6alLOzDcvscPpNEaUgJP5ZUJHLnL
         ZFIPtKGl6oXsV1mv2lTqSOLA6jiMOYLebbUcMvmvFGE7ri/MVSWEyv92VKjA4pb//32F
         uzMCX6MdtVnHlyHaiYB/oKnYyaLjuMdON2yfZMh0pukMUAylqp11BH9d/jWBh/JlIZxl
         njTqxlRJ/k8jpD0XO5Y7hm8mcQo1CtiFDP9d4rPkgPre2E6oviGOLKwBwqmxeLxhE03+
         jCYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=DLIJRzgt1tj3+LGlOUxuA9lB96aWmmuW5hwIyEZRHwI=;
        b=VlyAj36QyQmJpRjbPO+hIxutDaEPCqC6srTnXSuP0OC9+KlVyzZHILewoNgTc1YMog
         RcjnZh3s7eaBNMUhPOYYtheiGQ/CKgkPH9IqXq+gHqg/JhZSPfi9lB0+lAyMP15Azdb3
         Aob5NUnJP4z7AwSnBSNwyQjh6n8+OKFjhaVc7PZsXAdKTA91BOMcZ2MzrgT+4HwQkqRU
         wM+EW4w6GeHc+bUBDqlrRtr/5tTBuQ2uUWlKLJlGrMnRf5vl0qJmB/5qORV8WmVg18Ne
         Pnw3NqrONXOzwOjFiSOQ5hfqTaf58gev5wqOo+xXJPLKHHGGBDrV7h1YiGr3tMtc1HyN
         tr/A==
X-Gm-Message-State: ACgBeo3f895C2+qNanEGNlfPljUtRFU153udaL/X+sd1IZJFLQ3/zU9N
	K6S66YAKZsbcSgrNKd0Cpmk=
X-Google-Smtp-Source: AA6agR6jvuD5aO61P2AEZiTrJx5WaswQxD2Hryxin99IFtd9o3LXV/OMu+zt+apal8mbKkQJVU69YQ==
X-Received: by 2002:a2e:2ac5:0:b0:25e:3813:ef0a with SMTP id q188-20020a2e2ac5000000b0025e3813ef0amr3479995ljq.171.1661011461544;
        Sat, 20 Aug 2022 09:04:21 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
        by smtp.gmail.com with ESMTPSA id d15-20020ac244cf000000b004896ed8dce3sm736742lfm.2.2022.08.20.09.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Aug 2022 09:04:20 -0700 (PDT)
Date: Sat, 20 Aug 2022 19:07:07 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20220820190707.85c705e47fdca88824d2fcbe@gmail.com>
In-Reply-To: <20220818050447.2072932-2-a.fatoum@pengutronix.de>
References: <20220818050447.2072932-1-a.fatoum@pengutronix.de>
	<20220818050447.2072932-2-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220820_090425_390141_0E46C179 
X-CRM114-Status: GOOD (  24.72  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] pbl: export pbl_barebox_verify
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 18 Aug 2022 07:04:45 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi!

It looks like the commit 5dba4f6b3d3 ("pbl: export pbl_barebox_verify") from the next branch
breaks the socfpga-xload-2_defconfig config build.

Here are the error messages:

crypto/digest.c:78:5: warning: no previous prototype for ‘digest_algo_register’ [-Wmissing-prototypes]
   78 | int digest_algo_register(struct digest_algo *d)
      |     ^~~~~~~~~~~~~~~~~~~~
crypto/digest.c:98:6: warning: no previous prototype for ‘digest_algo_unregister’ [-Wmissing-prototypes]
   98 | void digest_algo_unregister(struct digest_algo *d)
      |      ^~~~~~~~~~~~~~~~~~~~~~
crypto/digest.c:150:6: warning: no previous prototype for ‘digest_algo_prints’ [-Wmissing-prototypes]
  150 | void digest_algo_prints(const char *prefix)
      |      ^~~~~~~~~~~~~~~~~~
crypto/digest.c:162:16: error: redefinition of ‘digest_alloc’
  162 | struct digest *digest_alloc(const char *name)
      |                ^~~~~~~~~~~~
In file included from crypto/digest.c:17:
include/digest.h:99:30: note: previous definition of ‘digest_alloc’ with type ‘struct digest *(const char *)’
   99 | static inline struct digest *digest_alloc(const char *name)
      |                              ^~~~~~~~~~~~
crypto/digest.c:183:16: error: redefinition of ‘digest_alloc_by_algo’
  183 | struct digest *digest_alloc_by_algo(enum hash_algo hash_algo)
      |                ^~~~~~~~~~~~~~~~~~~~
include/digest.h:104:30: note: previous definition of ‘digest_alloc_by_algo’ with type ‘struct digest *(enum hash_algo)’
  104 | static inline struct digest *digest_alloc_by_algo(enum hash_algo algo)
      |                              ^~~~~~~~~~~~~~~~~~~~
crypto/digest.c:204:6: error: redefinition of ‘digest_free’
  204 | void digest_free(struct digest *d)
      |      ^~~~~~~~~~~
include/digest.h:109:20: note: previous definition of ‘digest_free’ with type ‘void(struct digest *)’
  109 | static inline void digest_free(struct digest *d)
      |                    ^~~~~~~~~~~
crypto/digest.c:259:5: warning: no previous prototype for ‘digest_file_window’ [-Wmissing-prototypes]
  259 | int digest_file_window(struct digest *d, const char *filename,
      |     ^~~~~~~~~~~~~~~~~~
crypto/digest.c:291:5: warning: no previous prototype for ‘digest_file’ [-Wmissing-prototypes]
  291 | int digest_file(struct digest *d, const char *filename,
      |     ^~~~~~~~~~~
crypto/digest.c:304:5: warning: no previous prototype for ‘digest_file_by_name’ [-Wmissing-prototypes]
  304 | int digest_file_by_name(const char *algo, const char *filename,
      |     ^~~~~~~~~~~~~~~~~~~
make[1]: *** [/home/antony/barebox/scripts/Makefile.build:137: crypto/digest.pbl.o] Error 1
make: *** [Makefile:953: crypto] Error 2
make: *** Waiting for unfinished jobs....




> There's no downside to always build the digest verification code in PBL
> and export pbl_barebox_verify to access it. This allows board code to
> use the function for verifying other firmware blobs and
> CONFIG_PBL_VERIFY_PIGGY=y will remain to enable the verification at
> barebox proper extraction time. Code not using it will have the function
> sections garbage collected by the linker, so no functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - no change
> ---
>  crypto/Makefile | 3 +--
>  include/pbl.h   | 3 +++
>  pbl/decomp.c    | 6 +++---
>  3 files changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/crypto/Makefile b/crypto/Makefile
> index 762d7e543be4..22035d4f69ee 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -10,8 +10,7 @@ obj-$(CONFIG_DIGEST_MD5_GENERIC)	+= md5.o
>  obj-$(CONFIG_DIGEST_SHA1_GENERIC)	+= sha1.o
>  obj-$(CONFIG_DIGEST_SHA224_GENERIC)	+= sha2.o
>  obj-$(CONFIG_DIGEST_SHA256_GENERIC)	+= sha2.o
> -pbl-$(CONFIG_PBL_VERIFY_PIGGY)		+= sha2.o
> -pbl-$(CONFIG_PBL_VERIFY_PIGGY)		+= digest.o
> +pbl-y					+= sha2.o digest.o
>  obj-$(CONFIG_DIGEST_SHA384_GENERIC)	+= sha4.o
>  obj-$(CONFIG_DIGEST_SHA512_GENERIC)	+= sha4.o
>  obj-y	+= memneq.o
> diff --git a/include/pbl.h b/include/pbl.h
> index 0dc23c72dcf5..7dc4fa309257 100644
> --- a/include/pbl.h
> +++ b/include/pbl.h
> @@ -30,4 +30,7 @@ const void *
>  fdt_device_get_match_data(const void *fdt, const char *nodepath,
>  			  const struct fdt_device_id ids[]);
>  
> +int pbl_barebox_verify(const void *compressed_start, unsigned int len,
> +		       const void *hash, unsigned int hash_len);
> +
>  #endif /* __PBL_H__ */
> diff --git a/pbl/decomp.c b/pbl/decomp.c
> index 1e0ef81ada00..553895bac5e8 100644
> --- a/pbl/decomp.c
> +++ b/pbl/decomp.c
> @@ -54,14 +54,14 @@ static void noinline errorfn(char *error)
>  extern unsigned char sha_sum[];
>  extern unsigned char sha_sum_end[];
>  
> -static int pbl_barebox_verify(void *compressed_start, unsigned int len, void *hash,
> -			      unsigned int hash_len)
> +int pbl_barebox_verify(const void *compressed_start, unsigned int len,
> +		       const void *hash, unsigned int hash_len)
>  {
>  	struct sha256_state sha_state = { 0 };
>  	struct digest d = { .ctx = &sha_state };
>  	char computed_hash[SHA256_DIGEST_SIZE];
>  	int i;
> -	char *char_hash = hash;
> +	const char *char_hash = hash;
>  
>  	if (hash_len != SHA256_DIGEST_SIZE)
>  		return -1;
> -- 
> 2.30.2
> 
> 


-- 
Best regards,
  Antony Pavlov



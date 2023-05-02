Delivery-date: Tue, 02 May 2023 17:01:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptrVL-002NS8-Mh
	for lore@lore.pengutronix.de; Tue, 02 May 2023 17:01:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptrVJ-0000Qi-Ld
	for lore@pengutronix.de; Tue, 02 May 2023 17:01:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MnbS5VslTC/SCYenNrHTAyZ+IrAdY1HPtaFItN6+b3Q=; b=l8LxJBaHqggfhOn1QKA2RNYFVM
	kJ6spXuGCnd4VsXaUFNeccc2z4lEjfN7ZE12on1EpojI8EUJzO2GrRnT9XOKNjcAM04okrvlqxc3A
	SHuxlpaQva8OinwHxA/TQGzZnaQOUZ8i3eN0RpB9GWUxECsVNCArGqGpdY4nD2QxX0x7VHlD/wdN4
	+rcCsYJKxOEUZyhZlXYe5arbPd+wuonzRu+XnL9wDz//51Df7j7aG9C6OXETViKe8Zw8J3XKvxzVb
	dkQAUtfXhGg2cn+E0CAyfTYBpaopZVvBB2EVlUdZYM0rK+5RmVi8HQv0nl3GM2Kc8GC6vXQ53//27
	kwCpCtRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptrTx-001tEW-0g;
	Tue, 02 May 2023 14:59:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptrTt-001tDo-2X
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 14:59:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ptrTr-0008Rt-1M; Tue, 02 May 2023 16:59:51 +0200
Message-ID: <82fdc4f1-3ffb-9b56-fffa-d6276db06f64@pengutronix.de>
Date: Tue, 2 May 2023 16:59:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230502122705.2112637-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230502122705.2112637-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_075953_823434_2A1ED562 
X-CRM114-Status: GOOD (  17.11  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts: rkimage: Use non-deprecated functions for
 sha256/512
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.05.23 14:27, Sascha Hauer wrote:
> SHA256_Init() and SHA512_Init() are deprecated since OpensSSL 3.0. Use
> EVP functions instead to calculate hashes.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I'd have preferred we just drop the OpenSSL dependency here though (:.

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  scripts/rkimage.c | 22 +++++++++++++---------
>  1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/scripts/rkimage.c b/scripts/rkimage.c
> index 6e68d508ac..551114ed82 100644
> --- a/scripts/rkimage.c
> +++ b/scripts/rkimage.c
> @@ -9,7 +9,7 @@
>  #include <stdint.h>
>  #include <string.h>
>  #include <time.h>
> -#include <openssl/sha.h>
> +#include <openssl/evp.h>
>  #include <errno.h>
>  #include <stdbool.h>
>  
> @@ -22,20 +22,24 @@
>  
>  static void sha256(const void *buf, int len, void *out)
>  {
> -	SHA256_CTX sha256;
> +	EVP_MD_CTX *md_ctx;
>  
> -	SHA256_Init(&sha256);
> -	SHA256_Update(&sha256, buf, len);
> -	SHA256_Final(out, &sha256);
> +	md_ctx = EVP_MD_CTX_new();
> +	EVP_DigestInit(md_ctx, EVP_sha256());
> +	EVP_DigestUpdate(md_ctx, buf, len);
> +	EVP_DigestFinal(md_ctx, out, NULL);
> +	EVP_MD_CTX_free(md_ctx);
>  }
>  
>  static void sha512(const void *buf, int len, void *out)
>  {
> -	SHA512_CTX sha512;
> +	EVP_MD_CTX *md_ctx;
>  
> -	SHA512_Init(&sha512);
> -	SHA512_Update(&sha512, buf, len);
> -	SHA512_Final(out, &sha512);
> +	md_ctx = EVP_MD_CTX_new();
> +	EVP_DigestInit(md_ctx, EVP_sha512());
> +	EVP_DigestUpdate(md_ctx, buf, len);
> +	EVP_DigestFinal(md_ctx, out, NULL);
> +	EVP_MD_CTX_free(md_ctx);
>  }
>  
>  typedef enum {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




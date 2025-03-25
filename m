Delivery-date: Tue, 25 Mar 2025 08:31:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twylG-003v96-0i
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 08:31:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twylF-0003Fd-2V
	for lore@pengutronix.de; Tue, 25 Mar 2025 08:31:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D+aloYlIWKlv8zHmMMS6J99Eqe4pyENENuDUSojTdzw=; b=vD43lq6h8okQ4ZflOsXTucGa89
	kCJ4n+hAtKC1v6/SxGpsAyCW9NlN6cC9zOSIAcuBAkUzV/jHiBSe5rQZusn33Kq7B6Q93egiKMCT8
	HxNKWzFumg7IigbaRHet32lE7rwQYqE98jBYfNCdutchlf+TRSNcNul5drX9tYt/CDhIbN1FVRA56
	Dp3QixrBFD9uZP7ZbT89eVwAQWm698IK/NObglSDazwrymXIIQ7GHMGRRoRCM+uVyeDAfLF0JP99M
	ozIChY2IQxpxsjTu2rJn8sricoaCRGyB3Yfnp7lU8YOLIidLn+iWIzVykWaT3cuXJSD3l/XBu4Swm
	4Pm/HRJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twykk-000000055ik-0Ebh;
	Tue, 25 Mar 2025 07:31:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twybq-000000054Mv-3XAn
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 07:22:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1twybp-0002Ef-EH; Tue, 25 Mar 2025 08:22:01 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1twybo-001Xcc-2d;
	Tue, 25 Mar 2025 08:22:01 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1twybp-00FlGB-0P;
	Tue, 25 Mar 2025 08:22:01 +0100
Date: Tue, 25 Mar 2025 08:22:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z-JZmexeu-CvQXU6@pengutronix.de>
References: <20250320052114.1732651-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250320052114.1732651-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_002202_877740_CD0745F9 
X-CRM114-Status: GOOD (  21.21  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] scripts: define le32_to_cpup and friends for
 host/target tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 20, 2025 at 06:21:13AM +0100, Ahmad Fatoum wrote:
> We already define le32_to_cpu and friends, but were missing so far the
> p-suffixed variant, which accepts a pointer.
> 
> This is easily implemented with a bit of macro boilerplate, so let's do
> that.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - new patch
> ---
>  scripts/compiler.h | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)

This breaks compilation on riscv:

scripts/compiler.h:182:1: note: in expansion of macro 'DEFINE_CONV_P'
  182 | DEFINE_CONV_P(be, 64)
      | ^~~~~~~~~~~~~
scripts/compiler.h:170:55: error: unknown type name  __be64'
  170 |  static inline u##bits cpu_to_##endian##bits##p(const __##endian##bits *p) \
      |                                                       ^~
scripts/compiler.h:182:1: note: in expansion of macro 'DEFINE_CONV_P'
  182 | DEFINE_CONV_P(be, 64)
      | ^~~~~~~~~~~~~

I added a

#include <linux/types.h>

to scripts/compiler.h

Sascha

> 
> diff --git a/scripts/compiler.h b/scripts/compiler.h
> index d8d0e1b906df..d6807b027e03 100644
> --- a/scripts/compiler.h
> +++ b/scripts/compiler.h
> @@ -160,6 +160,27 @@ typedef uint32_t __u32;
>  # define be64_to_cpu(x)		(x)
>  #endif
>  
> +#define DEFINE_CONV_P(endian, bits) \
> +	static inline __##endian##bits endian##bits##_to_cpup(const u##bits *p) \
> +	{ \
> +		u##bits val; \
> +		memmove(&val, p, sizeof(val)); \
> +		return endian##bits##_to_cpu(val); \
> +	} \
> +	static inline u##bits cpu_to_##endian##bits##p(const __##endian##bits *p) \
> +	{ \
> +		__##endian##bits val; \
> +		memmove(&val, p, sizeof(val)); \
> +		return cpu_to_##endian##bits(val); \
> +	}
> +
> +DEFINE_CONV_P(le, 16)
> +DEFINE_CONV_P(le, 32)
> +DEFINE_CONV_P(le, 64)
> +DEFINE_CONV_P(be, 16)
> +DEFINE_CONV_P(be, 32)
> +DEFINE_CONV_P(be, 64)
> +
>  #ifndef min
>  #define min(x, y) ({                            \
>  	typeof(x) _min1 = (x);                  \
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



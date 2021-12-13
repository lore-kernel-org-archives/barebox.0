Delivery-date: Mon, 13 Dec 2021 23:40:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtzm-005izK-Gd
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 23:40:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtzj-0004K4-RE
	for lore@pengutronix.de; Mon, 13 Dec 2021 23:40:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wknbsqrbJCV1opt+vL7fiYX71nUpU/LILlhY7TWZVNE=; b=iEp2vu0hVRo655CidSpwJIgtai
	ZSPqowbnSh5gaifkMvw1ltKVkyDEAH12oQFy/+92V/pBog2UefhHcZ1NscZMczVt0q2qY31KD+doe
	fOs3wGuI2tEZ9ahKv2osiluwzwgw7mEgOoTk2+W/fyNeLcQCAfapVWLP3kXmYE4OGb3orETABBy8/
	ef4l1HsyFEoK8kVFmMVbPqAoUMAbNA3CGEfFDG3FUzCvH0zZFzCC7j+6ik51bwuSCoupRoBvxKQur
	MSZ03n0fWmxfimIK6ZWJqZhzVErhrSSzprYiIN3D2QwYZW4bptJBv3M1v2xun78adoBE/fmj7JTp8
	BRqfZpGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwty9-00BnXH-7S; Mon, 13 Dec 2021 22:38:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwtdj-00Bfsn-Kc
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 22:17:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtdh-0001iz-Lh; Mon, 13 Dec 2021 23:17:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtdh-00048e-D5; Mon, 13 Dec 2021 23:17:45 +0100
Date: Mon, 13 Dec 2021 23:17:45 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211213221745.GH6003@pengutronix.de>
References: <20211209105832.3518384-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211209105832.3518384-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:17:33 up 3 days, 7:03, 33 users, load average: 0.09, 0.08, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_141747_720652_39802A26 
X-CRM114-Status: GOOD (  24.06  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] crypto: crc32: add big endian CRC implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 09, 2021 at 11:58:32AM +0100, Ahmad Fatoum wrote:
> This implementation is a straight copy of the tableless
> implementation inside Linux' lib/crc32.c
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  crypto/crc32.c | 12 ++++++++++++
>  include/crc.h  |  1 +
>  2 files changed, 13 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/crypto/crc32.c b/crypto/crc32.c
> index 232c023adb88..998cbc9de297 100644
> --- a/crypto/crc32.c
> +++ b/crypto/crc32.c
> @@ -187,6 +187,18 @@ STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
>      return crc;
>  }
>  
> +STATIC uint32_t crc32_be(uint32_t crc, const void *_buf, unsigned int len)
> +{
> +	const unsigned char *buf = _buf;
> +	int i;
> +	while (len--) {
> +		crc ^= *buf++ << 24;
> +		for (i = 0; i < 8; i++)
> +			crc = (crc << 1) ^ ((crc & 0x80000000) ? 0x04c11db7 : 0);
> +	}
> +	return crc;
> +}
> +
>  STATIC int file_crc(char *filename, ulong start, ulong size, ulong *crc,
>  		    ulong *total)
>  {
> diff --git a/include/crc.h b/include/crc.h
> index eb972705c21a..a5204aaabb9c 100644
> --- a/include/crc.h
> +++ b/include/crc.h
> @@ -36,6 +36,7 @@ static inline u16 crc_itu_t_byte(u16 crc, const u8 data)
>  #endif
>  
>  uint32_t crc32(uint32_t, const void *, unsigned int);
> +uint32_t crc32_be(uint32_t, const void *, unsigned int);
>  uint32_t crc32_no_comp(uint32_t, const void *, unsigned int);
>  int file_crc(char *filename, unsigned long start, unsigned long size,
>  	     unsigned long *crc, unsigned long *total);
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Mon, 28 Aug 2023 09:21:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaWYu-00Bkep-JH
	for lore@lore.pengutronix.de; Mon, 28 Aug 2023 09:21:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaWYs-0004LO-EW
	for lore@pengutronix.de; Mon, 28 Aug 2023 09:21:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wsHRXJlTPo9oj40btKORDBIYak3X/PZ+V3m/4V2B9Hw=; b=cCBG7Y96l+Xs+jm9CiSg3ZqT+9
	2frM59fXOm9dr1VzMtdqtqvPb27/3oQ3oYE9njOUKRXs5jK9req51p5FH0/+dfiq3cYj8V/j7AFIh
	jg6r70ispTMJ/qEcL1ccQwQaRw1RuWBWXSnsGYab8P0F0vU3e0ZcgFSwjcE3F/mH6la+f377XK4Xk
	8ipHyvP20GeLcLEht56eZr2p69Vo0cJ2cl+YInQoaRIq7FXgZ6/tocAmHQc9xpO93FPMyv+teacUB
	2qZw7ITeOdiI0Ycr3s36Hc9Kbo2bvVrAbIINPXgr8204F1FKSn6UvH9L3GXYUifSQB+jQ1UT11zJy
	xPHlNGHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qaWXi-00931d-1l;
	Mon, 28 Aug 2023 07:20:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qaWXf-00931I-0A
	for barebox@lists.infradead.org;
	Mon, 28 Aug 2023 07:20:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qaWXb-00042L-IH; Mon, 28 Aug 2023 09:20:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qaWXb-0002TB-BL; Mon, 28 Aug 2023 09:20:03 +0200
Date: Mon, 28 Aug 2023 09:20:03 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230828072003.GH16522@pengutronix.de>
References: <20230825181749.2861735-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230825181749.2861735-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_002007_111600_1FAF4DC6 
X-CRM114-Status: GOOD (  23.77  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] crypto: crc32: use uint32_t instead of ulong
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 25, 2023 at 08:17:49PM +0200, Ahmad Fatoum wrote:
> Using ulong just wastes space on 64-bit platforms, so use fixed size
> 32-bit integers instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  crypto/crc32.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/crypto/crc32.c b/crypto/crc32.c
> index 998cbc9de297..95cb2212db2b 100644
> --- a/crypto/crc32.c
> +++ b/crypto/crc32.c
> @@ -24,7 +24,7 @@
>  
>  #ifdef CONFIG_DYNAMIC_CRC_TABLE
>  
> -static ulong *crc_table;
> +static uint32_t *crc_table;
>  
>  /*
>    Generate a table for a byte-wise 32-bit CRC calculation on the polynomial:
> @@ -52,22 +52,22 @@ static ulong *crc_table;
>  */
>  static void make_crc_table(void)
>  {
> -  ulong c;
> +  uint32_t c;
>    int n, k;
> -  ulong poly;            /* polynomial exclusive-or pattern */
> +  uint32_t poly;            /* polynomial exclusive-or pattern */
>    /* terms of polynomial defining this crc (except x^32): */
>    static const char p[] = {0,1,2,4,5,7,8,10,11,12,16,22,23,26};
>  
>    /* make exclusive-or pattern from polynomial (0xedb88320L) */
> -  poly = 0L;
> +  poly = 0;
>    for (n = 0; n < sizeof(p)/sizeof(char); n++)
> -    poly |= 1L << (31 - p[n]);
> +    poly |= 1U << (31 - p[n]);
>  
> -  crc_table = xmalloc(sizeof(ulong) * 256);
> +  crc_table = xmalloc(sizeof(uint32_t) * 256);
>  
>    for (n = 0; n < 256; n++)
>    {
> -    c = (ulong)n;
> +    c = (uint32_t)n;
>      for (k = 0; k < 8; k++)
>        c = c & 1 ? poly ^ (c >> 1) : c >> 1;
>      crc_table[n] = c;
> @@ -77,7 +77,7 @@ static void make_crc_table(void)
>  /* ========================================================================
>   * Table of CRC-32's of all single-byte values (made by make_crc_table)
>   */
> -static const ulong crc_table[256] = {
> +static const uint32_t crc_table[256] = {
>    0x00000000L, 0x77073096L, 0xee0e612cL, 0x990951baL, 0x076dc419L,
>    0x706af48fL, 0xe963a535L, 0x9e6495a3L, 0x0edb8832L, 0x79dcb8a4L,
>    0xe0d5e91eL, 0x97d2d988L, 0x09b64c2bL, 0x7eb17cbdL, 0xe7b82d07L,
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



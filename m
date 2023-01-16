Delivery-date: Mon, 16 Jan 2023 13:42:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHOoj-00DZSa-TC
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 13:42:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHOoh-0004N3-TK
	for lore@pengutronix.de; Mon, 16 Jan 2023 13:42:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BFcJzfqbKxpNjr9HgiUrdGPW4uU8+U7KZ/2Wc9o9yVg=; b=rePIgRVirtAj5Zp5ovNb2j3ikK
	eLDjqrnlDxO8ekjnNM/CZn2I/1x7d1St/N8OIt3QPCKfmJVSfRs991snpcXsPg/yWfb3USsdpMIjq
	cBPGSsOzCDmReREzP1UUiJfLC2cGRbyWJBzB6YifnxvgAcyEgfaF8ayptv7cZIeXap2BSSwQG2f3t
	kuQVehNZHfjggIpecep1Y7aZn0oD7oRtibK8mBe2y+ySXf3lQXurujHRug2fID+g6eJaXsKm1KEfS
	SFQLkEdxhFyvgVmoeVkubnqtIC9pGzjYcspVya711ZIf8Mh6yAUvkJAPmlLVOc3B9g4CZyDghabdd
	bW75AGnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOnM-00A8AP-Ms; Mon, 16 Jan 2023 12:41:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOnH-00A88j-Qu
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 12:40:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pHOnC-00045O-Tg; Mon, 16 Jan 2023 13:40:50 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pHOnC-0004de-Dx; Mon, 16 Jan 2023 13:40:50 +0100
Date: Mon, 16 Jan 2023 13:40:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230116124050.GC24755@pengutronix.de>
References: <20230113140648.31572-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230113140648.31572-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_044055_887623_0C48835F 
X-CRM114-Status: GOOD (  23.25  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ddr_spd: use unsigned type for crc bytes in DDR3/4 SPD
 check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 13, 2023 at 05:06:48PM +0300, Denis Orlov wrote:
> Using signed char type for computed CRC bytes leads to them being sign
> extended on comparison with unsigned char values from SPD EEPROM struct.
> This happens as when being compared those values undergo integer
> promotion that converts them into ints, sign extending signed types.
> Having most significant byte set for any of computed CRC bytes thus
> results in the mismatch being erroneously detected.
> 
> While at it, also remove redundant type casts.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  common/ddr_spd.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/ddr_spd.c b/common/ddr_spd.c
> index 52773178e7..dd3b8511e6 100644
> --- a/common/ddr_spd.c
> +++ b/common/ddr_spd.c
> @@ -65,8 +65,8 @@ int ddr3_spd_check(const struct ddr3_spd_eeprom *spd)
>  	char *p = (char *)spd;
>  	int csum16;
>  	int len;
> -	char crc_lsb;	/* byte 126 */
> -	char crc_msb;	/* byte 127 */
> +	unsigned char crc_lsb;	/* byte 126 */
> +	unsigned char crc_msb;	/* byte 127 */
>  
>  	/*
>  	 * SPD byte0[7] - CRC coverage
> @@ -77,8 +77,8 @@ int ddr3_spd_check(const struct ddr3_spd_eeprom *spd)
>  	len = !(spd->info_size_crc & 0x80) ? 126 : 117;
>  	csum16 = crc_itu_t(0, p, len);
>  
> -	crc_lsb = (char) (csum16 & 0xff);
> -	crc_msb = (char) (csum16 >> 8);
> +	crc_lsb = csum16 & 0xff;
> +	crc_msb = csum16 >> 8;
>  
>  	if (spd->crc[0] == crc_lsb && spd->crc[1] == crc_msb) {
>  		return 0;
> @@ -96,14 +96,14 @@ int ddr4_spd_check(const struct ddr4_spd_eeprom *spd)
>  	char *p = (char *)spd;
>  	int csum16;
>  	int len;
> -	char crc_lsb;	/* byte 126 */
> -	char crc_msb;	/* byte 127 */
> +	unsigned char crc_lsb;	/* byte 126 */
> +	unsigned char crc_msb;	/* byte 127 */
>  
>  	len = 126;
>  	csum16 = crc_itu_t(0, p, len);
>  
> -	crc_lsb = (char) (csum16 & 0xff);
> -	crc_msb = (char) (csum16 >> 8);
> +	crc_lsb = csum16 & 0xff;
> +	crc_msb = csum16 >> 8;
>  
>  	if (spd->crc[0] != crc_lsb || spd->crc[1] != crc_msb) {
>  		printf("SPD checksum unexpected.\n"
> @@ -117,8 +117,8 @@ int ddr4_spd_check(const struct ddr4_spd_eeprom *spd)
>  	len = 126;
>  	csum16 = crc_itu_t(0, p, len);
>  
> -	crc_lsb = (char) (csum16 & 0xff);
> -	crc_msb = (char) (csum16 >> 8);
> +	crc_lsb = csum16 & 0xff;
> +	crc_msb = csum16 >> 8;
>  
>  	if (spd->mod_section.uc[126] != crc_lsb ||
>  	    spd->mod_section.uc[127] != crc_msb) {
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



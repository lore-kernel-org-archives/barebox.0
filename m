Delivery-date: Fri, 10 Jun 2022 10:36:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nza8W-009pgT-Tx
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 10:36:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nza8V-0008FS-Oi
	for lore@pengutronix.de; Fri, 10 Jun 2022 10:36:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a10SWXxI0v9j4BaPShqy5gANY6O0y1dOfmny5RsSnYA=; b=GQTQgY4bdc8O4FD1E01DKfV4V8
	ykram2SErIWnILWSQ7p60AbvwOGCBZbbB7Mpog/vYBW04hZbZ4x8zGr+bmJLL9CPbn88Skx2xuI5z
	F7PiI8xrQuirj4WtOCVDOm74Sewn033qApN5EBDlLeLbCJE+FLZE0kw2e971uivNEgAAt399wVbNF
	993Phwfb2DRf3mFqe2uHCT2RlhXtRJl0tbOhPkJUbwExTXtwtciE5XwsnQUeypmFssUn1MsDZ57O9
	4D+OuouHfjYwKU4tucjQIcD2Ow3mcnswqttjSilboNTyn+OGJXRjIiILsNfr0U8N8q6Lma9hvVisA
	6nvMAwWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nza7D-006p93-4A; Fri, 10 Jun 2022 08:35:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nza73-006p6Q-BD
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 08:35:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nza72-0007jo-17; Fri, 10 Jun 2022 10:35:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nza71-0001sh-Me; Fri, 10 Jun 2022 10:35:23 +0200
Date: Fri, 10 Jun 2022 10:35:23 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220610083523.GJ1615@pengutronix.de>
References: <20220609130936.3616309-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609130936.3616309-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_013525_464801_664B3304 
X-CRM114-Status: GOOD (  26.36  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/2] fastboot: always try barebox_update handler for
 bbu- partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 03:09:35PM +0200, Ahmad Fatoum wrote:
> So far, fastboot barebox_update code was only entered when
> filetype_is_barebox_image() returned true, a function exclusively used
> for fastboot. Align this with normal barebox_update from the command
> line by leaving the decision on whether the image is correctly to the
> barebox_update handler if the user explicitly targets a bbu- fastboot
> partition.
> 
> We keep the old check OR-ed to maintain backwards-compatibility for
> invoking barebox_update for non bbu- fastboot partitions.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v2 -> v3:
>   - no changes
> v1 -> v2:
>   - new patch (Sascha)
> ---
>  common/fastboot.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied (this patch), thanks

Sascha

> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index f8ed40c86e00..330a06f5a32f 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -673,7 +673,8 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
>  		goto out;
>  	}
>  
> -	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && filetype_is_barebox_image(filetype)) {
> +	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) &&
> +	    (filetype_is_barebox_image(filetype) || strstarts(fentry->name, "bbu-"))) {
>  		void *buf;
>  		struct bbu_handler *handler;
>  		struct bbu_data data = {
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


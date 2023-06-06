Delivery-date: Tue, 06 Jun 2023 11:47:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6THh-00Ct9r-OY
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 11:47:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6THf-0001ps-Cg
	for lore@pengutronix.de; Tue, 06 Jun 2023 11:47:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tsb8BJkQzKjyGHy2v0QlKAL+Q8Z4NDvx+FtUmlZuIHc=; b=dEQ5kOfzxlDRKE7QDq+EGJU4kf
	H1qzazvrxVCX+b3KXUaedXeb7Oj/7otDLk8CaWFBhIcT+bxtHzjX2tZH4sN2TaBf0YgPM3Fny573y
	lGsttG7a1+yk+0t/ZzOwwWh2oHGz+vcklMOy2TXfIzVpgAl3YrFLs/ICa1wcsabBGsg6ZUI9T1MP3
	xajIEAykOguJxt4d7CZ0LJRblth4ZKc47Y1Vmj6KJ2yG9qz+T7vNddb7LTDHfWyQ0BZXO3o9x3nGI
	FOqqTAW6l3v9d2Vc+RfIkGF/uDrNGk4TKu4tqqyTs9XuuaoOUZW3ISntxXTwEX/R+6uaAGoe1djwN
	4TjlILjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TGf-0014J5-1d;
	Tue, 06 Jun 2023 09:46:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TGc-0014Ht-0R
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:46:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TGa-0001hY-U4; Tue, 06 Jun 2023 11:46:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TGa-0004Ec-Jc; Tue, 06 Jun 2023 11:46:16 +0200
Date: Tue, 6 Jun 2023 11:46:16 +0200
To: Christopher Ebner <ch.ebner@commend.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230606094616.GA18491@pengutronix.de>
References: <20230605101105.485283-1-ch.ebner@commend.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230605101105.485283-1-ch.ebner@commend.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_024618_171558_6F628779 
X-CRM114-Status: GOOD (  24.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] partitions: efi: Continue partition enumeration on
 invalid pte
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 05, 2023 at 12:11:05PM +0200, Christopher Ebner wrote:
> The efi partition enumeration stops, if a partition entry is
> invalid or non-existent.
> Later partitions which would be valid are therefore not enumerated.
> This can be the case, eg. if a device with the following
> partitions is enumerated: p1, p2, p4, p5, p6.
> Skipping the invalid entry instead of exiting the enumeration fixes
> this problem.
> 
> Signed-off-by: Christopher Ebner <ch.ebner@commend.com>
> ---
>  common/partitions/efi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index ffdbd9a56f..0411a8b248 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -460,7 +460,7 @@ static void efi_partition(void *buf, struct block_device *blk,
>  	for (i = 0; i < nb_part; i++) {
>  		if (!is_pte_valid(&ptes[i], last_lba(blk))) {
>  			dev_dbg(blk->dev, "Invalid pte %d\n", i);
> -			return;
> +			continue;
>  		}
>  
>  		pentry = &pd->parts[pd->used_entries];
> -- 
> 2.25.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



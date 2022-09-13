Delivery-date: Tue, 13 Sep 2022 10:41:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY1Tc-003RGF-4J
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 10:41:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY1TZ-0004nh-Qn
	for lore@pengutronix.de; Tue, 13 Sep 2022 10:41:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2/wceoinvJt5lJ+bcHoqlxOJ+ZZf4XZzIZRbzBw4dfI=; b=DIss1Uut2ZfbWV/5Gv2Uye6x+A
	JItcREGMApxF6zYABiLkks1Dkz+iMR0PloIFZAOEGtD/SSwB3cNFu0p+nBSkDNe3minsP9wVMcSV2
	i5/Jv3CdZCXo4JVLMZcEHd7LgtSdWl7QNOv0Q6EWKTx7pGfrgSoTX5MDERi1030rPEg1flcZq61lH
	dM2bhR3pMVEvCRMrmjTYNqldaFV8Fsrlnur67XcwudTmBQlUe+6SFxdBCVicHYi6jmhrChG1ftOhQ
	oPPXWLxk7NNktqg/a3IlvxU0kcCNYcwPHmRjI5PIDgs5JOVVKCDI4YXIjjl5/m0fyEpgNpPNui4tV
	jTUckl8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY1RP-004Ude-Ps; Tue, 13 Sep 2022 08:38:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY1QY-004TvH-JY
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 08:37:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY1QW-0004Qw-6y; Tue, 13 Sep 2022 10:37:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY1QV-0004Wz-UB; Tue, 13 Sep 2022 10:37:51 +0200
Date: Tue, 13 Sep 2022 10:37:51 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ukl@pengutronix.de
Message-ID: <20220913083751.GE12909@pengutronix.de>
References: <20220811135804.271071-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220811135804.271071-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_013754_692107_AFA3D97F 
X-CRM114-Status: GOOD (  20.81  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: ubifs: remove always-false check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 11, 2022 at 03:58:04PM +0200, Ahmad Fatoum wrote:
> GCC correctly warns that two bit wide compr_type can't
> exceed or be equal to UBIFS_COMPR_TYPES_CNT (== 4).
> 
> Remove the check. The check is there in the kernel as well,
> but the warning is disabled there.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/ubifs/super.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
> index b48e21fae636..6a0074bd1a5c 100644
> --- a/fs/ubifs/super.c
> +++ b/fs/ubifs/super.c
> @@ -86,11 +86,6 @@ static int validate_inode(struct ubifs_info *c, const struct inode *inode)
>  		return 1;
>  	}
>  
> -	if (ui->compr_type >= UBIFS_COMPR_TYPES_CNT) {
> -		ubifs_err(c, "unknown compression type %d", ui->compr_type);
> -		return 2;
> -	}
> -

Although Richard decided for the Kernel to keep the check I decided to
take this patch for barebox. The warning is annoying and doesn't tell us
anything. Once this is solved in the Kernel we'll get the solution with
the next UBIFS sync.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



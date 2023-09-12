Delivery-date: Tue, 12 Sep 2023 10:40:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfywX-00CRUh-2r
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 10:40:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfywU-0006UF-Pe
	for lore@pengutronix.de; Tue, 12 Sep 2023 10:40:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6lQ1+/spAqTK0iMPsltxwNdwh9fruquwQFjsx/9ccRU=; b=uO8Iu5oX+NSvX7yRG2WBe6CQUq
	162DpJ0zNIxLmbPSpQWRCFFpRCMFe5kPknZDndPoVSkUkgkwUSgXwf7eghlg5RmwmHKeH1AWfs7oG
	HWf+UVGfaC0fRIO7Rr8f2yFRf/lJG2dEhAe2LNH1otqR0mgy9aucpITcOJrDp+bah3ertuzk+fEri
	qTZHiCt8iOYHHGoUND0qzui2PSodPC7cPxcZPUIwGHkpCEMIs5a50FmcGEv554t9nLCxnwr7YtYWN
	2Hc8M/6XS3PDOFv4WcMG/aHYtw+Nhm8BPAFb8goeL+BNDlHMxlQNFwmeB75Z+dKpS4MCBfbAjMwYy
	PRRNvMwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfyv7-002bSJ-0j;
	Tue, 12 Sep 2023 08:38:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfyv3-002bQt-22
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 08:38:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfyuz-0006Gg-Te; Tue, 12 Sep 2023 10:38:45 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qfyuz-005jnb-H2; Tue, 12 Sep 2023 10:38:45 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfyuy-005YQT-W9; Tue, 12 Sep 2023 10:38:45 +0200
Date: Tue, 12 Sep 2023 10:38:44 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230912083844.GQ637806@pengutronix.de>
References: <20230911122504.2720431-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911122504.2720431-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_013849_669242_EFCF1A75 
X-CRM114-Status: GOOD (  21.00  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: ext4: initialize variable to silence GCC
 false-positive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 11, 2023 at 02:25:04PM +0200, Ahmad Fatoum wrote:
> GCC complains about ino not being defined in some cases, which appears
> to be a false positive. Nevertheless, initialize it to the same fallback
> value used in ext4fs_get_ino, which is called below.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/ext4/ext_barebox.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
> index 93dc9b4b1471..df82b629cd05 100644
> --- a/fs/ext4/ext_barebox.c
> +++ b/fs/ext4/ext_barebox.c
> @@ -118,7 +118,7 @@ static struct dentry *ext_lookup(struct inode *dir, struct dentry *dentry,
>  				 unsigned int flags)
>  {
>  	struct ext2fs_node *e2dir = to_ext2_node(dir);
> -	int ret, ino;
> +	int ret, ino = 0;
>  	struct inode *inode;
>  
>  	ret = ext4fs_get_ino(e2dir, &dentry->d_name, &ino);
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



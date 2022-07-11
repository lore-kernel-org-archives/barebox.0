Delivery-date: Mon, 11 Jul 2022 10:25:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAoju-002F95-K2
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 10:25:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAojs-00077x-Oa
	for lore@pengutronix.de; Mon, 11 Jul 2022 10:25:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=231OiFw+kxcwvUYlzRTmU8q1q/WEZXAxulIEx8S8gCQ=; b=P6mkr1BnzW83yLjeK4Qyeassvd
	eT1aNTTsQT8g6N39HkHxQ4EpG0xnPEzgWBSijd3aGiaOTSMXSUj5J/MEqBxDnWATpHlpjGOKMx6XP
	KpveRIt1J7yc/qyrcJaBVbBsaKtN+DP8Sxv2pV30yDt5vPasM+QmUx1GcF5GwumFkHSsjdU1cayzw
	iZsPSaAbE+jhV5ZJSQgV2tRp0sLDTS7hVaki50+oMuoRFl/V1D7+onXcv3LvViiBoCsUpal4QRS6M
	OM8vmQY22SN8ckOW8qWm02eylcM20Mx7TNLOQ1QGLnYiL9Nxit99X1O15GnDw2/qHhO7pqHLIgkvu
	LtwAYLug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAoiU-00HBq8-4p; Mon, 11 Jul 2022 08:24:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAoiN-00HBmr-Sq
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 08:24:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAoiK-0006tb-Ot; Mon, 11 Jul 2022 10:24:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAoiK-0007u8-EP; Mon, 11 Jul 2022 10:24:20 +0200
Date: Mon, 11 Jul 2022 10:24:20 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Johannes Zink <j.zink@pengutronix.de>
Message-ID: <20220711082420.GL5208@pengutronix.de>
References: <20220708110012.410905-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220708110012.410905-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_012423_963328_1028EA97 
X-CRM114-Status: GOOD (  17.59  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] checkpatch: don't warn about %pe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 08, 2022 at 01:00:12PM +0200, Ahmad Fatoum wrote:
> We have been supporting %pe since commit 91084b450226 ("vsprintf:
> add %pe format specifier for printing symbolic error names").
> checkpatch.pl was still warning about this, fix that.
> 
> Reported-by: Johannes Zink <j.zink@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/checkpatch.pl | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 36e3d768f39d..dccc3c3fe79b 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -5981,7 +5981,7 @@ sub process {
>  				while ($fmt =~ /(\%[\*\d\.]*p(\w))/g) {
>  					$specifier = $1;
>  					$extension = $2;
> -					if ($extension !~ /[SsBKRraEhMmIiUDdgVCbGNOxt]/) {
> +					if ($extension !~ /[SsBKRraEehMmIiUDdgVCbGNOxt]/) {
>  						$bad_specifier = $specifier;
>  						last;
>  					}
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



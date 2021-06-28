Delivery-date: Mon, 28 Jun 2021 22:17:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxxh2-0006cl-7Y
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 22:17:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxxh1-0004Ig-DH
	for lore@pengutronix.de; Mon, 28 Jun 2021 22:17:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=50x3mKzeNWbR5j+GlVwKKIPj6JuMvqMm73DCkQqGpMg=; b=CDOSFuMgEzy/9YqcVybCPfnJrD
	O7xWswU8kEZnRBZWGRu661fJGk3yB2GxUpKhOV/1ECQOdsy035oBKU+wo7u71D2Z8L3kYqdvuAju/
	QM/Bh+AjnPWvJJUlkVX3jDJ7R+sAZxIpQn1AAcTeV1JUqhhxT6y5y82mbvrPGLP9QGfq40B1vNRyI
	1e8coOzBmQ+6aGo0L66k3KP0NXKsJS7/zNycDo/MBDCdYwJg+8b5nUzYYd8RuU3vTJ59r+Oqvu/Ov
	4itWOgkaLyqXz+T3U6pFUa5tRD8VKtYKNd1Pe+WXQTpYVdf3EjLvrG2SHfgIg1UMYPXR9dZTZRhZy
	qGVlhgzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxxft-0096o3-9b; Mon, 28 Jun 2021 20:16:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxxfo-0096ng-S6
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 20:16:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxxfn-00041a-LK; Mon, 28 Jun 2021 22:16:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxxfm-0004pl-W6; Mon, 28 Jun 2021 22:16:02 +0200
Date: Mon, 28 Jun 2021 22:16:02 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210628201602.GP9782@pengutronix.de>
References: <20210628063928.1083081-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210628063928.1083081-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 22:13:37 up 130 days, 23:37, 116 users,  load average: 0.05, 0.13,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_131604_945791_06B5A000 
X-CRM114-Status: GOOD (  22.98  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! sandbox: ship sample environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 28, 2021 at 08:39:28AM +0200, Ahmad Fatoum wrote:
> The sample environment contained a new line as its 4K+1th byte, when it
> should have been only 4K big. Drop the new line. No functional change.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  --- old
>  +++ new
>  @@ -254,4 +254,3 @@
>   00000fd0: 0000 0000 0000 0000 0000 0000 0000 0000  ................
>   00000fe0: 0000 0000 0000 0000 0000 0000 0000 0000  ................
>   00000ff0: 0000 0000 0000 0000 0000 0000 0000 0000  ................
>  -00001000: 0a                                       .
> ---
>  arch/sandbox/board/stickypage.bin | Bin 4097 -> 4096 bytes
>  1 file changed, 0 insertions(+), 0 deletions(-)

In accordance with Ahmad I dropped this one and the patch introducing
stickypage.bin. Handling binary files in git is fine, but unfortunately
it doesn't work with a patch workflow when it comes to integrating them
as a patch in a BSP.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


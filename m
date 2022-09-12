Delivery-date: Mon, 12 Sep 2022 11:17:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfZc-0024Xu-7h
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 11:17:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfZa-0002iD-Rm
	for lore@pengutronix.de; Mon, 12 Sep 2022 11:17:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qQfJOmykMvUuOhP8rTIFANrY8tcf2hJ8VRX964NqJIk=; b=lal/oCcnIlGo4fDh3SgzCEXpuu
	pzATQHO6HkyeUTFa3hGIf8IWY/9Sgth6KVBwLug+Z/A1yapEypG2IloRWcwJBehM+mj9yGl1y9TIP
	l1Ih7LWTxd7q4ec5ylfAUXx8r3qsy5D6/4IjgM0P3SKAz3O7qv2G8MswwmiPvX/aBl3B/Mmhn47P1
	2bUZAlqL5oaVAkYcSPNplYYL3xDPgN0Z2wiJXYhcTGIOOj3UmOEkxT47acd/yNsOBuMby1WoLNuoa
	rubQQvmmH7IEyfVrke+/X1DhP73Ru+MKKQCbv4fiy86PGSDqrpntrmdtmr5bJ2X0rFlh0FlkilS2o
	rqgl88Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfYB-008AAS-1s; Mon, 12 Sep 2022 09:16:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfY2-008A77-47
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 09:16:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfY0-0002Ng-Sj; Mon, 12 Sep 2022 11:16:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfY0-0007MZ-G2; Mon, 12 Sep 2022 11:16:08 +0200
Date: Mon, 12 Sep 2022 11:16:08 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20220912091608.GK24324@pengutronix.de>
References: <20220905100717.150557-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905100717.150557-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_021610_839208_8A6C847E 
X-CRM114-Status: GOOD (  20.34  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/2] of: overlay: avoid potential null pointer exception
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 12:07:15PM +0200, Michael Riesch wrote:
> Hi all,
> 
> The function of_overlay_fix_path returns NULL in certain error cases but
> of_overlay_apply_symbols (which is the only caller) does not check the
> return value. For broken overlays this may result in a null pointer
> exception. Fix this by checking the return value and inform the user
> what exactly went wrong. To this end, improve the error handling in
> of_overlay_apply_tree.
> 
> The thread [0] gives a bit more context.
> 
> Best regards,
> Michael
> 
> [0] https://lore.barebox.org/barebox/95ff064f-aa11-c1ce-9d41-e38f2040c565@wolfvision.net/T/#u
> 
> Michael Riesch (2):
>   of: overlay: improve error handling in of_overlay_apply_tree
>   of: overlay: avoid potential null pointer exception

Applied, thanks

Sascha

> 
>  drivers/of/overlay.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 
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



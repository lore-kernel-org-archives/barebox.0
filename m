Delivery-date: Mon, 04 Oct 2021 12:48:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXLW2-0004up-SX
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 12:48:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXLW1-0004lY-Vs
	for lore@pengutronix.de; Mon, 04 Oct 2021 12:48:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OLbyXTutEG1MiCHaiIVvOkryX+GVZtVsaouWjWosLeY=; b=KjW/mwGZ2FTbdKjC2ALKqYaEsV
	SfPAPL/YNbtVYhp5bQvYCMyPoCs5Vs9ur92AEaXiamnh2uZkJKEqn+nLc/pEa81EfM+XAx4rN7qAu
	Pz+8JmD8V+MZwMBeamICGYNN34u76ImNjOk4bAOTwU572LLdyAeUS0Y5nAr0SO6/Ex1RLSG/DbyVu
	sPR07jL1fpoM4RyTIPvs+xvRZmbraftgJMbNSoVy3onPSv7j116lbldfd28bsE5mX7upZynUrbHc2
	Rxu87ONmlM9dEBkTT6DgLWjmhlYiJ7eT9kkgX1a0/4NFybRN1mvASgQffIKTB7/oB0SiY/p8poFC5
	i1jmON4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXLUo-0060Uf-DK; Mon, 04 Oct 2021 10:46:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXLUi-0060Ts-60
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 10:46:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXLUg-0004bk-T8; Mon, 04 Oct 2021 12:46:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXLUg-00008a-Gn; Mon, 04 Oct 2021 12:46:50 +0200
Date: Mon, 4 Oct 2021 12:46:50 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211004104650.GS28453@pengutronix.de>
References: <20210913082957.364440-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913082957.364440-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:46:34 up 228 days, 14:10, 146 users,  load average: 0.82, 0.44,
 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_034652_250595_767108F7 
X-CRM114-Status: GOOD (  19.41  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] blspec: fix use-after-free of firmware search path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 13, 2021 at 10:29:57AM +0200, Ahmad Fatoum wrote:
> firmware_set_searchpath() is used to temporarily extend firmware search
> path when parsing boot spec files. It does so by first freeing the
> original firmware pointer and then storing a pointer to a copy of the
> new search path.
> 
> firmware_get_searchpath() returns this pointer without copying meaning
> that following sequence causes a use-after-free:
> 
> 	old_fws = firmware_get_searchpath();
> 	firmware_set_searchpath(fws); /* calls free(old_fws) */
> 	firmware_set_searchpath(old_fws);
> 
> Fix this by keeping around a copy of the search path.
> 
> Fixes: dfebbb0a5944 ("blspec: Set firmware searchpath")
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  common/blspec.c    | 4 ++--
>  common/firmware.c  | 4 ++--
>  include/firmware.h | 4 ++--
>  3 files changed, 6 insertions(+), 6 deletions(-)

Applied, thanks

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


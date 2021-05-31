Delivery-date: Mon, 31 May 2021 11:12:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndxq-0003hb-Ao
	for lore@lore.pengutronix.de; Mon, 31 May 2021 11:12:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndxp-0006ym-EN
	for lore@pengutronix.de; Mon, 31 May 2021 11:12:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NnCA96PtP7zJLlks4JEt9Sukss7KSEQHDJCXkIeGdcE=; b=z0539L9ID+fzVgsYUhPQTXpRoA
	JawB2AZYNnsOn/MI5rOkJ2i5wz0F+7mhKyOzRFKZ2jNfoQ1mbaEVsBGkdyF22lFms+MeNnuUDo0wB
	h2l6F8DpOI2fboX/xaCt8gAIr7R817HkOFA8ILdTEZtv6eAUxSAtLTQvlNHGUX6LFHBUcBvxWeeYz
	XZKh33eYOoi/MANN1Rr6b0jG2V9dAcq4URQqKalDRWcK7T36RD9oLAzvUkbdXSmCTCqvTiE34WTzV
	KMOy8fXltX5/Lea5hEY/U53RSihHzrXx+QMM3O56wU5LlvQ0mbOCk1f0OBTjRlMRBmkwNhhKQ47Zf
	QvGiSmqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndwj-00Bf6M-W4; Mon, 31 May 2021 09:10:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndwd-00Bf3O-Rf
 for barebox@lists.infradead.org; Mon, 31 May 2021 09:10:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lndwc-0006n5-Ij; Mon, 31 May 2021 11:10:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lndwc-0003Yj-9S; Mon, 31 May 2021 11:10:46 +0200
Date: Mon, 31 May 2021 11:10:46 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210531091046.GQ5211@pengutronix.de>
References: <20210531065924.18966-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210531065924.18966-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:09:57 up 102 days, 12:33, 134 users,  load average: 0.20, 0.16,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_021047_932797_183CC4FE 
X-CRM114-Status: GOOD (  19.14  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND] fixup! gpio: generic: sync with upstream Linux
 gpio-mmio driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 31, 2021 at 08:59:24AM +0200, Ahmad Fatoum wrote:
> Commit inadvertently brcm,bcm6345-gpio, wd,mbl-gpio, and ni,169445-nand-gpio,
> because "dat" was now requested twice. Fix this up.
> 
> Tested on Erizo.
> 
> Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> This was part of a series that needed some rework. The fix is relevant
> regardless, so sending it out independently.
> ---
>  drivers/gpio/gpio-generic.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Added:

Fixes: 8f9ef2d9ab ("gpio: generic: sync with upstream Linux gpio-mmio driver")

and applied, thanks

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


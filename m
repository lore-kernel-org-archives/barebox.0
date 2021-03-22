Delivery-date: Mon, 22 Mar 2021 06:04:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCjU-0002xa-DV
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 06:04:04 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCjT-00044M-4A
	for lore@pengutronix.de; Mon, 22 Mar 2021 06:04:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v2UjGMVz4eLDjf97GLCv4gPKO00xoY8lbu9/W2lmFc4=; b=I0x+NloT85JiC7DUSGvSzQoDW
	EzJHae+pXQtoyoWMKMTFh2unwh1VXXrobzYEENRozX7taABg0kziniQPXH5jm9tX+EwCIwC4mJxqV
	zULnX4+dSZCsnQ5X3h9J8NCNcAlu3XnDhJEz7XsH5rIlYx9TCTv7En+RsiXdsnrreGXzMQSyrVQe+
	hoUChIgTYksRB6t1DaiNaS6CQvJeMFTIqwM4o3j3DM6qKMWPDtgZeKBEFVBnXikNRq5drcJNo0ARj
	jRgxzOAREl1TjaMYkHHSYKAKS+aJc4JN4Tnd/WtXKfK7id/aqA+CYz+YdWuK1+onx0UEd7cYkbQ4y
	y5cmE4I9Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOCiP-00AuMM-Sj; Mon, 22 Mar 2021 05:02:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOCiG-00AuLL-HB
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 05:02:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCiF-00040M-3J; Mon, 22 Mar 2021 06:02:47 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCiE-0005Qr-QU; Mon, 22 Mar 2021 06:02:46 +0100
Date: Mon, 22 Mar 2021 06:02:46 +0100
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210322050246.GJ23724@pengutronix.de>
References: <20210319131016.2612134-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319131016.2612134-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:02:37 up 32 days,  8:26, 49 users,  load average: 0.57, 0.27, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_050250_318955_BC887F93 
X-CRM114-Status: GOOD (  23.41  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] net: phy: dp83867: cleanup and link downshift support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 19, 2021 at 02:10:09PM +0100, Michael Tretter wrote:
> Hello,
> 
> the dp83867 network phy supports link downshift, if a gigabit link cannot be
> established. For example, this can happen if the cabling does not support
> gigabit Ethernet.
> 
> This series enables the downshift by default (Linux also enables it by
> default). Additionally, the link status is read from the dp83867-specific
> register to take the possible downshift into account when reporting the link
> speed.
> 
> Furthermore, the series contains a handful of cleanup patches.
> 
> Michael

Applied, thanks

Sascha

> 
> Michael Tretter (3):
>   net: phy: dp83867: convert driver to spdx
>   net: phy: dp83867: fix checkpatch checks and warnings
>   net: phy: dp83867: remove useless call to genphy_config_aneg
> 
> Thomas Haemmerle (4):
>   net: phy: dp83867: simplify dp83867_config_init
>   net: phy: dp83867: remove explicit setting of cfg2
>   net: phy: dp83867: read status from PHY status register PHYSTS
>   net: phy: dp83867: enable link downshift by default
> 
>  drivers/net/phy/dp83867.c | 169 ++++++++++++++++++++------------------
>  1 file changed, 90 insertions(+), 79 deletions(-)
> 
> -- 
> 2.29.2
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


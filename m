Delivery-date: Tue, 09 Aug 2022 08:49:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLJ3r-00H1FU-A2
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 08:49:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLJ3s-00011C-1m
	for lore@pengutronix.de; Tue, 09 Aug 2022 08:49:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8IDUPLsCrobva81yMhVV+ScQ0IiYubfW2i3wW9FNivs=; b=uzWE38NZhcFlESe1x81TMLjovf
	4KoYiwbNjdbc+GI6s4/WXbhWdgGB0M1t8sv9cR30VaX2Pd9kmZn072QtCE6LmbAamMXUU0/igKZNE
	B5BUQ6XAgATUNrOctNS25Qsepos3wbETRvJ9PTtlBOygb3Wiz5v4k95zQX56KXHcrQj3rR/Vgb5zc
	3bmAlvWDvqcl6KGD0P5jWk39S8zXpbewswIEonjLzO7Xgfzawl44VrA7lfYi4d0UKZ40RGgv3ER6B
	YvPd6DpZQUDMEXCp8IHX+YIbq/hVNscJan4pPfXDEWq4qeX8Y2n85PtsdzS/5fz/Rarhokshq6qd+
	GmpIz1Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJ2R-0025Ou-6L; Tue, 09 Aug 2022 06:48:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJ2M-0025NO-5M
	for barebox@bombadil.infradead.org; Tue, 09 Aug 2022 06:48:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=8IDUPLsCrobva81yMhVV+ScQ0IiYubfW2i3wW9FNivs=; b=BCM5/Zfjv4ZOLJvtZOC9GjnFCf
	64g7Q4y11cDHsKJTou7YPQrCA2S8oe5lPAe05zjzccH6e8UBpkQ94TDfOCeZxs2L/4RRRAq31ZGdj
	4dq4fUl6VEROvXXJYahJG/7KphgzVqGxYN/gdnq9dm/G1XVGX8EBOGVmyqsFlZNxggZliM1044tws
	uhXYc2LyqsdX5LXkUEAa0NLS3M3gS2Ua88JTCnSVXyXR2U3qt2wNpBK756iv2UfMAvKP6PwUjMKm5
	vNcW21Ms+wezmWR60rJ2JY2CJyg3asrxQn1gSOHeuYWUD709BBMp5k4nFR9VZEHSdSTU9jmP0dqQY
	L0amY6Kw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJ2H-000PI0-IJ
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 06:48:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLJ2D-0000xt-S2; Tue, 09 Aug 2022 08:48:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLJ2D-0008W5-AZ; Tue, 09 Aug 2022 08:48:13 +0200
Date: Tue, 9 Aug 2022 08:48:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220809064813.GE31528@pengutronix.de>
References: <20220720133100.13580-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220720133100.13580-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_074817_845866_2BB779B4 
X-CRM114-Status: GOOD (  14.34  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/7] e1000 and rtl8169 drivers fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 20, 2022 at 04:30:53PM +0300, Denis Orlov wrote:
> Denis Orlov (7):
>   net: e1000: remove superfluous allocation check
>   net: e1000: properly read/write MDI registers on 8254x cards
>   net: e1000: do not actually acquire/put swfw_sync on 8254x cards
>   net: e1000: configure tx/rx and rctl in open() instead of init()
>   net: rtl8169: properly map rx/tx buffers for dma
>   net: rtl8169: enable pci device bus mastering on ifup
>   net: rtl8169: free allocated memory on halt()
> 
>  drivers/net/e1000/e1000.h |  3 +++
>  drivers/net/e1000/main.c  | 44 +++++++++++++++++++++++++++------
>  drivers/net/rtl8169.c     | 51 ++++++++++++++++++++++++++-------------
>  3 files changed, 73 insertions(+), 25 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Wed, 23 Feb 2022 09:16:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMmor-007ThM-B0
	for lore@lore.pengutronix.de; Wed, 23 Feb 2022 09:16:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMmop-0001QX-04
	for lore@pengutronix.de; Wed, 23 Feb 2022 09:16:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dx93KTmy/2RnAQo+I0w8mVva+oZYKYAtsadeyK512zk=; b=J5PECQq/FDLsji
	9+LAgyBPctmPS71s1wPYxYVjofANWn0D8T6pnrK3CHJndtZU1H/8H4GaY0QhaxCdvIpE4NMZF2O/4
	kChlkTVoA7UirtebMx01YjfS6DxzUz+m7uvpffytBT0a4P1my8vzONbOA00ym2zhPiNE5/EI0WosO
	bG/trpk1TuFYIPqb1NoeXrvmgzXTYht2yNqAeG2c7bSeipHK9Qmp8eW+ApVuap/Zxmy0pwUHu0Kra
	nwSF6vxGeiMDOdD32oeCtDqiZyL74bixGJS6CaCD6qtH+IIGgw9KGx6v5kvjKtrW6nJpGg2HHeemG
	U8koja+Y6WqMtugi1Rbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMmn5-00DDui-BH; Wed, 23 Feb 2022 08:14:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMmn0-00DDu5-29
 for barebox@lists.infradead.org; Wed, 23 Feb 2022 08:14:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nMmmw-00016t-KS; Wed, 23 Feb 2022 09:14:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nMmmv-0004J9-Bv; Wed, 23 Feb 2022 09:14:17 +0100
Date: Wed, 23 Feb 2022 09:14:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Graichen <michael.graichen@hotmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20220223081417.GK9136@pengutronix.de>
References: <AM9P192MB08704D48582CC36E5B0CEFFBAB3A9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <bde9d08d-43da-c3eb-6362-09c33ab8e172@pengutronix.de>
 <AM9P192MB08709FA612A57392AE63B854AB3B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM9P192MB08709FA612A57392AE63B854AB3B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:10:01 up 74 days, 16:55, 82 users,  load average: 0.06, 0.18, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_001422_122194_526FB2C4 
X-CRM114-Status: GOOD (  20.24  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Read Barebox Infos from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 22, 2022 at 11:57:59AM +0000, Michael Graichen wrote:
> Hey Ahmed and Sascha, 
> 
> Thanks for your reply. 
> 
> This is all meant to work with devicetree support. Not x86/efi systems?

The place where pstore lives can also be described on the kernel command line,
so I think it should work there as well. I don't know how to pick a
suitable memory address though on x86/efi. The initial pstore support in
the kernel is from Intel, so I think it really should work on these
systems. Whether the all the necessary pieces are also in barebox is
another topic :)

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


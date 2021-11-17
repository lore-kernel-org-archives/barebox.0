Delivery-date: Wed, 17 Nov 2021 08:51:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnFjE-0006O9-SW
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 08:51:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnFjE-0005Ar-1Z
	for lore@pengutronix.de; Wed, 17 Nov 2021 08:51:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YDiZkdlDVgQJsZ2uw+5WimDTGYolrFh48ySEn/tlX7U=; b=YK8ySnEZ8V5kFsKTcpVriZe1qq
	qC2GFtde7Q7Bg7A3WeDEBsR60Y/bnxD9L3bHrnT5zWUBRb4xvKh2T00L5nxgnFQ6LxxQyCrjwSbkD
	pH/Mn2U0c5YQzdI3LdMl9xIZ8ApbReZsZt6Tp4INOl70o9JmZxzXR78mNssFTlhr3rmqNbTD2R/tw
	A5oY+xUxrTKBnimwSX6tBBF913P63cIVARKIHplrUt8KEgeaRyM3Isq7ZC0eQaHFqjX8bXla0VfU9
	eAmucfn0BQ3AUJFG5xtiiIU9Zh1M1gnfYf5YLGrMlRTNKcTWMtfS8TBLFV7vkZTAtpLkANKfQABan
	57W8VcxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnFhx-003rSt-D5; Wed, 17 Nov 2021 07:50:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnFht-003rSF-19
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 07:50:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnFhr-0004sm-FJ; Wed, 17 Nov 2021 08:50:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnFhq-0006lJ-Or; Wed, 17 Nov 2021 08:50:10 +0100
Date: Wed, 17 Nov 2021 08:50:10 +0100
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20211117075010.GD25697@pengutronix.de>
References: <20211110104530.980192-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211110104530.980192-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:49:22 up 272 days, 11:13, 112 users,  load average: 0.00, 0.05,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_235013_099887_D45BFE2B 
X-CRM114-Status: GOOD (  21.92  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/1] arm: rockchip: add support for the quartz64 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 10, 2021 at 11:45:29AM +0100, Michael Riesch wrote:
> Hi all,
> 
> This patch introduces support for the Pine64 Quartz64 board that features
> the Rockchip RK3566, a reduced but largely identical version of the RK3568.
> 
> Please note that the corresponding board device tree is not yet available
> in barebox. It is going to appear in Linux v5.16-rc1 and will be synced
> shortly afterwards (hopefully :-).

DTS changes for v5.16-rc1 are now in barebox and so I merged Quartz64
support. I also added a patch enabling this board in
rockchip_v8_defconfig.

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


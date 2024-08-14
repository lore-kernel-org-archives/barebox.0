Delivery-date: Wed, 14 Aug 2024 12:44:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBUU-009Vep-1E
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 12:44:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBUT-00079h-PX
	for lore@pengutronix.de; Wed, 14 Aug 2024 12:44:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hVRv07aaTN93tG+oSPaZhIXLoUVp1PWt/nwYmTfQxKA=; b=Rupzgt4N+yH6sWnOHUvJq02TCc
	MyLPEeBrnAHs8yiHrs4gyWRL/qPnbJMrsrWxIYofIbcLH+pVxZXMSwE7m4mBWY03j8Xi7/1ddknGn
	SHNRMhOQ/ofXxcmm6NEhrSo1RmZ3B/cmJgAIsdcgeg2TjOGnIG+/j+ybwhdBus8+BF5TzKYVnX7kW
	CwbIpzx50sGtD/pgwORgC/aWR7V1lG5FFu9Z/8UEkpUY9KFLpopOCZd2Jd9/OekNZ9l92zXIaRWRG
	b+Vghi6wuDoY0Lwer+F8Odq0TSJfsqZSHKBZkY5DIrxB93WypCtxnh03xcUJZCYt67XMd3mvWXD3A
	05psGLdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBU1-00000006fGP-1db5;
	Wed, 14 Aug 2024 10:44:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBOt-00000006ddy-0ECn
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 10:38:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1seBOr-0006Ti-OT; Wed, 14 Aug 2024 12:38:41 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1seBOr-000L9E-AP; Wed, 14 Aug 2024 12:38:41 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1seBOr-002WT8-0i;
	Wed, 14 Aug 2024 12:38:41 +0200
Date: Wed, 14 Aug 2024 12:38:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Yann Sionneau <ysionneau@kalrayinc.com>
Cc: jvetter@kalrayinc.com, jborne@kalrayinc.com
Message-ID: <ZryJMR2x7pUzlg7F@pengutronix.de>
References: <20240813124408.2569-1-ysionneau@kalrayinc.com>
 <172362517796.1290283.16743123284393024894.b4-ty@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172362517796.1290283.16743123284393024894.b4-ty@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_033843_173390_EF536E83 
X-CRM114-Status: GOOD (  15.71  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/3] kvx: add qemu dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Aug 14, 2024 at 10:46:17AM +0200, Sascha Hauer wrote:
> 
> On Tue, 13 Aug 2024 14:44:06 +0200, Yann Sionneau wrote:
> > Add qemu dts that will mostly be used to run test in CI.
> > 
> > 
> 
> Applied, thanks!
> 
> [1/3] kvx: add qemu dts
>       https://git.pengutronix.de/cgit/barebox/commit/?id=b5e4def4741e (link may not be stable)
> [2/3] ci: container: add qemu-system-kvx
>       https://git.pengutronix.de/cgit/barebox/commit/?id=e7d4174db5f2 (link may not be stable)
> [3/3] ci: add support for running basic tests on kvx arch
>       https://git.pengutronix.de/cgit/barebox/commit/?id=61749d3e754c (link may not be stable)

I had to revert these again because githubs response on this is:

You are running out of disk space. The runner will stop working when the machine runs out of disk space. Free space left: 0 MB

I think our possibilities are either find a way to reduce the image size
or to insert $$$ into github.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



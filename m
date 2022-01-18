Delivery-date: Tue, 18 Jan 2022 09:10:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9jZn-005OIq-HT
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 09:10:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9jZm-0006sc-BU
	for lore@pengutronix.de; Tue, 18 Jan 2022 09:10:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qh+N5Nb2k90L77dr+3nJWtqh/sfEt0NO+XEqNNFdkGY=; b=Xmk50HBXJ6YFtarl0Evf1ydaie
	masHf9aCF0KU8jmy4jse3nLXVlmDHtJwl2i5fZ7/kH9oCkfGF5j2j6m01abH5/DAvnQMsq4kixoM2
	+W98Gv9wo7nQbUEZH7hhRPi9ffeygf+QpdoBT7Ju+bBogZLA2DW2/gWXk6hZwkjLffQdzxJA58Hvx
	bTTyI6AvnoTLToj17wyOciJ1REbgdM2/3xnfIWHwkxrQUzn4EMs7UbNuXDk73W1taJOUmXLYk0svl
	o3TLOMa7lKb7gv+W8tsUJNS3G4mDfFfaegTNOieKQdtK0aZ8llgyvEHJmRezgYNbjsNvggXc7bfNS
	ifL4zMMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9jYP-000iPa-Sv; Tue, 18 Jan 2022 08:09:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9jYK-000iPC-Ld
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 08:09:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9jYI-0006d1-VQ; Tue, 18 Jan 2022 09:09:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9jYI-0007sY-4N; Tue, 18 Jan 2022 09:09:14 +0100
Date: Tue, 18 Jan 2022 09:09:14 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org, Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <20220118080914.GF23490@pengutronix.de>
References: <20220117221917.26970-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117221917.26970-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:08:52 up 38 days, 16:54, 75 users,  load average: 0.16, 0.33, 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_000916_789171_A6E0CCD2 
X-CRM114-Status: GOOD (  20.99  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/11] kvx arch update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 17, 2022 at 11:19:06PM +0100, Jules Maselbas wrote:
> This series has updates for the KVX architecture, with some fixes and
> with the addition of kvx specific drivers for the otp-nvmem and socinfo.
> 
> With this series it is now possible to run barebox on qemu, however
> our qemu port isn't upstreamed yet, it can still be compiled. To do
> so you will need to check this git repo [1] and follow the build
> instructions.
> 
> To compile barebox for the KVX architecture there is a pre-built
> toolchain that can be downloaded here [2]
> 
> The following commands should build an run barebox on qemu:
> $ PATH=<path/to/gcc-kalray-kvx-v4.7.0-cd2>/bin:$PATH ARCH=kvx make generic_defconfig all
> $ qemu-system-kvx -m 1G -nographic -kernel barebox
> 
> [1] https://github.com/kalray/qemu-builder
> [2] https://github.com/kalray/build-scripts/releases/tag/v4.7.0-cd2

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


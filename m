Delivery-date: Wed, 22 Mar 2023 08:39:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pet45-00ABSX-BC
	for lore@lore.pengutronix.de; Wed, 22 Mar 2023 08:39:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pet44-0003No-Vl
	for lore@pengutronix.de; Wed, 22 Mar 2023 08:39:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p761cnUDt6UgonYAmvhthSXZOFkzVKjUppffBswkn5k=; b=X2rrjeEx+bjkVz6HKG5BgH1P4y
	E55hFbQkt+Pa81sTcOzcJSKwRc6FkApqYb+WXvqk0SD2k1WawTiHQjaVarOul1eXd1YwHMfaInlqR
	0GPMtmBNZ9SSapQFnUJegB1s50VBsHJy3T1pMKz+5Co/jbZ6hJdivUyYH9lrrLvR4NR6GXeH/SQL+
	8+Hl4WKoZ+R/YWDIAtAf86egrbZiR9MWObzyDR89fpWMQkAPpfDFoLnBYsicdRVDIFux7zLwBGPOr
	9nFaBHGDP8vUCcX1qgkya1vbHzt9sKYYdQIWRWwezIIJI09swC41agOmFjGVqcDLHZleEKaHTrrm+
	UvAnWpww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pet2l-00F1pW-03;
	Wed, 22 Mar 2023 07:37:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pet2g-00F1nk-2y
	for barebox@lists.infradead.org;
	Wed, 22 Mar 2023 07:37:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pet2a-0003HT-6U; Wed, 22 Mar 2023 08:37:48 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pet2Z-0003vT-JQ; Wed, 22 Mar 2023 08:37:47 +0100
Date: Wed, 22 Mar 2023 08:37:47 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Wolfram Sang <wsa@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
Message-ID: <20230322073747.GM7446@pengutronix.de>
References: <20230319154909.24047-1-wsa@kernel.org>
 <ZBdZxskg+JPzUY0t@ravnborg.org>
 <ZBd+Z+qn9rjuvp6S@sai.fritz.box>
 <20230321085848.GI7446@pengutronix.de>
 <ZBnnbU1SUkNm4ryz@sai.fritz.box>
 <ZBn/ShAwKik7TdvZ@ravnborg.org>
 <ZBoZUZaqUVwlxH/B@ravnborg.org>
 <ZBokvckXSyV6/ihp@sai.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBokvckXSyV6/ihp@sai.fritz.box>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_003754_975420_AC15A16E 
X-CRM114-Status: GOOD (  21.26  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] mtd: nand: atmel: legacy: fix boot on USB-A9G20
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 21, 2023 at 10:42:21PM +0100, Wolfram Sang wrote:
> Hi,
> 
> > > It is a direct replacement for at91bootstrap and loads barebox as the
> > > next step bootloader.
> > The above is entirely correct - as the barebox variant supports booting from
> > SD card only, where at91bootstrap support additional boot sources.
> 
> So, I quickly built the bootstrap for A9263 and it was ~71KB in size.
> This is OK for the A9263 with 96KB of SRAM, but the A9G20 only has
> 2x16KB. So, I think I'll need to update at91bootstrap to unbrick my
> device. at91bootstrap is ~4-5KB from what I observed. But thanks for the
> inspirtation!

The barebox way to do that is to put an SD card driver (or whatever your
bootsource is) into the PBL, then let the boot ROM just load the PBL
part of the image. In the PBL configure SDRAM, use the SD card driver to
load the rest of the image (or the full image again) into SDRAM and jump
to it.

That might be out of scope for you right now as it requires some more
work.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



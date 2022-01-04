Delivery-date: Tue, 04 Jan 2022 11:53:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4hRG-00AfkM-Gi
	for lore@lore.pengutronix.de; Tue, 04 Jan 2022 11:53:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4hRF-0008S3-0w
	for lore@pengutronix.de; Tue, 04 Jan 2022 11:53:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W0dNr0LzdbaDVbXLZugyFPXOjCmzTvXAQSqBd5CHZdk=; b=kBgoe3HL1OyGdAJksHNXT4UnOy
	H1NXY+pTJ7MraQfJmpKdoXPdv0w8TXbSR4BhR/Np+SMcfNSSd39ZSyDm1oEunuvNTpIVkSrT5ktmN
	QRiB0f7tpbYZ3ZKl5/ZTPqgVIjnUEKll0MRLf2oYgVB40sfarO9URK9N//RLImaeD4lGVGu7LS2UL
	IBlycOrdip4pVa/9mQcYV7zT88vxfz43VFh4Kw6KNN3GshwaFO2ZFP/fboGLl/tR0m1JIU8cNk8Jp
	gcLOIbsFoF6PlW6c7dcFD6t+BDods0RgpHpj+4KKXRzu/uwSX+0zaIhNEBoTfC0toxv45sbO9BiHx
	Nlj9hfCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4hPh-00BDJl-G1; Tue, 04 Jan 2022 10:51:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4hPb-00BDIM-4C
 for barebox@lists.infradead.org; Tue, 04 Jan 2022 10:51:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n4hPX-0008IB-Mf; Tue, 04 Jan 2022 11:51:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n4hPX-00026Y-6r; Tue, 04 Jan 2022 11:51:23 +0100
Date: Tue, 4 Jan 2022 11:51:23 +0100
To: Frank Wunderlich <frank-w@public-files.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220104105123.GI6003@pengutronix.de>
References: <trinity-c26cce2b-95ff-45dc-9d60-3a1eebfa088b-1641285545326@3c-app-gmx-bap27>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-c26cce2b-95ff-45dc-9d60-3a1eebfa088b-1641285545326@3c-app-gmx-bap27>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:41:09 up 24 days, 19:26, 75 users,  load average: 1.26, 1.19, 1.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220104_025127_198321_68AC4E22 
X-CRM114-Status: GOOD (  22.00  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: barebox - rk3568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Frank,

On Tue, Jan 04, 2022 at 09:39:05AM +0100, Frank Wunderlich wrote:
> Hi,
> 
> i have a prototype rk3568 board (bpi-r2-pro).
> 
> is it possible to flash only barebox instead of uboot? in documentation i found only "creating SD-card", but i dont want to break existing partitions.

The rk3568 has a fixed boot order of eMMC, SD, USB. The EVB board has a
pushbutton to shortcircuit a pin of the eMMC. When pushed, the eMMC
becomes invalid and the board boots from SD card. I could imagine it's
the same on your board, so you could create an SD card and boot from
that. Other than that an image that starts from SD card can also start
from eMMC, the images are the same.
You could also start from USB, the barebox tree has a rk3568 USB loader
tool.

> 
> https://www.barebox.org/doc/latest/boards/rockchip.html#rockchip-rk3568
> 
> says it starts from sector 32, my first block for uboot (idblock.bin=spl+raminit) starts at 64, full uboot in partition at 8M.
> 
> As it differs a bit from evb can i add new dts like in uboot?

Yes, you can. See
https://www.barebox.org/doc/latest/devel/porting.html?highlight=new%20board
for more information how. Also have a look at commit b9f1bb8563ba
which adds the EVB board support. You'll have to do the same for your
board.
One thing you'll need is a sdram-init.bin file. You can extract it from
your BSP.

Regards,
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


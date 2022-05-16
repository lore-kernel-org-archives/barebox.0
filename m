Delivery-date: Mon, 16 May 2022 10:09:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqVnQ-00FLiN-RY
	for lore@lore.pengutronix.de; Mon, 16 May 2022 10:09:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqVnP-00012l-FP
	for lore@pengutronix.de; Mon, 16 May 2022 10:09:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2X8Jw6hsOIHJAvovGYoRttDTlDxsPpMV7erImaRWATw=; b=4zuihoH5YHTaZA
	Jt99GTyUdNoTdrE4dqofjqTEWqj5ZkILSm2gzF9slNLFT2hQbWTbZot3yIQP5iF+j6epiJ9aNxzqj
	izaV3aKGIKCx5bXVxGinxSuskRpUd9l3STqtCz14XHzeoYzgGSwohmKU94FRYJD6GTt1TjL6Xnqct
	wmak8f2rG9JOCGbucLGCrnDiNIYPyoX5pWEduIsWeKpB69cCqvKwcd3NWcD8Cb8aAhUHiNjseisx+
	HGD+rTcrkpVi7QFm1J9wCMe6gOpkdjRwMrViRptXXaMjO62jVNTGyeEHDrkZylkh1RDpO3ReZ0qLb
	OMf81xfEPJUWSspp74CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqVlt-006b6f-01; Mon, 16 May 2022 08:08:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqVln-006b5i-K6
 for barebox@lists.infradead.org; Mon, 16 May 2022 08:08:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqVlh-0000vx-UT; Mon, 16 May 2022 10:07:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqVlh-00022S-Br; Mon, 16 May 2022 10:07:53 +0200
Date: Mon, 16 May 2022 10:07:53 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Matthias Fend <matthias.fend@emfend.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220516080753.GG25578@pengutronix.de>
References: <1607cab4-d2d3-b5be-99f1-f9f7347d1888@emfend.at>
 <20220513110055.GE25578@pengutronix.de>
 <a73d1cf7-7548-3439-4369-8da061fad5ca@emfend.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a73d1cf7-7548-3439-4369-8da061fad5ca@emfend.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:04:43 up 46 days, 20:34, 76 users,  load average: 0.65, 0.68, 0.47
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_010759_696782_D58BF863 
X-CRM114-Status: GOOD (  33.66  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: One barebox image for multiple boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 13, 2022 at 02:10:32PM +0200, Matthias Fend wrote:
> Hi Sascha,
> 
> Am 13.05.2022 um 13:00 schrieb Sascha Hauer:
> > Hi Matthias,
> > 
> > On Fri, May 13, 2022 at 10:55:02AM +0200, Matthias Fend wrote:
> > > Hi,
> > > 
> > > I'm looking for a solution to support multiple boards with just one barebox
> > > image. The few core components that are relevant for barebox are the same on
> > > all boards, so that the same barebox image runs on all boards. It is
> > > possible to dynamically detect the board type inside barebox, but as this
> > > requires some infrastructure it is not possible during lowlevel init. So
> > > basically Barebox should boot with a minimal core device tree, detect the
> > > board type and then use the corresponding device tree of the detected board.
> > > Something similar to arch/arm/boards/stm32mp15xx-dkx/lowlevel.c but not at
> > > low level.
> > 
> > Do you even need the full device tree in barebox? The minimal core
> > device tree might be enough for barebox and only the kernel is then
> > booted with the full device tree.
> 
> If there is no trick to changing the used device tree at boardlevel init,
> then this might be a possibility.

Replacing the live tree after it has been partly probed already is
dangerous and barebox is not really prepared for that.

> The core device tree might not be as minimal then and in exceptional cases
> minor fixups in the board code will be needed, but I think it could work.
> 
> In such a case, how should one ensure that the appropriate blspec entry is
> booted? Maybe by simply replacing/updating the compatible string in the live
> device tree after the board was detected?

As it happens Oleksij has just introduced of_prepend_machine_compatible()
exactly for this usecase. You can find it in current next branch.

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


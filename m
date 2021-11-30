Delivery-date: Tue, 30 Nov 2021 11:28:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0Nf-0002yq-SH
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 11:28:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0Ne-0000KX-Ux
	for lore@pengutronix.de; Tue, 30 Nov 2021 11:28:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O9DWJQJjaY2/lIKJYu/bot+54QdajDUNrof03hixOD0=; b=PYiq0+SE0jQMOi0shICr8PyP24
	ouFQtYyu3r9/PdSAMJArk+kKkJOVSIR8R5+Y0yRZDnP7onxZ7t2k17W6wGwRYCO3Rlqst/6FL6mjg
	JFHFhNdnRAIvMyFak5/ihf6lq8JLDfGWeGtKvdoaLUPTVRrecTiP3MSF/Tv4LheTQ/e/X3PJC5fOw
	qzi1i9W4tdKIGIL/YW8KX9YBvIGQ6WrHYdGuW/6ZNH8Gky7Mcq1u40mABtpWj1UJKWShpO/wVu9E+
	xvZavQutGB56AM3kTdrnS6w7TDHcdEy9zbb9VwFTKKaDolZl/mR5cdTDKonc+ixIGkx+t61l3tMaf
	DVA/tJHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms0MH-004bov-Og; Tue, 30 Nov 2021 10:27:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms0Es-004ZEz-9M
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 10:19:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ms0Eq-0007Wn-DJ; Tue, 30 Nov 2021 11:19:52 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ms0Ep-0008FD-Qi; Tue, 30 Nov 2021 11:19:51 +0100
Date: Tue, 30 Nov 2021 11:19:51 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211130101951.GO28260@pengutronix.de>
References: <20211129080356.2025369-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211129080356.2025369-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:19:36 up 285 days, 13:43, 144 users,  load average: 0.21, 0.17,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_021954_389842_A81C5E11 
X-CRM114-Status: GOOD (  14.80  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: devinfo: Omit parent if direct descendent of bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 29, 2021 at 09:03:56AM +0100, Ahmad Fatoum wrote:
> In that case parentage adds no extra info, so we can just omit it.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>

Applied. thanks

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


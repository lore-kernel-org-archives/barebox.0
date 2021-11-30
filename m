Delivery-date: Tue, 30 Nov 2021 11:20:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0Fe-0002gf-6w
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 11:20:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0Fc-0007ij-Vc
	for lore@pengutronix.de; Tue, 30 Nov 2021 11:20:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5DHz/0FuKLaYESKLPc2gFQuEpaQ1vtwNWj+26t14jtc=; b=HJ7zIm1Yt0pBDbemNq479JfTre
	Fd2Doxi/GobXVY6b63urF3r1gwsBrj6OUdKiBsTLgdR4VeganqdH684KyYspejAdfwd/ENrAe2+9K
	E0YDmXuWo0d+/ZmfeX7bXaIX/2U/UOwSoM7bN2GvBp6PbRoZ+C+FmuRU6PJUxgS1xFkW2SgggyvgD
	Wynq0yG7O/Y0XKS6kgFsj9WCJoHWKudf/hXHrxJnMb9zST132GMlXmy1L3D5Tgbx/1Otg6Mbxpw5v
	z1TY1yq7iYO9mC6dFujFd5rxsLJYm+4QvkJhixxZ9NlP6f7WQmuo+rKJs2aPN8Fq4OiwmtXxpH2Fy
	fxRObVtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms0DY-004YYj-Cw; Tue, 30 Nov 2021 10:18:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrzua-004Sk5-3M
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 09:58:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mrzuX-0004cG-0V; Tue, 30 Nov 2021 10:58:53 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mrzuW-0005cv-No; Tue, 30 Nov 2021 10:58:52 +0100
Date: Tue, 30 Nov 2021 10:58:52 +0100
To: Holger Assmann <h.assmann@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211130095852.GL28260@pengutronix.de>
References: <20211129124545.14171-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211129124545.14171-1-h.assmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:58:35 up 285 days, 13:22, 143 users,  load average: 0.13, 0.13,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_015856_186998_0EE3BE1E 
X-CRM114-Status: GOOD (  20.98  )
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
Subject: Re: [PATCH v2 0/2] fs: jffs2: remove slab cache substitute with malloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 29, 2021 at 01:45:43PM +0100, Holger Assmann wrote:
> This series aimes to handle a bug in the Barebox jffs2 driver where the
> system crashes once a second unmounting is performed when more than one
> jffs2 file system were mounted at the same time at one point.
> 
> - The first patch "introduce reference counting at probe" solves the
>   initial issue.
> 
> - The second patch "remove unnecessary slab cache structure" performs a
>   cleanup on the respective code with the opportunity for simplification
>   being taken.
> 
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> 
> ---

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


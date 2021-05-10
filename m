Delivery-date: Mon, 10 May 2021 12:31:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg3C6-0002uD-O4
	for lore@lore.pengutronix.de; Mon, 10 May 2021 12:31:22 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg3C5-00060u-Pv
	for lore@pengutronix.de; Mon, 10 May 2021 12:31:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r0FQDxpbThrixnE4uUUWhryxUYQcP1VYo3Konf6vy1M=; b=pxhhDSncFUjrni6LfWVyKykrL
	AbFMsfogrw+/iP8ibqP1MQiPyIY+mAjVH69AeZMHRqh0rtxyqiXisOWSh5xTNF8l74rOpLcvE/KRh
	J+EJjGFT/HsOEWOdV4jYEFZm51ePIjBWw2B8XbYRppm39BYJ1H71FRiBE6gizCgHz2JGelJJcVNXr
	C20MK4MEXMz0L5DtuiM3Flp/6bx6hDlAwmk2lkW7G+PUVE7k9xGcgJ/xoKtk6sF0XpudZNnMcGlfA
	aaQdl+74c+4AlDP2z9Xzpkl9Qw0rb0q5HFN4YlOKyxTIiZc4EpkCYhUsV13vXgyGknOhT3mJ2GaTL
	/I+9SCn6w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg3Aq-00DwLd-MX; Mon, 10 May 2021 10:30:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg37D-00DvhA-Vs
 for barebox@desiato.infradead.org; Mon, 10 May 2021 10:26:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BU18S0cV5S5U6eCGltWOJk04H6y9rPlWx5EtYlI1Z5Q=; b=KPjjMgaN0wFA5ELvf/x+Feq4iQ
 lxNN+h6x7HsQu2txEr93qPcBugMFvBLrTr3W5lgyCFt0gtnNLauCn6ZHvFutjSdrBripitd5Nv3IY
 aDebupAtfq7IKI4kNPiTgVFQKmPwBN0GKTFZxkRV9G31pCFAAykEEnJD6zU1zqpmQNfikIlVB7Grp
 NlMvdz56LS2nyBtMhWMMSfLSAaLE8GoeOBJtQYqPScIg+Ye/3wl7PcsYTgh+sZmegwefNs3vQBUo8
 6tr8kSKlHPt+OyaOTDoe8SDHqg0ywdPqkWvM6BCk6SFEi+8U5oRmex/8xwRX1FSxuW3Zp3OqsuRq2
 xpf6C9dA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg37B-008WlY-9d
 for barebox@lists.infradead.org; Mon, 10 May 2021 10:26:18 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1lg37A-00051E-4K; Mon, 10 May 2021 12:26:16 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1lg379-0007ZI-RI; Mon, 10 May 2021 12:26:15 +0200
Date: Mon, 10 May 2021 12:26:15 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210510102615.wg5pd7c3lrkxtjsi@pengutronix.de>
References: <20210506162616.11593-1-m.felsch@pengutronix.de>
 <20210506162616.11593-3-m.felsch@pengutronix.de>
 <20210509133230.lcqn7bgitmr5axcg@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210509133230.lcqn7bgitmr5axcg@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:25:41 up 159 days, 32 min, 50 users,  load average: 0.19, 0.09,
 0.08
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_032617_357420_206F3537 
X-CRM114-Status: GOOD (  28.33  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/3] fs: add linux_rootarg 'root=mmcblkXpN' support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21-05-09 15:32, Roland Hieber wrote:
> On Thu, May 06, 2021 at 06:26:16PM +0200, Marco Felsch wrote:
> > Since commit fa2d0aa96941 ("mmc: core: Allow setting slot index via
> > device tree alias") the linux kernel supports stable mmc device names.
> > Barebox has stable names since years so now we can connect both which
> > allows us to pass 'root=mmcblkXpN' as argument for the cmdline. Note: it
> > is crucial that the kernel device tree and the barebox device tree uses
> > the same mmc aliases.
> > 
> > This patch adds the support to store the above cmdline as linux_rootarg
> > if enabled. The partuuid is now used as fallback since it is not as
> > unique as the mmcblkXpN scheme. It is added as build option since the
> > system integrator needs to check if the used kernel contains the above
> > commit.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > v2:
> > - improved Kconfig deps
> > - improved Kconfig help message
> > - minimal get_linux_mmcblkdev() simplifications
> > 
> >  common/Kconfig | 21 +++++++++++++++++++++
> >  fs/fs.c        | 42 ++++++++++++++++++++++++++++++++++++++----
> >  2 files changed, 59 insertions(+), 4 deletions(-)
> > 
> > diff --git a/common/Kconfig b/common/Kconfig
> > index 6b3c1701be..5815ea06f0 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -700,6 +700,27 @@ config FLEXIBLE_BOOTARGS
> >  	  to replace parts of the bootargs string without reconstructing it
> >  	  completely.
> >  
> > +config MMCBLKDEV_ROOTARG
> > +	bool
> > +	prompt "Support 'root=mmcblkXpN' cmdline appending"
> > +	depends on FLEXIBLE_BOOTARGS
> > +	depends on MCI
> > +	depends on OFTREE
> > +	help
> > +	  Enable this option to append 'root=mmcblkXpN' to the cmdline instead
> > +	  of 'root=PARTUUID=XYZ'. Don't enale this option if your used linux
> > +	  kernel don't contain commit [1]. The first linux kernel release
> 
> Nit: s/enale/enable/; s/don't/doesn't/ (can probably fixed during git-am).

Thanks, send a v3 since I noticed a untested an now fixed bug.

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


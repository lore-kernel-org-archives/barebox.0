Delivery-date: Mon, 04 Oct 2021 13:35:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMGF-0006Mz-4U
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 13:35:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMGD-0002zi-QB
	for lore@pengutronix.de; Mon, 04 Oct 2021 13:35:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MNaeN5+GmdLckXLvQThKwvJ2uhCNb9qerWjA3HINeWQ=; b=J7sjJsvSFBO4YNqIiHqJ8HczQR
	4q0zyxhRiK99lA/IT4JbPo/FHyHSSp2M99dhI29Tgn/QTErx/DgCcAm3YLyXEbLruNlQPWV5NswJk
	E0v6TRhWPk5r4H2EJNPAXwSUQT4lfITneuj1F4UX6lMRqlrEdlv51+rt+/P+tBRP+cigYhSTRo/U9
	coyZfooCu5KG1yLVM2DPJ+wwsnacwkGtxRFEnv9RuGOo0acmA5EPwZk/jhhJs3q5oreN7rfdghWRO
	Z/+hFCykVL/tVmZCGchhWEBbDXeniqaDNsGin6o2Rhvd6eFH6kmaeO2jJSpkkdZBxhWcyTwGTCeLF
	E0p32diA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXMEs-006DSX-PF; Mon, 04 Oct 2021 11:34:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXM7m-006AdI-Iq
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 11:27:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXM7l-0001wM-57; Mon, 04 Oct 2021 13:27:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXM7k-0003dn-SB; Mon, 04 Oct 2021 13:27:12 +0200
Date: Mon, 4 Oct 2021 13:27:12 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211004112712.GY28453@pengutronix.de>
References: <20210831161139.2988-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210831161139.2988-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:27:00 up 228 days, 14:50, 141 users,  load average: 0.41, 0.26,
 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_042714_662979_469989E3 
X-CRM114-Status: GOOD (  22.51  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] of: overlay: don't do fixups on empty
 global.of.overlay.dir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 31, 2021 at 06:11:39PM +0200, Ahmad Fatoum wrote:
> $global.of.overlay.dir is dynamically prepended with the root of the
> device currently being booted. This allows use of relative paths.
> 
> Because $global.of.overlay.filepattern is * by default, this means that
> all files in the root of the device will be considered overlays and
> barebox will try to unflatten them leading to an error message on boot:
> 
>   ERROR: of_overlay: Failed to unflatten /mnt/mmc0.4//.root_is_rw:
> 	Invalid argument
> 
> Fix this by not doing any fixups at all on empty global.of.overlay.dir.
> 
> If for whatever reason, a user wants overlays at /, they can
> 
>   global.of.overlay.dir=.
> 
> Fixes: 124c64af0982 ("overlay: Add filters to choose which overlays to apply")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/overlay.c | 3 +++
>  1 file changed, 3 insertions(+)

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


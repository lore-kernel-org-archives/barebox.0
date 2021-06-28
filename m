Delivery-date: Mon, 28 Jun 2021 22:24:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxxo0-0006gr-GX
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 22:24:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxxnz-0004sf-EZ
	for lore@pengutronix.de; Mon, 28 Jun 2021 22:24:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ALM4SAI8Nmolq89udrd102w0QNLcoL7WU8iorrzgpeo=; b=Jp0pbK7n+4bV/FxzNIh92Jqkqj
	hIs3wXa9flE6VJo0tbfqva/RGX4lv1fgLBovGCdWwzSz68ruUx55MfqsvbC4nmFAUoq5o74rGxWlP
	r0oWueSa+W8Ptdhy9hRhexRwKolgqBHjMrMpkAvC5jYISU0gADYLRMIsf0qyKMCvkIijISEMIdOHW
	WJdl/G/sxhZvocYaeinaq6S0AjODgJtlnTNG6+A831Z0CZ+NNlhLnKBorBktP4bnpS+QUqafIbHlX
	3F0t2BIWqPGwLcYGMiUi9+ZYQX9JBfcLEBDaDSZvxMT3DurPSRSNS2+0yHBEXa/mrbrZXS2hnlZyM
	Xjc9xrEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxxmr-0097ID-LS; Mon, 28 Jun 2021 20:23:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxxmm-0097Hl-Uo
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 20:23:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxxml-0004ok-ON; Mon, 28 Jun 2021 22:23:15 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxxmk-0004zj-Vi; Mon, 28 Jun 2021 22:23:14 +0200
Date: Mon, 28 Jun 2021 22:23:14 +0200
To: Yunus Bas <y.bas@phytec.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210628202314.GR9782@pengutronix.de>
References: <20210625160555.3699702-1-y.bas@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210625160555.3699702-1-y.bas@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 22:22:45 up 130 days, 23:46, 108 users,  load average: 0.13, 0.15,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_132317_038496_A06A1F38 
X-CRM114-Status: GOOD (  24.96  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] commands: of_property: Extend command usage on
 external dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 25, 2021 at 06:05:55PM +0200, Yunus Bas wrote:
> The scope of the of_property command is limited to the internal devicetree
> only. There is the possibility to add fixtures to postpone the operation
> until boot and after the kernel DTB is already loaded, but this does not
> cover the case when the property value needs to be phandle adresses
> defined in the external DTB, since assigned values are evaluated
> immediatly.
> 
> This patch extends the of_property-command to use it on external DTB's as
> well. In case fixup is not used, the changes will also affect the original
> data.
> 
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> ---
> Changes in v2:
> - Use %m instead of "%s", strerror(errno)
> - Not fixing devicetree anymore before save
> ---
>  commands/of_property.c | 74 ++++++++++++++++++++++++++++++++----------
>  1 file changed, 57 insertions(+), 17 deletions(-)

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


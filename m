Delivery-date: Wed, 10 Jan 2024 07:47:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNSNO-00BIqX-1h
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 07:47:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNSNN-00078s-Ut
	for lore@pengutronix.de; Wed, 10 Jan 2024 07:47:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ahBzLyIwgzKjWIC8/hVgfnzuHr1ZrCo02YhNddGHj0k=; b=eAhFQvA5zm5z/T4w7yQsKPuxX/
	m7Z3K94lw5Sdg6thipeisx50p8kGvPA2iqqtK871zYuI0mFAqiNTHsRwasziw/Hk5WGPDdL/GQD+d
	oKazUivbcy651a+7bnjqGE+yDmU+Ay6T8cCnulVn1mlOtrT1Tkp9OfS5m55kdow6w/Wd5cItatQ4t
	9nNgdbZlMgLpqQeGIYiL5CAQWtKT51pzf7ufVxdPX9umJItgzJ9xH+G8YhP1wBsFMLgMwLekLLTpp
	zBg0Rgg57pmZQwarfR+tQoRTxyiWWm5cIBexRZI3XPjXfjj+FxiyDyrn+z44diejFzEbkWdvsh3oY
	2+/KfvHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNSMP-00AWPC-07;
	Wed, 10 Jan 2024 06:46:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNSML-00AWOL-30
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 06:46:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSMK-0006x3-No; Wed, 10 Jan 2024 07:46:40 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSMK-001e0O-BW; Wed, 10 Jan 2024 07:46:40 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSMK-00BANg-9J; Wed, 10 Jan 2024 07:46:40 +0100
Date: Wed, 10 Jan 2024 07:46:40 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240110064640.GL1318922@pengutronix.de>
References: <20240108130800.1643437-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240108130800.1643437-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_224641_972156_132E9EC4 
X-CRM114-Status: GOOD (  19.02  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] gitignore: ignore mvebu binary.0 firmware files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 08, 2024 at 02:08:00PM +0100, Ahmad Fatoum wrote:
> After a run of test/generate-dummy-fw.sh, following dummy firmware is
> generated and is not matched by any .gitignore:
> 
>   arch/arm/boards/globalscale-mirabox/binary.0
>   arch/arm/boards/lenovo-ix4-300d/binary.0
>   arch/arm/boards/marvell-armada-xp-db/binary.0
>   arch/arm/boards/marvell-armada-xp-gp/binary.0
>   arch/arm/boards/netgear-rn104/binary.0
>   arch/arm/boards/netgear-rn2120/binary.0
>   arch/arm/boards/plathome-openblocks-ax3/binary.0
>   arch/arm/boards/turris-omnia/binary.0
> 
> Add a top-level rule to make them not appear in git's untracked files
> list.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Applied, thanks

Sascha

> ---
>  .gitignore | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/.gitignore b/.gitignore
> index 3b9cd6a25aff..f0afd899e1a8 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -34,6 +34,7 @@
>  *.so.dbg
>  *.symtypes
>  *.tab.[ch]
> +binary.0
>  Module.symvers
>  *.dtb
>  *.dtb.*
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



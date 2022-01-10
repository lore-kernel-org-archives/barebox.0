Delivery-date: Mon, 10 Jan 2022 10:07:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6qdp-00FxCF-28
	for lore@lore.pengutronix.de; Mon, 10 Jan 2022 10:07:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6qdl-0002gY-Uv
	for lore@pengutronix.de; Mon, 10 Jan 2022 10:07:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WYMkZUqWrlbmSG0wXZpPWF94uDn80y1MaH2mqciiCWM=; b=u4QrZ80Yy7GvDI7sKkw4YUxr8u
	aix45MxD9RV3XNkcbPBgkVsXN8V02TTBRJiPdHUHS+qwZQFq2KvkxFeR4bhGm8LGUJ430novImU2I
	4mvaxuOtFu1boJ0ClP8ohgcakALlwrPZictzH7wpBndrGED3sgSrYqfT3SJikyxPhiFE2DL9bM+hI
	ISsZTTv3u8N8bzvqZSnsdWLgEZd6C35mVza61TqeUHJzRY8mZUXtOpM+jyDa7skNhmaFZQkpfMA0M
	muzdvTZgz9MgAemaqCXZ7j6PrG/cM9zHBp4N53RAJNnx8IpN0+LWX+fo/H0A2DWrOvTuWZJfPzRgy
	/Yn8nLxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6qbz-00AA58-FA; Mon, 10 Jan 2022 09:05:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6qLo-00A1n3-KI
 for barebox@lists.infradead.org; Mon, 10 Jan 2022 08:48:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n6qLn-0007q8-07; Mon, 10 Jan 2022 09:48:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n6qLm-00088c-NL; Mon, 10 Jan 2022 09:48:22 +0100
Date: Mon, 10 Jan 2022 09:48:22 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220110084822.GC6003@pengutronix.de>
References: <20220108171356.586099-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220108171356.586099-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:48:05 up 30 days, 17:33, 73 users,  load average: 0.12, 0.30, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_004824_743266_12A46F97 
X-CRM114-Status: GOOD (  20.25  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] common: boards: qemu-virt: fix dtc warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jan 08, 2022 at 06:13:55PM +0100, Ahmad Fatoum wrote:
> DTC complains about a Warning (chosen_node_is_root):
> 
>   /fragment@1/__overlay__/chosen: chosen node must be at root node
> 
> As /chosen is already available in the device tree of all of:
> 
>   - ARM 32-Bit QEMU Virt
>   - ARM 64-Bit QEMU Virt
>   - RISC-V 32-Bit QEMU Virt
>   - RISC-V 64-Bit QEMU Virt
> 
> Just reference that in a new fragment to silence the warning.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/boards/qemu-virt/overlay-of-flash.dts | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)

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


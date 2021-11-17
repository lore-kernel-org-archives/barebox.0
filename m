Delivery-date: Wed, 17 Nov 2021 07:41:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnEdp-0002n0-Rl
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 07:41:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnEdp-00054g-1F
	for lore@pengutronix.de; Wed, 17 Nov 2021 07:41:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BSylro+sRA8/Vy+dNqZIhAJWlIUndui4V2u+/D6Pr7I=; b=lIGxdIF0WVC1KWMBbRoOUned9n
	nJxpFFWdtsdA3ipOEiu+5ET2g6QT3WvUIqQ2nZ3cER/m/EPLSJycHU1Wk9Ygb0Z3bkG29WD/pDVPz
	jPqmm+SClBidpHWlcOasNrWdedLc6OQy6bHv75Seiua0ZtLknGcioAiUBvm3J9DlLMtPHeHlGF3UJ
	+O+OfKXLfrDQux78Amqe6A5dJk6I4h7YhVrFcj9Xeb2EX/QIepHc/5RowpyyuFVjpDxa9bupDEsXD
	k+1vZKr+5NQg2v9xhBzxYG14ZrF6FuMnf5tY09geRBMB+QDGWIFszUbvi4ffJOEqLe2oXeOpXS377
	gYcf8xuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnEcQ-003V9Z-BQ; Wed, 17 Nov 2021 06:40:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnEcK-003V7h-Pn
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 06:40:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnEcH-0004l4-6z; Wed, 17 Nov 2021 07:40:21 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnEcF-0002ZW-KS; Wed, 17 Nov 2021 07:40:19 +0100
Date: Wed, 17 Nov 2021 07:40:19 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211117064019.GF6556@pengutronix.de>
References: <20211115090432.147448-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211115090432.147448-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:39:42 up 272 days, 10:03, 116 users,  load average: 0.03, 0.09,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_224024_860948_B82E8278 
X-CRM114-Status: GOOD (  16.65  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pci: add ECAM generic controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 15, 2021 at 10:04:32AM +0100, Ahmad Fatoum wrote:
> This has been tested with QEMU AArch64 Virt. The default (-M
> virt,highmem=on) will have two ranges specified in the device trees for
> memory bars. One 32-bit and the other 64-bit. As barebox can't yet
> handle 64-bit BARs, the driver will prefer the 32-bit memory region if
> available. If none is available, consider using -M virt,highmem=off or
> fixing 64-bit support.

Looks straight forward. What can I do with it?

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


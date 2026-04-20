Delivery-date: Mon, 20 Apr 2026 09:58:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEjWW-00EGjs-2A
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 09:58:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEjWW-0001II-50
	for lore@pengutronix.de; Mon, 20 Apr 2026 09:58:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e0CxaXw9DWAkG7RvfFbs+azMs8e0PTmsPcErr3VMa1c=; b=Vka7+2333tXj29E9AhJQaTNm3B
	Ene6qrnF+kW3TjCzLQ4LrFOnh/oKCSmaVcK4shW24rKNhxllKrI7PeZNPeTcA0j5kj9nvoQ9ni/O3
	NwHP+3ICE9LPv9Ep2r68uag8Z+act0RJwAy1/lpssrJx5dtfWhkkfMOxL2eANDEECIZdhrWVS+PuB
	6TqgvYACsTVaGSf4sVxklWLfoCSFUGWvIf/NvUASxN+HqlhajHg+sXm3lcgqygtVJbNDpyjfyPsOs
	QLtOVW8eJswJMQdZzp5EqgLk81XlI2xUSRMLCzMbZ/9Zm4SoUDngrhklsdR6Tdnt+V3jpVZjv1n7e
	iCYR7IUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEjWA-00000006ZQh-22Wc;
	Mon, 20 Apr 2026 07:58:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEjW7-00000006ZQ7-3HZZ
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 07:58:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wEjW6-00019u-9l; Mon, 20 Apr 2026 09:58:02 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wEjW6-006IPX-0J;
	Mon, 20 Apr 2026 09:58:02 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wEjW6-00000004DyC-00GJ;
	Mon, 20 Apr 2026 09:58:02 +0200
Date: Mon, 20 Apr 2026 09:58:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <aeXciVkJHAz0oYsy@pengutronix.de>
References: <20260416125512.3275056-1-eagle.alexander923@gmail.com>
 <aeHzAfUsNYQL3S4h@pengutronix.de>
 <CAP1tNvSqVnPuP=wXMXWzsC7dV6uyAhn=dzwoiD_i6zOV-jfOhw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvSqVnPuP=wXMXWzsC7dV6uyAhn=dzwoiD_i6zOV-jfOhw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_005803_821146_6018A776 
X-CRM114-Status: GOOD (  12.36  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootm: filter out "<NULL>" rootopts to avoid kernel
 cmdline noise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Fri, Apr 17, 2026 at 02:03:32PM +0300, Alexander Shiyan wrote:
> Hello, Sasha.
> 
> This does not work as expected.

Yeah, this patch was rubbish. Let's try again, I've sent another patch.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



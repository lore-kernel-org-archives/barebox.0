Delivery-date: Mon, 10 Jan 2022 09:20:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6pub-00Fvdd-6q
	for lore@lore.pengutronix.de; Mon, 10 Jan 2022 09:20:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6puZ-0002m5-KB
	for lore@pengutronix.de; Mon, 10 Jan 2022 09:20:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zvjuY3jje8ltptdEm9gfKAJJWYuMrTN3t530yWVcWQk=; b=oR4k8oQomdtoyYUTPTE3/zSEvd
	qm0bbljeg3hkbSvvN3+rz9PVcqf1criGmZIeNCOCT7yy2r5e4lU5h8CaLzRVYGORtnHJDlc3LNpak
	wekFDwDGsmFqiY1F0Fsjy0WCjG8CV112YFJMXgwfjj8FaH5La6KOyDLH4SO2RyHWbepn2secHCnRW
	qwBnk8YClHPmOKN/faHT04BpUqmpfAXOYe75cztej9F4veDaDbTfacv6/3XADKhUjmenh94p5PThs
	T6dfcAIgGntsQlHd76xtxIYvrJBtM/Ui4G7ruFocv2Tx1jGg5WxzziZPpl2p/S3ZXhCiJ4Dwdq7AX
	4ofX7NkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6pt3-009oe0-Qg; Mon, 10 Jan 2022 08:18:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6psz-009oca-50
 for barebox@lists.infradead.org; Mon, 10 Jan 2022 08:18:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n6psv-0002gA-Ki; Mon, 10 Jan 2022 09:18:33 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n6psv-0006Er-Bx; Mon, 10 Jan 2022 09:18:33 +0100
Date: Mon, 10 Jan 2022 09:18:33 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220110081833.GY6003@pengutronix.de>
References: <20220107063644.22595-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220107063644.22595-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:18:20 up 30 days, 17:03, 72 users,  load average: 0.05, 0.14, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_001837_233613_FD78F28F 
X-CRM114-Status: GOOD (  23.35  )
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
Subject: Re: [PATCH master] x86: <asm/io.h>: fix outl/outsl access size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 07, 2022 at 07:36:44AM +0100, Ahmad Fatoum wrote:
> outl so far behaved like outb, probably due to a copy-paste error when
> it was first added. We have three users in-tree for outl:
> 
> * drivers/serial/serial_ns16550_pci.c
>   only for handling a Quatech qurik, which probably no one ever needed
> 
> * drivers/serial/serial_ns16550.c
>   For platform drivers with a 4 byte I/O port resource. Only possible
>   user is x86 and that has a 1 byte I/O port resource. Thus no one
>   used this either.
> 
> * drivers/watchdog/itco_wdt.c
>   Here it indeed triggers a bug, although in my testing the WDAT
>   was functional without.
> 
> Fix this up so new code doesn't have to track this down.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Cc: Steffen Trumtrar <str@pengutronix.de>
> ---
>  arch/x86/include/asm/io.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

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


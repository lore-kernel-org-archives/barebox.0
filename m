Delivery-date: Thu, 03 Feb 2022 11:12:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZ6E-004aB5-BU
	for lore@lore.pengutronix.de; Thu, 03 Feb 2022 11:12:22 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZ6C-00022p-Ch
	for lore@pengutronix.de; Thu, 03 Feb 2022 11:12:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8F7aQkS+rFNcUFOL/uLdHsiyCWw/QX/9pffo1N9pOws=; b=x7ffkFZUywI/SINvxo737KDOY4
	fF97PXmOW/hTYijJ70IFQkr6igOtF48FEcSDf1D562euO/urH2SIvzFFrbLMF1jRpqzfPLowhgeVP
	HyvQUh3MBe3TkwjViLWNsfVS5uDGBlAEjNDRsIDJWSoa7QlJJZqAyxFSqRUltciJo3yAtU1JqDaIT
	OV00d5UEYG1pSY7hG35Q35o151+nWMP2FMG/r47cMKY9+Rr0uOlnajx3dWJuSl5FMyecXlOd6Ekyw
	8SPd5FN3UlLM+zRvXE+j1nROyb4gXE5SM5gJyCsWZ7fobHTE+n0nq7NWuEG/RCcOZTdIxTjStk64I
	zEoo7yUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFZ4H-000j8V-Nv; Thu, 03 Feb 2022 10:10:21 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFYvw-000eNr-Es
 for barebox@lists.infradead.org; Thu, 03 Feb 2022 10:01:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nFYro-00086D-Sk; Thu, 03 Feb 2022 10:57:28 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nFYro-0006xZ-K6; Thu, 03 Feb 2022 10:57:28 +0100
Date: Thu, 3 Feb 2022 10:57:28 +0100
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220203095728.GI23490@pengutronix.de>
References: <20220202101119.3924600-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220202101119.3924600-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:57:14 up 54 days, 18:42, 78 users,  load average: 0.05, 0.10, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_020144_546487_EA4C90CF 
X-CRM114-Status: GOOD (  20.20  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] serial: cadence: add ZynqMP compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 02, 2022 at 11:11:19AM +0100, Michael Tretter wrote:
> Commit 3f2f5980d517 ("dts: update to v5.16-rc1") changes the compatible
> of the ZynqMP uarts to "xlnx,zynqmp-uart" and drops the "xlnx,xuartps"
> compatible.
> 
> The driver worked just fine before and the difference between the r1p8
> and r1p12 compatibles is the use of the RX byte status register which is
> only used with interrupts.
> 
> Add the "xlnx,zynqmp-uart" and the "cdns,uart-r1p12" compatibles to the
> driver.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  drivers/serial/serial_cadence.c | 6 ++++++
>  1 file changed, 6 insertions(+)

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


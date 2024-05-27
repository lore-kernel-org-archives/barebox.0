Delivery-date: Mon, 27 May 2024 09:41:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBUzN-000d6M-1l
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 09:41:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBUzM-0001Hl-T8
	for lore@pengutronix.de; Mon, 27 May 2024 09:41:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dDCgNf3Js+9M/OXYvkSB2u3R9nMMcLn6ailMleOH2yo=; b=FMcbl951hsS8SKjHKCkP6EUkv3
	gbMrTVwORTy5WsVnprkSgFqaQrKkGWdzucwKplZbGadF/grz+v5p/l3rxrg1VssHIXjdKtbY0Il3w
	ZfVAxviYal3xLt1xvEBsPvkMxGa03R9CVuN4zkF375qdorneFuW08rAjgnTpDOtu6r3/PcuCd8z52
	BI/bl3RDTvxTdMU0d8MSsSNogFotqbmKkcoYYTKPPmh8Eyso6YJ24uIPLJS3gWgdUn+zuTlyNsoPg
	ihiQfF4N0LG0hN1AS/DUWJJCxQWf8AysPt7OMcJkI9Oi0DxZmsqvqGyjiAaWqQlfZJq4MWZzlkXRD
	grWlm6NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUys-0000000E62L-3G7W;
	Mon, 27 May 2024 07:41:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUyp-0000000E61q-16Fq
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 07:41:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sBUyn-0001Do-TD; Mon, 27 May 2024 09:41:13 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sBUyn-0039nw-G6; Mon, 27 May 2024 09:41:13 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sBUyn-00H10m-1L;
	Mon, 27 May 2024 09:41:13 +0200
Date: Mon, 27 May 2024 09:41:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: jianqiang wang <wjq.sec@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <ZlQ5Ge4r9nP4CCBn@pengutronix.de>
References: <CAMn3X6NejkLSeyFvJ7Z-0APaUHK8eTWRgFKvbft3SLJp4nO1YQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMn3X6NejkLSeyFvJ7Z-0APaUHK8eTWRgFKvbft3SLJp4nO1YQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_004115_323360_63D34221 
X-CRM114-Status: GOOD (  24.61  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Heap overflow vulnerabilities in network implementation of
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Thu, May 23, 2024 at 06:51:01PM +0200, jianqiang wang wrote:
> Dear Barebox devlopers,
> 
> I found several heap overflow vulnerabilities in Barebox.
> 
> The Barebox implementation assumes that the network packet received is
> less than PKTSIZE, that is 1536 bytes. For example, the /net/net.c
> file ping_reply function assumes that the packet received is 1536
> bytes and allocates a 1536 bytes buffer then copies the packet data
> into the buffer.
> 
> However, in the driver layer, it lacks a proper check of the packet length.
> For example, in drivers/net/cs8900.c cs8900_probe function, it
> allocates a PKTSIZE buffer and assigns it to rx_buf. In cs8900_recv
> function, the length is read from the device register:
> 
> len = readw(priv->regs + CS8900_RTDATA0);
> 
> After that, the data is read from the register in a loop without a
> boundary check.
> The same vulnerability happens to the following drivers:
> 
> drivers/net/ks8851_mll.c function ks8851_rx_frame, it only and the
> packet length with RXFHBCR_CNT_MASK (4095 bytes,) which is not
> consistent with the upper layer length check.
> 
> drivers/net/liteeth.c function liteeth_eth_rx, It checks if the length
> is larger than 2048 which is inconsistent with the upper layer.
> 
> drivers/net/smc911x.c function smc911x_eth_rx. The packet length is
> read from the register without checking.
> 
> It would be good to add a proper and consistent boundary check for
> these drivers otherwise it will lead to potential heap overflow
> vulnerability.

Thanks for noting this. I've just sent a series fixing the drivers you
explicitly mentioned. Additionally I have checked a few other drivers
and it seems at least the smc91111 driver has this issue as well. Are
you aware of other drivers?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



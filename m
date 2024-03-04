Delivery-date: Mon, 04 Mar 2024 15:48:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh9cG-008OZg-1U
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 15:48:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh9cF-0006VE-QQ
	for lore@pengutronix.de; Mon, 04 Mar 2024 15:48:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yCWgloiv2MBuFsFVN/wJswHZU++ToHtmVUGcYSabIOw=; b=zAxPkZp5GTQnRSLI4Yr5A9FUcX
	WSuuQIM2YyPrmBBvtfsUGjFXrrSpSFDvitVQyuWCZ898p3tAUEbhcNj6eyG+Yj+pE2Nbcsfa99djQ
	hXXIzqSyzi9/CRzj5DNeMIRdXKSJgOsxgNqVgP3ZkrOtdr6JbvS/Syc5P8Noc9lQbBY2aIo+OrfTr
	RFAIqJMF1v5vNMQArl8hqIHcgiywq7Tu9HKdiCIogdfz2FtzsKwhJZ8xPRmUQNlYJIfSYgcEtXn7A
	1phsAjNObBOuwG5EI1Af7AoB/HcFxdP4igaIyreUAK4lSlla+slcF6fwsTf05uleTG3AOkuzGNfpz
	ZEPGJWNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh9ba-00000009Qo0-2QTg;
	Mon, 04 Mar 2024 14:47:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh9bV-00000009Qmz-4AvQ
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 14:47:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rh9bQ-0006IH-L8; Mon, 04 Mar 2024 15:47:40 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rh9bP-004NCQ-RZ; Mon, 04 Mar 2024 15:47:39 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rh9bP-001uyI-2T;
	Mon, 04 Mar 2024 15:47:39 +0100
Date: Mon, 4 Mar 2024 15:47:39 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Message-ID: <ZeXfC5XjqFz-oaL2@pengutronix.de>
References: <20240303215803.f8693ec93f03fd048acd3a30@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240303215803.f8693ec93f03fd048acd3a30@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_064746_069173_7C2EA34F 
X-CRM114-Status: GOOD (  22.70  )
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
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>, Dan Shelton <dan.f.shelton@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: barebox + picotcp-1.7.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Antony,

On Sun, Mar 03, 2024 at 09:58:03PM +0300, Antony Pavlov wrote:
> Hi all!
> 
> In the message [1] Sascha proposed to have the barebox network stack
> and picotcp in parallel.
> 
> This approach is used in the branch 20240303.picotcp-1.7.0 from
> https://github.com/frantony/barebox/ repo [2]:
> 
> * all incoming packets go through the barebox network stack and only if
>   they are not processed by it, they are forwarded to the picotcp network
>   stack (all incoming ARP packets always go to the picotcp network stack).
> 
> * risc-v virtual qemu machine with user networking (slirp network stack)
>   is used for demonstration; one needs only qemu risc-v emulator
>   for demonstration;
> 
> * these barebox commands are introduced for picotcp stack capabilities
>   demonstration:
> 
>   * dhclient --- setup picotcp network interface using the DHCP protocol;
>   * ifconfig --- print/setup picotcp network interface information;
>   * route --- print picotcp routing table;
>   * picoping --- send ICMP ECHO_REQUEST to network hosts, receive replies;
>   * picohost --- perform DNS lookup (google DNS server is used);
>   * app_wget --- download file using the HTTP protocol.
> 
> * tcpdump code is incorporated into barebox for network stack debugging.
>   tcpdump supports parsing most of the protocols supported by barebox
>   (DHCP, ARP, ICMP, DNS, TFTP and TCP).

I gave this a test on real hardware. I think the result is similar to
yours, dhclient, ifconfig, route, picoping, picohost work as expected.
app_wget does not work, it bails out with a NULL pointer exception.

I don't seem to have access to the Google DNS server, I switched this to
our local nameserver. Here global.net.nameserver should be used finally.

It's a bit odd that barebox and picotcp both use different configs, so
that we have to call barebox dhcp and also dhclient to make a network
interface usable in both barebox and picotcp. That should be a solvable
issue though.

Overall this looks like a good base for having both barebox network
stack and picotcp in parallel, so we could enable picotcp when needed
and still keep traditional barebox networking at least for a grace
period.

I'd still like to test lwip as well. Given that there are patches for
U-Boot already this should be doable without too much effort. The
integration into U-Boot likely shows the places we have to touch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



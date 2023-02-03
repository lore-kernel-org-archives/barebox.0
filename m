Delivery-date: Fri, 03 Feb 2023 09:06:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNr61-00CQbR-OD
	for lore@lore.pengutronix.de; Fri, 03 Feb 2023 09:06:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNr5y-0003jQ-Ve
	for lore@pengutronix.de; Fri, 03 Feb 2023 09:06:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iZfL1oNmzgZRJXByIWySf8Kt+b9Y3nauQP9icZFod8s=; b=Ez18S7mMB9ZIZx7mj20ajg616e
	dQKlxs46WEKsE95pPyiTpb2e7o4RGwGTbyPG3Oy/4mj4R0W/4iV87wLfH78NMMsBKQMGnfbYq3vz3
	OZGcyAL730d9RjUcgCnerz2SEj1jTL0BT/G7TlgeLwrM3fYGTEAV4fpnK5PAjMgW46q0zBXzu9xN0
	zsfZ+2qLlnusFvUT9epBREEKoXPlFTq0WR1tD+AqRtk4ro/n3Yn/5btvTGTvV19eTca/v1Vn/IgOw
	uvtQQGF2w4/FkUXXr88SfirFxg0094tzW3DuL4u7bK8aSZkZKFdyx+ukqkHLT+1HKrw4r3kfheae4
	pFTkYHxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNr4q-000wBR-Ub; Fri, 03 Feb 2023 08:05:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNr4l-000w9y-Vo
	for barebox@lists.infradead.org; Fri, 03 Feb 2023 08:05:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNr4k-0003M1-Mt; Fri, 03 Feb 2023 09:05:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNr4k-0006XO-G4; Fri, 03 Feb 2023 09:05:38 +0100
Date: Fri, 3 Feb 2023 09:05:38 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230203080538.GV13319@pengutronix.de>
References: <20230130072057.34349-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130072057.34349-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_000540_038265_17AA71B2 
X-CRM114-Status: GOOD (  19.58  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/3] net: ifup: greatly reduce ifup -a time for
 multiple network interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 08:20:54AM +0100, Ahmad Fatoum wrote:
> So far, ifup -a tries to up all non-disabled interfaces in sequence.
> This can take a quite a while, because interfaces with the link down,
> will be polled for 10s, before giving up on doing DHCP on them.
> 
> This series accelerates this in the common case by doing link up
> check in parallel, getting down from (number_of_ports_wihout_link * 10s)
> to 10s and then adds an optimization for the common case of automounts
> with $global.net.server not set.
> 
> Times after eth_open_all has brought up CPU Ethernet and 4 DSA ports:
> 
>   barebox$ time ifup -a -s # old behavior
>   time: 31081ms
> 
>   barebox$ time ifup -a
>   time: 10002ms
> 
>   barebox$ time ifup -a1
>   time: 1072ms
> 
> Ahmad Fatoum (3):
>   net: ifup: have ifup -a poll for link up in parallel
>   net: ifup: have ifup -a1 stop at first DHCP-set global.net.server
>   defaultenv-2: automount: use ifup -a1 for NFS/TFTP automounts

Applied, thanks

Sascha

> 
>  Documentation/user/automount.rst            |   2 +-
>  defaultenv/defaultenv-2-base/boot/net       |   2 +-
>  defaultenv/defaultenv-2-base/init/automount |   4 +-
>  include/net.h                               |   5 +
>  net/eth.c                                   |  28 +++--
>  net/ifup.c                                  | 124 ++++++++++++++++----
>  net/net.c                                   |   7 +-
>  7 files changed, 138 insertions(+), 34 deletions(-)
> 
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



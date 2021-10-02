Delivery-date: Sat, 02 Oct 2021 11:42:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWbXX-00045b-8t
	for lore@lore.pengutronix.de; Sat, 02 Oct 2021 11:42:43 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWbXW-0003vU-As
	for lore@pengutronix.de; Sat, 02 Oct 2021 11:42:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XnLJebfQEhV/Q76lOyXDksSu0Fd37nnPTNAzHwyCZdc=; b=Yihsdzx22jM1gcNPzTakc+OdAA
	cr5vDLn82PcbojsLFS3l9HuIEq6Dkb+FcC1OmIUY5J4wgKy6WVukM9WPzBVePKnrVyDb1/3iJXv8t
	DUjDn2jGS1kiySBPu0qX7htJ0qhRR1h+6RLw2A4Y0M8IPr00yCu5Af3t02eaiP8Eh+2UwjmX3gE7a
	pfTGtI3YFPTOf3YSW/nTQUkNk31T1ARbi6jzydR3VkpKu9vIXvZ8opzQYLnU1E+HuES2RTQQ/FApG
	wTA4WzlkEI1Um0PlTJaeHQVsef6ic684lfCBBxKwOi7ede+ADjS0vC5gFZOqFfQix1tNwlY68jMkF
	bXIAlZhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWbW8-00213A-MX; Sat, 02 Oct 2021 09:41:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWbW3-00212L-AQ
 for barebox@lists.infradead.org; Sat, 02 Oct 2021 09:41:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWbW1-0003ny-P4; Sat, 02 Oct 2021 11:41:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWbW1-0002Ip-8d; Sat, 02 Oct 2021 11:41:09 +0200
Date: Sat, 2 Oct 2021 11:41:09 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211002094109.GL28453@pengutronix.de>
References: <20210913083047.364759-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913083047.364759-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:40:14 up 226 days, 13:04, 94 users,  load average: 0.13, 0.11,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_024111_509623_B9C71422 
X-CRM114-Status: GOOD (  18.52  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: add virtio network driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 13, 2021 at 10:30:47AM +0200, Ahmad Fatoum wrote:
> This gives virtio-enabled boards an easy route to network connectivity:
> 
> 	qemu-system-aarch64 -M virt  -serial mon:stdio -trace file=/dev/null \
> 	-kernel images/barebox-dt-2nd.img -cpu cortex-a57 -nographic \
> 	-device virtio-net-device,netdev=network0 -netdev tap,id=network0,ifname=tap0
> 
> The tap0 interface created by QEMU can then be bridged/listened on.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  Documentation/user/virtio.rst   |   2 +-
>  drivers/net/Kconfig             |   7 +
>  drivers/net/Makefile            |   1 +
>  drivers/net/virtio.c            | 236 +++++++++++++++++++++
>  include/linux/virtio_config.h   |   7 +-
>  include/uapi/linux/virtio_net.h | 358 ++++++++++++++++++++++++++++++++
>  6 files changed, 608 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/net/virtio.c
>  create mode 100644 include/uapi/linux/virtio_net.h

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


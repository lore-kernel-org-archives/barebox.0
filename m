Delivery-date: Tue, 31 Jan 2023 09:21:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMltI-008cXC-G1
	for lore@lore.pengutronix.de; Tue, 31 Jan 2023 09:21:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMltF-0007nh-TL
	for lore@pengutronix.de; Tue, 31 Jan 2023 09:21:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H/fA4IjWIiLKqKdHmP8kv8uChWTTXtzLv6AX8THIJRs=; b=xj6bdQ45G2aU7uUrTQameWvWp9
	Iol++LsJNqfnuHoIxXrD8muK5NnMFJUtSxhwa97lFlvyG9YcaNVGcHN3DqOhWcFk2FisdyyQHy37E
	1UB4n04ZMOhq/AvB5f2sbTxfLlsTZqxCYABOmEg4BJGotKqLaJACL9gOLI0QJcUXr8osVnIJfjMJ8
	k++dvqVfrH/w46fZ2WKbPa0hML7Rl3STpULgOP+4CEUFZLC6iUHDxjxR7GuQPCr7MMREk3f9+0rDi
	SRsb3ol/qHL5lkyxhXu1bhAJV8tHZd5LbhQSywJffN4tHU4UIQ27WIzk56Q58SJaENffPFheJTk/g
	mfkw75bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMls5-006g4n-Ne; Tue, 31 Jan 2023 08:20:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMls0-006g28-Ox
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 08:20:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMlrx-0007Mq-Dt; Tue, 31 Jan 2023 09:19:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMlrw-0006uP-Pa; Tue, 31 Jan 2023 09:19:56 +0100
Date: Tue, 31 Jan 2023 09:19:56 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Adrian Negreanu <adrian.negreanu@nxp.com>
Message-ID: <20230131081956.GZ13319@pengutronix.de>
References: <20230130072707.2423294-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130072707.2423294-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_002000_830934_2E215CFF 
X-CRM114-Status: GOOD (  19.52  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/4] video: add support for QEMU ramfb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 08:27:03AM +0100, Ahmad Fatoum wrote:
> QEMU's ramfb is a very simple Qemu fw_cfg protocol, where the guest
> need only write a video settings structure to /etc/ramfb to get
> DMA from the framebuffer working. Add a driver for this on top
> of a newly added character device interface.
> 
> Adrian Negreanu (1):
>   video: add support for QEMU ramfb
> 
> Ahmad Fatoum (3):
>   fs: devfs: implement cdev_fdopen
>   asm-generic: avoid compiler warnings due to PCI_IOBASE
>   firmware: add QEMU FW CFG driver

Applied, thanks

Sascha

> 
>  drivers/firmware/Kconfig         |  10 +
>  drivers/firmware/Makefile        |   1 +
>  drivers/firmware/qemu_fw_cfg.c   | 307 +++++++++++++++++++++++++++++++
>  drivers/video/Kconfig            |   6 +
>  drivers/video/Makefile           |   1 +
>  drivers/video/ramfb.c            | 191 +++++++++++++++++++
>  fs/devfs-core.c                  |  20 ++
>  include/asm-generic/io.h         |   3 +-
>  include/driver.h                 |   1 +
>  include/filetype.h               |   1 +
>  include/uapi/linux/qemu_fw_cfg.h | 100 ++++++++++
>  11 files changed, 640 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/firmware/qemu_fw_cfg.c
>  create mode 100644 drivers/video/ramfb.c
>  create mode 100644 include/uapi/linux/qemu_fw_cfg.h
> 
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



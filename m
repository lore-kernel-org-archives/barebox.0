Delivery-date: Tue, 09 Aug 2022 10:50:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLKwg-00HA6g-RJ
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 10:50:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLKwh-0000DB-A2
	for lore@pengutronix.de; Tue, 09 Aug 2022 10:50:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tfq4gW62f10djbGmBuX6+GP7VEEvkB8EkR08+yVQqSU=; b=ded8EXIR3E2vht36DCvL/T5Fpx
	/RHWI70ip2TVwNjuz6FcII6dBmqAT9R/PvBqNtDgyWfxakux3fde1rW5uqnAmgyYtdi/R5dhThlp2
	eK+gGbZxSjsRfHcTGDqBVzXK2LSd1aVoP+68OI6W9ynszXEgCmaKkCK17+LV57PRjKJBLJksT0y87
	nMDFgDvsKbm/8xoYQC/djhOJ+fGwudTmPYO/fui1JpzXkpHlxTVYlnd5oRKbqk73qrFzcFZjrZHvo
	MYZX7HePcaO9Sn+4jgDjEUn7CLI8RLWJtq6Me8P4dqnJypvRAnZk7T3vXL9eO+Havxl1lPjJmTtQY
	Gy/7Ccjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLKvF-002qZS-Kw; Tue, 09 Aug 2022 08:49:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLKv8-002qXs-M0
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 08:49:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLKv6-0008Oy-Pt; Tue, 09 Aug 2022 10:49:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLKv6-0004ru-Gr; Tue, 09 Aug 2022 10:49:00 +0200
Date: Tue, 9 Aug 2022 10:49:00 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809084900.GJ31528@pengutronix.de>
References: <9133a12926ffb700725459d42b67618ec7d3b4f8.1658144543.git.enrico.scholz@sigma-chemnitz.de>
 <20220731113645.4092241-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220731113645.4092241-1-enrico.scholz@sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_014902_770920_A523CC44 
X-CRM114-Status: GOOD (  27.58  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 09/13] tftp: implement 'windowsize' (RFC 7440) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Jul 31, 2022 at 01:36:44PM +0200, Enrico Scholz wrote:
> Results (with the reorder patch; numbers in bytes/s) on an iMX8MP are:
> 
>  | windowsize | VPN       | 1 Gb/s     | 100 Mb/s   |
>  |------------|-----------|------------|------------|
>  | 128        | 3.869.284 | 98.643.085 | 11.434.852 |
>  |  64        | 3.863.581 | 98.550.375 | 11.434.852 |
>  |  48        | 3.431.580 | 94.211.680 | 11.275.010 |
>  |  32        | 2.835.129 | 85.250.081 | 10.985.605 |
>  |  24        | 2.344.858 | 77.787.537 | 10.765.667 |
>  |  16        | 1.734.186 | 67.519.381 | 10.210.087 |
>  |  12        | 1.403.340 | 61.972.576 |  9.915.612 |
>  |   8        | 1.002.462 | 50.852.376 |  9.016.130 |
>  |   6        |   775.573 | 42.781.558 |  8.422.297 |
>  |   4        |   547.845 | 32.066.544 |  6.835.567 |
>  |   3        |   412.987 | 26.526.081 |  6.322.435 |
>  |   2        |   280.987 | 19.120.641 |  5.494.241 |
>  |   1        |   141.699 | 10.431.516 |  2.967.224 |
> 
> (VPN = OpenVPN on ADSL 50 Mb/s).
> 
> The window size can be configured at runtime.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  fs/Kconfig | 14 ++++++++++++++
>  fs/tftp.c  | 51 ++++++++++++++++++++++++++++++++++++++++-----------
>  2 files changed, 54 insertions(+), 11 deletions(-)
> 
> diff --git a/fs/Kconfig b/fs/Kconfig
> index aeba00073..0c4934285 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -43,6 +43,20 @@ config FS_TFTP
>  	prompt "tftp support"
>  	depends on NET
>  
> +config FS_TFTP_MAX_WINDOW_SIZE
> +	int
> +	prompt "maximum tftp window size (RFC 7440)"
> +	depends on FS_TFTP
> +	default 128
> +	range 1 128
> +	help
> +	  The maximum allowed tftp "windowsize" (RFC 7440).  Higher
> +	  value increase speed of the tftp download with the cost of
> +	  memory (1432 bytes per slot).
> +
> +	  Requires tftp "windowsize" (RFC 7440) support on server side
> +	  to have an effect.

Can we agree on some sane default here and drop this from Kconfig?
Same for FS_TFTP_REORDER_CACHE_SIZE.

> +
>  config FS_OMAP4_USBBOOT
>  	bool
>  	prompt "Filesystem over usb boot"
> diff --git a/fs/tftp.c b/fs/tftp.c
> index ef2ce0200..b8950f250 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -29,7 +29,9 @@
>  #include <init.h>
>  #include <linux/stat.h>
>  #include <linux/err.h>
> +#include <linux/kernel.h>
>  #include <kfifo.h>
> +#include <globalvar.h>
>  #include <linux/sizes.h>
>  
>  #define TFTP_PORT	69	/* Well known TFTP port number */
> @@ -65,15 +67,22 @@
>  
>  #define TFTP_BLOCK_SIZE		512	/* default TFTP block size */
>  #define TFTP_MTU_SIZE		1432	/* MTU based block size */
> -#define TFTP_FIFO_SIZE		4096
> +#define TFTP_MAX_WINDOW_SIZE	CONFIG_FS_TFTP_MAX_WINDOW_SIZE
> +
> +/* calculate fifo so that it can hold the complete window plus the incoming
> +   packet.  Add some extra space just in case...  */
> +#define TFTP_FIFO_SIZE		(TFTP_MTU_SIZE * TFTP_MAX_WINDOW_SIZE + 2048)

Memory should be allocated according to the actual window size, not to
the maximum window size. Otherwise I don't see a reason to decrease the
window size using global.tftp.windowsize when the memory allocated is
always the same.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Tue, 09 Aug 2022 10:59:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLL5b-00HAi8-SL
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 10:59:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLL5c-0001Vx-CT
	for lore@pengutronix.de; Tue, 09 Aug 2022 10:59:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EBHWpRS5CYbzWHr3nV2i4Namq8QriWqqtGE97WagY34=; b=aLH6fvq5CBZqcoLH/izWn+jLOe
	UxrBsHsNkmt6CFyDj9BOjKHlw49cY8wOlfJJraochld5qHqqLgvVGf0eIxZHVUsAK/eKl1nd/EiLk
	E9Hz9dGHTC1JJU1Nz/nkpd/A28xeq0lOVSBmdI/Wrm4DuI2sPFPy4JJpqGYlBwGP/95daJh4SkaVP
	e25lSCz29gn0d5PVf/b8GGW3+uRvSedqWPO7/nXzC2DbRf4mcLmvEuNkgPE/V7aPcaEAhFrVfe0BQ
	idsJqXjsEM0BmN7tYwD61XPf9Hw2Yeln2BAZ1V64etw7P+azgN+f6jznLhPASTjtclN44vQHfJKZ9
	VDCJfq0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLL4D-002tSO-5B; Tue, 09 Aug 2022 08:58:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLL47-002tR4-Bx
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 08:58:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLL45-0001Mj-W7; Tue, 09 Aug 2022 10:58:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLL45-0002UZ-N6; Tue, 09 Aug 2022 10:58:17 +0200
Date: Tue, 9 Aug 2022 10:58:17 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809085817.GK31528@pengutronix.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
 <14bf205ffe1ba093e93531b8a43758e18c18a94d.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <14bf205ffe1ba093e93531b8a43758e18c18a94d.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_015819_441328_A46C7E98 
X-CRM114-Status: GOOD (  35.45  )
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
Subject: Re: [PATCH 11/13] tftp: reorder tftp packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 18, 2022 at 02:22:26PM +0200, Enrico Scholz wrote:
> With the tftp "windowsize" option, reordering of udp datagrams becomes
> an issue.  Depending on the network topology, this reordering occurs
> several times with large tftp transfers and will heavily reduce the
> transfer speed.
> 
> This patch adds a packet cache so that datagrams can be reassembled in
> the correct order.
> 
> Because it increases memory usage, it is an Kconfig option.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  fs/Kconfig |  22 +++++++
>  fs/tftp.c  | 165 +++++++++++++++++++++++++++++++++++++++++++++++++++--
>  2 files changed, 181 insertions(+), 6 deletions(-)
> 
> diff --git a/fs/Kconfig b/fs/Kconfig
> index 0c4934285942..02aa25d6abf7 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -57,6 +57,28 @@ config FS_TFTP_MAX_WINDOW_SIZE
>  	  Requires tftp "windowsize" (RFC 7440) support on server side
>  	  to have an effect.
>  
> +config FS_TFTP_REORDER_CACHE_SIZE
> +	int
> +	prompt "number of out-of-order tftp packets to be cached"
> +	depends on FS_TFTP
> +	default 16 if FS_TFTP_MAX_WINDOW_SIZE > 16
> +	default  0 if FS_TFTP_MAX_WINDOW_SIZE = 1
> +        ## TODO: it should be 'FS_TFTP_MAX_WINDOW_SIZE - 1' but this
> +        ## is not supported by Kconfig
> +	default FS_TFTP_MAX_WINDOW_SIZE
> +	range 0 FS_TFTP_MAX_WINDOW_SIZE
> +	help
> +	  UDP allows reordering of datagrams; with this option,
> +	  unexpected tftp packets will be cached and later
> +	  reassembled.  This increases stability of the tftp download
> +	  with the cost of memory (around 1440 bytes per cache
> +	  element).
> +
> +          A value of 0 disables caching.
> +
> +	  Requires tftp "windowsize" (RFC 7440) support on server side
> +	  to have an effect.
> +
>  config FS_OMAP4_USBBOOT
>  	bool
>  	prompt "Filesystem over usb boot"
> diff --git a/fs/tftp.c b/fs/tftp.c
> index f85136f03e22..2c2ff081be51 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -68,6 +68,9 @@
>  #define TFTP_MTU_SIZE		1432	/* MTU based block size */
>  #define TFTP_MAX_WINDOW_SIZE	CONFIG_FS_TFTP_MAX_WINDOW_SIZE
>  
> +/* size of cache which deals with udp reordering */
> +#define TFTP_WINDOW_CACHE_NUM	CONFIG_FS_TFTP_REORDER_CACHE_SIZE
> +
>  /* calculate fifo so that it can hold the complete window plus the incoming
>     packet.  Add some extra space just in case...  */
>  #define TFTP_FIFO_SIZE		(TFTP_MTU_SIZE * TFTP_MAX_WINDOW_SIZE + 2048)
> @@ -76,6 +79,15 @@
>  
>  static int g_tftp_window_size = TFTP_MAX_WINDOW_SIZE / 1;
>  
> +struct tftp_block {
> +	uint16_t id;
> +	uint8_t data[TFTP_MTU_SIZE];
> +
> +	/* len will not exceed TFTP_MTU_SIZE; 14 bits should suffice... */
> +	uint16_t len:14;
> +	bool valid:1;
> +};
> +
>  struct file_priv {
>  	struct net_connection *tftp_con;
>  	int push;
> @@ -93,12 +105,49 @@ struct file_priv {
>  	int blocksize;
>  	unsigned int windowsize;
>  	bool is_getattr;
> +#if TFTP_WINDOW_CACHE_NUM > 0
> +	struct tftp_block window_cache[TFTP_WINDOW_CACHE_NUM];
> +#endif
>  };

Can you use a struct list_head here rather than an array? With that
you can use list_add_sort() to sort the cached packets by id and it
becomes easy to see if the next packet is already there or not without
iterating over the cache multiple times. Also by allocating a tftp_block
dynamically when you need it you only occupy memory for packets that are
received in the wrong order, not for a fixed number of blocks.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



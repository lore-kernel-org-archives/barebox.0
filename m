Delivery-date: Wed, 02 Nov 2022 08:53:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8YW-00C0BJ-5R
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 08:53:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8YU-0007wz-RB
	for lore@pengutronix.de; Wed, 02 Nov 2022 08:52:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z6F2BESANWe+GFXzJbSPjCvLJfBin3/ab1MyMUOxKtY=; b=LmdQ+kWZKNGb07JoxkUnitK47A
	0Z2en52a/UMbw/nXJGMiFbXJwiFB+PC8PkmFcENxOjeUIDzkUuZVLhN0swS0Vdr5zpFPqhahoNNn8
	75zJlEFp8Tz3fWD5NjjAhynuaaDpgczqf8hp29QB80VqMVQtEGNwSOLBW2FOztE8VX5XzfFkop7Xk
	bU7P4qOVYTw70avm/WiSQDx171z/J1U2L/GF8iDX7Z9eh8kv5kCqQAt+5KqyO/skNCXUKJ0vAQqgQ
	Mzc0AJ6E4ie1zdd7EWMi+oz+8tGHcNAUMOnNkbLh3EFYkOyvOeMnAIKr2hPXkLWvdREb9EQ7ArjoI
	QxQtYjsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8Wt-008gJO-2v; Wed, 02 Nov 2022 07:51:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8Wo-008gIs-AE
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 07:51:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8Wm-0007qI-Ba; Wed, 02 Nov 2022 08:51:12 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8Wm-0005sZ-3f; Wed, 02 Nov 2022 08:51:12 +0100
Date: Wed, 2 Nov 2022 08:51:12 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221102075112.GC3143@pengutronix.de>
References: <20221101063216.3216821-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221101063216.3216821-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_005114_373779_8CFBC355 
X-CRM114-Status: GOOD (  20.73  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] test: self: only include ramfs selftest when
 CONFIG_SELFTEST_FS_RAMFS=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Nov 01, 2022 at 07:32:16AM +0100, Ahmad Fatoum wrote:
> So far, we ignored the symbol and built the test always when
> CONFIG_SELFTEST=y and CONFIG_FS_RAMFS=y.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - moved out of other series. No other changes.
>  test/self/Kconfig  | 2 +-
>  test/self/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/test/self/Kconfig b/test/self/Kconfig
> index f3cb6601e3b8..5c6981959921 100644
> --- a/test/self/Kconfig
> +++ b/test/self/Kconfig
> @@ -33,7 +33,7 @@ config SELFTEST_ENABLE_ALL
>  	select SELFTEST_PROGRESS_NOTIFIER
>  	select SELFTEST_OF_MANIPULATION
>  	select SELFTEST_ENVIRONMENT_VARIABLES if ENVIRONMENT_VARIABLES
> -	select SELFTEST_FS_RAMFS
> +	imply SELFTEST_FS_RAMFS
>  	imply SELFTEST_TFTP
>  	help
>  	  Selects all self-tests compatible with current configuration
> diff --git a/test/self/Makefile b/test/self/Makefile
> index 6f2c0d394034..c7c729cba0e0 100644
> --- a/test/self/Makefile
> +++ b/test/self/Makefile
> @@ -6,4 +6,4 @@ obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
>  obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
>  obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
>  obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
> -obj-$(CONFIG_FS_RAMFS) += ramfs.o
> +obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
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



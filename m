Delivery-date: Mon, 07 Feb 2022 09:10:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGz6c-0084Kq-75
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:10:38 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGz6a-0004du-RF
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:10:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=49/WoHlyTl6tOOPCLPMDhi0pTU31co90bcanlJfHcTo=; b=pAlL1EYykTVkfA9RQYcqEDQhfr
	mtJZfx9k98wUTPHvgjHhQkGUQ0byUXzKL28udTUR+THdx4gGu8fw6DWXkGs02dApjkyNtEckmgnnr
	N8UFuetoZu+0ZWyM9ZFFWWd+fuuxu076sAaWD1WlJcor8oZJ9aVZZPJZv7cOEpg/LbPSRF3VZMHrW
	RNz4+pO+GpcRpWnFxjcsW4+s86mF67YhwDoXHDul6//QI9lLU/Ccrm8dWrbDsVm0IOm0WQT0DdjOh
	YVG0sTQyAukek8uS6uU5GykQUDdBdPbhrHvDerqLzrhLDfJbvtkZ8HB41q+7zzj4g/ttNf0jo2yH1
	SP6miJRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGz5V-009J0X-5V; Mon, 07 Feb 2022 08:09:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGz5Q-009J0E-Ko
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:09:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGz5P-0004SB-2I; Mon, 07 Feb 2022 09:09:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGz5O-0004nC-Pv; Mon, 07 Feb 2022 09:09:22 +0100
Date: Mon, 7 Feb 2022 09:09:22 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220207080922.GR23490@pengutronix.de>
References: <20220207075604.1014259-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220207075604.1014259-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:09:13 up 58 days, 16:54, 80 users,  load average: 0.03, 0.21, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_000924_723334_884BF705 
X-CRM114-Status: GOOD (  21.47  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] sandbox: symlink stickypage.bin into build directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 07, 2022 at 08:56:03AM +0100, Ahmad Fatoum wrote:
> Sandbox will try to access a stickypage.bin in the same directory if
> possible. Instead of relying on users to copy it there, just create a
> symlink.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .gitignore            | 1 +
>  arch/sandbox/Makefile | 6 ++++++
>  2 files changed, 7 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/.gitignore b/.gitignore
> index d551a610d4c0..0382202bf716 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -90,3 +90,4 @@ GTAGS
>  /allrandom.config
>  /allyes.config
>  /compile_commands.json
> +/stickypage.bin
> diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
> index 2cf51fa34917..aee6bccc9c14 100644
> --- a/arch/sandbox/Makefile
> +++ b/arch/sandbox/Makefile
> @@ -74,6 +74,12 @@ cmd_barebox__ = $(CC) -o $@ $(BAREBOX_LDFLAGS)
>  
>  common-y += $(BOARD) arch/sandbox/os/ arch/sandbox/lib/
>  
> +stickypage.bin:
> +	@$(kecho) "  LN      stickypage.bin"
> +	@ln -fs arch/sandbox/board/stickypage.bin stickypage.bin
> +
> +KBUILD_IMAGE := barebox stickypage.bin
> +
>  common-$(CONFIG_OFTREE) += arch/sandbox/dts/
>  
>  CLEAN_FILES += $(BOARD)/barebox.lds
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


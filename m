Delivery-date: Tue, 21 Mar 2023 09:14:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX8G-008wXr-5a
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 09:14:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX8F-0005Qb-Ks
	for lore@pengutronix.de; Tue, 21 Mar 2023 09:14:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0hJpOLEBfbC1utKNajnoyuJH6usjdB3CPQggCZDefow=; b=JJXy07lYwwT38iJ4OW9b2qD2HD
	gNDtU64qA6Sp1DYmChIEe9M6eaoXzLa73HcJN8EhJov1wY1NonvdQ/7a4e9FS5UW3VW+D2GLItDNb
	R/PBX+RXBPEtip/rM/Bwc5J4bhpDlbMJbIOi/n6ma65ZsB/77Oom2Zkt9CKYQSpWJncwIBuKX+ElC
	BY76IVywF4guWE/lcFZGZJZpTjjghipeuBymfLg+5ixRbkeEYQ21DuCYZW38LCUEnswnJG+QTWoJ6
	nQ9BrwykQW4AJ2VpQYJUZMnfaYOYFK9fuYy/wC7AviA5pLmJbjQsyuktWPedgxCHd2GmwuIB2wZnD
	FWYtvY+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peX7C-00BdgZ-1U;
	Tue, 21 Mar 2023 08:13:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peX79-00Bdew-06
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 08:13:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX77-0005Fu-BC; Tue, 21 Mar 2023 09:13:01 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX77-00054x-2J; Tue, 21 Mar 2023 09:13:01 +0100
Date: Tue, 21 Mar 2023 09:13:01 +0100
To: Wolfram Sang <wsa@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230321081301.GG7446@pengutronix.de>
References: <20230319153931.23867-1-wsa@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230319153931.23867-1-wsa@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_011303_074755_31FB8023 
X-CRM114-Status: GOOD (  19.60  )
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
Subject: Re: [PATCH] commands: nand: add missing parameters to help
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Mar 19, 2023 at 04:39:31PM +0100, Wolfram Sang wrote:
> Signed-off-by: Wolfram Sang <wsa@kernel.org>
> ---
>  commands/Kconfig | 4 +++-
>  commands/nand.c  | 2 +-
>  2 files changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 27769950d9..76dfca2dfd 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1950,12 +1950,14 @@ config CMD_NAND
>  	help
>  	  NAND flash handling
>  
> -	  Usage: nand [-adb] NANDDEV
> +	  Usage: nand [-adbgi] NANDDEV
>  
>  	  Options:
>  		  -a		register a bad block aware device ontop of a normal NAND device
>  		  -d		deregister a bad block aware device
>  		  -b OFFS	mark block at OFFSet as bad
> +		  -g OFFS	mark block at OFFSet as good
> +		  -i		info. Show information about bad blocks
>  
>  config CMD_NANDTEST
>  	tristate
> diff --git a/commands/nand.c b/commands/nand.c
> index 67e43eba30..d07444aee0 100644
> --- a/commands/nand.c
> +++ b/commands/nand.c
> @@ -165,7 +165,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(nand)
>  	.cmd		= do_nand,
>  	BAREBOX_CMD_DESC("NAND flash handling")
> -	BAREBOX_CMD_OPTS("[-adb] NANDDEV")
> +	BAREBOX_CMD_OPTS("[-adbgi] NANDDEV")
>  	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
>  	BAREBOX_CMD_HELP(cmd_nand_help)
>  BAREBOX_CMD_END
> -- 
> 2.35.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



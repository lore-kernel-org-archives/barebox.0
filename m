Delivery-date: Fri, 10 Sep 2021 10:47:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOcCH-0005S4-D1
	for lore@lore.pengutronix.de; Fri, 10 Sep 2021 10:47:45 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOcCG-00065o-F4
	for lore@pengutronix.de; Fri, 10 Sep 2021 10:47:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vNkuZ9WUgl3ZWLaEJ6MO/zbm0GqqLyLu60iIuUDPYD0=; b=CpJ+fQQgoNASmczIM7EdH5hR1x
	uioMLmb+0+/tWk+QbTJsOK1wxcCIfy7IebHW3gzSWgTJ49mnuLqNF3RhMP6Ezq6nZEebtvZdunosG
	MejsPk8+itjLEWBxVVp2i/Yng+lQ5UpNgkMG4V+D+jqDphbdfHTaNazHLAuaY30c5MoXH74h5wxEG
	TxZxvH38PfGWgN233DGHCl4Rke/3XYs30bSWTILFNQekd9sy/XoQzMB/R2Wao0l8ZgDwtq30jqGVV
	WE062UHIKt/tq5ezse1s6e3/qu5a0ivQuml+wcUfylGrHollvQ4yyvRzDIikSkTZj2tNwQTdswd3o
	7jPK8JYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOcB4-00CEkm-1c; Fri, 10 Sep 2021 08:46:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOcAz-00CEkG-Df
 for barebox@lists.infradead.org; Fri, 10 Sep 2021 08:46:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mOcAy-0005yP-6b; Fri, 10 Sep 2021 10:46:24 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
References: <20210830144835.27458-1-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2a28243f-72fc-2cb3-3399-23ab175d385a@pengutronix.de>
Date: Fri, 10 Sep 2021 10:46:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210830144835.27458-1-jmaselbas@kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_014625_519311_41E29B1C 
X-CRM114-Status: GOOD (  27.13  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,
	RDNS_NONE,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] usb: gadget: dfu: Rework dfu command to use usbgadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

On 30.08.21 16:48, Jules Maselbas wrote:
> The dfu command now uses the composite multi gadget to register the usb
> functionality. This allows the removal of the usb composite driver from
> dfu.c
> 
> As the dfu command is blocking the command slice must be released while
> the dfu gadget is running in order to do operations on the file system.
> 
> The usb_dfu_register() function is replaced with usb_dfu_detached() for
> the dfu command to return a different value depending on if it has been
> interrupted with CTRL-C or if the gadget has been detached.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  commands/dfu.c           |  24 +++---
>  drivers/usb/gadget/dfu.c | 163 +--------------------------------------
>  include/usb/dfu.h        |   2 +-
>  3 files changed, 15 insertions(+), 174 deletions(-)
> 
> diff --git a/commands/dfu.c b/commands/dfu.c
> index 3132a7479d..0d8a703300 100644
> --- a/commands/dfu.c
> +++ b/commands/dfu.c
> @@ -11,6 +11,7 @@
>  #include <fs.h>
>  #include <xfuncs.h>
>  #include <usb/dfu.h>
> +#include <usb/gadget-multi.h>
>  #include <linux/err.h>
>  
>  /* dfu /dev/self0(bootloader)sr,/dev/nand0.root.bb(root)
> @@ -20,28 +21,27 @@
>   */
>  static int do_dfu(int argc, char *argv[])
>  {
> -	struct f_dfu_opts opts;
>  	char *argstr;
> -	struct usb_dfu_dev *dfu_alts = NULL;
>  	int ret;
>  
>  	if (argc != optind + 1)
>  		return COMMAND_ERROR_USAGE;
>  
>  	argstr = argv[optind];
> +	ret = usbgadget_register(true, argstr, false, NULL, false, false);
> +	if (ret)
> +		return ret;

next branch has a different prototype for usbgadget_register now.
Could you adapt it for v2?


Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


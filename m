Delivery-date: Thu, 28 Apr 2022 15:01:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nk3lx-000n2v-9V
	for lore@lore.pengutronix.de; Thu, 28 Apr 2022 15:01:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nk3lu-0004Rt-Lh
	for lore@pengutronix.de; Thu, 28 Apr 2022 15:01:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlULF+gvgQuTPBpZ3fYpH584we9kbHmzPUQYxXeR8Gg=; b=ZNRdfiLvCcVjdL
	A8vAa4lws8QPWqMCYWFRBssYimcg7mAPqe+Qxza6YBhIdjga2eM/uOLrrBeTCOLUFd7dkE2dkLKkm
	0XgF1bvGO5ymRJXXr+bOv+732KnrTRiqUXOKnkIZlR05Kwv0TKInr/CCqmcjuOUfHVWTSKz1MUqP4
	vORX0Igd9sch+9/6CXhnGYzoJ2pzeeyISjdYgGv8PoQQn5bRm6TJ1Iokg5t0t7busnKTau6n+E/n8
	ARij1nanr3Nc3a0Du3UjueGbS4iicfbjELY5RDgX5hjhpUbhYnUiyusR26jKzFHc6gxnsbNoMFDpl
	SDQa7p7i0Jic5AsBb4UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nk3kA-006vCc-T7; Thu, 28 Apr 2022 12:59:39 +0000
Received: from smtpout30.security-mail.net ([85.31.212.34]
 helo=fx304.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nk3k4-006vBm-Ve
 for barebox@lists.infradead.org; Thu, 28 Apr 2022 12:59:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 74E6E627FA
 for <barebox@lists.infradead.org>; Thu, 28 Apr 2022 14:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1651150767;
 bh=NIuufnHa23b4eFuk1yxSH/BwTqPPLEi1U9SYZ8onoDA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=RWbm4vq3MgGJsO5eTffGELaFa0+6qLsJPuYhC5m6o2MjZC9Ip0emJeaiyF/b12ORJ
 1Z4sCvoN40bAGaHw0gAKDnSys4sVdwYa1WJkcJ6nzWhNCh/2C16IBo/2Wg2oD7RBfo
 /39NNyW8a5HjdIBsj2UuyNJvx9aGm2qi/QjsQE+8=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id AA69E628CA; Thu, 28 Apr 2022 14:59:20 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx304.security-mail.net (Postfix) with ESMTPS id 074C3628B1; Thu, 28 Apr
 2022 14:59:19 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 8EE2927E0444; Thu, 28 Apr 2022
 14:59:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 7783727E0448; Thu, 28 Apr 2022 14:59:19 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 AY1DzkKhlKkD; Thu, 28 Apr 2022 14:59:19 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 5FF2627E0444; Thu, 28 Apr 2022
 14:59:19 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <cd3c.626a8fa7.aab37.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 7783727E0448
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1651150759;
 bh=bm1Roi9eDwP1TTy5dUCKOv/lgticUV4XbBr3JO5WK6I=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=Xkk7biIKrYIctQ6uRWV3e9T9qRLedUEUs/klYshb7k7f9HvHgU/0pLjUbgXPKnr3D
 Ssz0796TvbtHfkF10AbduCrDuTuwH5r1562qPyaDaXKwuQD61aRcHj1Dy21B00tCmv
 KNJ4yEAcxaGdPb9LoZtSo6xfG87trDXJBjrWuKCI=
Date: Thu, 28 Apr 2022 14:59:18 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220428125918.GE25550@tellis.lin.mbt.kalray.eu>
References: <20220427121413.1887458-1-o.rempel@pengutronix.de>
 <20220427121413.1887458-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427121413.1887458-2-o.rempel@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_055933_221574_9C7C44E6 
X-CRM114-Status: GOOD (  22.73  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/5] common: add $global.serial_number with device
 tree fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Wed, Apr 27, 2022 at 02:14:09PM +0200, Oleksij Rempel wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> This new variable can be set by boards from C code or from the
> environment to change the serial number fixed up into the kernel device
> tree.

Very nice! This will be usefull :)

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  common/Kconfig   |  5 +++++
>  common/misc.c    | 16 ++++++++++++++++
>  common/oftree.c  |  9 +++++++++
>  include/common.h |  3 +++
>  4 files changed, 33 insertions(+)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index f7a6a96e87..d08302a573 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1066,6 +1066,11 @@ config MACHINE_ID
>  	  Note: if no hashable information is available no machine id will be passed
>  	  to the kernel.
>  
> +config SERIAL_NUMBER_FIXUP
> +	bool "fix up board serial number"
> +	help
> +	  fixup serial number supplied by board code info device tree
> +
>  config SYSTEMD_OF_WATCHDOG
>  	bool "inform devicetree-enabled kernel of used watchdog"
>  	depends on WATCHDOG && OFTREE && FLEXIBLE_BOOTARGS
> diff --git a/common/misc.c b/common/misc.c
> index 226635f0d4..3b3bc05bfd 100644
> --- a/common/misc.c
> +++ b/common/misc.c
> @@ -149,6 +149,7 @@ EXPORT_SYMBOL(barebox_get_model);
>  BAREBOX_MAGICVAR(global.model, "Product name of this hardware");
>  
>  static char *hostname;
> +static char *serial_number;
>  
>  /*
>   * The hostname is supposed to be the shortname of a board. It should
> @@ -179,6 +180,21 @@ EXPORT_SYMBOL(barebox_set_hostname_no_overwrite);
>  BAREBOX_MAGICVAR(global.hostname,
>  		"shortname of the board. Also used as hostname for DHCP requests");
>  
> +void barebox_set_serial_number(const char *__serial_number)
> +{
> +	globalvar_add_simple_string("serial_number", &serial_number);
> +
> +	free(serial_number);
> +	serial_number = xstrdup(__serial_number);
> +}
> +
> +const char *barebox_get_serial_number(void)
> +{
> +	return serial_number;
> +}
> +
> +BAREBOX_MAGICVAR(global.serial_number, "Board serial number");
> +
>  void __noreturn panic(const char *fmt, ...)
>  {
>  	va_list args;
> diff --git a/common/oftree.c b/common/oftree.c
> index bce0ff09d6..c6d75055cc 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -207,6 +207,15 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
>  	int instance = reset_source_get_instance();
>  	struct device_d *dev;
>  
> +	if (IS_ENABLED(CONFIG_SERIAL_NUMBER_FIXUP)) {
> +		const char *serialno;
> +
> +		serialno = getenv("global.serial_number");
> +		if (serialno)
> +			of_property_write_string(root, "serial-number", serialno);
> +
> +	}
> +
>  	node = of_create_node(root, "/chosen");
>  	if (!node)
>  		return -ENOMEM;
> diff --git a/include/common.h b/include/common.h
> index 4167d4676e..967502a7ab 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -126,4 +126,7 @@ const char *barebox_get_hostname(void);
>  void barebox_set_hostname(const char *);
>  void barebox_set_hostname_no_overwrite(const char *);
>  
> +const char *barebox_get_serial_number(void);
> +void barebox_set_serial_number(const char *);
> +
>  #endif	/* __COMMON_H_ */
> -- 
> 2.30.2
> 
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


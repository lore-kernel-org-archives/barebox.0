Delivery-date: Thu, 15 Apr 2021 09:30:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwSN-0006qz-17
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 09:30:31 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwSM-0007L0-7K
	for lore@pengutronix.de; Thu, 15 Apr 2021 09:30:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=73pBLe5CeJJIZ0xzJdmed7ClisMhhDl1JFpIVTzpa6w=; b=e9qeOne37oZCx4zUmAAhT9c6m
	7ibv6S0nWQ0zGh/XpxLTtjHK5JmPqNP5Buuk1L7e21m1NTfcAbxM8x3K73dDb/AkX5yq8EPN8wM5M
	ZwqfctP0f8oa+rqs6W6YPZyReuvWvFpFpxhq2QtGEaMk4cN3DiobwdzkQLJTC14MP2ow88mwPK59O
	d6maRqMP9TADCB49O5jEih06eREPhHp6Py7jI4u5RTSmVCB/KchVzPMmrqszHNbycEHRtwdqY0OaQ
	fyuR3+J/ABlTIhZ7WBIrhkL3lc0PpsjMcV3Chh4R/ZI7CxuGZtfDF9HR6A9CinrbsgovIZYDMf49y
	2me9W7EzA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWwRP-00FDVq-NX; Thu, 15 Apr 2021 07:29:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwR9-00FDSq-A0
 for barebox@desiato.infradead.org; Thu, 15 Apr 2021 07:29:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=H6YFwMl7rTuFG2cpsM1+POtO5PuuT6Txj9yqDAT/Tg0=; b=BSOi9lOUDHMLBOK7oz/Au/zeEZ
 JRk910e3x4+zE5OdOSSrVWKb1hy2oCJJ5lKHptc9W4EN6v6c9SlAPneIiC9S6N/XFMMjHkDjsnMEd
 15PGbVqRkrCcY1bZ8PkWmq0uwwn1/jORE9RQEO6EnvF1lTLJuw+BZgI8dFvbCJMvamYRxPYtwhOKf
 PaRiI/Q6/sUTNBpSTAKmlpitch1TgPxIIy+wL+ytttZGrkzc5cHQLO+8/cwPXJW68WHIBz2PNVDs8
 67DnMHiFYlu/tVvRdOplXQf9yiX90Upd7toWqhaKsNgLj420HQhDmcZ2n1mkU754r+QVoDdI67clR
 +hFpSLuA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwR6-008LJZ-La
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 07:29:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWwR5-00079Z-DU; Thu, 15 Apr 2021 09:29:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWwR5-0001Xu-4Z; Thu, 15 Apr 2021 09:29:11 +0200
Date: Thu, 15 Apr 2021 09:29:11 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210415072911.GB19819@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
 <20210412223502.29691-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412223502.29691-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:26:06 up 56 days, 10:49, 99 users,  load average: 0.08, 0.13, 0.23
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_002912_724889_B3F9FF2C 
X-CRM114-Status: GOOD (  26.78  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 01/14] show_progress: add system wide progress stage
 notifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 13, 2021 at 12:34:49AM +0200, Ahmad Fatoum wrote:
> Use case is e.g. board code that wants to register a client to light
> status LEDs to indicate system state when no serial output is available.
> This functionality doesn't increase code size due to linker GC when
> CONFIG_PROGRESS_NOTIFIER is disabled.
> 
> There is a generic progress notifier provided that just logs the
> status. This could be shared with the booted kernel via pstore or
> the log as a whole written to a system setup USB drive.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/progress.h  | 43 +++++++++++++++++++++++++++++++++++++++++++
>  lib/Kconfig         |  6 ++++++
>  lib/show_progress.c | 28 ++++++++++++++++++++++++++++
>  3 files changed, 77 insertions(+)
> 
> diff --git a/include/progress.h b/include/progress.h
> index 50b15fb12b4c..7230bd3a9bd5 100644
> --- a/include/progress.h
> +++ b/include/progress.h
> @@ -3,6 +3,8 @@
>  #define __PROGRSS_H
>  
>  #include <linux/types.h>
> +#include <notifier.h>
> +#include <errno.h>
>  
>  /* Initialize a progress bar. If max > 0 a one line progress
>   * bar is printed where 'max' corresponds to 100%. If max == 0
> @@ -15,4 +17,45 @@ void init_progression_bar(loff_t max);
>   */
>  void show_progress(loff_t now);
>  
> +extern struct notifier_head progress_notifier;
> +
> +enum progress_stage {
> +	PROGRESS_UNSPECIFIED = 0,
> +	PROGRESS_UPDATING,
> +	PROGRESS_UPDATE_SUCCESS,
> +	PROGRESS_UPDATE_FAIL,
> +};

Neither the commit message nor the function names say it, but here it
seems the progress is only used in context of a software update. Do you
anticipate going other types of progress here as well?

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


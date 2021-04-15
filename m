Delivery-date: Thu, 15 Apr 2021 09:27:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwPX-0006mu-VI
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 09:27:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwPX-00072T-4G
	for lore@pengutronix.de; Thu, 15 Apr 2021 09:27:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CxSQiNKCigH5xEZYyIPR0Pz2uzsZ2ACU4TR1hCSdeQM=; b=PKrHMPX0ozr8P0YtwpV7spMCI
	sktwnV1dRLxXRXZi3DMlufmqicAmV4jSmYXmUG2HK86uwkRYLFfIbVy4VjOir7gs03e6+lUP+bRw5
	8yle79rxk/X6Vb019ZfWb7LVLcHLCWsLiDLJUs3+PBd1qE/HCgTmieuStWvo6lSGItDy97zFbUgto
	AUcO9f70ERP0DheTJcslWx5aNUhFBNJAO24jHgy0XcwDfqggYHFNLnH3n28WptppgfzgMHLd3DeCn
	XyBRgVnZwqki6PSUhffESsyxSAoJE2afGiOXSTulHn6uaY4MZ/8sRO2dgc5TgNWhiaNBI0KMV5fEw
	yKDbzP48w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWwO2-00FCqZ-KY; Thu, 15 Apr 2021 07:26:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwNo-00FCoT-Sl
 for barebox@desiato.infradead.org; Thu, 15 Apr 2021 07:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=FhSxC8TeRl8fKOlELX8FbsX5eF0gWyVid8/siBorLhw=; b=LgfrTHd6Ns5MLJ0zDeob02HIWV
 jgc1b/SGdJQJx7EmEJLqStS/RW0Xf6dRpjinjsVtWZQjdGY+ppmo+Cu6ewVFSUdh92Wi6jr9zj30w
 le8A+Qf9HDaWMiquK05nAmUGZcQTCEJR8gPd2QUe8Npb6A7i43vqREqdInwah7YDeaNwtdC1ZGkVj
 r1PDXC12tnPGefJZKdqjT/HK2sso8Bq4sQvw8MeTmZOmUdnvS8binOk/MNwfyfIUv0D5LLpqqD/VL
 LS5wvBn5MV6w444+8AFzxs/PaT5S2s1vAJ9Ud1NfA/W/ZagfKGUt8fuvqC1rzUxt0vfc1LrAjK4mO
 0HSbOkRQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwNm-008L8Q-4p
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 07:25:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWwNk-0006gc-HZ; Thu, 15 Apr 2021 09:25:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWwNk-0001W4-81; Thu, 15 Apr 2021 09:25:44 +0200
Date: Thu, 15 Apr 2021 09:25:44 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210415072544.GA19819@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
 <20210412223502.29691-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412223502.29691-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:21:28 up 56 days, 10:45, 99 users,  load average: 0.23, 0.20, 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_002546_206035_B8CA40E9 
X-CRM114-Status: GOOD (  30.98  )
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
Subject: Re: [PATCH 02/14] common: console: add log_dprint to print to file
 descriptor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 13, 2021 at 12:34:50AM +0200, Ahmad Fatoum wrote:
> It can be useful to dump the log into the file, e.g. when doing an
> update from a USB flash drive with no serial peer attached. Board code
> could use log_dprint to dump the log onto the drive. Add a function
> to facilitate this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/console_common.c | 15 +++++++++++++++
>  include/printk.h        |  1 +
>  2 files changed, 16 insertions(+)
> 
> diff --git a/common/console_common.c b/common/console_common.c
> index 3e0741572398..77ad4728fbfd 100644
> --- a/common/console_common.c
> +++ b/common/console_common.c
> @@ -182,6 +182,21 @@ static int console_common_init(void)
>  }
>  device_initcall(console_common_init);
>  
> +int log_dprint(int fd)

This function isn't used anywhere in this series, I would prefer to
merge it along with a user.

Is printing to an opened filedescriptor the most useful semantics of
this function? This only seems to make sense when other things should be
written to the file as well, otherwise I would assume to pass a path to
this function which then handles open/close also.

Sascha

> +{
> +	struct log_entry *log;
> +	int nbytes = 0;
> +
> +	list_for_each_entry(log, &barebox_logbuf, list) {
> +		int ret = dputs(fd, log->msg);
> +		if (ret < 0)
> +			return ret;
> +		nbytes += ret;
> +	}
> +
> +	return nbytes;
> +}
> +
>  void log_print(unsigned flags, unsigned levels)
>  {
>  	struct log_entry *log;
> diff --git a/include/printk.h b/include/printk.h
> index 94a25ec9ebac..798acfdbf188 100644
> --- a/include/printk.h
> +++ b/include/printk.h
> @@ -141,6 +141,7 @@ extern void log_clean(unsigned int limit);
>  #define BAREBOX_LOG_PRINT_ALERT		BIT(1)
>  #define BAREBOX_LOG_PRINT_EMERG		BIT(0)
>  
> +int log_dprint(int fd);
>  void log_print(unsigned flags, unsigned levels);
>  
>  struct va_format {
> -- 
> 2.29.2
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


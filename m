Delivery-date: Mon, 13 May 2024 16:20:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6WXj-00Ciev-2Q
	for lore@lore.pengutronix.de;
	Mon, 13 May 2024 16:20:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6WXj-0003S9-15
	for lore@pengutronix.de; Mon, 13 May 2024 16:20:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eIbJRtz868Oc7AdsZdtnQCYVv2bBNzSUuqW9ZFCHwxs=; b=tCIvvfkxenmUCQcVl1hAoM7QdK
	p3NuhTebq9v6KZl+11t++F7OyWXAlrYHCUqO49dqrAtPG4MoYOiynfSdwM5WJoRfwBcF4BBIJ3wIj
	hr4quzFtNzQoGbxkyAx5sysRv13dsNCaE245n5GrX+JYqkiBs8HCU2GotorMKgYW3np1cZ37c4D/6
	khpPJCR0c35SVv6/Gk67aeatZ3mk3dxVEBmY+Mc5a0UpSxPrhjn0Bozfj9iiIJwlpLRgMMHFXhnHq
	e3+zahpNfvxsWLqv8hoF/+vi9pHtdpbxWwH+HKSTI62QEbWDBhnJjYrFLus6sdL6/7qq63uFNDX+t
	LM06Hi+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6WXA-0000000DAXD-3TdJ;
	Mon, 13 May 2024 14:20:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6WX7-0000000DAW2-2nWY
	for barebox@lists.infradead.org;
	Mon, 13 May 2024 14:20:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1s6WX3-0003Dv-3v; Mon, 13 May 2024 16:20:01 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1s6WX2-001Bjk-LL; Mon, 13 May 2024 16:20:00 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1s6WX2-009V6d-1s;
	Mon, 13 May 2024 16:20:00 +0200
Date: Mon, 13 May 2024 16:20:00 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>,
	barebox@lists.infradead.org
Message-ID: <20240513142000.vkhynk3imtapthvx@pengutronix.de>
References: <20240513134938.4100056-1-thomas.haemmerle@leica-geosystems.com>
 <86f40ad4-bf4b-4192-85a1-e32c90957cc5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86f40ad4-bf4b-4192-85a1-e32c90957cc5@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_072005_737963_B5B0C9E0 
X-CRM114-Status: GOOD (  29.06  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fastboot: add possibility to register OEM commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 24-05-13, Ahmad Fatoum wrote:
> Hello Thomas,
> 
> On 13.05.24 15:49, Thomas Haemmerle wrote:
> > Currently it is not possible to add additional OEM commands without
> > extending the array `cmd_oem_dispatch_info[]`.
> > Add the possibility to register commands from e.g. board files by
> > replacing the array with a list.
> 
> struct fastboot_opts has cmd_exec and cmd_flash callback for exactly the
> purpose of board code handling custom OEM and flash commands.
> 
> To make use of this, you'd probably want to call usb_multi_register()
> from board code with a suitable argument instead of having it done by
> usbgadget command or autostart.

is this the suggested way of doing this? Since we don't want anything
special just a few board specific oem commands and usb_multi_register()
seems a bit to much for this.

Regards,
  Marco

> Would that work for you?
> 
> Cheers,
> Ahmad
> 
> > 
> > Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> > ---
> >  common/fastboot.c  | 53 +++++++++++++++++++++++++++++++++++-----------
> >  include/fastboot.h |  9 ++++++++
> >  2 files changed, 50 insertions(+), 12 deletions(-)
> > 
> > diff --git a/common/fastboot.c b/common/fastboot.c
> > index f8a01dea7a..8f78b0e517 100644
> > --- a/common/fastboot.c
> > +++ b/common/fastboot.c
> > @@ -885,24 +885,41 @@ static void cb_oem_exec(struct fastboot *fb, const char *cmd)
> >  		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
> >  }
> >  
> > -static const struct cmd_dispatch_info cmd_oem_dispatch_info[] = {
> > -	{
> > -		.cmd = "getenv ",
> > -		.cb = cb_oem_getenv,
> > -	}, {
> > -		.cmd = "setenv ",
> > -		.cb = cb_oem_setenv,
> > -	}, {
> > -		.cmd = "exec ",
> > -		.cb = cb_oem_exec,
> > -	},
> > +struct oem_command {
> > +	char *cmd;
> > +	void (*cb)(struct fastboot *fb, const char *opt);
> > +	struct list_head list;
> >  };
> >  
> > +LIST_HEAD(oem_cmd_list);
> > +
> > +int fastboot_register_oem_command(char *cmd, void (*cb)(struct fastboot *fb, const char *opt))
> > +{
> > +	struct oem_command *oem_cmd = xzalloc(sizeof(*oem_cmd));
> > +
> > +	oem_cmd->cmd = xstrdup(cmd);
> > +	oem_cmd->cb = cb;
> > +
> > +	list_add_tail(&oem_cmd->list, &oem_cmd_list);
> > +
> > +	return 0;
> > +}
> > +
> >  static void __maybe_unused cb_oem(struct fastboot *fb, const char *cmd)
> >  {
> > +	struct oem_command *oem_cmd;
> > +
> >  	pr_debug("%s: \"%s\"\n", __func__, cmd);
> >  
> > -	fb_run_command(fb, cmd, cmd_oem_dispatch_info, ARRAY_SIZE(cmd_oem_dispatch_info));
> > +	list_for_each_entry(oem_cmd, &oem_cmd_list, list) {
> > +		if (!strcmp_l1(oem_cmd->cmd, cmd)) {
> > +			oem_cmd->cb(fb, cmd + strlen(oem_cmd->cmd));
> > +			return;
> > +		}
> > +	}
> > +
> > +	fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "unknown OEM command %s",
> > +			  cmd);
> >  }
> >  
> >  static const struct cmd_dispatch_info cmd_dispatch_info[] = {
> > @@ -969,6 +986,18 @@ struct file_list *get_fastboot_partitions(void)
> >  	return system_partitions_get_null();
> >  }
> >  
> > +static int fastboot_oem_cmds_init(void)
> > +{
> > +	if (!IS_ENABLED(CONFIG_FASTBOOT_CMD_OEM))
> > +		return 0;
> > +
> > +	fastboot_register_oem_command("getenv ", cb_oem_getenv);
> > +	fastboot_register_oem_command("setenv ", cb_oem_setenv);
> > +	fastboot_register_oem_command("exec ", cb_oem_exec);
> > +	return 0;
> > +}
> > +device_initcall(fastboot_oem_cmds_init);
> > +
> >  static int fastboot_globalvars_init(void)
> >  {
> >  	if (IS_ENABLED(CONFIG_FASTBOOT_SPARSE)) {
> > diff --git a/include/fastboot.h b/include/fastboot.h
> > index cd415847e3..38b0728a89 100644
> > --- a/include/fastboot.h
> > +++ b/include/fastboot.h
> > @@ -78,6 +78,15 @@ static inline struct file_list *get_fastboot_partitions(void)
> >  }
> >  #endif
> >  
> > +#ifdef CONFIG_FASTBOOT_CMD_OEM
> > +int fastboot_register_oem_command(char *cmd, void (*cb)(struct fastboot *fb, const char *opt));
> > +#else
> > +static inline int fastboot_register_oem_command(char *cmd, void (*cb)(struct fastboot *fb, const char *opt))
> > +{
> > +	return -ENOSYS;
> > +}
> > +#endif
> > +
> >  int fastboot_generic_init(struct fastboot *fb, bool export_bbu);
> >  void fastboot_generic_close(struct fastboot *fb);
> >  void fastboot_generic_free(struct fastboot *fb);
> > 
> > base-commit: e70a514bce4bc84429c46fa378622024ac6c6863
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 



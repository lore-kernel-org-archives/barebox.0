Delivery-date: Tue, 09 Aug 2022 10:14:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLKNV-00H7r9-2b
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 10:14:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLKNV-0003zn-RI
	for lore@pengutronix.de; Tue, 09 Aug 2022 10:14:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IykWi2MVI0ID0yxym9NsvyJT0sV8+6/ddlygi88bHHo=; b=hTCPYgiYftlJZ4RRNYyOXIYrnz
	Nvm8IKKWuoWH8wX38EjS3EQqS5Vnf5gPATclUeRvv8KE0zmxfJX5lIN78QhcmPV6bx+r9SA1Kvz2K
	NzZ170CAcTgvmb440HDpfKOtIUSfuTT2BgpG67UDN3xRe/QYe3AHsRK8lg4yuJojmwPf6C3omLdgK
	b85NKGzfaA11sY4xMTk+hILifZ5cntm+WUs0uusLFDP4VVL7jZ+NlNIMICAIS2R1wewYcSegEuiLZ
	wIpCCQYrWCE2kryXYkuX5RerXJOKMZFikNJVhfrFqL6xdS3ep2TRWZeYPyclFtl3VxxXFhjb0/Z//
	89NmEuQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLKM8-002hG3-Jr; Tue, 09 Aug 2022 08:12:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLKM2-002hDP-9w
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 08:12:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLKM0-0003uk-OZ; Tue, 09 Aug 2022 10:12:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLKM0-00066Z-0F; Tue, 09 Aug 2022 10:12:44 +0200
Date: Tue, 9 Aug 2022 10:12:43 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809081243.GI31528@pengutronix.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
 <8990811d3a980010a7cb72f47677206491bcee49.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8990811d3a980010a7cb72f47677206491bcee49.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_011246_379186_B84AD86E 
X-CRM114-Status: GOOD (  21.35  )
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
Subject: Re: [PATCH 12/13] tftp: allow to change tftp port
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 18, 2022 at 02:22:27PM +0200, Enrico Scholz wrote:
> useful e.g. when working with a local, non-privileged tftp server
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  fs/tftp.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/tftp.c b/fs/tftp.c
> index 2c2ff081be51..400209c26023 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -78,6 +78,7 @@
>  #define TFTP_ERR_RESEND	1
>  
>  static int g_tftp_window_size = TFTP_MAX_WINDOW_SIZE / 1;
> +static int g_tftp_port = TFTP_PORT;
>  
>  struct tftp_block {
>  	uint16_t id;
> @@ -600,7 +601,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
>  		goto out;
>  	}
>  
> -	priv->tftp_con = net_udp_new(tpriv->server, TFTP_PORT, tftp_handler,
> +	priv->tftp_con = net_udp_new(tpriv->server, g_tftp_port, tftp_handler,
>  			priv);
>  	if (IS_ERR(priv->tftp_con)) {
>  		ret = PTR_ERR(priv->tftp_con);
> @@ -944,6 +945,7 @@ static struct fs_driver_d tftp_driver = {
>  static int tftp_init(void)
>  {
>  	globalvar_add_simple_int("tftp.windowsize", &g_tftp_window_size, "%u");
> +	globalvar_add_simple_int("tftp.port", &g_tftp_port, "%u");

The port is connection specific. I think we should rather pass the port
through mount using -o, something like mount -o port=4711 <server>
<path>. Grep for "parseopt_hu" to see how this can be done.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Wed, 22 Nov 2023 16:25:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5p6J-004VaC-1A
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 16:25:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5p6J-0001U2-BU
	for lore@pengutronix.de; Wed, 22 Nov 2023 16:25:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qamfpjq6sQfU2VsGqTU7DosRrJZdjnxxFb+xHixbqdo=; b=S2Osov3Fc/8WSTajJwk4dMYKUc
	mWmCDz6pXjOGWjj4KnN0SLb6IHZPxPVTBnAHprl6kp1zo+ubuXU2q/D/kbDbCbW+/ahe+iXzF97C9
	l0q8K9OIDYVkP91JimoaB4ojdA+mTxQww0AC32T5khatTVXzy+abVQE7YJG945rybLBZZZ7rPkCFI
	6XD7e92HGk6FVlbYQloVSmrWfNVlTx/7qZgIN8OMENLlZHOmHgEg+lO2nMkwEFM2D7K0pZwMYy8iw
	d/+Dx6elWAzB//bCH/Hho/AAxBIw3qeKRENPoLTy9e1hbdg151uHnVKUyr1GCZgfb3MksbRaizuxM
	2vl74yPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5p4m-002EzG-2L;
	Wed, 22 Nov 2023 15:23:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5p4j-002Exs-1k
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 15:23:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5p4f-0000y4-AL; Wed, 22 Nov 2023 16:23:33 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r5p4e-00AqIq-U4; Wed, 22 Nov 2023 16:23:32 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5p4e-003JtZ-Rl; Wed, 22 Nov 2023 16:23:32 +0100
Date: Wed, 22 Nov 2023 16:23:32 +0100
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231122152332.GZ3359458@pengutronix.de>
References: <20231122110641.3683555-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122110641.3683555-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_072337_584359_2AF2ACD0 
X-CRM114-Status: GOOD (  21.12  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] commands: i2c_read: default to reading one byte
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 12:06:41PM +0100, Roland Hieber wrote:
> The help text for i2c_read specifies that -c is optional:
> 
>     Usage: i2c_read [-bacrwv]
> 
> However, using i2c_read without -c falls through in do_i2c_read():
> 
> 	if ((addr < 0) || (count < 1) || (addr > 0x7F))
> 		return COMMAND_ERROR_USAGE;
> 
> Actually make -c optional by initialising the count to 1.
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  commands/i2c.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/i2c.c b/commands/i2c.c
> index 997d49a94916..3a708531ee0a 100644
> --- a/commands/i2c.c
> +++ b/commands/i2c.c
> @@ -195,7 +195,7 @@ static int do_i2c_read(int argc, char *argv[])
>  	struct i2c_adapter *adapter = NULL;
>  	struct i2c_client client;
>  	u8 *buf;
> -	int count = -1, addr = -1, reg = -1, verbose = 0, ret, opt, bus = 0, wide = 0;
> +	int count = 1, addr = -1, reg = -1, verbose = 0, ret, opt, bus = 0, wide = 0;
>  
>  	while ((opt = getopt(argc, argv, "a:b:c:r:vw")) > 0) {
>  		switch (opt) {
> @@ -264,7 +264,7 @@ BAREBOX_CMD_HELP_OPT("-b BUS\t", "i2c bus number (default 0)")
>  BAREBOX_CMD_HELP_OPT("-a ADDR\t", "i2c device address")
>  BAREBOX_CMD_HELP_OPT("-r START", "start register (optional, master receive mode if none given)")
>  BAREBOX_CMD_HELP_OPT("-w\t",       "use word (16 bit) wide access")
> -BAREBOX_CMD_HELP_OPT("-c COUNT", "byte count")
> +BAREBOX_CMD_HELP_OPT("-c COUNT", "byte count (default 1)")
>  BAREBOX_CMD_HELP_OPT("-v\t",       "verbose")
>  BAREBOX_CMD_HELP_END
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



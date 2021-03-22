Delivery-date: Mon, 22 Mar 2021 10:20:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOGjK-0003Gq-S9
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 10:20:10 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOGjK-0006p1-2a
	for lore@pengutronix.de; Mon, 22 Mar 2021 10:20:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6iTMaglqmKTOaEtrpTtSJ47wehbmaDePMCt6OnSSdx8=; b=Zf5Cbn7cUGN2yfUofMHbaQLr3
	As7YU3humj9ZHZg/DnqY4gYJNSL6BtRI165Iw02VsqLRBRjV/aWxLHu/0gaVpbLnhAPsesfO0uOA4
	5GkNCZgmMyjMA+yHKIdv7AtEt4vlD05SybEF5VkqGkvfsgvXq2QIZWOaGWeiZkHRIvlvJAry0htAD
	7Vb3biSS7NWpNlLDP+wfr58XMDgQhqeoh0hKIcz30MU4Dn8BkD075PJlDDIp6FjldDns0+fix9fRK
	08WvuKSUptzdgEAUfZUgoFarwjvAvFtRNmnjQGZNcd85JyvK/FgogMfRrpYv3htbkeAODCQLijzKg
	sFmaZCxyw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOGiG-00BF4J-A8; Mon, 22 Mar 2021 09:19:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOGi8-00BF3Q-GG
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 09:18:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOGi7-0006fr-1W; Mon, 22 Mar 2021 10:18:55 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOGi6-0006tb-Oy; Mon, 22 Mar 2021 10:18:54 +0100
Date: Mon, 22 Mar 2021 10:18:54 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210322091854.GQ23724@pengutronix.de>
References: <20210322065527.14428-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322065527.14428-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:18:45 up 32 days, 12:42, 86 users,  load average: 0.21, 0.15, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_091857_424134_8537D0EA 
X-CRM114-Status: GOOD (  23.53  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] commands: readline: fix memory leak on wrong
 usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 22, 2021 at 07:55:25AM +0100, Ahmad Fatoum wrote:
> Later error-handling frees buf, but the first early exit doesn't.
> Move buf beyond it to fix the memory leak.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

>  commands/readline.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/readline.c b/commands/readline.c
> index 403ac8563a36..7933a58c08b4 100644
> --- a/commands/readline.c
> +++ b/commands/readline.c
> @@ -10,11 +10,13 @@
>  
>  static int do_readline(int argc, char *argv[])
>  {
> -	char *buf = xzalloc(CONFIG_CBSIZE);
> +	char *buf;
>  
>  	if (argc < 3)
>  		return COMMAND_ERROR_USAGE;
>  
> +	buf = xzalloc(CONFIG_CBSIZE);
> +
>  	command_slice_release();
>  
>  	if (readline(argv[1], buf, CONFIG_CBSIZE) < 0) {
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


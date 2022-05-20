Delivery-date: Fri, 20 May 2022 13:02:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns0P8-0032N2-OV
	for lore@lore.pengutronix.de; Fri, 20 May 2022 13:02:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns0P6-0005f6-PK
	for lore@pengutronix.de; Fri, 20 May 2022 13:02:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIiU84qcLwXVM1jT7bgEXnBUWA6r9oRHLNfFpWagcKo=; b=YsWHBWDHQ6GA5q
	yOSmGFIYvrBeFRDlZjwF8FmBo/yJe3GVhDMaL2qKfbMEzoF+W8r4ZD/tUt8+xqEAB3lPQ/lAZ/lvO
	5UpZ3edxFDdPTb9n4kuFhOQT3b/kCupxiVZfNbpGVn9Kj1v0Aw0di5jSw6WWqjdM+k0FazdCamNrz
	sU6GFh1ZjL2MIBjXphuVL5FJghyO+w5NK2EKG7yzx7TAphLGdoTV0fPV3Enma9MzIiXCXNVlC4PB7
	TFLPXn+6pOJCGWBmQ3MnoYXEH9wQBWzT+bMzL0lHcaaX8lsP9Ttt8sWF1OzDq5Mtjx6hua5H8fA1m
	JDMXspgPCTVxrXMEe2wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns0NI-00Bwgx-4Y; Fri, 20 May 2022 11:00:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrzIb-00Bi6D-SX
 for barebox@bombadil.infradead.org; Fri, 20 May 2022 09:51:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BFvHhD9t87U1W32SP9XqEGE3ItmJPGoP7yPPKNHINoA=; b=T6gALjKuEU7UIuDCDft34eZHQT
 prxLzfx8jLNQErZZKrtI29oYmGaEc6DpBbU6h9QEmYAiKWn1QpVqGeAHwK02sk66eVFTMapZnci1M
 tZWONzV5SYCaRf6HDghtSCEXuPJR7grRH5vm20FCxDdwiM6EDIWi8V4agbXpf3Yme5aWPD5cjVzrE
 fB+SpRtfxYd4BYqXa5NOG2pHHPH7Y/tcFnio9KY7pHFU3Le9EPtOFcqVWvL8LW/up8y9v5gHETfSm
 uEGK7cnWIBkiE2WDFkIkC8fS1kozQr9OpiAuqibOGZ8h41HBAEbdTLvvJKd7w/Hp6ftvvOiNdw11W
 a5AzIPLQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrzIV-002Ia3-AZ
 for barebox@lists.infradead.org; Fri, 20 May 2022 09:51:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrzIQ-0005Wi-DN; Fri, 20 May 2022 11:51:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrzIQ-0000KU-4M; Fri, 20 May 2022 11:51:46 +0200
Date: Fri, 20 May 2022 11:51:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220520095146.GG25578@pengutronix.de>
References: <20220520065519.28173-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220520065519.28173-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:51:34 up 50 days, 22:21, 55 users,  load average: 0.29, 0.18, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_105151_549189_EEFDFC82 
X-CRM114-Status: GOOD (  20.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: fix clk_round_rate command description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 20, 2022 at 09:55:19AM +0300, Denis Orlov wrote:
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  commands/clk.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/clk.c b/commands/clk.c
> index 0f7d7422e9..dfbc7c988f 100644
> --- a/commands/clk.c
> +++ b/commands/clk.c
> @@ -99,12 +99,12 @@ static int do_clk_round_rate(int argc, char *argv[])
>  }
>  
>  BAREBOX_CMD_HELP_START(clk_round_rate)
> -BAREBOX_CMD_HELP_TEXT("Set clock CLK to RATE")
> +BAREBOX_CMD_HELP_TEXT("Show clock CLK actual rate if set to HZ")
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(clk_round_rate)
>  	.cmd		= do_clk_round_rate,
> -	BAREBOX_CMD_DESC("set a clocks rate")
> +	BAREBOX_CMD_DESC("show a resulting clocks rate")
>  	BAREBOX_CMD_OPTS("CLK HZ")
>  	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
>  	BAREBOX_CMD_HELP(cmd_clk_round_rate_help)
> -- 
> 2.20.1
> 
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


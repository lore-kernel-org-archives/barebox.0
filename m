Delivery-date: Mon, 17 Mar 2025 10:07:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6Rm-000YOX-2t
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 10:07:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6Rl-0004CM-P6
	for lore@pengutronix.de; Mon, 17 Mar 2025 10:07:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vS3AjZEf+5ZHTM86QFeOwmVkFDZK9qg5l/4zCCOJDEA=; b=3mI4C5G3BNItaXLEJGYgRm97Tc
	Ea2fqTxso+UR8G+KXzIaLqDsOrXAjL2gU3bExXQwjGlvCqh9qnR9TMRV/g6cU68qjXsV4seRAbihi
	cwifPJO+KwvmXIU/OjERagY01MLXchSKTmQ3iZflrq5n4OzYVjYReswW9gGDJ5s1Is3a2JWqZpqJA
	KOGnBgiVPxJsWESD8jKWJTZRultch02kFw0x5FWwhgvT0zP1HSYBq4CDBX+x7BvMEPtB9AUdAXrLc
	Xx2Hq69uo9vQbREwPZcPRylTSHjehucUIEcR3vFlHUjbv1yblLlc87dL+oq50z1os4RWbS8Xppr/F
	4HiSET6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6RN-00000001rdM-1bPc;
	Mon, 17 Mar 2025 09:07:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6RL-00000001rd0-1M4R
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 09:07:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tu6RK-0003ud-4L; Mon, 17 Mar 2025 10:07:18 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu6RJ-000DhE-1e;
	Mon, 17 Mar 2025 10:07:17 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu6RJ-0017ly-2c;
	Mon, 17 Mar 2025 10:07:17 +0100
Date: Mon, 17 Mar 2025 10:07:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z9fmReMijNznh7FK@pengutronix.de>
References: <20250315135245.2729171-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250315135245.2729171-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_020719_361794_212AAD00 
X-CRM114-Status: GOOD (  21.65  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] commands: Add `ip` command for listing interfaces,
 addresses, and routes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sat, Mar 15, 2025 at 02:52:45PM +0100, Oleksij Rempel wrote:
> This patch introduces the `ip` command, providing functionality similar
> to Linux’s `ip` tool, catering to users with strong Linux muscle memory.
> It supports:
> 
> - `ip l` / `ip link`   - Show network interfaces (state, MAC address)
> - `ip a` / `ip addr`   - Show assigned IP addresses and netmasks
> - `ip r` / `ip route`  - Show routing table, including default gateway,
>                          interface-specific routes, DNS, and server IP.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
> changes v2:
> - add SPDX
> - fix help in Kconfig
> - add support for range of commands
> - use COMMAND_ERROR_USAGE
> ---
>  commands/Kconfig  |   9 +++
>  commands/Makefile |   1 +
>  commands/ip.c     | 159 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 169 insertions(+)
>  create mode 100644 commands/ip.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index fe459fa862f5..466afa7fa479 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1397,6 +1397,15 @@ config CMD_TFTP
>  	  Options:
>  		  -p	push to TFTP server
>  
> +config CMD_IP
> +	tristate
> +	prompt "ip"
> +	default y

Dropped the default y while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



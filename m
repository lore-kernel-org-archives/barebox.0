Delivery-date: Tue, 13 Apr 2021 09:45:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDkB-00075I-PY
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 09:45:55 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDkA-0003TA-TV
	for lore@pengutronix.de; Tue, 13 Apr 2021 09:45:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eeyY9XsjLzOaE2Ju8acX5w1KFCGP/He++UkjrHcO6K8=; b=WrxDTxilF/SAYKsSJ4e8UwKuQ
	JaXEWTDadHLkeXiiMt3UJFM4KFafuDEdiRwuoUmI2FAbEDTO/eZaI6dyOHwNXzt/UWXt08XAAZWF3
	F6ut6JFow+MJubUQqI+n7GIMmwjb4OtAE4rrKqL2kD0dasmSOed+fdO2TSFjHlzxRMQ+bLnhEqLjW
	yyd/yCkCgLGosC+ZSFHHTxHYmj7VS2Mvj8e3g/UJvVV+vVG7gLBf5doC5AlNHepy+Ke0AjKY76vRF
	tnMLHqjWUhqWosaAhBcRFHe5wYcHgeU3Uhh/ip8q7UdiAvAACbP2qjJAyue91szT7zknouEEiUA3J
	EyiPQiTNA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWDiu-008XKq-AE; Tue, 13 Apr 2021 07:44:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDi0-008XEV-4O
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 07:44:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=sMhCQRx6/ixq8PsdkdIz0xGO+ocjg2TqA9ZNFB/V+48=; b=NQRUGuknDXqqJI5ghOMsQHRka7
 dzc88fkx2i/sVKamAuzdOmXpgnC3ymMvMzHnkUhUy/WOfIUhvH15XBbvzqjSUA8SzhgWUbm6aw/bB
 +pAQoy9Q2bopVqVInhM1+r9PCKoY9spvjKdlUk4wyrYI+grRMpP9wznp/v2eY4lEkYWUUY/qmpKv6
 bV/J0IC/XERhJqSNxRxLqCZO3kxNTLEzxDQyWXD4+MItomuSTbW3jlDPkEXIBNn94DQINeguSLCyV
 5yERL/P0bsxvfFHhixTma3Hc1fHEz7cPbjFtjWuTOZ4IipeGho2AXMl0pLD0YNcud2gW8st9WI+Lw
 cnDuSaHw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDhx-006oH8-Hw
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 07:43:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDhv-000392-4m; Tue, 13 Apr 2021 09:43:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDhu-0004WQ-Mp; Tue, 13 Apr 2021 09:43:34 +0200
Date: Tue, 13 Apr 2021 09:43:34 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210413074334.GJ19819@pengutronix.de>
References: <20210404111831.592821-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210404111831.592821-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:43:24 up 54 days, 11:07, 87 users,  load average: 0.04, 0.08, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_004337_618301_203E68EC 
X-CRM114-Status: GOOD (  23.70  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] sandbox: env: set nv.autoboot=abort to drop to shell
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Apr 04, 2021 at 01:18:30PM +0200, Ahmad Fatoum wrote:
> barebox on sandbox defaults to network boot, which fails either due to
> missing TAP support (like not having CAP_NET_ADMIN) or because the files
> couldn't be fetched.
> 
> Arguably, the most user-friendly thing is to drop to shell. Do so.
> Users can still override nv.autoboot if they want to boot differently.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/sandbox/board/env/nv/autoboot | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 arch/sandbox/board/env/nv/autoboot

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/board/env/nv/autoboot b/arch/sandbox/board/env/nv/autoboot
> new file mode 100644
> index 000000000000..f7d13fd04662
> --- /dev/null
> +++ b/arch/sandbox/board/env/nv/autoboot
> @@ -0,0 +1 @@
> +abort
> -- 
> 2.30.0
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


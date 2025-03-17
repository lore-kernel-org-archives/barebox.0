Delivery-date: Mon, 17 Mar 2025 09:49:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6A2-000XwA-1c
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 09:49:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6A1-0007mh-CJ
	for lore@pengutronix.de; Mon, 17 Mar 2025 09:49:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g5IS8KN1pVxovhX/XiHG2lT2/0+tmYmgmIrMLguw+6s=; b=vlwJctCrFM1DMVbnHfbOuQiOHD
	E3VjoBUklhtGkdK9vUXCFON0b1wzZpRz/L2ZwQJ3BwOvPRrDAmYTciHDQjmS2yfLUxStO+IfVs2A+
	2gfPIhOd/Tk76G9mY0M6LdUlxA8S7DMdXoyuWHYWXqbMEAvf26RhAUacICVxXrRUMCS0bBYqxpOZ5
	yRX0qaGZNi+LzbhSS2fjg6Z4JGocFyk+/KNEnjdGZLT/AQcsa2aYDoiqJsW8P8a0sKjjGJPyNlG6R
	306qkjX/5TKZDcz5LrXRj/oYM3bGRDYheJyqwlrjm2LOse7I/157qBHvQUrZwHGewlRClZKWN3oc8
	lOVIN66A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu69X-00000001nr8-0bYO;
	Mon, 17 Mar 2025 08:48:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu63B-00000001mfO-0YCJ
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 08:42:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tu639-0006Fg-Q7; Mon, 17 Mar 2025 09:42:19 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu639-000DNW-0e;
	Mon, 17 Mar 2025 09:42:19 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu639-0015ki-1b;
	Mon, 17 Mar 2025 09:42:19 +0100
Date: Mon, 17 Mar 2025 09:42:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <Z9fga36NGkFsrZ82@pengutronix.de>
References: <20250314213344.12335-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250314213344.12335-1-jmaselbas@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_014221_166214_E287B3AA 
X-CRM114-Status: GOOD (  20.18  )
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
Subject: Re: [PATCH] commands: hwclock: replace strncpy with strlcpy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Jules,

On Fri, Mar 14, 2025 at 10:33:44PM +0100, Jules Maselbas wrote:
> strncpy could leave the rtc_name buffer not nul-terminated, strlcpy will
> always nul-terminate the dst buffer.
> Also replace the hardcoded size with sizeof(rtc_name)
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
>  commands/hwclock.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/hwclock.c b/commands/hwclock.c
> index c594e070ac..33829e4118 100644
> --- a/commands/hwclock.c
> +++ b/commands/hwclock.c
> @@ -95,7 +95,7 @@ static int do_hwclock(int argc, char *argv[])
>  
>  		switch (opt) {
>  		case 'f':
> -			strncpy(rtc_name, optarg, 16);
> +			strlcpy(rtc_name, optarg, sizeof(rtc_name));
>  			break;

rtc_name is an array for no good reason. Can we just do a

const char *rtc_name = "rtc0";

		case 'f':
			rtc_name = optarg;

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



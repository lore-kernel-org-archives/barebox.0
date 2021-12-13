Delivery-date: Mon, 13 Dec 2021 23:45:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwu47-005jAh-SS
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 23:45:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwu46-0004je-8q
	for lore@pengutronix.de; Mon, 13 Dec 2021 23:45:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OfWRLCMSyaHM+D31q2IlucP4K22cCmDbK34J4u5e4Xo=; b=l/tkLvYdr2Rhxe70zX8PH7P3dd
	zlpLqal/OtWOPQeuRXkcUsMhSouHta6eTo/+90qqkgLm6nh/oR/zzqRDPOFF1uRH3WFmP3vu2DFfh
	OWp16wtFHRGhVYsTI6uOMp0PxBuH3xAqaqzQscOdUCr5D4uB+Kah7ulNpEPoqkKBBc8Sbl4lLk+6p
	Jq6MA33YGV7TBYrExApn0szHPkP2pazNLF+9YQt6rFDjmui9UNRhYOM6IyznXhrAa0s8LTePiBVPo
	LQZ5akURGxctGGmK4Nc26I1c6kH99hQ2zqYAEP8KXESqAaFSNPwtxHeV8y/ha8U6DtiKrv/sdAltQ
	owE1Ed/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwu2m-00BpP5-Os; Mon, 13 Dec 2021 22:43:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwtnm-00Bjjk-0f
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 22:28:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtnk-0002i5-N2; Mon, 13 Dec 2021 23:28:08 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtnk-0004RE-DP; Mon, 13 Dec 2021 23:28:08 +0100
Date: Mon, 13 Dec 2021 23:28:08 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211213222808.GL6003@pengutronix.de>
References: <20211209105708.3517684-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211209105708.3517684-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:25:36 up 3 days, 7:11, 33 users, load average: 0.06, 0.04, 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_142810_097186_7819BE25 
X-CRM114-Status: GOOD (  22.71  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] vsprintf: add support for printing raw buffers as
 hex (%*ph)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 09, 2021 at 11:57:06AM +0100, Ahmad Fatoum wrote:
> Import from Linux support for printing buffers as a hex string
> with a certain separator. For larger buffers consider using
> print_hex_dump(). Examples:
> 
>   %*ph	00 01 02  ...  3f
>   %*phC	00:01:02: ... :3f
>   %*phD	00-01-02- ... -3f
>   %*phN	000102 ... 3f
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/Kconfig    |  3 +++
>  lib/vsprintf.c | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 53 insertions(+)
> 
> diff --git a/lib/Kconfig b/lib/Kconfig
> index 718033e56e64..27e7bea6852f 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -166,6 +166,9 @@ config PRINTF_UUID
>  config PRINTF_WCHAR
>  	bool
>  
> +config PRINTF_HEXSTR
> +	bool

So hexdumps are silently ignored when this option is disabled. Not sure
if this should really be configurable, but I think when it is
configurable it should be default y to avoid surprises.

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


Delivery-date: Fri, 28 Jul 2023 08:38:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPH7G-00D963-1Z
	for lore@lore.pengutronix.de; Fri, 28 Jul 2023 08:38:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPH7D-0005tu-LQ
	for lore@pengutronix.de; Fri, 28 Jul 2023 08:38:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PiBrfJeogW3pQCCzknasDUyYDQ1Pn+AtW/Sq/V7ZO48=; b=pYh+s1GbCae3dwtE7exwePue/u
	f2hSJvYcLG9lYugHRcEhtSepelr5g6chfVcug3HpDO330z5a/hCh9XX32NBkb/jgcqk0DqxTzrfiu
	YHw0Y4CntHza6ba2FcPyjSMVKkt0fJolTWrDNOfqjEGF0F87d1581kL9Je1yCDyIKQPSh7S4Pueqv
	ZRhjZDYIB/KNOSBAGCXAr65wxadPw8JtUkY1cDlcXJshYtDvHN6onxXGcgDq40p8ou4H2pnopQf4y
	h7MtxccVPwVYfXjFj61Htz7sPMDl6N5h5+ytHAClAOqTbPGk8IwFr+BtszmqkhYsTY9//Pr97qQxS
	0GsEqYCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPH67-001uaS-1t;
	Fri, 28 Jul 2023 06:37:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPH64-001uZc-1Q
	for barebox@lists.infradead.org;
	Fri, 28 Jul 2023 06:37:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPH63-0005mU-1n; Fri, 28 Jul 2023 08:37:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPH62-0004pn-Ip; Fri, 28 Jul 2023 08:37:06 +0200
Date: Fri, 28 Jul 2023 08:37:06 +0200
To: Christian Melki <christian.melki@t2data.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230728063706.GG18491@pengutronix.de>
References: <20230704175535.1183448-1-christian.melki@t2data.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230704175535.1183448-1-christian.melki@t2data.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_233708_483323_8D034C09 
X-CRM114-Status: GOOD (  25.10  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net.c: Don't forget about the first fragment.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 04, 2023 at 07:55:35PM +0200, Christian Melki wrote:
> It's possible to request very large messages using
> the current code base. F.ex. UDP datagrams with the tftp client.
> The tftp servers will happily reply with fragmented IP frames.
> All these frame parts need to be dropped as BB currently doesn't
> do fragment reassembly.
> 
> The current check was for fragment offsets only (0x1fff).
> But the first frame has fragment offset 0 and would slip through
> this check. That could result in a seemingly OK frame
> for the tftp client, but with broken data.
> 
> Add check for the MF (More Fragments) flag. Should cover the
> first packet too.
> 
> Signed-off-by: Christian Melki <christian.melki@t2data.com>
> ---
>  net/net.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/net/net.c b/net/net.c
> index 19161d2e82..b842041d59 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -678,7 +678,12 @@ static int net_handle_ip(struct eth_device *edev, unsigned char *pkt, int len)
>  	if ((ip->hl_v & 0xf0) != 0x40)
>  		goto bad;
>  
> -	if (ip->frag_off & htons(0x1fff)) /* Can't deal w/ fragments */
> +	/* Can't deal w/ fragments.
> +	 * Ether a fragment offset (13 bits), or
> +	 * MF (More Fragments) from frag. flags (3 bits).
> +	 * MF - because first fragment has fragment offset 0
> +	 */
> +	if (ip->frag_off & htons(0x3fff)) 

Nice catch ;)

Applied with typo fixed (Ether->Either)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



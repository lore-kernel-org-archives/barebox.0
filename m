Delivery-date: Tue, 16 Aug 2022 08:36:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNqBb-000OLB-0K
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 08:36:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNqBY-0001fG-QY
	for lore@pengutronix.de; Tue, 16 Aug 2022 08:36:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CJNhn4X8B8D7Ma8qv0D2F/lu16UbC/qdPslgSr7h57Y=; b=H2IJWRMsLCizpwTlXT1LpfHZOa
	ub+PyOvtYuVKfbNMLja+bHJvDaNkCToW2jIkuTE5v81ntBjp/PvsXgUrpGczWNBCuLKLcP9i04FUl
	4BPBFzA7uRrPfBOkuUR1FvdLvkgsoWJ7mY/yIueX9Ns0CUasknmGMTWPS4u05kx5KS8jSsRHxctAW
	LGoz8J21zJDCnv8/Enae8lzpwIVZ8hC/bWTPK0GdXo0uha7krtGfP1HdEiy16pzuCy2NcENLNr1kz
	1OWJMrjdAw3OgPF72F/1Ib/ATdl4jgQgwzWmO8RAxxHlYrOsUH2Dj/0RYQ6k7pJ7IJ5VlVg9Ag8so
	WjAqOMbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNq9v-00Dpvu-3D; Tue, 16 Aug 2022 06:34:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNq9l-00DplP-18
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 06:34:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNq9j-00018d-OV; Tue, 16 Aug 2022 08:34:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNq9j-0007tv-FE; Tue, 16 Aug 2022 08:34:27 +0200
Date: Tue, 16 Aug 2022 08:34:27 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20220816063427.GE17485@pengutronix.de>
References: <20220815063853.672239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220815063853.672239-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_233429_126085_866BC9AB 
X-CRM114-Status: GOOD (  20.12  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX8M: HABv4: make barebox SHA256 embedding
 POSIX-shell compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 15, 2022 at 08:38:53AM +0200, Ahmad Fatoum wrote:
> C-Style printf "\xHH" is not supported by a POSIX shell,
> while printf "\oOOO" is. As we use printf "\xHH" for converting the
> textual output of sha256sum into binary, systems using dash as shell
> will end up embedding literal \xHH characters in the output resulting in
> an ubootable barebox when CONFIG_PBL_VERIFY_PIGGY=y:
> 
>   !hash mismatch, refusing to decompress
> 
> Fix this by using octal escape sequences instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  images/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/images/Makefile b/images/Makefile
> index c79f1a272e9c..7a8bb94fe0df 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -113,7 +113,8 @@ $(obj)/piggy.o: $(obj)/barebox.z FORCE
>  $(obj)/sha_sum.o: $(obj)/barebox.sha.bin FORCE
>  
>  quiet_cmd_sha256bin ?= SHA-BIN $@
> -      cmd_sha256bin ?= printf "$(shell awk '{printf $$1}' < $(obj)/barebox.sum | sed -e 's/../\\x&/g' )" > $@
> +      cmd_sha256bin = printf "$(shell sed 's/ .*$$//;s/../0x&\n/g;s/\n$$//' $(obj)/barebox.sum | \
> +			while read -r byte; do printf '\%o' $$byte; done)" > $@
>  
>  quiet_cmd_sha256sum ?= SHA     $@
>        cmd_sha256sum ?= sha256sum $(obj)/barebox.z > $@
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Mon, 03 May 2021 14:45:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXwr-0003Cb-0y
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:45:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXwp-00071v-QD
	for lore@pengutronix.de; Mon, 03 May 2021 14:45:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=muTAOTYD29hAQYERd6YAjNkigPJFO3zLWVgY/vrSvC4=; b=SmJIDGu+Tw63m1sWGvwGSZX+1
	3xmsAJ5gHsJRDXp9TQK3jTr8DozZm/mkoS+1PDpq50vIJGReQtnIgV731cqqshi6tfOFf5Pcon5+E
	Ppx4UBXZRAuM28EnEddUZF84gitYBdVm7ZKzMWjN0RzVHl0Y77O1K5dZNvgky2PfBJaYcjlqju7XO
	F3IWzthM3DBKrOv8OOiZpKp35qshxknnwOAkcwavydpMFnh9d83dPJuiqBk46tfcENxS2U5a/OJjM
	BionqUna7WEDhzkxxSgc3BsirJ51AnX2VGAp68N2UVIzpLlFX/pbVhy9ZEA+DiXsK23LLhWluFH1s
	C00Y+bmuw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXvd-00Dt0H-N7; Mon, 03 May 2021 12:44:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXvX-00Dszx-40
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:43:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=byC7kC1oBBaxXVbkJWK772bePnWxx25Modi/LOzvRsU=; b=ZUmRmegzzVifm66JAF4VfXNV5X
 JwePfkf3j0vC38fuB2oXeQAbcWtG1oM8HRs2wvPkczMGjO8owmaDgIKBKVt62OAR8ZNaA/JJ9OEEF
 JOR3ak4WoUoylcHFDchC7NhLfLXDS1L2rh+p7S3/0wSRGcjhsu6rS5gpym5sxj3U/YbBbFx5Oebim
 iuLkx6CPrPq5zSIhzlGUX9pUmWs3Fuv9Sdsj2N2vqtPSSWjKfA8c2ReIIt2UMayo6l8ljc8OKyx8Q
 KsFdnmZPlV2i2cLvgn47pmwejQ8kUTOIKUYFTopUaZZxH0y2Z0WlD6Jrl4iVPwXWP80lpuy/EcDrx
 JBlICNnA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXvU-0033z8-Dp
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:43:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXvT-0006s4-6c; Mon, 03 May 2021 14:43:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXvS-0005lE-CG; Mon, 03 May 2021 14:43:50 +0200
Date: Mon, 3 May 2021 14:43:50 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20210503124350.GK19819@pengutronix.de>
References: <20210417211419.26883-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210417211419.26883-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:43:40 up 74 days, 16:07, 101 users,  load average: 0.16, 0.09,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_054352_485396_7765F3DE 
X-CRM114-Status: GOOD (  22.03  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: kvx: Fix broken link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 17, 2021 at 11:14:19PM +0200, Jules Maselbas wrote:
> The link to toolchain releases was missing a part
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  Documentation/boards/kvx.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/kvx.rst b/Documentation/boards/kvx.rst
> index 2641b002a..0a1a6f7dd 100644
> --- a/Documentation/boards/kvx.rst
> +++ b/Documentation/boards/kvx.rst
> @@ -93,6 +93,6 @@ message appearing on the serial console.
>  
>  .. rubric:: References
>  
> -.. [#f1] `Toolchain releases <https://github.com/build-scripts/releases>`_
> +.. [#f1] `Toolchain releases <https://github.com/kalray/build-scripts/releases>`_
>  .. [#f2] `Build scripts <https://github.com/kalray/build-scripts/>`_
>  
> -- 
> 2.17.1
> 
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


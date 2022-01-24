Delivery-date: Mon, 24 Jan 2022 12:00:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBx5b-00Bni2-6F
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 12:00:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBx5Z-000098-Rk
	for lore@pengutronix.de; Mon, 24 Jan 2022 12:00:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GUB6StqNy08V8NeI35HSQiZ6sDi40xN+4p2vIRKB9kw=; b=LGx5usmi2J7VOjRVT2qLR+7zfd
	yBfaqLBn6ZQZQ6MvZjUAXjULWt4rZ3D4Iqfz70QJ3u7hazQejC0JJJx1Nix6lEpKywqR5EaYXcFaQ
	0LkdiBXdkSbCBFuxsCFvioQt1zghSFV9pKLbL4GIypkof44I7XlFoRbAKQN5xevhuKtX5LSmTY9Hn
	6+AcABcv+qtO/XqfhC2W6SYofy3sxIZiPWNV952Funza6LFQlsQKVUN7/c1+LVkShV86t/zQ+k47r
	EwQltZtJlH91C5LlTZTnj223YiKaeBOd0E8SXmHrB80dynYdwiaahY5r9eCNs/4+qRo1Y3EAk/rzP
	EPkEnY7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBx4H-00327Q-O2; Mon, 24 Jan 2022 10:59:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBx4D-00326z-4p
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 10:59:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nBx4B-0008N3-EG; Mon, 24 Jan 2022 11:59:19 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nBx4B-0007Qq-5h; Mon, 24 Jan 2022 11:59:19 +0100
Date: Mon, 24 Jan 2022 11:59:19 +0100
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220124105919.GY23490@pengutronix.de>
References: <20220120114725.2580392-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220120114725.2580392-1-u.oelmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:59:06 up 44 days, 19:44, 85 users,  load average: 0.19, 0.16, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_025921_213453_28FB0D61 
X-CRM114-Status: GOOD (  24.88  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Documentation: reboot-mode: fix typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jan 20, 2022 at 12:47:24PM +0100, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  Documentation/user/reboot-mode.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/Documentation/user/reboot-mode.rst b/Documentation/user/rebo=
ot-mode.rst
> index 681438d94498..24deae78727e 100644
> --- a/Documentation/user/reboot-mode.rst
> +++ b/Documentation/user/reboot-mode.rst
> @@ -29,9 +29,9 @@ User API
>  Devices registered with the reboot mode API gain two parameters:
>  =

>   - ``$dev_of_reboot_mode.prev`` (read-only): The reboot mode that was
> -   set previous to barebox startup
> +   set previously to barebox startup.
>   - ``$dev_of_reboot_mode.next``: The next reboot mode, for when the
> -   system is reset
> +   system is reset.
>  =

>  The reboot mode driver core use the alias name if available to name
>  the device. By convention, this should end with ``.reboot_mode``, e.g.::
> -- =

> 2.30.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


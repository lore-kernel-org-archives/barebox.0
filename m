Delivery-date: Thu, 27 May 2021 09:22:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmALI-0003CG-6k
	for lore@lore.pengutronix.de; Thu, 27 May 2021 09:22:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmALH-0006Cw-4j
	for lore@pengutronix.de; Thu, 27 May 2021 09:22:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TJqLilQ7Wdq3vBy8PgvnXDj8tMtnwWbCDDs2lfy4ixE=; b=ewyAj9A7lV3neGwt9b9O+cw9rT
	OUwltiynhJjK6wDT3ILP7sk3FiF5NM+FGLFxLmpwBkjMMVt/XOckM9boITDU6FjS7ktdLF4vi9AhI
	QERRD6pZ45CVQD+8y/Bh2NEaun+i12/lMEpIZi1Tcj4U3fICykrkbsxkQHCcqIuLeqhrxf+jVMfrH
	PtGudYRRYGO+y6PbF9IIPvmFY6er4Ta+9skCG0ilOzWsMoSm1FzbtGL80cySRORFf/ZTrGuG8F7na
	iMNQPl/53XRpSfkRDapNupM1ME7aUKchB3KAF0D8+EK4ZeLYQrj6crKyhAD5uufOIcHYMxwlR6sAH
	qfPNcSrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmAJw-003JVT-8x; Thu, 27 May 2021 07:20:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmAJr-003JTx-7Z
 for barebox@lists.infradead.org; Thu, 27 May 2021 07:20:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lmAJp-0005vL-2p; Thu, 27 May 2021 09:20:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lmAJo-0007Be-Pg; Thu, 27 May 2021 09:20:36 +0200
Date: Thu, 27 May 2021 09:20:36 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210527072036.GE19819@pengutronix.de>
References: <20210526094448.977342-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526094448.977342-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:18:40 up 98 days, 10:42, 110 users,  load average: 0.11, 0.13,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_002039_296063_428CF98B 
X-CRM114-Status: GOOD (  24.70  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: nfs: Decrease NFS timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Uwe,

On Wed, May 26, 2021 at 11:44:48AM +0200, Uwe Kleine-K=F6nig wrote:
> On a customer site we're experience a bit over 1% UDP packet loss. When
> wiresharking an NFS transfer of a kernel image (with the goal to boot
> via NFS) I saw 64 of 2555 RPC calls staying unanswered. With the current
> timeout setting each of them introduces a delay of 2 seconds and the
> whole transfer takes 137s. With the timeout reduced to 0.1s the transfer
> time is not optimal (going down to approx 15 seconds) but at least it
> becomes bearable.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  fs/nfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/fs/nfs.c b/fs/nfs.c
> index 1130632eb3eb..1ff81a5ee1bf 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -119,7 +119,7 @@ struct rpc_reply {
>  	uint32_t data[0];
>  };
>  =

> -#define NFS_TIMEOUT	(2 * SECOND)
> +#define NFS_TIMEOUT	(100 * MSECOND)
>  #define NFS_MAX_RESEND	5

Should we increase NFS_MAX_RESEND at the same time? Otherwise we timeout
after 500ms which doesn't seem much to me on some network hickups.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


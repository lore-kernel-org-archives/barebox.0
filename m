Delivery-date: Thu, 22 Dec 2022 18:07:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8P2i-0059ec-Gl
	for lore@lore.pengutronix.de; Thu, 22 Dec 2022 18:07:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8P2g-0002Rc-LV
	for lore@pengutronix.de; Thu, 22 Dec 2022 18:07:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BH6e0yORCIfciYl0wsqi871xEvrWAIptm8lhoXQlMbI=; b=43Zq3T9suq+N+pRd0e2fF6h3xp
	e2ZGGrJXkdvm7IdraEpN5YLEBRRMML8IgpdWY9jB6rq/zRXxQML7AerKKWo+A2V7KrbdXnRPa0T3N
	BCOocCl2nCBA2fS0mGQb9Q4ktyCqlCXHO5bFuI1zr1zyZSQvMilPXqBVaLToact2als5kAMu15i/t
	t1wzDkP0DN8grXM6G79nM/18Cex28j7hqwaCmLVFIYeBsBcGqPJQrCuePIxjRnGxK+nKO0eitRU2P
	cINcGt/tGVP0jPtfMuQkLpi6L8nAzy16bETP25k66XgOugxFL+5H2AmPeDP9rUOGG5bKkr+oXmgn/
	ptpj2Qbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8P15-00FCO2-9F; Thu, 22 Dec 2022 17:05:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8P0z-00FCKh-G2
	for barebox@lists.infradead.org; Thu, 22 Dec 2022 17:05:55 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1p8P0s-0002Bw-HM; Thu, 22 Dec 2022 18:05:46 +0100
Received: from uol by pty.hi.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1p8P0s-003lkT-3c; Thu, 22 Dec 2022 18:05:46 +0100
References: <20221222143513.3182725-1-a.fatoum@pengutronix.de>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Thu, 22 Dec 2022 18:04:20 +0100
In-reply-to: <20221222143513.3182725-1-a.fatoum@pengutronix.de>
Message-ID: <6rr0wr74id.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_090553_578217_6056E218 
X-CRM114-Status: GOOD (  21.12  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: deep-probe: write deep probe enabled message to
 log
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Thu, Dec 22 2022 at 15:35 +0100, Ahmad Fatoum <a.fatoum@pengutronix.de> =
wrote:
> The "Deep probe supported due to" was not written to log and thus only
> shown on startup and not in dmesg output. Make it available in both.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/deep-probe.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/common/deep-probe.c b/common/deep-probe.c
> index 1020ad93b7f7..931e5a17709d 100644
> --- a/common/deep-probe.c
> +++ b/common/deep-probe.c
> @@ -1,5 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>=20=20
> +#define pr_fmt(fmt) "deep-probe: " fmt
> +
>  #include <common.h>
>  #include <deep-probe.h>
>  #include <of.h>
> @@ -27,7 +29,7 @@ bool deep_probe_is_supported(void)
>  		for (; matches->compatible; matches++) {
>  			if (of_machine_is_compatible(matches->compatible)) {
>  				boardstate =3D DEEP_PROBE_SUPPORTED;
> -				printk("Deep probe supported due to %s\n", matches->compatible);
> +				pr_info("supported due to %s\n", matches->compatible);

was it by accident that you removed the message's beginning "Deep probe "?

Best regards
Ulrich


>  				return true;
>  			}
>  		}
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



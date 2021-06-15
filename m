Delivery-date: Wed, 16 Jun 2021 00:38:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltHhr-00012o-2f
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 00:38:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltHhp-0006ai-Lz
	for lore@pengutronix.de; Wed, 16 Jun 2021 00:38:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iyewz8CYykF05RsUd2KOrlo/OjdopPDH6eUqXCOyi9k=; b=zaN8tCMitO1aUD
	+t/7hzKyQKgq0l0RMxa9/DcQy5prNFFOt2wyGiFDDE6mHYudigEYIXs+O2IuO1elyzswy5shj0cnI
	FsCFC5z6jXnpb2JhyfomKMWb5ZjM3CuETxtKbxySr0dzwMxc1LUPWHdqCuHfR2ddW6GLcvnakBJd4
	EMIOlRFsaLWKlNUU8W+KRF7fSdQk3U7TzKtceytdeXO8eoY9hpK0KQFOUZ0Mm0vhkZ9yqzEWvwIxu
	4UmuhI6Fw3MFG5f5qFHqPERyPH++5ZG6C6cBVwf2kJJyV7JzEssPRBlwjb51KJbVPSw4n2Qkisd9L
	7eyFEH6yfs2iukoHDqkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltHgY-003buG-FE; Tue, 15 Jun 2021 22:37:31 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltFji-002omg-Qo
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 20:32:40 +0000
Received: by mail-lj1-x231.google.com with SMTP id l4so607624ljg.0
 for <barebox@lists.infradead.org>; Tue, 15 Jun 2021 13:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jzq79ih0FQktS3Bt9MGN8+LHypULNNXhrK3zCX2Md4g=;
 b=0Buanqz7yiV8CK56eRQ8mmE1b75tFe2CMVbnTcM9NInE3JkujCWyhBpJv4N5XFSEXC
 xCLaspMxLDfwCO8LLDPmh6gDMHm/WTNun/hRiI9gVXC3nbZA2yj8wBr9OBkNRXJaDkUL
 OmeOGMEekRuZApmUg/BUP4Ie4iASPUtbunnfwOFO00ubbVdxEGV3uQgqhvGvPzJ8IkZp
 Mlwhkfo0Wlf1pSvmc/MwYTRZyVynA3JmS9gYkrN77DsPaNJ0p3dRlADveK+/7hAMNMgg
 IxhjF8gPqHJPzKW1JsCQdVTE4sCl8L+MkA1GOcyE0Iz0HiWsG48Yk3uEopzmcNdIEHEs
 nCkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jzq79ih0FQktS3Bt9MGN8+LHypULNNXhrK3zCX2Md4g=;
 b=rgtM1DWxDfUagsZQgb14dtFbRm0sFCwZy8RhW/NFTEzsq77dk7/VwZvOobMfQ9FpeL
 cQ7Cs1pycdBo/ziMP1pPT7SMaK4Jkk3LZ3cqZZ5dlCvglwu20Mt/4iBB9xwZah4RHaJm
 k2pKxh3e712QWNWyOZoRv1q4D7F7jeSI+fyFa/1aP2CPRd8PEhkbGlgph6BemJdMu7eq
 kIAu4mYNAMZVwn/j2i76AxVAYg63Ifo40z1kiUySvhaHMwSHoQAEwD5n6l14WSa/vXXf
 JMYOk944cRE1nLUgzqM5FYgKvoqhHntXoao7SdnRq8s78MPjzVxSnZY3leVN919E/UX8
 RAeA==
X-Gm-Message-State: AOAM53338SKszcK8+oBbPamj8i42sMFfxEaIcK6+Cgl9TbNz+mNGePzu
 /9MO+eYYNRbureA6EyL+Dqg3stOrVJl9/KfmJJAdSA==
X-Google-Smtp-Source: ABdhPJwesdnyFPfHN1fJx0t3KYgK225FtLSchFDi13Dj+E9+HW6hK+0921GV81jL9OBj9JZTR14FgzHgxPHscGjTUM4=
X-Received: by 2002:a2e:894e:: with SMTP id b14mr1316772ljk.112.1623789156775; 
 Tue, 15 Jun 2021 13:32:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210615153223.9329-1-m.grzeschik@pengutronix.de>
In-Reply-To: <20210615153223.9329-1-m.grzeschik@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Tue, 15 Jun 2021 13:32:26 -0700
Message-ID: <CAMHeXxNpR01tPQ-M2-Oj8S4s9QxS-i7Vw+H3ED1NH8uO9rZekQ@mail.gmail.com>
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_133238_928382_D569A4AA 
X-CRM114-Status: GOOD (  20.33  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net/eth: read default mac-address default from dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Once upon a time, it was common for kernel dts files to be booted with
u-boot to include an all zero mac address property, since u-boot could
not unpack/pack the fdt.  It could only find an existing property and
change bytes already present, thus adding a blank mac address to be
patched.  Barebox has a much better fdt fixup system and does not need
this.

But maybe these blank mac address properties are still there in some
of the dts files, which mostly come from the kernel dts sources?
Might be worth ignoring an all zero address rather than calling it
found.

Unless of_get_mac_address() already includes such logic in a way that works ok?

On Tue, Jun 15, 2021 at 12:49 PM Michael Grzeschik
<m.grzeschik@pengutronix.de> wrote:
>
> Since we have the functino of_get_mac_address we can
> use it to set the default mac address vom the dts.
>
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  net/eth.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/net/eth.c b/net/eth.c
> index 84f99d3aa8..baebf89d89 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -11,6 +11,7 @@
>  #include <net.h>
>  #include <dma.h>
>  #include <of.h>
> +#include <of_net.h>
>  #include <linux/phy.h>
>  #include <errno.h>
>  #include <malloc.h>
> @@ -431,6 +432,14 @@ int eth_register(struct eth_device *edev)
>         if (!ret)
>                 found = 1;
>
> +       if (!found && edev->parent) {
> +               const u8 *maddr = of_get_mac_address(edev->parent->device_node);
> +               if (maddr) {
> +                       memcpy(ethaddr, maddr, ETH_ALEN);
> +                       found = 1;
> +               }
> +       }
> +
>         if (!found) {
>                 ret = edev->get_ethaddr(edev, ethaddr);
>                 if (!ret)
> --
> 2.29.2
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


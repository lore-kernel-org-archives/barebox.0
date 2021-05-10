Delivery-date: Mon, 10 May 2021 13:49:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg4Pz-0003Oy-D1
	for lore@lore.pengutronix.de; Mon, 10 May 2021 13:49:47 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg4Py-00088o-88
	for lore@pengutronix.de; Mon, 10 May 2021 13:49:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/1ex+2ajtxvgz0Qe/ell88w+JiKFANW/oep6oUmb5Rg=; b=FSbwMwMbd9clMJjkBmZEmem7V
	b9j/rcYpC59+Fyju9hHf1B0FCw2XIkUOeTq/XGclaV40mNk05c+Nk7KP1BPLXgtyFCLXIbTeQVMFs
	4lPVK7s9i5iYY66CJQ0XWgp+MAxvpVY0oWAZRwB+U+0Ju5JCtsE81d5wa6vpTumUAahHHWL67plDI
	cCX96JC1jlxgC6d5QIFCugLKnlK3piVg2YBpN7MTW0XcyUNPfnWov6O4X/A+srvISsTVnSsYAJ+EU
	ck2jxDy9yO0sVixumRCDUZD9GcCElTl3mEHsHZzdFba5hg44VfHm8+41aoBzSyVphIErsPpjk0xQK
	I+/JOfDTg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg4Oh-00E8WI-I7; Mon, 10 May 2021 11:48:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg3me-00E2UL-Lh
 for barebox@desiato.infradead.org; Mon, 10 May 2021 11:09:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=c3jYt9vqw+Lu/mYYDxG0B1hAXTSuekwUASRAIcEC9ac=; b=xWPpGNeV5DkCrW9uosWtRun1Lg
 qzVCgDR5tP/IO3PnL16BSNDW8tRYdkJAPMn5e6guwJX55vXeipCvNjpFj1iuYmS0fcutHyRiLiS7K
 WeO5eqhjhkzYWwZzDQbnYti9EY3zkSY0ZuseV4vQZr7NMNw7wGOJyxdK7xyWLaqL6Uf5MlVYT8AY3
 M6ZAkMQEBrlDrEbio4MMdsNRwGOTUMlz+RYASgZ0rgfAE18BWf41Xs9W9HUA7rEqYi1b3fkg31MPb
 m/r3hIRfHHfDJqxPZE15cguPlNwfENdHrfFF3E8YkPUE6NbMICKpBsVrwCrMMfEUtOx2P1gpyc/Z+
 FiRgCTpw==;
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg3mb-008az2-4h
 for barebox@lists.infradead.org; Mon, 10 May 2021 11:09:06 +0000
Received: by mail-qv1-xf31.google.com with SMTP id q6so8068327qvb.2
 for <barebox@lists.infradead.org>; Mon, 10 May 2021 04:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c3jYt9vqw+Lu/mYYDxG0B1hAXTSuekwUASRAIcEC9ac=;
 b=t4e5LZIwzCGokAlPx6jqM8nL2920efDh7/FsFV8u+kaSY3QQTRiYC6pVDO55/b5SVS
 CmwW3dxDk2KWnGdhixoF2czNTFEsesn1QBUmauccRLlSOBBUQ7T/+UDA2cTdvFz8+26P
 w4sQFFHyrrUzASiCFSw1hNW4UWY+l5pSDPNANSKSxs6mc5bQErsEeCldqER9ktaVbHhD
 y+sMUrGHtiHU9v4cSwUZloxiy7VZiBX6oGznsuJcCAbblEW6ElIityK2pmGNRe3ghyLr
 KYvjWmnvMtAMq3IcpuD4b1/jguBuLH4ZzZg6gwEKvg05rWQQkn7MFDmoqzpq2p5Ll5ZY
 VK6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c3jYt9vqw+Lu/mYYDxG0B1hAXTSuekwUASRAIcEC9ac=;
 b=muBlvF0Hrg0L4ZUAbe46RE1rUZkCKclSalm1hV+v+lE8xu8dMSnSNm9rUhlMj+m/Sq
 fYFNtpCdG0pLkL8nGIS/95UmrZUFY3aXmVvxemk0A15Eme/1mVTdJAhdjtusa5W33+ZV
 yaHiGr3LL44WTXjxhbArayv+rD/27wue3qNbF8w+YxJlg46wSbILF9YvmhYWk4AAo+8M
 fGtkvumPhukMRZS5vEFEW1uWiLoBG26ogLDfgSsJJnTJt+VkDPWLcSqdAEnInoqOqI0G
 WAKGqGAawcWO7nzEHCf2PXte3LLNjrFNes3YW3jPn3v/K6RW785Ae9NCYX0tncOAw+Os
 Aqgg==
X-Gm-Message-State: AOAM533CvOktepvIV9HSFn/aeb70DJZvRji+tb1JqJFdCODJiAkYCC4+
 43KBhxLku3HsCNm4x6fwfNv0er8PtuOl/Mm0BaQWJyMtYmM=
X-Google-Smtp-Source: ABdhPJxXJ1lMCLLMKAr6zoH8OXSZqvndLNBPeVbAN1S5f5XlgAvvGJgNB+TeEum/9oVhEYTsLlzJR1IyGdp4XGKIbNo=
X-Received: by 2002:ad4:4e94:: with SMTP id dy20mr22928333qvb.50.1620644942913; 
 Mon, 10 May 2021 04:09:02 -0700 (PDT)
MIME-Version: 1.0
References: <CANi4_RUhZuWvG+v9R1Ae5BmCtHx-Bz_4Ay0BiuBYCrqXUAOBiw@mail.gmail.com>
 <20210507084102.GU19819@pengutronix.de>
In-Reply-To: <20210507084102.GU19819@pengutronix.de>
From: Neeraj Pal <neerajpal09@gmail.com>
Date: Mon, 10 May 2021 16:38:51 +0530
Message-ID: <CANi4_RWKvQV68RaZLNBFTJP1z3vObuZYo-HRqfU6r4rL8ZxKoQ@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_040905_209679_93C5A423 
X-CRM114-Status: GOOD (  35.38  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [BUG] Stack buffer overflow WRITE of size 1 in nfs_start function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

Thank you for the patches.

I have confirmed it and observed no crashes as reported earlier but I
think there is a small typo in the nfs_start() function in
net/nfs.c#L677.

672    static int nfs_start(char *p)
673    {
674        debug("%s\n", __func__);
675
676        nfs_path = strdup(p);
677        if (nfs_path)
678            return -ENOMEM;
679

In line 677, if strdup is successful then it is returning ENOMEM so I
think there is a typo, it is supposed to check for NULL so it would be
if (!nfs_path) or if (nfs_path == NULL) then it should return ENOMEM.

Please confirm and also sending a small patch.

Thanks and regards,
Neeraj

On Fri, May 7, 2021 at 2:11 PM Sascha Hauer <sha@pengutronix.de> wrote:
>
> Hi,
>
> On Sun, Apr 18, 2021 at 12:22:30AM +0530, Neeraj Pal wrote:
> > Hi,
> >
> > While reviewing the code of barebox-2021.04.0 and git commit
> > af0f068a6edad45b033e772056ac0352e1ba3613  I found a stack buffer
> > overflow WRITE of size 1 in
> > nfs_start() net/nfs.c L664 through strcpy call which furthers crashes at
> > function strcpy in lib/string.c L96.
>
> Thanks for reporting this. Indeed the nfs filename is stored in a fixed
> size buffer which can easily overflow with the right input.
>
> This patch should fix this issue.
>
> Regards,
>   Sascha
>
> -----------------------------8<---------------------------------
> From 3978396bf88c4ab567ddf36dff1218502e32a94d Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Fri, 7 May 2021 10:26:51 +0200
> Subject: [PATCH] nfs command: Fix possible buffer overflow
>
> the nfs command stores the nfs filename in a fixed size buffer without
> checking its length. Instead of using a static buffer use strdup() to
> dynamically allocate a suitably sized buffer.
>
> Reported-by: Neeraj Pal <neerajpal09@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  net/nfs.c | 41 ++++++++++++++++++++++++++++++-----------
>  1 file changed, 30 insertions(+), 11 deletions(-)
>
> diff --git a/net/nfs.c b/net/nfs.c
> index 591417e0de..440e410a83 100644
> --- a/net/nfs.c
> +++ b/net/nfs.c
> @@ -148,7 +148,6 @@ static int  nfs_state;
>
>  static char *nfs_filename;
>  static char *nfs_path;
> -static char nfs_path_buff[2048];
>
>  static int net_store_fd;
>  static struct net_connection *nfs_con;
> @@ -522,11 +521,26 @@ static int nfs_readlink_reply(unsigned char *pkt, unsigned len)
>         path = (char *)data;
>
>         if (*path != '/') {
> -               strcat(nfs_path, "/");
> -               strncat(nfs_path, path, rlen);
> +               char *n;
> +
> +               n = calloc(strlen(nfs_path) + sizeof('/') + rlen + 1, 1);
> +               if (!n)
> +                       return -ENOMEM;
> +
> +               strcpy(n, nfs_path);
> +               strcat(n, "/");
> +               strncat(n, path, rlen);
> +
> +               free(nfs_path);
> +               nfs_path = n;
>         } else {
> +               free(nfs_path);
> +
> +               nfs_path = calloc(rlen + 1, 1);
> +               if (!nfs_path)
> +                       return -ENOMEM;
> +
>                 memcpy(nfs_path, path, rlen);
> -               nfs_path[rlen] = 0;
>         }
>         return 0;
>  }
> @@ -655,13 +669,13 @@ err_out:
>         nfs_err = ret;
>  }
>
> -static void nfs_start(char *p)
> +static int nfs_start(char *p)
>  {
>         debug("%s\n", __func__);
>
> -       nfs_path = (char *)nfs_path_buff;
> -
> -       strcpy(nfs_path, p);
> +       nfs_path = strdup(p);
> +       if (nfs_path)
> +               return -ENOMEM;
>
>         nfs_filename = basename (nfs_path);
>         nfs_path     = dirname (nfs_path);
> @@ -671,6 +685,8 @@ static void nfs_start(char *p)
>         nfs_state = STATE_PRCLOOKUP_PROG_MOUNT_REQ;
>
>         nfs_send();
> +
> +       return 0;
>  }
>
>  static int do_nfs(int argc, char *argv[])
> @@ -701,9 +717,9 @@ static int do_nfs(int argc, char *argv[])
>         }
>         net_udp_bind(nfs_con, 1000);
>
> -       nfs_err = 0;
> -
> -       nfs_start(remotefile);
> +       nfs_err = nfs_start(remotefile);
> +       if (nfs_err)
> +               goto err_udp;
>
>         while (nfs_state != STATE_DONE) {
>                 if (ctrlc()) {
> @@ -727,6 +743,9 @@ err_udp:
>
>         printf("\n");
>
> +       free(nfs_path);
> +       nfs_path = NULL;
> +
>         return nfs_err == 0 ? 0 : 1;
>  }
>
> --
> 2.29.2
>
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Mon, 10 May 2021 15:19:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg5pG-0003yd-8o
	for lore@lore.pengutronix.de; Mon, 10 May 2021 15:19:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg5pE-00084c-RZ
	for lore@pengutronix.de; Mon, 10 May 2021 15:19:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iOLcAZ61WBa5dVuQpbEE0WrJCo3c3dpSFQipzHPcihQ=; b=n94nBMN5qdZXeRoYJAVerfHom
	6v8yLuMpyC19QAy5Qr3/bQkiO4iOGkxgG1JHycANr3nj2gHauXDUzC6ZU0RpuuQubVtN9eDjMC8eR
	8j8IMtnDJXiZ8AnDidTJaUJoY8rqM4C518EgpH+ugPZ0dBiILl+cIpi/RTf8wnD5K1yWCSN6NZknH
	hfZXh8/+vaRKFt+dWrcggvze6qnHAw7gQLJ7NjXncKfTtgGCzN38tRVAuJ3KnEBw9pQIrnIzhrHu5
	TyaDsB+7ofXZya539zmlsEWczEgMau/eoZOg9fnjUepGqXqb0uQ4ZvuFiS/FCX0VDkE63vTdv5K7c
	5hlqpCiYg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg5o7-00EQjJ-JL; Mon, 10 May 2021 13:18:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg5o0-00EQiq-Ug
 for barebox@desiato.infradead.org; Mon, 10 May 2021 13:18:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=88iBMpGqm4hd5uiuXUY/a6DUKCdAFPoQ17PvAvRJQDo=; b=u3OhnXQ6RjrfM9XcJEgrHZgVy+
 GZcX2uVv1YkM0NPjfx4Kh3+y7S3nCDXoji8z1CbdUlLiRZsRUE/ksS3QPmYaCeJhoiRhuetVgX4qN
 6ceSKn85UaZFPMQfEZDdlMLv8FWEPfdcwH04glXaqDY4eMA3WZ38MYPx7u48rP6V7d/MPkM4fjny7
 JpFh5dO2vzkE+Rcd9hGH6qSW7OlDbG3PueuJSJWHgp4E18VF0GqcTF6pTJ8Yt+jgcz0/rsOC1BIay
 4+dZ4Hi9IbmVtX1jhWzNXYha4HCh1qGP/kJQP55FI2xJ8JlosyadeeucPO/yUBt3QjL2B32WdBTwx
 Afk9ktLA==;
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg5nx-008k1y-MC
 for barebox@lists.infradead.org; Mon, 10 May 2021 13:18:39 +0000
Received: by mail-qv1-xf30.google.com with SMTP id u7so8226397qvv.12
 for <barebox@lists.infradead.org>; Mon, 10 May 2021 06:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=88iBMpGqm4hd5uiuXUY/a6DUKCdAFPoQ17PvAvRJQDo=;
 b=ulmO0MghKBJSjjEfu3cGcTHAW40wECnmR2J0nwfGtiMZlsUysaY+2gxCa8zb4vMNZ8
 5L6wHq+V2wjwtg18TumLcQMc1Mn18bPuQm+q0X6LzmmSAEuEwsvbUalXoEjnFr5Rew2V
 vMBB2H/r3ronwIoxJ3QsidNtOMAV9L6IuURXVW+iBqnU+8lWhpMI2mZznjH85teU5OEQ
 e5hCX48dZ8IEMmgCLVPFRq3AHuX+YKP6BUJ+jrGh/zNq1wGVLMj1Jm8GHLp4c02BtpGO
 m9ZYBemzO8mV+olXIDyWNLdbFAuS4N07Oqe4tEI53Lk+PnsEnWoicPAvX9Kkw7eNGgY4
 syiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=88iBMpGqm4hd5uiuXUY/a6DUKCdAFPoQ17PvAvRJQDo=;
 b=Bqtr/3CkDzh1kTAN0X0xmOQ25Qfj43MB96RAlAkc5xWvtIhbvHRa043V9Q8eSPY9Se
 e6kucU/5zyRi6DrCXjdCKGwHwEd+SWAGj9iyJ0J00BPpo0FBQt1IYwzO4flgtC8sdnjN
 jzbSIk7pm/QgfkXluYsuPytYp95HAaOiT02/LK7e5yUq7CLMQ+9ntZL3BcobNPSdC52F
 fc8fTGCDMSj0iPGdzaCIB8/2XEsi2PfFH3J5XdnQlN5VtC/rKVFyRxVYsOxvQ+YopY7o
 GLesAh1isiTIT8m0q2n33+/C+sqt49Ptsi+uRqcqm7ICInExUiGUUIFovKOKiw245xaz
 OmlQ==
X-Gm-Message-State: AOAM533Puad0vRJMVCzxf5e2Wen83u4cBsZ7f5+/IjfGu4tA1dJ+h01c
 BUFkfLLCHMEIlj/YQrCLTcML6LFdJfD3cI2lkM0=
X-Google-Smtp-Source: ABdhPJxor5GXfIxfRzUO+CiTUtEYb04U0m1kQobdiAwGd1jsjNRNRRXDU+3TBMoRfZ3EBRcxuTCYSVBkgM1F+Wo7aV0=
X-Received: by 2002:a0c:9e0f:: with SMTP id p15mr23138848qve.27.1620652711952; 
 Mon, 10 May 2021 06:18:31 -0700 (PDT)
MIME-Version: 1.0
References: <CANi4_RUhZuWvG+v9R1Ae5BmCtHx-Bz_4Ay0BiuBYCrqXUAOBiw@mail.gmail.com>
 <20210507084102.GU19819@pengutronix.de>
 <CANi4_RWKvQV68RaZLNBFTJP1z3vObuZYo-HRqfU6r4rL8ZxKoQ@mail.gmail.com>
In-Reply-To: <CANi4_RWKvQV68RaZLNBFTJP1z3vObuZYo-HRqfU6r4rL8ZxKoQ@mail.gmail.com>
From: Neeraj Pal <neerajpal09@gmail.com>
Date: Mon, 10 May 2021 18:48:20 +0530
Message-ID: <CANi4_RXrSqYkVJmCFRGSEtQvtZnWZ1Mnxu3nNH3caUvKE7d11A@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_061837_754674_03E64184 
X-CRM114-Status: GOOD (  42.50  )
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

to confirm the suggestion that I have mentioned in the previous mail
regarding the check on strdup return value, I have modified the
condition to "if (!nfs_path)" then compiled the sandbox and observed
the following crash with the mentioned input, after configuring the
network and nfs-server on the host:

barebox@Sandbox:/ nfs hh h
Filename './hh'.
NFS failed: Permission denied

=================================================================
==2828613==ERROR: AddressSanitizer: global-buffer-overflow on address
0x000000955ea0 at pc 0x000000422a2c bp 0x7ffec7bc9670 sp
0x7ffec7bc9660
READ of size 8 at 0x000000955ea0 thread T0
    #0 0x422a2b in barebox_free common/dlmalloc.c:1397
    #1 0x522fdf in do_nfs net/nfs.c:746
    #2 0x419e85 in execute_command common/command.c:62
    #3 0x434342 in run_pipe_real common/hush.c:837
    #4 0x434342 in run_list_real common/hush.c:961
    #5 0x434342 in run_list_real common/hush.c:849
    #6 0x431dc7 in run_list common/hush.c:1078
    #7 0x431dc7 in parse_stream_outer common/hush.c:1705
    #8 0x434fab in run_shell common/hush.c:1928
    #9 0x40a2ac in run_init common/startup.c:378
    #10 0x40a385 in start_barebox common/startup.c:421
    #11 0x590e63 in main (/home/bsdboy/barebox-9may/barebox/barebox+0x590e63)
    #12 0x7fdaf187f0b2 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x270b2)
    #13 0x4061bd in _start (/home/bsdboy/barebox-9may/barebox/barebox+0x4061bd)

0x000000955ea2 is located 0 bytes to the right of global variable
'str' defined in 'lib/libgen.c:51:14' (0x955ea0) of size 2
  'str' is ascii string '.'
SUMMARY: AddressSanitizer: global-buffer-overflow
common/dlmalloc.c:1397 in barebox_free
Shadow bytes around the buggy address:
  0x000080122b80: 01 f9 f9 f9 f9 f9 f9 f9 01 f9 f9 f9 f9 f9 f9 f9
  0x000080122b90: 01 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9
  0x000080122ba0: 00 f9 f9 f9 f9 f9 f9 f9 00 f9 f9 f9 f9 f9 f9 f9
  0x000080122bb0: 00 00 00 06 f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9
  0x000080122bc0: 00 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9
=>0x000080122bd0: 00 00 00 00[02]f9 f9 f9 f9 f9 f9 f9 00 00 00 00
  0x000080122be0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x000080122bf0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x000080122c00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x000080122c10: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x000080122c20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
  Shadow gap:              cc
==2828613==ABORTING


So, it seems that we also need to handle this issue as well.
Please confirm and let me know for further information.

Thanks and regards,
Neeraj

On Mon, May 10, 2021 at 4:38 PM Neeraj Pal <neerajpal09@gmail.com> wrote:
>
> Hi Sascha,
>
> Thank you for the patches.
>
> I have confirmed it and observed no crashes as reported earlier but I
> think there is a small typo in the nfs_start() function in
> net/nfs.c#L677.
>
> 672    static int nfs_start(char *p)
> 673    {
> 674        debug("%s\n", __func__);
> 675
> 676        nfs_path = strdup(p);
> 677        if (nfs_path)
> 678            return -ENOMEM;
> 679
>
> In line 677, if strdup is successful then it is returning ENOMEM so I
> think there is a typo, it is supposed to check for NULL so it would be
> if (!nfs_path) or if (nfs_path == NULL) then it should return ENOMEM.
>
> Please confirm and also sending a small patch.
>
> Thanks and regards,
> Neeraj
>
> On Fri, May 7, 2021 at 2:11 PM Sascha Hauer <sha@pengutronix.de> wrote:
> >
> > Hi,
> >
> > On Sun, Apr 18, 2021 at 12:22:30AM +0530, Neeraj Pal wrote:
> > > Hi,
> > >
> > > While reviewing the code of barebox-2021.04.0 and git commit
> > > af0f068a6edad45b033e772056ac0352e1ba3613  I found a stack buffer
> > > overflow WRITE of size 1 in
> > > nfs_start() net/nfs.c L664 through strcpy call which furthers crashes at
> > > function strcpy in lib/string.c L96.
> >
> > Thanks for reporting this. Indeed the nfs filename is stored in a fixed
> > size buffer which can easily overflow with the right input.
> >
> > This patch should fix this issue.
> >
> > Regards,
> >   Sascha
> >
> > -----------------------------8<---------------------------------
> > From 3978396bf88c4ab567ddf36dff1218502e32a94d Mon Sep 17 00:00:00 2001
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Date: Fri, 7 May 2021 10:26:51 +0200
> > Subject: [PATCH] nfs command: Fix possible buffer overflow
> >
> > the nfs command stores the nfs filename in a fixed size buffer without
> > checking its length. Instead of using a static buffer use strdup() to
> > dynamically allocate a suitably sized buffer.
> >
> > Reported-by: Neeraj Pal <neerajpal09@gmail.com>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  net/nfs.c | 41 ++++++++++++++++++++++++++++++-----------
> >  1 file changed, 30 insertions(+), 11 deletions(-)
> >
> > diff --git a/net/nfs.c b/net/nfs.c
> > index 591417e0de..440e410a83 100644
> > --- a/net/nfs.c
> > +++ b/net/nfs.c
> > @@ -148,7 +148,6 @@ static int  nfs_state;
> >
> >  static char *nfs_filename;
> >  static char *nfs_path;
> > -static char nfs_path_buff[2048];
> >
> >  static int net_store_fd;
> >  static struct net_connection *nfs_con;
> > @@ -522,11 +521,26 @@ static int nfs_readlink_reply(unsigned char *pkt, unsigned len)
> >         path = (char *)data;
> >
> >         if (*path != '/') {
> > -               strcat(nfs_path, "/");
> > -               strncat(nfs_path, path, rlen);
> > +               char *n;
> > +
> > +               n = calloc(strlen(nfs_path) + sizeof('/') + rlen + 1, 1);
> > +               if (!n)
> > +                       return -ENOMEM;
> > +
> > +               strcpy(n, nfs_path);
> > +               strcat(n, "/");
> > +               strncat(n, path, rlen);
> > +
> > +               free(nfs_path);
> > +               nfs_path = n;
> >         } else {
> > +               free(nfs_path);
> > +
> > +               nfs_path = calloc(rlen + 1, 1);
> > +               if (!nfs_path)
> > +                       return -ENOMEM;
> > +
> >                 memcpy(nfs_path, path, rlen);
> > -               nfs_path[rlen] = 0;
> >         }
> >         return 0;
> >  }
> > @@ -655,13 +669,13 @@ err_out:
> >         nfs_err = ret;
> >  }
> >
> > -static void nfs_start(char *p)
> > +static int nfs_start(char *p)
> >  {
> >         debug("%s\n", __func__);
> >
> > -       nfs_path = (char *)nfs_path_buff;
> > -
> > -       strcpy(nfs_path, p);
> > +       nfs_path = strdup(p);
> > +       if (nfs_path)
> > +               return -ENOMEM;
> >
> >         nfs_filename = basename (nfs_path);
> >         nfs_path     = dirname (nfs_path);
> > @@ -671,6 +685,8 @@ static void nfs_start(char *p)
> >         nfs_state = STATE_PRCLOOKUP_PROG_MOUNT_REQ;
> >
> >         nfs_send();
> > +
> > +       return 0;
> >  }
> >
> >  static int do_nfs(int argc, char *argv[])
> > @@ -701,9 +717,9 @@ static int do_nfs(int argc, char *argv[])
> >         }
> >         net_udp_bind(nfs_con, 1000);
> >
> > -       nfs_err = 0;
> > -
> > -       nfs_start(remotefile);
> > +       nfs_err = nfs_start(remotefile);
> > +       if (nfs_err)
> > +               goto err_udp;
> >
> >         while (nfs_state != STATE_DONE) {
> >                 if (ctrlc()) {
> > @@ -727,6 +743,9 @@ err_udp:
> >
> >         printf("\n");
> >
> > +       free(nfs_path);
> > +       nfs_path = NULL;
> > +
> >         return nfs_err == 0 ? 0 : 1;
> >  }
> >
> > --
> > 2.29.2
> >
> >
> > --
> > Pengutronix e.K.                           |                             |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


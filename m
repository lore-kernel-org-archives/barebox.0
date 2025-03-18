Delivery-date: Tue, 18 Mar 2025 16:02:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYSa-0014tp-0S
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 16:02:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYSY-0002Nr-W3
	for lore@pengutronix.de; Tue, 18 Mar 2025 16:02:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TWBu3Q4+BUec1r+4au7MjS17nnmWw88G0w86HxpltKY=; b=yBynbk81xvysdCe8LjAiyNl+AL
	CzQwcZcClqMx+2i5suvD9Lmt7ba/We8bA7z67akBnlVzI5G05prnsuYqmmrfiFMVRS+4yH9c8hJ9D
	EJCjSsUQzhDpgfGXPhX3+Cjv3OMgczonbE80J5d7AJOuNF7Qr4/lZKw/D26+MDSIoZlpnVIoeuFJP
	9iHfuHDLCThJnmIbUF92xgDLIITcYrdhgTlc6y+N71aW8/bFXA4CwySexEnuvLEsQYlrTXxr9Bgt7
	tcbT7/W9SjnyH/Syy/D0tWluswF0Iadw7LO/sGXwweou6cjUNjRXETSkErsuuqjfljf2rnf2d3VcA
	nWFAOvdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYRz-00000006HhF-3jlU;
	Tue, 18 Mar 2025 15:01:51 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYRg-00000006Hbb-46Fw
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 15:01:34 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-2ff6e91cff5so5151018a91.2
        for <barebox@lists.infradead.org>; Tue, 18 Mar 2025 08:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742310092; x=1742914892; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TWBu3Q4+BUec1r+4au7MjS17nnmWw88G0w86HxpltKY=;
        b=Sai5RvgPOaDYFSQPyKpM1l1yypTHt7ctuIluTaR6Mu9ukkcT1lp+fXE+LOtKCcWSJu
         Raz5UT0DeTLTaU09yAcSEHOjoMrCW5E3jerN8rsbjqqwkiFJIquxv6cF3Mt5zI2UAGNQ
         fGV9GABoC2N09UvAtU4VmNGU+SnqDGTKplEQ+f+9ReFpDseznxW20zTgdk2EItseY/qB
         cy14tq6o27z3dpAk0Bkm85vNDgoDpLqKDy6F+kYmLoAr8B8MKfW588uj0jWy2Z3hIO0q
         RXGKswcuWhHOlQPiGb9xKPMpcxSMEdgISEv+0JR52XEAbqNYjcAbFmV/VLgXrwKaYl3r
         PnZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742310092; x=1742914892;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TWBu3Q4+BUec1r+4au7MjS17nnmWw88G0w86HxpltKY=;
        b=iJ2Ril7cJXkrgsESkauNwHi7+ajgzEILNn6MWgN4qYM+R2ebbRl0QyCH0RiNS/qAFf
         n4Pjmr6wB5KggG0AV8+cB2+TP0UMrFAY2HZ7n6S2qq1z4XKW93YprJFVaTWfQSAlh6bc
         iHPSMmu3FPQpsALAmkRIFB6M3MiyAWVyA/OEsBkgGF4ohGtd39zc/YOO+T1P+6ZDroFX
         MA6wP9EByufOgPqHPxrlPZjMI6wbCmW/jJUbzmLe7/S0aXpHcclks6N8nVRNU1e5TKca
         794yvgKeRP3hzHz2FoGYCYLGVYMikv5JStnMPFK2GsCZiHA8Mn4Q9KeslEeZ8dMzl71B
         blpg==
X-Gm-Message-State: AOJu0YxDaSUUuxDzQyEh87UINTXfwqF/mnkEz/2Ya3b0G2KDpIy4EMdt
	hMugKTNyaP544nrE2p/99bb3qxP+E24XHpezU/MuWYJ3DVNrPi7JCcD1O+PDqsFZVoyYZTv88bw
	KAkzoSn8LecAfaadlPJg5q1QPs+qNcXS6G8Y=
X-Gm-Gg: ASbGncuTVlft1fZ4cOzNcv5ViMTKcQiDyfpuptaVLHcDm7eIxWGCUEg8hDH5ZQ9dmKi
	QMV5DrEcqR/LLrNMPhDXVkEdsrg37e0sZsMdbYtE3R/Q00jLNyBRAHeAFDtCiaHhNXhkwAyuZEN
	zxq/eElU8FaQv2Jc8aCdngKVH6XP8=
X-Google-Smtp-Source: AGHT+IGzWiRGC++8pp3vg41XSkAETQ+w1KXfNyfJ1vojtUNjJP9Sg1h/wtZ5ByOI/rxgUxg0ZvUQlGHS463P9WTOjHA=
X-Received: by 2002:a17:90b:38c8:b0:2ee:863e:9ffc with SMTP id
 98e67ed59e1d1-301a5b22aa0mr2992019a91.21.1742310091818; Tue, 18 Mar 2025
 08:01:31 -0700 (PDT)
MIME-Version: 1.0
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
In-Reply-To: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 18 Mar 2025 18:01:19 +0300
X-Gm-Features: AQ5f1Jp1MQJUJ7KIn67Rwivp-Fdsbda-71oh5dy-6HavHFWaGI4QWW9TI1ag1sI
Message-ID: <CAP1tNvQokH9TTSANKNADzo5Nie2SzjAyM08ix0D8gbL6TPxBuw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_080133_015213_41F34749 
X-CRM114-Status: GOOD (  16.58  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/7] filetype: Some size reduction patches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha!

I've been using a separate config for this board for a long time :)
Maybe you can take something from my working configuration that
has been working for several years:
https://github.com/shcgit/barebox/blob/milas/arch/arm/configs/mm_am335x_mlo=
_defconfig

Thanks!

=D0=B2=D1=82, 18 =D0=BC=D0=B0=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 17:46, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> The am335x_mlo_defconfig is very size constrained and doesn't build
> within these constraint anymore for some time. The filetype detection
> code has become quite big and offers some opportunities for size
> reduction. Specifically file_detect_type() is quite big, but many
> callers are only interested in some specific file types like supported
> file systems or supported compressed binary formats. This series
> introduces some more specific smaller file detection functions so that
> we can get rid of the big file_detect_type() in the binary.
>
> Also included some patches for the myirtech-mid board to use a stripped
> down device tree for the MLO. The same is already done for the other
> boards supported in am335x_mlo_defconfig
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Sascha Hauer (7):
>       filetype: add file_detect_compression_type()
>       filetype: add file_detect_fs_type()
>       filetype: add function pointer to file_name_detect_type_offset()
>       filetype: let cdev_detect_type() only detect filesystems
>       filetype: make file type strings optional
>       ARM: am33xx: myirtech-myd: add MLO specific device tree
>       ARM: am335x_mlo_defconfig: disable file type strings
>
>  arch/arm/boards/myirtech-x335x/lowlevel.c |   6 +-
>  arch/arm/configs/am335x_mlo_defconfig     |   1 +
>  arch/arm/dts/Makefile                     |   2 +-
>  arch/arm/dts/am335x-myirtech-myd-mlo.dts  |  10 +++
>  common/Kconfig                            |   8 ++
>  common/filetype.c                         | 132 +++++++++++++++++++++---=
------
>  fs/fs.c                                   |   3 +-
>  include/filetype.h                        |   5 +-
>  lib/uncompress.c                          |   4 +-
>  9 files changed, 125 insertions(+), 46 deletions(-)
> ---
> base-commit: a0ba27e06535570e8e4653f5f92a607f8b99022e
> change-id: 20250318-filetype-size-reduction-0cbf74281e2e
>
> Best regards,
> --
> Sascha Hauer <s.hauer@pengutronix.de>
>
>



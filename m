Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x231.google.com ([2607:f8b0:4001:c0b::231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYE00-0005j9-Mc
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 17:13:03 +0000
Received: by mail-it0-x231.google.com with SMTP id p185-v6so8503817itp.4
 for <barebox@lists.infradead.org>; Wed, 27 Jun 2018 10:12:44 -0700 (PDT)
MIME-Version: 1.0
References: <20180627010412.20646-1-andrew.smirnov@gmail.com>
 <20180627010412.20646-11-andrew.smirnov@gmail.com>
 <617fbf1f-cab3-0961-515c-269892ee2df0@cogentembedded.com>
In-Reply-To: <617fbf1f-cab3-0961-515c-269892ee2df0@cogentembedded.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Jun 2018 10:12:32 -0700
Message-ID: <CAHQ1cqGq8pUvSsfd=-Nzu-NongF-6-9UKrPtUX5vwsYvGg=Rjg@mail.gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 10/10] ARM: i.MX: Add support for ZII RDU1 board
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jun 26, 2018 at 10:32 PM Nikita Yushchenko
<nikita.yoush@cogentembedded.com> wrote:
>
> > diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
> > new file mode 100644
> > index 000000000..aff57891a
> > --- /dev/null
> > +++ b/arch/arm/boards/zii-imx51-rdu1/board.c
> > @@ -0,0 +1,94 @@
> > +/*
> > + * Copyright (C) 2015 Nikita Yushchenko, CogentEmbedded, Inc
> > + * Copyright (C) 2015 Andrey Gusakov, CogentEmbedded, Inc
>
> Perhaps you should replace this by your own name, because nothing
> written by Andrey or me is left in file being submitted ;)

IANAL, but as per my agreement with them, it can only be:

Copyright (C) 2017 Zodiac Inflight Innovations

for me. I'll wait for Sascha to comment on the patch and spin a v3
with this replaced after.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

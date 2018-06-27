Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x233.google.com ([2a00:1450:400c:c09::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fY34S-0006Go-CZ
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 05:32:49 +0000
Received: by mail-wm0-x233.google.com with SMTP id e16-v6so4225464wmd.0
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2018 22:32:37 -0700 (PDT)
References: <20180627010412.20646-1-andrew.smirnov@gmail.com>
 <20180627010412.20646-11-andrew.smirnov@gmail.com>
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Message-ID: <617fbf1f-cab3-0961-515c-269892ee2df0@cogentembedded.com>
Date: Wed, 27 Jun 2018 08:32:33 +0300
MIME-Version: 1.0
In-Reply-To: <20180627010412.20646-11-andrew.smirnov@gmail.com>
Content-Language: en-US
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

> diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
> new file mode 100644
> index 000000000..aff57891a
> --- /dev/null
> +++ b/arch/arm/boards/zii-imx51-rdu1/board.c
> @@ -0,0 +1,94 @@
> +/*
> + * Copyright (C) 2015 Nikita Yushchenko, CogentEmbedded, Inc
> + * Copyright (C) 2015 Andrey Gusakov, CogentEmbedded, Inc

Perhaps you should replace this by your own name, because nothing
written by Andrey or me is left in file being submitted ;)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22b.google.com ([2a00:1450:4013:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRN05-0001Go-5J
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 14:02:02 +0000
Received: by mail-ea0-f171.google.com with SMTP id n15so418538ead.30
 for <barebox@lists.infradead.org>; Wed, 02 Oct 2013 07:01:38 -0700 (PDT)
Message-ID: <1380722505.10004.7.camel@umadbro>
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Wed, 02 Oct 2013 16:01:45 +0200
In-Reply-To: <20131002101526.16ce3e06c6960b8610eac846@gmail.com>
References: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
 <1380663322-25733-3-git-send-email-lisovy@gmail.com>
 <20131002101526.16ce3e06c6960b8610eac846@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 2/4] i.mx53: voipac: Add board specific + flash header
 constructing code
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, pisa@cmp.felk.cvut.cz

Hello Antony;
OK -- I should probably add my name (even if I did not change
almost anything).

Regards;
Rostislav


On Wed, 2013-10-02 at 10:15 +0400, Antony Pavlov wrote:
> > diff --git a/arch/arm/boards/freescale-mx53-voipac/flash_header.c
> b/arch/arm/boards/freescale-mx53-voipac/flash_header.c
> > new file mode 100644
> > index 0000000..c9ae06c
> > --- /dev/null
> > +++ b/arch/arm/boards/freescale-mx53-voipac/flash_header.c
> > @@ -0,0 +1,102 @@
> > +/*
> > + * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
> 
> This file is rather like freescale-mx53-smd/flash_header.c,
> but please change copyright header.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

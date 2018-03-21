Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x242.google.com ([2607:f8b0:4001:c0b::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1eyWPi-0003DD-7z
 for barebox@lists.infradead.org; Wed, 21 Mar 2018 05:35:56 +0000
Received: by mail-it0-x242.google.com with SMTP id z143-v6so15010249itc.0
 for <barebox@lists.infradead.org>; Tue, 20 Mar 2018 22:35:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 20 Mar 2018 22:35:42 -0700
Message-ID: <CAHQ1cqE7MiV_eq3LBSQQM8bgJZo3rVGOsZzgJ4mVXB42KFeAYA@mail.gmail.com>
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
Subject: Re: [PATCH 00/78] ARM aarch64 updates
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Mar 16, 2018 at 5:52 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi All,
>
> Here is a massive update for the ARM aarch64 port. With the following
> series the aarch64 port should be on par with the 32bit support.
>
> With this aarch64 supports relocatable binaries, proper MMU support, DMA
> cache maintenance operations, and finally starting a aarch64 Linux
> image :)
>
> This all has been developed on a i.MX8MQ EVK board. The i.MX8MQ patches
> are currently evolving, but are not yet quite ready. DDR setup is still
> very crude and pinmux is not yet working. NXP did a nice job with the
> i.MX8MQ: It behaves very much like a i.MX6 with a different core, so
> we already have most of the drivers and I could concentrate on the
> aarch64 update. I hope I can send i.MX8 patches soon.

Sascha:

I only vaguely familiar with AARCH64, so take the tag with a grain of
salt, but I read through the patchset and it all looks reasonable, so
FWIW:

Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>

I commented on individual patches with suggestions, but they are just
that, so feel free to ignore.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

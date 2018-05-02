Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x241.google.com ([2607:f8b0:4001:c0b::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDxTs-00076W-GB
 for barebox@lists.infradead.org; Wed, 02 May 2018 19:32:02 +0000
Received: by mail-it0-x241.google.com with SMTP id 144-v6so18995022iti.5
 for <barebox@lists.infradead.org>; Wed, 02 May 2018 12:31:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180502192845.12483-1-andrew.smirnov@gmail.com>
References: <20180502192845.12483-1-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 2 May 2018 12:31:48 -0700
Message-ID: <CAHQ1cqED04kSe7K+Qr8Wwh+shmrceGMwsz-pu4sy0uxuNsbt4w@mail.gmail.com>
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
Subject: Re: [PATCH v2 0/2] Initial RAVE SP Linux driver port
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On Wed, May 2, 2018 at 12:28 PM, Andrey Smirnov
<andrew.smirnov@gmail.com> wrote:
> Everyone:
>
> These two patches are first results of an effort to port RAVE SP
> (Supervisory Processor) MFD and it's children drivers from Linux
> kernel to Barebox. Patch 1/2 brings MFD driver with its core API and
> patch 2/2 adds support for watchdog "cell" of the RAVE SP device.
>
> With a very few exceptions, the code of the drivers is identical to
> the code of their Linux counterparts.
>
> These drivers are also first users of "serdev" API work that was
> recently merged and should server as a reasonable example of its
> usage.
>
> Feedback is wellcome!
>
> Changes since [v1]:
>
>  - rave_sp_wdt_set_timeout fixed to correctly handle timeout of zero
>    (as pointed out by Sascha)
>
> Thanks,
> Andrey Smirnov
>
> [v1] http://lists.infradead.org/pipermail/barebox/2018-April/032725.html
>
> Andrey Smirnov (2):
>   watchdog: Port RAVE SP watchdog driver from Linux kernel
>   mfd: rave-sp: Add temporary workaround for missing GET_STATUS

Ugh. Accidentaly sent out the wrong patch. Will send out the correct
one shortly. Disregard this submission and sorry for the noise.

Thanks,
Andrey Smirnov

>
>  drivers/mfd/rave-sp.c          |  18 +-
>  drivers/watchdog/Kconfig       |   5 +
>  drivers/watchdog/Makefile      |   1 +
>  drivers/watchdog/rave-sp-wdt.c | 426 +++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 448 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/watchdog/rave-sp-wdt.c
>
> --
> 2.14.3
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

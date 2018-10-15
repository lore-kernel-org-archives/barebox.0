Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gC4B2-0007TU-Cf
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 14:49:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id 61-v6so21677532wrb.6
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 07:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <20181015092611.7223-1-antonynpavlov@gmail.com>
In-Reply-To: <20181015092611.7223-1-antonynpavlov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 15 Oct 2018 07:48:37 -0700
Message-ID: <CAHQ1cqHWfr=Kxqr81ekhMdF_j43eCUNECj+QKSXz_iO3YUKLOQ@mail.gmail.com>
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
Subject: Re: [PATCH] net: make routing work after dhcp command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Oct 15, 2018 at 2:26 AM Antony Pavlov <antonynpavlov@gmail.com> wrote:
>
> At the moment only ifup stuff turns netif up.
> After the commit f0624a701513 ('net: Do not route traffic
> to interfaces that are not up') the dhcp command
> keeps netif->ifup == false and network subsystem
> can't route packets.
>

I am not really trying to make any objections to this patch, however I
can't seem to find any documented mention that just calling "dhcp" is
sufficient to bring network up in barebox.
Documentation/user/networking.rst explicitly tells one to use "ifup"
for both static and dynamic IP configurations. That being said just
calling "dhcp" used to work, so this is definitely a regression and it
might make sense to apply this fix.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

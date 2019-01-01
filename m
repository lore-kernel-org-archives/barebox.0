Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1geG7e-0003GD-Ss
 for barebox@lists.infradead.org; Tue, 01 Jan 2019 09:14:05 +0000
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x019DhDa002915
 for <barebox@lists.infradead.org>; Tue, 1 Jan 2019 18:13:43 +0900
Received: by mail-ua1-f51.google.com with SMTP id d2so9116264ual.2
 for <barebox@lists.infradead.org>; Tue, 01 Jan 2019 01:13:43 -0800 (PST)
MIME-Version: 1.0
References: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
 <20181231061208.GA12963@ravnborg.org>
In-Reply-To: <20181231061208.GA12963@ravnborg.org>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 1 Jan 2019 18:13:06 +0900
Message-ID: <CAK7LNAQ_LbK0-cFy393cdxj2ERpNWHV+9R21hDzdyX8Uf7avGA@mail.gmail.com>
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
Subject: Re: [PATCH 00/11] Sync Kconfig to Linux 4.20
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hi Sam,

On Mon, Dec 31, 2018 at 3:12 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Masahiro
>
> Thanks for taking your time to sync kconfig up with the kernel, very appreciated!
>
> I left a few comments to some of the patches, but nothing that require
> a re-spin.


Thanks for the review!

I hope Sascha will fix up flaws in the commit log.





> I applied on top of master and for my so far limited testing everything looked good.
>
>         Sam
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



--
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

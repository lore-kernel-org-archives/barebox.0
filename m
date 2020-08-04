Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2p6j-0001qt-OE
 for barebox@lists.infradead.org; Tue, 04 Aug 2020 05:03:27 +0000
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com
 [209.85.221.176]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 07452rQo016485
 for <barebox@lists.infradead.org>; Tue, 4 Aug 2020 14:02:53 +0900
Received: by mail-vk1-f176.google.com with SMTP id o2so1011645vkn.9
 for <barebox@lists.infradead.org>; Mon, 03 Aug 2020 22:02:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200721061523.27105-1-a.fatoum@pengutronix.de>
 <20200803212133.GM31536@pengutronix.de>
In-Reply-To: <20200803212133.GM31536@pengutronix.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 4 Aug 2020 14:02:16 +0900
Message-ID: <CAK7LNAT_00x3qCRiU8J_K=MHD-=cFZUmHGxxoTXx2md+=0gO-g@mail.gmail.com>
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
Subject: Re: [PATCH] treewide: remove stale instances of struct device
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Tue, Aug 4, 2020 at 6:22 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Jul 21, 2020 at 08:15:23AM +0200, Ahmad Fatoum wrote:
> > We call it struct device_d, any instances of struct device are likely
> > left-over code after porting from Linux.
> >
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  drivers/crypto/caam/intern.h   | 5 -----
> >  drivers/crypto/caam/jr.h       | 2 --
> >  drivers/gpio/gpio-sx150x.c     | 1 -
> >  drivers/usb/musb/musb_gadget.c | 9 ---------
> >  4 files changed, 17 deletions(-)
>
> Applied, thanks
>
> Sascha


Why doesn't barebox use (struct device)?

(Of course its implementation is much simpler
than that of Linux).




-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

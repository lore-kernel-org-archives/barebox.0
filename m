Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qireq-0008PM-GP
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 17:31:08 +0000
Received: by vws8 with SMTP id 8so2890407vws.36
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2011 10:30:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110718044640.GJ20678@game.jcrosoft.org>
References: <1310803330.2562.13.camel@ubuntu.ubuntu-domain>
	<20110718044640.GJ20678@game.jcrosoft.org>
From: Vikram Narayanan <vikram186@gmail.com>
Date: Mon, 18 Jul 2011 23:00:27 +0530
Message-ID: <CAHwEkO1N2ESbo294moLofBt2ezrxTg+wMH4-zoTQ7oxXYD+FEA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] checks for return value during the initcall
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 18, 2011 at 10:16 AM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
>
> On 13:32 Sat 16 Jul =A0 =A0 , Vikram Narayanan wrote:
> > Hi,
> >
> > This patch checks for the return value, if there is no memory allocated=
 in the getc_buffer_flush initcall.
> >
> > Signed-off-by: Vikram Narayanan<vikram186@gmail.com>
> > ---
> > diff --git a/common/console.c b/common/console.c
> > index d60e57f..c502638 100644
> > --- a/common/console.c
> > +++ b/common/console.c
> > @@ -37,6 +37,7 @@
> > =A0#include <poller.h>
> > =A0#include <linux/list.h>
> > =A0#include <linux/stringify.h>
> > +#include <errno.h>
> >
> > =A0LIST_HEAD(console_list);
> > =A0EXPORT_SYMBOL(console_list);
> > @@ -118,6 +119,8 @@ static int getc_buffer_flush(void)
> > =A0{
> > =A0 =A0 =A0 console_input_buffer =3D kfifo_alloc(1024);
> > =A0 =A0 =A0 console_output_buffer =3D kfifo_alloc(1024);
> > + =A0 =A0 if(!console_input_buffer || !console_output_buffer)
> > + =A0 =A0 =A0 =A0 =A0 =A0 return ENOMEM;
> return -ENOMEM;
>
> and a DEBUG_LL message is important here for debug
Sure. That would be good. Shall I wait for the PUTS_LL to be added to the g=
it?

-
Thanks,
Vikram
> Best Regards,
> J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

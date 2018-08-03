Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x231.google.com ([2607:f8b0:4003:c06::231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1flVMg-00078r-52
 for barebox@lists.infradead.org; Fri, 03 Aug 2018 08:23:15 +0000
Received: by mail-oi0-x231.google.com with SMTP id k12-v6so8379012oiw.8
 for <barebox@lists.infradead.org>; Fri, 03 Aug 2018 01:23:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAEp+FuDgNdw3Grc8-YAovRFHZSoHGwWeaY-O8TxpcXo3Qve0TQ@mail.gmail.com>
 <CAEp+FuCBnCw6PY-YcM+Ykh1bSsi-FggyZqsmHhY7rHrY+jtYXQ@mail.gmail.com>
 <CAAP7ucL+qH9Ys2z+viSRXmJDJFSEExH+yq_r+YpQxOQ6RujA1g@mail.gmail.com>
 <CAHQ1cqFqu2czXzxhBWQHH7woQEQ39G1hjaU_Vvg3KGnhRhnnaw@mail.gmail.com>
In-Reply-To: <CAHQ1cqFqu2czXzxhBWQHH7woQEQ39G1hjaU_Vvg3KGnhRhnnaw@mail.gmail.com>
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Fri, 3 Aug 2018 10:22:52 +0200
Message-ID: <CAEp+FuAgKYoZMXyu6UvWq8tGk=4untyXvXc_PYH4N6NFSw5_qw@mail.gmail.com>
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
Subject: Re: Cannot set GPIOs in barebox
To: andrew.smirnov@gmail.com
Cc: barebox@lists.infradead.org, aleksander@aleksander.es

Ok, thanks for the clarification.
On Mon, Jul 30, 2018 at 10:40 PM Andrey Smirnov
<andrew.smirnov@gmail.com> wrote:
>
> On Mon, Jul 30, 2018 at 12:28 PM Aleksander Morgado
> <aleksander@aleksander.es> wrote:
> >
> > Hey,
> >
> > >
> > >     This topic could be ignored. GPIO set/get value functions from
> > > barebox are working fine BUT gpioinfo function has some bug it reports
> > > unchanged status for gpios value.
> > >
> >
> > Not that I got into much detail, but when I saw that same issue (I
> > have some WIP patches to manage GPIOs via RATP) I just assumed that we
> > can reliably gpio_get_value() on input GPIOs, and gpio_set_value() on
> > output GPIOs. Trying to "read" the output GPIO value with
> > gpio_get_value() may not be reliable or even supported at all. Is that
> > assumption correct?
>
> AFAIK/IMHO this would really depend on the hardware platform. On
> i.MX(also depending on IOMUX IP used as well) appropriate IOMUX
> configuration is necessary in order to be able to "sense" the actual
> logical level of a GPIO configured as . If I recall things correctly,
> i.MX51/6/8, would require a SION bit set and i.MX7/VF610 would require
> input buffer to be enabled, otherwise output GPIOs would always report
> the same value via gpio_get_value().
>
> Thanks,
> Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

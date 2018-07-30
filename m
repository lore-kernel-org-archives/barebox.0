Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x233.google.com ([2607:f8b0:4001:c0b::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkEyX-0004i8-8v
 for barebox@lists.infradead.org; Mon, 30 Jul 2018 20:41:06 +0000
Received: by mail-it0-x233.google.com with SMTP id q20-v6so1196519ith.0
 for <barebox@lists.infradead.org>; Mon, 30 Jul 2018 13:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAEp+FuDgNdw3Grc8-YAovRFHZSoHGwWeaY-O8TxpcXo3Qve0TQ@mail.gmail.com>
 <CAEp+FuCBnCw6PY-YcM+Ykh1bSsi-FggyZqsmHhY7rHrY+jtYXQ@mail.gmail.com>
 <CAAP7ucL+qH9Ys2z+viSRXmJDJFSEExH+yq_r+YpQxOQ6RujA1g@mail.gmail.com>
In-Reply-To: <CAAP7ucL+qH9Ys2z+viSRXmJDJFSEExH+yq_r+YpQxOQ6RujA1g@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 30 Jul 2018 13:40:39 -0700
Message-ID: <CAHQ1cqFqu2czXzxhBWQHH7woQEQ39G1hjaU_Vvg3KGnhRhnnaw@mail.gmail.com>
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
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: mihaita_ivascu@trimble.com, Barebox List <barebox@lists.infradead.org>

On Mon, Jul 30, 2018 at 12:28 PM Aleksander Morgado
<aleksander@aleksander.es> wrote:
>
> Hey,
>
> >
> >     This topic could be ignored. GPIO set/get value functions from
> > barebox are working fine BUT gpioinfo function has some bug it reports
> > unchanged status for gpios value.
> >
>
> Not that I got into much detail, but when I saw that same issue (I
> have some WIP patches to manage GPIOs via RATP) I just assumed that we
> can reliably gpio_get_value() on input GPIOs, and gpio_set_value() on
> output GPIOs. Trying to "read" the output GPIO value with
> gpio_get_value() may not be reliable or even supported at all. Is that
> assumption correct?

AFAIK/IMHO this would really depend on the hardware platform. On
i.MX(also depending on IOMUX IP used as well) appropriate IOMUX
configuration is necessary in order to be able to "sense" the actual
logical level of a GPIO configured as . If I recall things correctly,
i.MX51/6/8, would require a SION bit set and i.MX7/VF610 would require
input buffer to be enabled, otherwise output GPIOs would always report
the same value via gpio_get_value().

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

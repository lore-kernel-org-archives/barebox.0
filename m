Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x22d.google.com ([2607:f8b0:4003:c06::22d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fg6Cy-0004Ao-MJ
 for barebox@lists.infradead.org; Thu, 19 Jul 2018 10:30:54 +0000
Received: by mail-oi0-x22d.google.com with SMTP id n84-v6so14563608oib.9
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2018 03:30:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAEp+FuDgNdw3Grc8-YAovRFHZSoHGwWeaY-O8TxpcXo3Qve0TQ@mail.gmail.com>
In-Reply-To: <CAEp+FuDgNdw3Grc8-YAovRFHZSoHGwWeaY-O8TxpcXo3Qve0TQ@mail.gmail.com>
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Thu, 19 Jul 2018 12:30:29 +0200
Message-ID: <CAEp+FuCBnCw6PY-YcM+Ykh1bSsi-FggyZqsmHhY7rHrY+jtYXQ@mail.gmail.com>
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
To: barebox@lists.infradead.org

Hello,

    This topic could be ignored. GPIO set/get value functions from
barebox are working fine BUT gpioinfo function has some bug it reports
unchanged status for gpios value.

Best regards,
         Mihaita Ivascu

On Thu, Jul 19, 2018 at 11:05 AM Mihaita Ivascu
<mihaita_ivascu@trimble.com> wrote:
>
> Hello,
>
>     I would like to set gpio direction and values from barebox. I use:
>
> gpio_direction_output(133, 1);
>         mdelay(2);
>         gpio_set_value(133, 1);
>         mdelay(2);
>         gpio_direction_output(137, 1);
>         mdelay(2);
>         gpio_set_value(137, 1);
>
> from my board.c or using commands in the barebox shell. Setting
> direction is working but setting value it not performed.
>
> GPIOs 128-159, chip 20ac000.gpio:
>              dir val requested  label
>   GPIO  128:  in  lo        false
>   GPIO  129:  in  lo        false
>   GPIO  130:  in  lo        false
>   GPIO  131:  in  lo        false
>   GPIO  132:  in  lo        false
>   GPIO  133: out  lo         true  gpio
>   GPIO  134:  in  lo        false
>   GPIO  135:  in  lo        false
>   GPIO  136:  in  lo        false
>   GPIO  137: out  lo         true  gpio
>   GPIO  138:  in  lo        false
>
>
>     What could be the issue? And what could be the workaround? I would
> really need to set some GPIOs high from the barebox.
>
> Thanks,
>       Mihaita

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

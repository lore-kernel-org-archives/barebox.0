Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkDqH-00039l-JH
 for barebox@lists.infradead.org; Mon, 30 Jul 2018 19:28:31 +0000
Received: by mail-ed1-x52c.google.com with SMTP id o8-v6so4577086edt.13
 for <barebox@lists.infradead.org>; Mon, 30 Jul 2018 12:28:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAEp+FuCBnCw6PY-YcM+Ykh1bSsi-FggyZqsmHhY7rHrY+jtYXQ@mail.gmail.com>
References: <CAEp+FuDgNdw3Grc8-YAovRFHZSoHGwWeaY-O8TxpcXo3Qve0TQ@mail.gmail.com>
 <CAEp+FuCBnCw6PY-YcM+Ykh1bSsi-FggyZqsmHhY7rHrY+jtYXQ@mail.gmail.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Mon, 30 Jul 2018 21:27:55 +0200
Message-ID: <CAAP7ucL+qH9Ys2z+viSRXmJDJFSEExH+yq_r+YpQxOQ6RujA1g@mail.gmail.com>
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
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org

Hey,

>
>     This topic could be ignored. GPIO set/get value functions from
> barebox are working fine BUT gpioinfo function has some bug it reports
> unchanged status for gpios value.
>

Not that I got into much detail, but when I saw that same issue (I
have some WIP patches to manage GPIOs via RATP) I just assumed that we
can reliably gpio_get_value() on input GPIOs, and gpio_set_value() on
output GPIOs. Trying to "read" the output GPIO value with
gpio_get_value() may not be reliable or even supported at all. Is that
assumption correct?

-- 
Aleksander
https://aleksander.es

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvWY9-000563-Et
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 18:50:05 +0000
Received: by mail-wi0-f176.google.com with SMTP id n3so1383182wiv.3
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 11:49:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJfOKBx4sQwC59SyZy7TD5+YAg+JCgQ1JeiJs1R8H9LNWy1SHA@mail.gmail.com>
References: <CAJfOKBx4sQwC59SyZy7TD5+YAg+JCgQ1JeiJs1R8H9LNWy1SHA@mail.gmail.com>
Date: Fri, 13 Jun 2014 20:49:42 +0200
Message-ID: <CAJfOKBwGBOs3OwKsWQioziuDwW=dLoHQ+Mxo6P625m1V3SKm+Q@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: Re: CFI FLash on a 8 bits bus working ?
To: barebox <barebox@lists.infradead.org>

2014-06-13 9:24 GMT+02:00 Franck Jullien <franck.jullien@gmail.com>:
> Hi,
>
> As I'm working on a emulated CFI flash device for or1ksim (Openrisc
> simulator) I choose to implement a CFI flash with a 8 bits data bus
> connected to a 8 bits host bus.
>
> As far as I can see, barebox cfi flash driver is broken for 8 bits devices.
>

Well I'm not sure now :)

> Am I wrong ?
>
> Anyone as ever used a 8 bits CFI chip with barebox ?
>
> Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bAEiw-0004tu-T5
 for barebox@lists.infradead.org; Tue, 07 Jun 2016 10:59:08 +0000
Received: by mail-lf0-x242.google.com with SMTP id k192so7343294lfb.1
 for <barebox@lists.infradead.org>; Tue, 07 Jun 2016 03:58:45 -0700 (PDT)
Date: Tue, 7 Jun 2016 14:00:06 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160607140006.a7739e6fe47c96873ad06534@gmail.com>
In-Reply-To: <1464854818-28653-13-git-send-email-poggi.raph@gmail.com>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
 <1464854818-28653-13-git-send-email-poggi.raph@gmail.com>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 12/12] arm: boards: add virt board
To: Raphael Poggi <poggi.raph@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu,  2 Jun 2016 10:06:58 +0200
Raphael Poggi <poggi.raph@gmail.com> wrote:

> Add qemu virt board which emulates arm64 board.
> =

> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm/Kconfig                           |  9 ++++
>  arch/arm/boards/Makefile                   |  1 +
>  arch/arm/boards/virt/Kconfig               |  8 ++++

Can we use a more descriptive 'qemu-virt' name for this machine/board inste=
ad of 'virt'?

>  arch/arm/boards/virt/Makefile              |  1 +
>  arch/arm/boards/virt/env/bin/_update       | 36 ++++++++++++++++
>  arch/arm/boards/virt/env/bin/boot          | 38 +++++++++++++++++

... skipped ...

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f331.mail.ru ([217.69.140.227])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDB8U-0005hn-AC
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:59:48 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 06 Mar 2013 13:59:40 +0400
Message-ID: <1362563980.426099414@f331.mail.ru>
In-Reply-To: <1362562189-17783-9-git-send-email-plagnioj@jcrosoft.com>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
 <1362562189-17783-9-git-send-email-plagnioj@jcrosoft.com>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCAwOS8yMF0gYXJtOiBhZGQgYXBwbGljYXRpb24gc3VwcG9y?=
 =?UTF-8?B?dA==?=
To: =?UTF-8?B?SmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQ=?= <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/Kconfig                       |    1 +
>  arch/arm/Makefile                      |    6 +-
>  arch/arm/apps/Kconfig                  |   11 ++++
>  arch/arm/apps/Makefile                 |    6 ++
>  arch/arm/apps/apps.lds.S               |   64 ++++++++++++++++++
>  arch/arm/apps/binfmt.c                 |  111 ++++++++++++++++++++++++++++++++
>  arch/arm/apps/head.S                   |   59 +++++++++++++++++
>  arch/arm/apps/include/arch/asm/macro.h |   46 +++++++++++++
>  arch/arm/apps/include/arch/setjmp.h    |   26 ++++++++
>  arch/arm/apps/raise.c                  |   27 ++++++++
>  arch/arm/apps/setjmp.S                 |   60 +++++++++++++++++
>  arch/arm/apps/start.c                  |   35 ++++++++++
>  12 files changed, 451 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/apps/Kconfig
>  create mode 100644 arch/arm/apps/Makefile
>  create mode 100644 arch/arm/apps/apps.lds.S
>  create mode 100644 arch/arm/apps/binfmt.c
>  create mode 100644 arch/arm/apps/head.S
>  create mode 100644 arch/arm/apps/include/arch/asm/macro.h
>  create mode 100644 arch/arm/apps/include/arch/setjmp.h
>  create mode 100644 arch/arm/apps/raise.c
>  create mode 100644 arch/arm/apps/setjmp.S
>  create mode 100644 arch/arm/apps/start.c
...

Is this feature really needed? If we Include it, is dramatically increases size of BB.
We have a scripting, maybe just inclusion a small "C" interpreter is enough?
Such as "picoc" (http://code.google.com/p/picoc/), for example.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

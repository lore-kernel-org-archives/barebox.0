Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZVLjb-0007pF-3G
 for barebox@lists.infradead.org; Fri, 28 Aug 2015 15:38:31 +0000
Received: by laba3 with SMTP id a3so34840961lab.1
 for <barebox@lists.infradead.org>; Fri, 28 Aug 2015 08:38:09 -0700 (PDT)
Date: Fri, 28 Aug 2015 18:46:14 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150828184614.d0ec3d17f1800be9093f7fa3@gmail.com>
In-Reply-To: <20150828063432.GA18700@pengutronix.de>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
 <1440714250-28080-4-git-send-email-antonynpavlov@gmail.com>
 <20150828063432.GA18700@pengutronix.de>
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
Subject: Re: [RFC 3/9] MIPS: add virt_to_phys() and phys_to_virt()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Fri, 28 Aug 2015 08:34:32 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Aug 28, 2015 at 01:24:04AM +0300, Antony Pavlov wrote:
> > N.B. phys_to_virt() translates phys address
> > to KSEG1 (uncached) address as barebox mips
> > has no cache support.
> =

> What would it take to implement cache support for mips?
lack of the cache support is critical problem for current barebox mips supp=
ort.
I'm planning to add cache support in several weeks.
This task needs much test efforts for different boards.

Anyway I can't carry out cache adding work at one.
But adding virt_to_phys and DMA support will help to add cache support one =
day anyway.

> The u-boot mips
> cache code seems quite straight forward.

AFAIR u-boot has only mips L1 cache support.
AFAIK Paul Burton works on adding L2 cache support but current mainline
u-boot repo has no such code.

> With cache support you could
> use several drivers as they are and wouldn't have to introduce
> physical/virtual translations. I'm afraid these translations will be
> broken quite soon as they get tested only on Mips.

I hope somebody will test my EHCI patch on ARM :)

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

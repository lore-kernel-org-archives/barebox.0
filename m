Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEnEM-0004AS-TA
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 20:52:31 +0000
Message-ID: <513CF27B.6080802@free-electrons.com>
Date: Sun, 10 Mar 2013 21:52:11 +0100
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1362924823.394544173@f371.mail.ru>
In-Reply-To: <1362924823.394544173@f371.mail.ru>
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
Subject: Re: New dt-only arm/mach
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

Le 10/03/2013 15:13, Alexander Shiyan a =E9crit :
> Hello All.
> =

> I want to add new arch into barebox. n the kernel this arch is
> dt-only. I talking about mach-sunxi.

Wow, that would be great :)

I've been thinking about doing this for quite some time now, but I don't
have so much time to do both the kernel and barebox ports, so it didn't
go further than "it would be cool".

> So, how we should handle such platform in the barebox? We need always
> provide dtb to the kernel, then where it should be in barebox?

There's no strong requirements here. It can be anywhere as long as
barebox knows how and where to find it, basically like the kernel image,
so it can be from a MMC, TFTP, etc.

But really, the fact that sunxi is only bootable through device tree
doesn't change a thing compared to other platforms with device tree
support: the bootloader has to load the kernel image, the dtb and that's it.

> I think about dtb-file in /env, but not sure... Thanks.

It can be done as well I guess, but that doesn't sound that familiar
from what I've seen in the other barebox boards.

Maxime

-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

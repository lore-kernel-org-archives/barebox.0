Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SXXct-0001jU-2P
 for barebox@lists.infradead.org; Thu, 24 May 2012 12:58:49 +0000
Date: Thu, 24 May 2012 14:58:37 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120524145837.42085b83@eb-e6520>
In-Reply-To: <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

Hi Roberto,

Le Thu, 24 May 2012 14:49:36 +0200,
Roberto Nibali <rnibali@gmail.com> a =E9crit :
> I haven't found a combination of root/rootfstype yet that permits me to
> boot from barebox either from NFS, TFTP, MMC/SD or NOR yet. No matter what
> I try, the kernel spits back at me.
> =

well NAND boot + nand rootfs works fine here (cpuimx25) and I assume
NAND boot + sd rootfs would work as sd is properly detected during boot.

> Also I have the problem that my NOR is only detected when using barebox as
> a second stage boot loader from uboot. If booting from SD into barebox, t=
he
> NOR is not detected. I have added the following changes to figure out
> what's going on:
> =

> .../...
> What's going on here?
> =

bad iomux and/or bad WEIM configuration

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

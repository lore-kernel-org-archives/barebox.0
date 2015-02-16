Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f43.google.com ([209.85.215.43])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YNIST-0002ec-Hg
 for barebox@lists.infradead.org; Mon, 16 Feb 2015 09:59:18 +0000
Received: by labgq15 with SMTP id gq15so27426132lab.6
 for <barebox@lists.infradead.org>; Mon, 16 Feb 2015 01:58:54 -0800 (PST)
Date: Mon, 16 Feb 2015 14:02:14 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150216140214.c926028d362b9764bb7c1f6c@gmail.com>
In-Reply-To: <20150216053242.GE12209@pengutronix.de>
References: <1423806794-23881-1-git-send-email-antonynpavlov@gmail.com>
 <20150216053242.GE12209@pengutronix.de>
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
Subject: Re: [PATCH 0/3] MIPS Malta serial port fixups
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 16 Feb 2015 06:32:42 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Fri, Feb 13, 2015 at 08:53:11AM +0300, Antony Pavlov wrote:
> > Yesterday I tested qemu-malta barebox on a real MIPS Malta board.
> > Barebox runs on real board with some limitations.
> > This patchseries fixes trivial serial port errors
> > found during barebox real board experiments.
> =

> Applied all, thanks.
> =

> Do you plan to add real hardware support?

It depends on aviability of real hardware and my free time.
Just now I can work with this Malta board remotly from time to time.
YAMON-02.22 sources are available at official MIPS site,
so some information on system controller can be obtained there.
Full YAMON replacement may be difficult but I think I can try to add
PCI support on real hardware.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

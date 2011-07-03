Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QdTXE-0004PD-6z
	for barebox@lists.infradead.org; Sun, 03 Jul 2011 20:44:57 +0000
Received: by wyf23 with SMTP id 23so3922630wyf.36
	for <barebox@lists.infradead.org>; Sun, 03 Jul 2011 13:44:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110702164500.GA28000@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-2-git-send-email-antonynpavlov@gmail.com>
	<4E0F2E23.4000801@pobox.com>
	<20110702164500.GA28000@game.jcrosoft.org>
Date: Mon, 4 Jul 2011 00:44:52 +0400
Message-ID: <CAA4bVAEJ=UOBE75Z-jEWeDz06uxoJFvbFmcrjCCNx8WTB9rd-w@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/4] MIPS: add Malta machine support to barebox
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Shinya Kuribayashi <skuribay@pobox.com>

On 2 July 2011 20:45, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:

> Barebox is GPLv2 Only project
>
> So Nack GPLv3

Hmmm.

There are some GPLv3 licensed files.

$ cd barebox.git
$ grep -RHn "either version 3" .
Software Foundation, either version   of the License, or
./arch/arm/mach-versatile/include/mach/debug_ll.h:7: * the Free
Software Foundation, either version 3 of the License, or
./scripts/kconfig/zconf.tab.c:11:   the Free Software Foundation,
either version 3 of the License, or
./scripts/kconfig/zconf.tab.c_shipped:11:   the Free Software
Foundation, either version 3 of the License, or

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

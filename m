Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qdeuw-000425-RP
	for barebox@lists.infradead.org; Mon, 04 Jul 2011 08:54:12 +0000
Received: by wwf22 with SMTP id 22so3564221wwf.18
	for <barebox@lists.infradead.org>; Mon, 04 Jul 2011 01:54:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110702164500.GA28000@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-2-git-send-email-antonynpavlov@gmail.com>
	<4E0F2E23.4000801@pobox.com>
	<20110702164500.GA28000@game.jcrosoft.org>
Date: Mon, 4 Jul 2011 12:54:05 +0400
Message-ID: <CAA4bVAH34-QDdMd2FObqc9XquErT13UDSi8MDAN7ZhARruZyow@mail.gmail.com>
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

See file barebox.git/arch/x86/mach-i386/reset.c:
--- begin ---
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public License as
* published by the Free Software Foundation; either version 2 of
* the License, or (at your option) any later version.
--- end ---

I think that this text does not conform with the proposition "Barebox
is GPLv2 Only project" (there are the words "or any later version").

The more suitable version can be found in
linux-2.6.39/arch/mips/mti-malta/malta-reset.c:
--- begin ---
*  This program is free software; you can distribute it and/or modify it
*  under the terms of the GNU General Public License (Version 2) as
*  published by the Free Software Foundation.
--- end ---

But let's check:

 $ cd barebox.git
 $ grep -RHn "or (at your option) any later version" . | wc -l
431
 $ make clean
 $ find -type f | grep -v "\(^./.git\|^./Documentation\|^./scripts\)" | wc =
-l
1640

At least 431 of 1640 files (approx. 26 %) are GPLv3-compatible.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwrYz-0001ZU-Uz
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 17:55:43 +0000
Received: by mail-lf1-x131.google.com with SMTP id m30so297865lfp.8
 for <barebox@lists.infradead.org>; Wed, 29 Jan 2020 09:55:40 -0800 (PST)
MIME-Version: 1.0
References: <CAEKVsgZHZR2b28wcMcpac4Qa3KebrXMRf14STZ8GCum0NmnLgg@mail.gmail.com>
 <a0c0afa2-cb44-3e40-b7e7-962fd80f2902@pengutronix.de>
 <CAEKVsgYu15u7d6ptaU7aZGy6OXOhN7743aLdGOz_3fZOPK2JpQ@mail.gmail.com>
 <fead3df7-e831-8ff2-3f62-801ead7eda7b@pengutronix.de>
In-Reply-To: <fead3df7-e831-8ff2-3f62-801ead7eda7b@pengutronix.de>
From: Cameron Ferguson <cameron.bare86@gmail.com>
Date: Wed, 29 Jan 2020 17:55:28 +0000
Message-ID: <CAEKVsgbBXKcmg2rRFZ16VSNLnu+7C+pJH-GomExFxz9o_+bqdA@mail.gmail.com>
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
Subject: Re: Small tweak to get ACPI watchdog working (iTCO)
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org

> In the code you sent last time, it said that your addresses
> are IORESOURCE_IO. These are I/O ports, not memory-mapped ports,
> so you can't dereference a pointer and access them, but instead you
> have to use port I/O instruction, which in barebox and Linux is
> the out[bwl] family of functions.


I got it working.

I included the header file "arch/x86/include/asm/io.h" and so I
thought I was using the right functions for IO operations on ports,
however it turns out that "linux/io.h" was being included before the
aforementioned header file, and so "inl" and outl" were already
defined with generic implementations instead of as specific to x86.

It's working. The watchdog will reboot if the Linux kernel freezes on boot up.

Thank you for your help, Ahmad, I wouldn't have looked further into
the IO headers if you hadn't pointed me in the right direction.

Cameron

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

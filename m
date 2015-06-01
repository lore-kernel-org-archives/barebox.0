Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x22e.google.com ([2607:f8b0:4001:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YzPTb-0003AM-RE
 for barebox@lists.infradead.org; Mon, 01 Jun 2015 13:10:00 +0000
Received: by igbpi8 with SMTP id pi8so60600487igb.1
 for <barebox@lists.infradead.org>; Mon, 01 Jun 2015 06:09:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150526065756.GZ6325@pengutronix.de>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
 <1431572067-4038-10-git-send-email-andrew.smirnov@gmail.com>
 <20150519070613.GX6325@pengutronix.de>
 <CAHQ1cqECGkwNQp4tgBrj1g6NR01EQHjsbf_omeiN+GPHpaeuhA@mail.gmail.com>
 <20150526065756.GZ6325@pengutronix.de>
Date: Mon, 1 Jun 2015 06:09:38 -0700
Message-ID: <CAHQ1cqErPeoeL5Teq6UN4tAGs97EoGdNri7huM+d_HFqVis07g@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 10/10] ARM: pbl: Add an option to validate DRAM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> How about testing only a small fragment of DRAM, say 8MB, in your
> lowlevel board code and calling barebox_arm_entry() with the
> membase/memsize you previously tested? This way you can make sure that
> barebox only uses tested memory without having to test all memory before
> calling barebox_arm_entry() and without having to call back into some
> testing function.

I like that solution and it does allow to get rid of all of that nasty
linking address agnostic code. The only problem that I see with it is
that if I start Barebox with 8MB of memory and then try to boot Linux
of_memory_fixup() will modify the devicetree file and cause Linux to
think the machine only has 8MB of RAM as well. Any ideas on how to
deal with that?

Thank you,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x233.google.com ([2607:f8b0:4001:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zgz56-0003ts-OI
 for barebox@lists.infradead.org; Tue, 29 Sep 2015 17:52:49 +0000
Received: by igbkq10 with SMTP id kq10so82872740igb.0
 for <barebox@lists.infradead.org>; Tue, 29 Sep 2015 10:52:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150929065847.GO7858@pengutronix.de>
References: <1443247338-29171-1-git-send-email-andrew.smirnov@gmail.com>
 <1443247338-29171-2-git-send-email-andrew.smirnov@gmail.com>
 <20150929065847.GO7858@pengutronix.de>
Date: Tue, 29 Sep 2015 10:52:27 -0700
Message-ID: <CAHQ1cqFEsiq7Qumi54aJv2C_nh7xkR0jkrBnU5Z6jyhWp3zmKQ@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] arm/cpu/start.c: Avoid copying device-tree when
 possible
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>> +                     }
>> +
>
> At this place it is unknown where in memory the fdt is. It could well be
> somewhere in the malloc area space, so we need to move it to a safe
> place before we setup malloc in the next step.

I didn't do an exhaustive search in the source but it seemed like all
of the callers of barebox_arm_entry() were calling it either with NULL
or some build-in address, so I assumed that this change shouldn't be a
problem for non-relocatable binaries, but you are right, semantics of
the functions does not restrict the location of fdt data.

I'd still like to discuss the possibility of introducing a feature
like that to the codebase. Right now I have a use-case where I use
Barebox as a DDR memory tuning/testing tool on i.MX6Q where I upload
the image to IRAM via JTAG and execute Barebox straight out of SRAM.
With only 256K of total memory availible I just don't have enough RAM
to do this precautionary step of copying ~30K or .dtb. Do you see a
place for a feature like that in upstream code? Something like a
Kconfig option, similar to CONFIG_PBL_FORCE_PIGGYDATA_COPY, that can
be selected on per-board basis and would enable the shortcut?


>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

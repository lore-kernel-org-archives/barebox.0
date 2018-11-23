Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gQ7AX-0006nT-9w
 for barebox@lists.infradead.org; Fri, 23 Nov 2018 08:50:36 +0000
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
 [209.85.217.54]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id wAN8o7hi032053
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2018 17:50:07 +0900
Received: by mail-vs1-f54.google.com with SMTP id g68so6731358vsd.11
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2018 00:50:07 -0800 (PST)
MIME-Version: 1.0
References: <20181116143127.13875-1-s.hauer@pengutronix.de>
In-Reply-To: <20181116143127.13875-1-s.hauer@pengutronix.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 23 Nov 2018 17:49:30 +0900
Message-ID: <CAK7LNATiis8ci+bczBsPWHfVSC=pePnpTNddQigJ9uVWOtqDww@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: socfpga: generate smaller images when multiple
 boards are selected
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 16, 2018 at 11:31 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> The socfpga xload images are limited to 64KiB. This doesn't fit if
> multiple boards are selected. The reason is that we include huge
> C files and arrays in the early init code which get compiled once
> for each board. -ffunction-sections is without effect here since all
> functions have the same name and hence we get the same function
> multiple times in the same section.
>
> To overcome this we surround all function names with a SECT() macro which
> is used to add a board specific prefix to the section names. This way
> -ffunction-sections can now do its work and discard unused functions.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


I just accidentally stopped by this commit.

It is a good thing that you noticed dead code elimination
(-ffunction-sections -fdata-sections, --gc-sections)
does not work if the same symbol names are used
in the conventional incremental linking
Linux kernel used to use.

As you notice, this is a potential problem
of CONFIG_PBL_MULTI_IMAGES,
and I know the right solution.


Since Linux v4.13 (commit 98ced886dd79a),
Linux kernel build system uses thin archive,
where Kbuild uses $(AR) rcSTP instead of $(LD) -r
to combine built-in objects.

With this, the final link stage does the right thing to do
for --gc-sections.

Besides, thin archive is faster,
and saves disk spaces.

If you sync core Makefiles with Linux,
your problem will be solved.





--
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

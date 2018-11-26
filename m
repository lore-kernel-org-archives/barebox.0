Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRDTR-0004GN-HL
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 09:46:43 +0000
Date: Mon, 26 Nov 2018 10:46:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181126094624.l56oxn7kintdqc7s@pengutronix.de>
References: <20181116143127.13875-1-s.hauer@pengutronix.de>
 <CAK7LNATiis8ci+bczBsPWHfVSC=pePnpTNddQigJ9uVWOtqDww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNATiis8ci+bczBsPWHfVSC=pePnpTNddQigJ9uVWOtqDww@mail.gmail.com>
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
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 23, 2018 at 05:49:30PM +0900, Masahiro Yamada wrote:
> On Fri, Nov 16, 2018 at 11:31 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > The socfpga xload images are limited to 64KiB. This doesn't fit if
> > multiple boards are selected. The reason is that we include huge
> > C files and arrays in the early init code which get compiled once
> > for each board. -ffunction-sections is without effect here since all
> > functions have the same name and hence we get the same function
> > multiple times in the same section.
> >
> > To overcome this we surround all function names with a SECT() macro which
> > is used to add a board specific prefix to the section names. This way
> > -ffunction-sections can now do its work and discard unused functions.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> 
> I just accidentally stopped by this commit.
> 
> It is a good thing that you noticed dead code elimination
> (-ffunction-sections -fdata-sections, --gc-sections)
> does not work if the same symbol names are used
> in the conventional incremental linking
> Linux kernel used to use.
> 
> As you notice, this is a potential problem
> of CONFIG_PBL_MULTI_IMAGES,
> and I know the right solution.
> 
> 
> Since Linux v4.13 (commit 98ced886dd79a),
> Linux kernel build system uses thin archive,
> where Kbuild uses $(AR) rcSTP instead of $(LD) -r
> to combine built-in objects.
> 
> With this, the final link stage does the right thing to do
> for --gc-sections.
> 
> Besides, thin archive is faster,
> and saves disk spaces.
> 
> If you sync core Makefiles with Linux,
> your problem will be solved.

That's really nice, thanks for noting this.

I had a short look into it, unfortunately syncing the Makefile doesn't
appear to be an easy job. I think we stick to the current patch for now
until someone finds time to do it. It's good to know there's a proper
solution to the problem though

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

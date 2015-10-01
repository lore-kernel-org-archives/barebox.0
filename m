Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhXGZ-00014k-JO
 for barebox@lists.infradead.org; Thu, 01 Oct 2015 06:22:56 +0000
Date: Thu, 1 Oct 2015 08:22:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151001062232.GH7858@pengutronix.de>
References: <1443247338-29171-1-git-send-email-andrew.smirnov@gmail.com>
 <1443247338-29171-2-git-send-email-andrew.smirnov@gmail.com>
 <20150929065847.GO7858@pengutronix.de>
 <CAHQ1cqFEsiq7Qumi54aJv2C_nh7xkR0jkrBnU5Z6jyhWp3zmKQ@mail.gmail.com>
 <20150930070016.GY7858@pengutronix.de>
 <CAHQ1cqG311Dxq9A1wOOzu0WGJ8YcWnFJZ67Nf_3R6HPTGN7S9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqG311Dxq9A1wOOzu0WGJ8YcWnFJZ67Nf_3R6HPTGN7S9A@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Sep 30, 2015 at 10:56:20AM -0700, Andrey Smirnov wrote:
> >> I'd still like to discuss the possibility of introducing a feature
> >> like that to the codebase. Right now I have a use-case where I use
> >> Barebox as a DDR memory tuning/testing tool on i.MX6Q where I upload
> >> the image to IRAM via JTAG and execute Barebox straight out of SRAM.
> >
> > I understand your usecase and I think it's worth supporting it.
> >
> > So what are our options? You could run the tuning/testing completely
> > from the PBL. We now have console support in the PBL, so you can output
> > the results. You cannot do any interactive things though. We could add
> > simple getc() support to the PBL, but something like a shell is out of
> > reach. Do you need interactive input anyway?
> > Another possibility would be to make device tree support optional for
> > i.MX6. It is optional for the other i.MXes for historic reasons, so we
> > could make it optional for i.MX6 aswell. This would give you another
> > ~30K which is now used by the dtb.
> > I'm a bit afraid that the regular-barebox-in-SRAM usecase will break
> > quite frequently upstream because the image gets too big or simply
> > because some other changes have side effects. For this reason I would
> > really prefer the PBL way if that's possible for you.
> >
> 
> Oh, I don't think I mentioned in my previous e-mail, but I do have a
> working Barebox image for that case. The way I have it implemented
> right now is a vanilla, single board, no-PBL, no-relocation, i.MX6Q
> SabreSD Barebox image with a minimal configuration. The only things I
> had to change was device tree file -- default required to much RAM to
> instantiate, so I had to trim it down -- and this patch to avoid
> copying FTD that is already built-in. Oh, and I also had to disable
> MMU, because page table takes about 1MB or RAM(I haven't had a chance
> to spend any time trying to modify MMU code to support coarser
> 1MB-page page table).
> 
> The image is intended to be used by EEs to do DRAM related
> experiments, so I do need a shell and that was the reason I went with
> full Barebox instead of trying to cram it in PBL.

Ok, I see. I think your original patch is almost fine, only the test if
you need to copy or not needs adjustment. You have to test if the fdt is
membase < dtb < membase + memsize. If it is you have to copy it,
otherwise it should be fine to use it in place. Would that work?

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

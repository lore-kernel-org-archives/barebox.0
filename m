Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAa51-0005iR-Rq
 for barebox@lists.infradead.org; Tue, 04 Feb 2014 07:06:00 +0000
Date: Tue, 4 Feb 2014 08:05:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140204070537.GM16215@pengutronix.de>
References: <1391159170-17686-1-git-send-email-freesilicon@gmail.com>
 <20140203081224.GE16215@pengutronix.de>
 <CAKRNOGz68GEnwU_qEu28xJHBuDsaird4qnepB6rHv48EGdMBOw@mail.gmail.com>
 <CAKRNOGzSYsEz-jKE19EjY3gw72usbDhBcMCB6k_Zn=zR_kwwqA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKRNOGzSYsEz-jKE19EjY3gw72usbDhBcMCB6k_Zn=zR_kwwqA@mail.gmail.com>
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
Subject: Re: Fwd: [PATCH] Load PBL into SRAM
To: David Vincent <freesilicon@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 03, 2014 at 10:58:06AM +0100, David Vincent wrote:
> 2014-02-03 Sascha Hauer <s.hauer@pengutronix.de>:
> 
> > On Fri, Jan 31, 2014 at 10:06:10AM +0100, David Vincent wrote:
> > > This allows to load all the lowlevel init code, including the
> > > uncompressor, inside SRAM and not just the bare init part. This is
> > > useful when pbl is used as a first-stage bootloader but is loaded by an
> > > external firmware.
> >
> > Just to make sure I understand this correctly: The patch does not make a
> > code change, all it does is to check that the binary does not get too
> > big, right?
> 
> 
> Exactly, just like BAREBOX_MAX_BARE_INIT_SIZE but for the whole
> prebootlader code (lowlevel + uncompressor + caches (?) + etc...) not
> just functions marked as __bare_init.
> 
> >
> > > +config BAREBOX_MAX_PBL_SIZE
> > > +     depends on PBL_IMAGE && LOAD_PBL_SRAM
> > > +     prompt "Maximum pre-bootloader size"
> > > +     hex
> > > +     default 0xffffffff
> > > +     help
> > > +       Define the maximum size of pbl
> > > +       this will allow your pbl to fit in SRAM as example
> > > +       ARCH can overwrite it via ARCH_BAREBOX_MAX_PBL_SIZE
> >
> > I stumble upon this 'allow', maybe better something like:
> >
> > On some hardware the ROM code can load the pbl into SRAM, but not the
> > whole image. This option specifies how big the pbl may get.
> 
> 
> I copied the definition from BAREBOX_MAX_BARE_INIT_SIZE as it shares
> the same goal, but if you find it clearer that way, I can resubmit the
> patch with that definition, it is up to you !

Yes, I think it's clearer and we should use the definition.

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

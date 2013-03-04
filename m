Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCbr9-0006we-SA
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:19:32 +0000
Date: Mon, 4 Mar 2013 21:19:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130304201929.GI1906@pengutronix.de>
References: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
 <1362427389-2144-7-git-send-email-s.hauer@pengutronix.de>
 <1362427802.171419274@f40.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362427802.171419274@f40.mail.ru>
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
Subject: Re: [PATCH 6/6] ARM: Add relocatable binary support
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Mar 05, 2013 at 12:10:02AM +0400, Alexander Shiyan wrote:
> > For making the same binary executable on different SoCs which have
> > different DRAM addresses we have to be independent of the compile
> > time link address.
> > 
> > This patch adds relocatable binary support for the ARM architecture.
> > With this two new functions are available. relocate_to_current_adr
> > will fixup the binary to continue executing from the current position.
> > relocate_to_adr will copy the binary to a given address, fixup the
> > binary and continue executing from there.
> > 
> > For the PBL and the real image relocatable support can be enabled
> > independently. This is done to (hopefully) better cope with setups
> > where the PBL runs from SRAM or ROM and the real binary does not.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ...
> 
> Hello.
> 
> I just suggest put this new stuff under EXPERIMENTAL condition.
> Thanks.

I'm unsure this makes sense. In the kernel currently 388 options depend
on EXPERIMENTAL and 433 out of 438 defconfigs have EXPERIMENTAL enabled.
This recently led to the discussion whether this option should be
removed from the Kernel.

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

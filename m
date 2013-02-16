Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6k5u-0000i8-Bi
 for barebox@lists.infradead.org; Sat, 16 Feb 2013 15:54:31 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C9D15FFA9EB
 for <barebox@lists.infradead.org>; Sat, 16 Feb 2013 17:09:53 +0100 (CET)
Date: Sat, 16 Feb 2013 16:53:15 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130216155315.GH19322@game.jcrosoft.org>
References: <1360774211-10983-1-git-send-email-maxime.ripard@free-electrons.com>
 <511CEDD4.3020108@free-electrons.com>
 <20130214191321.GY1906@pengutronix.de>
 <1361004302.346818455@f242.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361004302.346818455@f242.mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add warning above get_ram_size
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org, Maxime Ripard <maxime.ripard@free-electrons.com>

On 12:45 Sat 16 Feb     , Alexander Shiyan wrote:
> ...
> > > >>> --- a/common/memsize.c
> > > >>> +++ b/common/memsize.c
> > > >>> @@ -33,6 +33,9 @@
> > > >>>   * Check memory range for valid RAM. A simple memory test determines
> > > >>>   * the actually available RAM size between addresses `base' and
> > > >>>   * `base + maxsize'.
> > > >>> + *
> > > >>> + * This function modifies the RAM. Do not use it if you're running from
> > > >>> + * the RAM you are going to detect!
> > > >>>   */
> > > >>
> > > >> Actually, I don't see how it modifies the RAM, at least permanently. The
> > > >> values it erase are backed up, and there's no concurrency at barebox
> > > >> level, so we are sure that the value saved will still be the one that
> > > >> would need to be backed up at the end of the function, right?
> > > > 
> > > > Yes, it restores the values, but how do you make sure the function does
> > > > not modify the instructions you are currently executing? You need bad
> > > > luck to hit this, but sooner or later this will happen.
> > > 
> > > Ah, yes, this would be nasty indeed. Is there a way to know the end
> > > address of barebox into RAM ? or the address it has been loaded to and
> > > the size of its binary, so that we can just check the part that doesn't
> > > hold barebox?
> > 
> > See include/asm-generic/sections.h. You have to avoid modifying
> > everything between _text and __bss_stop. I haven't looked how exactly
> > get_dram_size works. Normally this function would have to test every
> > location at a power of 2, that would be:
> > 
> > 1 2 4 ... 64MiB 128MiB
> > 
> > It seems you have to make sure that your binary does not cross a power
> > of 2 boundary, then you should be safe.
> 
> Let's put "get_ram_size" function in a separate section inside .text. Then we
> can at least make runtime warning about placing this section inside our
> tested region.

we have 2 case

1: we run from the relocated position
2: we run before relocation

in any case you need to exclude where running from or just need to be carefull
when use it

Best Regards,
J.
> 
> ---
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

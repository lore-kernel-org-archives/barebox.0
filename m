Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dS8Zs-0004ic-Im
 for barebox@lists.infradead.org; Mon, 03 Jul 2017 21:08:18 +0000
Date: Mon, 3 Jul 2017 23:07:51 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170703210751.GA28383@ravnborg.org>
References: <20170703161922.GA24614@ravnborg.org>
 <08E6B5A4-F877-410B-9BDB-9AA0BE065C07@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08E6B5A4-F877-410B-9BDB-9AA0BE065C07@jcrosoft.com>
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
Subject: Re: Observations with AT91SAM9263-EK
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 04, 2017 at 12:34:58AM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> > On 4 Jul 2017, at 12:19 AM, Sam Ravnborg <sam@ravnborg.org> wrote:
> > 
> > Hi all.
> > 
> > I recently purchased an AT91SAM9263-EK from ebay and
> > have played around a little with barebox.
> > For now only some observations.
> > 
> > I had the impression that I could
> > drop AT91BootStrap when using barebox.
> 
> Yes Wrote the support for that but on the 9263 you are limited.
> 
> you have 2 choice boot a small barebox <= 72kiB
> 
> or use a console less barebox to boot the second barebox
> 
> as the rom code on at91 will load the barebox from the SD or Nand
> into SRAM

Thanks for the info.
I will try to collect this in a at91.rst file in Documentation/boards/
When there is something useful I will post a patch for review.

> > 
> > But I could not make it boot until I deployed 
> > at91bootstrap (named BOOT.BIN) on the SD-card.
> > And I named arch/arm/pbl/zbarebox.bin => u-boot.bin
> > on the SD-card.
> > 
> 
> on 9263ek you have a nor flash so why not flash it
> 
> in this case barebox will boot by itself
> 
> without the bootstrap

The EK only have NAND, the NOR is not mounted.
But anyway - the idea here is to have a testbed for my at91
patches that I can use before I send them upstream.

I have a proprietary at91sam9263 based board that
I will try to add support for in barebox.
But only the parts touching the atmel boards are relevant for the
upstream barebox.

Step 1 was to get barebox workign with the EK, and with
the two small patches I already sent it looks like I
had some luck there.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

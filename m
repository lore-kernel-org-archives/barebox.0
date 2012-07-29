Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvRg2-0006mf-T1
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 11:28:51 +0000
Received: by pbbrq13 with SMTP id rq13so8760386pbb.36
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 04:28:48 -0700 (PDT)
From: "Marc Reilly" <marc@cpdesign.com.au>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
 <1343547714-32740-6-git-send-email-marc@cpdesign.com.au>
 <20120729095816.GB26655@game.jcrosoft.org>
In-Reply-To: <20120729095816.GB26655@game.jcrosoft.org>
Date: Sun, 29 Jul 2012 21:28:32 +1000
Message-ID: <000001cd6d7d$51cb7400$f5625c00$@cpdesign.com.au>
MIME-Version: 1.0
Content-Language: en-au
Reply-To: marc@cpdesign.com.au
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
Subject: RE: [PATCH 5/7] nand: fix build error when BBT not enabled.
To: 'Jean-Christophe PLAGNIOL-VILLARD' <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi,

> On 17:41 Sun 29 Jul     , Marc Reilly wrote:
> > This fixes following error when bad blocks config option is not enabled:
> >
> > drivers/built-in.o: In function `nand_erase_nand':
> > drivers/mtd/nand/nand_write.c:721: undefined reference to
> `nand_update_bbt'
> > drivers/built-in.o: In function `nand_default_block_markbad':
> > drivers/mtd/nand/nand_write.c:76: undefined reference to
> `nand_update_bbt'
> > make: *** [barebox] Error 1


 >  	/* Do we have a flash based bad block table ? */
> > -	if (chip->options & NAND_USE_FLASH_BBT)
> > +	if (chip->options & NAND_USE_FLASH_BBT) { #if
> > +defined(CONFIG_NAND_BBT)
> use if (IS_ENABLED())

The intention of this is to avoid referencing nand_update_bbt, I think using
IS_ENABLED() would not avoid that.

Cheers,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

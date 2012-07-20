Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsFwO-0001Rw-09
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 16:20:32 +0000
Date: Fri, 20 Jul 2012 18:20:07 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120720162007.GA22374@sig21.net>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
 <1342685582-13244-9-git-send-email-s.hauer@pengutronix.de>
 <5007E38B.8040106@pengutronix.de>
 <20120719140834.GY30009@pengutronix.de>
 <20120719204548.GI30009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120719204548.GI30009@pengutronix.de>
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
Subject: Re: [PATCH 8/9] ARM: Separate assembler functions into their own
 section
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 19, 2012 at 10:45:48PM +0200, Sascha Hauer wrote:
> On Thu, Jul 19, 2012 at 04:08:34PM +0200, Sascha Hauer wrote:
> > On Thu, Jul 19, 2012 at 12:38:03PM +0200, Marc Kleine-Budde wrote:
> > > On 07/19/2012 10:13 AM, Sascha Hauer wrote:
> > > >  
> > > > +.section .text.__mmu_cache_on
> > > >  ENTRY(__mmu_cache_on)
> > > 
> > > Is it possible to add the section to the ENTRY macro?
> > 
> > I'm not sure. I was pretty sure that some assembly functions fall
> > through to the next function. I cannot find any examples though.
> 
> For example we have this:
> 
> .section .text.__divsi3
> ENTRY(__divsi3)
> ENTRY(__aeabi_idiv)
> 	...

and also:
ENTRY(__lshrdi3)
ENTRY(__aeabi_llsr)

However, this is the rare exception.  How about
adding __ENTRY for these cases?


Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

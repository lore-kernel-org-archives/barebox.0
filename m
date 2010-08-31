Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OqSbq-0003SM-1i
	for barebox@lists.infradead.org; Tue, 31 Aug 2010 15:18:54 +0000
Date: Tue, 31 Aug 2010 17:18:19 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100831151819.GA22790@game.jcrosoft.org>
References: <4C7CD898.9040902@coresystems.de>
	<20100831131817.GA1883@game.jcrosoft.org>
	<4C7D08A3.8000505@coresystems.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C7D08A3.8000505@coresystems.de>
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
Subject: Re: barebox on x86
To: Stefan Reinauer <stepan@coresystems.de>
Cc: barebox@lists.infradead.org

On 15:50 Tue 31 Aug     , Stefan Reinauer wrote:
>  Hi Jean-Christophe,
> 
> On 8/31/10 3:18 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > why do you touch it?
> Sorry, touch _what_ in particular?
> 
> > barebox is self content so I do not understand why you do such modificaton
> > specially uf we are supposed to do crosscompile
> >
> Unfortunately that assumption is wrong, at least for the x86 target.
> Almost all my patch does is trying to fix exactly that (along with
> dropping the requirement to use Linux on the host side)
> 
> And, yes, I am using an i386-elf- cross compiler.
you need a linux toolchains and it's build correctly
I build it on MacOS too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

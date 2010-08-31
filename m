Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OqQjg-0003b3-HL
	for barebox@lists.infradead.org; Tue, 31 Aug 2010 13:18:51 +0000
Date: Tue, 31 Aug 2010 15:18:17 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100831131817.GA1883@game.jcrosoft.org>
References: <4C7CD898.9040902@coresystems.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C7CD898.9040902@coresystems.de>
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
To: Stefan Reinauer <stefan.reinauer@coresystems.de>
Cc: barebox@lists.infradead.org

On 12:25 Tue 31 Aug     , Stefan Reinauer wrote:
>  Hi,
> 
> here's some initial work on getting barebox working on x86 (again?).
> 
> The patch is very ugly, and it makes some assumptions on me using
> Darwin/Mac OS X to compile barebox.
> What kind of becomes clear though, is that there is no clear distinction
> between which set of headers are used for the user space utilities and
> which set of headers are used for the barebox binary. I think that's the
> reason why barebox features an include/linux directory which seems to
> duplicate about half of what Linux usually has in there, but more than
> barebox uses (or should use, ftm).
> 
> With the attached patch I get as far as the linking stage.
why do you touch it?
barebox is self content so I do not understand why you do such modificaton
specially uf we are supposed to do crosscompile

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

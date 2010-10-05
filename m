Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P3AHP-0002KY-Lw
	for barebox@lists.infradead.org; Tue, 05 Oct 2010 16:22:17 +0000
Date: Tue, 5 Oct 2010 18:20:19 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101005162019.GK25320@game.jcrosoft.org>
References: <20101005135213.24F871539A0@gemini.denx.de>
	<20101005160042.GI25320@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101005160042.GI25320@game.jcrosoft.org>
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
Subject: Re: Code "borrowed" without attribution to original authors
To: Wolfgang Denk <wd@denx.de>
Cc: barebox@lists.infradead.org

On 18:00 Tue 05 Oct     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:52 Tue 05 Oct     , Wolfgang Denk wrote:
> > Hello,
> > 
> > it has been brought to my attention that lately a number of commits
> > have been added to the BareBox repository (and released as BareBox
> > v2010.10.0) that contain literal copies of hundreds of lines of code
> > taken from the U-Boot project.
> > 
> > While this is OK in general (U-Boot is covered by the GPLv2/GPLv2+),
> > in this case the code has been added to the BareBox repository
> > without any attribution to the original authors.  Instead, the
> > respective commits carry only SoB lines like these:
> > 
> > 	Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > 	Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > Commits that very clearly show this problem are for example:
> > 
> >  d424ce7  image: factorise image printing contents
> >  0ceafe1  Replace direct header access with the API routines

> >  aba80a2  image: rename IH_CPU to IH_ARCH to be more concistant
> >  7bd7d59  image: factorise string helper
for the record the two are not borrowed at all from U-Boot but done based on
barebox

and as we all known the uImage format come from U-Boot I just sync it
recently without commit details as we do for Kconfig we do not trac
modifications details and we respect the copyright. SO I'll repeat myself
if Marian copyright is missing We will add it with pleasure.

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

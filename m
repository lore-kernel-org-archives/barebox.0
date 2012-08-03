Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxHpW-0004gS-Q2
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 13:22:15 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 82500FFAE43
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 15:28:25 +0200 (CEST)
Date: Fri, 3 Aug 2012 15:22:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120803132216.GC23597@game.jcrosoft.org>
References: <20120802155145.GA28426@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120802155145.GA28426@mail.gnudd.com>
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
Subject: Re: changing environment at build time
To: Alessandro Rubini <rubini-list@gnudd.com>
Cc: barebox@lists.infradead.org

On 17:51 Thu 02 Aug     , Alessandro Rubini wrote:
> Hello.
> 
> I'm using barebox on a machine where I wasnt to change the mac address
> at flashing time (i.e., not at build time: I'd better not relink
> barebox every time I flash a new machine).
> 
> I did it lazily with a sed script when the environment was not
> compressed, but now a mate updated to a newer version, and the simple
> trick is not working.
> 
> Since uncompressed environent areas are not supported any more, what is
> the preferred method to change the default environment variables?
why do you need such feature?

why not just use the dhcp vendor option and manage the ip like this
and maybe you can generate the mac address by using the chip unique id

Best Regards
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

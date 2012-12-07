Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Th4E4-0000w3-CK
 for barebox@lists.infradead.org; Fri, 07 Dec 2012 20:08:50 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E42AEFF9B84
 for <barebox@lists.infradead.org>; Fri,  7 Dec 2012 21:20:29 +0100 (CET)
Date: Fri, 7 Dec 2012 21:06:57 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121207200657.GM8327@game.jcrosoft.org>
References: <1354792603-15915-1-git-send-email-fabio.porcedda@gmail.com>
 <20121207065249.GK8327@game.jcrosoft.org>
 <20121207083012.GB10369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121207083012.GB10369@pengutronix.de>
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
Subject: Re: [PATCH v2] at91: reorder BOARDINFO alphabetically
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:30 Fri 07 Dec     , Sascha Hauer wrote:
> On Fri, Dec 07, 2012 at 07:52:49AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 12:16 Thu 06 Dec     , Fabio Porcedda wrote:
> > > This is to have a nicely ordered list and to decrease the
> > > likelihood of a conflict when adding a new board.
> > > 
> > > Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> > > Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > > v2:
> > NAK
> > 
> > I order them by Kconfig keepo  it that way
> 
> I'd say it makes more sense to keep them in the order the user actually
> sees them, it makes it easier to find the entries. What's the value in
> ordering them by Kconfig name?
> If you order them by Kconfig name, the Calao boards end up in three
> different places in the user visible view.

I do it the same we do on the kernel
and I do want to keep that way the board are order by Kconfig

not by name

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

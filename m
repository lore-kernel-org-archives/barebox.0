Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUyQU-0007tY-Km
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 12:03:55 +0000
Received: from mail173.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 25E32FF8FAA
 for <barebox@lists.infradead.org>; Wed, 24 Apr 2013 14:03:51 +0200 (CEST)
Date: Wed, 24 Apr 2013 13:58:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130424115855.GF13393@game.jcrosoft.org>
References: <1366794547-29296-1-git-send-email-plagnioj@jcrosoft.com>
 <20130424095455.GC32299@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130424095455.GC32299@pengutronix.de>
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
Subject: Re: [PATCH 1/1] mci: add Secure Digital Host Controller Interface
 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:54 Wed 24 Apr     , Sascha Hauer wrote:
> On Wed, Apr 24, 2013 at 11:09:07AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > as today more and more hw use it so import a sdhci implemetation based on
> > linux.
> 
> Problem is that the Linux implementation sucks :/
> 
> At least on i.MX this driver is a pain to use. It needs more quirks than
> fit into a 32bit variable and still the i.MX port needs driver logic
> in the register accessor functions. Maybe i.MX is the worst of all
> implementations, but I'm not considering using the Linux driver for
> i.MX on barebox.
> If other SoCs work better with the Linux driver we can still merge it
> though.

on STM it work better

Bes Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw2Hb-0004Wi-4D
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 10:05:48 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbfBSKFnMx3Ge (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Tue, 19 Feb 2019 11:05:43 +0100
Date: Tue, 19 Feb 2019 11:05:42 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190219100542.GA8982@lenoch>
References: <20190217161609.11305-1-sam@ravnborg.org>
 <20190218081014.ea4m7vcsndojdgwf@pengutronix.de>
 <20190218195906.GA23542@ravnborg.org>
 <20190219090531.uwp6yqgx7u75h3ln@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219090531.uwp6yqgx7u75h3ln@pengutronix.de>
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
Subject: Re: [PATCH v2 0/9] at91: Support PMC clock bindings
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>

On Tue, Feb 19, 2019 at 10:05:31AM +0100, Sascha Hauer wrote:
> On Mon, Feb 18, 2019 at 08:59:06PM +0100, Sam Ravnborg wrote:
> > Hi Sascha
> > > 
> > > Applied, thanks. Since AT91 is broken currently I applied it to master.
> > 
> > I did not see it in master yet so I sent a full v3 with build fixes
> > and Tested-by: annotations.
> > 
> > It this is too late for master I will do a follow-up with only
> > the build fix changes.
> 
> All good, Ladis already reminded me that you wanted to send a v2 so I
> haven't pushed it yet. I can still take v2.

I guess you mean v3 here, plus Ahmad's fixups :). That would work for me.

	ladis

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

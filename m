Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SO38d-0006X8-Bh
 for barebox@lists.infradead.org; Sat, 28 Apr 2012 08:36:20 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <20120423065650.GM20601@game.jcrosoft.org>
 <20120424080848.GR3852@pengutronix.de>
Date: Sat, 28 Apr 2012 10:32:47 +0200
In-Reply-To: <20120424080848.GR3852@pengutronix.de> (Sascha Hauer's message of
 "Tue, 24 Apr 2012 10:08:48 +0200")
Message-ID: <m38vhgw91s.fsf@intrepid.localdomain>
MIME-Version: 1.0
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
Subject: Re: [PATCH 00/10] IXP4xx rebase WIP
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

Sascha Hauer <s.hauer@pengutronix.de> writes:

> Since you pinged me recently about ixp4xx support, could you have a look
> at it first and say if you are happy with it?

Will do. Actually I've ported my old patches to the recent Barebox,
though I intend to polish them a bit before I send them out. I will
check them against these from Jean-Christophe. This will probably take
a couple of days or so.

I have doubt WRT one thing, namely the NPE microcode (and its licence).
They (Intel) seem to allow binary redistribution (we don't have the
sources anyway) but they request an acknowledgment (I guess both in
Barebox sources, and in/with the Barebox image in the actual system).
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

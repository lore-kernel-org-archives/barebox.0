Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dX2hy-0002Sm-6h
 for barebox@lists.infradead.org; Mon, 17 Jul 2017 09:52:56 +0000
Message-ID: <1500285149.6594.30.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 17 Jul 2017 11:52:29 +0200
In-Reply-To: <20170707121000.GA16920@ravnborg.org>
References: <20170707121000.GA16920@ravnborg.org>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 0/23] at91: move reset vector to board code
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

Am Freitag, den 07.07.2017, 14:10 +0200 schrieb Sam Ravnborg:
> The following patchset moves the reset vector
> for at91 boards from mach-at91 to board code.
> This is similar to what other boards do and is done to
> prepare for multi-image and DT support.
> 
> The patchset convert all boards and thus clean up the
> old code that resided in mach-at91/
> 
> The first patch have minimal impact, but prepares for a
> board-by-board conversion.
> All temporary CONFIG symbols are gone at the end of this series.
> 
> I kept Jean-Christophe PLAGNIOL-VILLARD and others
> copyright in all the created files and did not add
> copyright myself. The patchset does IMO not add any
> copyrightable material from my side as this is
> in reality just moving around code.
> 
> The patchset was successfully booted on a AT91SAM9263EK,
> and all defconfigs was built (expect the ones that failed
> to build before this patchset was applied).
> 
> Changes v1 => v2
> - converted all boards over
> - fixed author info

Just to let you know the current status here: While I think you are on
the right track with this, I'm currently lacking the bandwidth to
properly review this series. I'm a bit hesitant to just throw it into
-next without any kind of review, so I'm still hoping for others to take
a look.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

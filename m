Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egEkm-0000Ce-Ii
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 19:06:06 +0000
Date: Mon, 29 Jan 2018 20:05:45 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180129190545.GA29726@ravnborg.org>
References: <20180126194227.32088-1-s.hauer@pengutronix.de>
 <20180126211025.GB3317@ravnborg.org>
 <20180129072459.gnpmuyowbnzdebwo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180129072459.gnpmuyowbnzdebwo@pengutronix.de>
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
Subject: Re: [PATCH] fs: Fix memory leak in mount()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

...
> > No check for PTR_ERR after calling canonalize_path()
> > 
> > unlink()
> > No check for PTR_ERR after call to canonalize_dir()
> > 
> > readlink()
> > No check for PTR_ERR after call to canonalize_dir()
> 
> Yes, the result should be checked.
> 
> > 
> > I can create patch for these - but I cannot do any thrustworthy testing.
> > And for the canonalize() I am uncertain if the check is requied.
> > Let me know your preference and I will take care.
> 
> Patches would be very welcomed. Thanks Sam.

Thanks for the confirmation. Will get back to this in a few weeks.
Heading for vacation in a few days, so not time right now.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

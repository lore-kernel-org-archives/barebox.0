Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sghb7-0002x5-Cm
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 19:26:50 +0000
Date: Mon, 18 Jun 2012 21:26:22 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120618192622.GA4166@sig21.net>
References: <1340030880-10062-1-git-send-email-js@sig21.net>
 <1340030880-10062-2-git-send-email-js@sig21.net>
 <CAONxwYONy=A6pFp2hdupr6vsO4+Me4wuSe1i+YPKQsK6rkRs3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYONy=A6pFp2hdupr6vsO4+Me4wuSe1i+YPKQsK6rkRs3Q@mail.gmail.com>
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
Subject: Re: [PATCH 1/6] miidev: fix auto negotiation
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Mon, Jun 18, 2012 at 07:52:44PM +0200, Roberto Nibali wrote:
> On Mon, Jun 18, 2012 at 4:47 PM, Johannes Stezenbach <js@sig21.net> wrote:
> 
> > The auto negotiation result is the intersect
> > of the advertised abilities and the link partner abilities.
> 
> Good catch and obviously correct. I reckon since nowadays most PHY's
> advertise ADVERTISE_FULL or ADVERTISE_ALL, this has never been an issue for
> anybody so far.

I think most PHYs have strap pins which when set to 10M
will change the advertised abilities.  This is used
rarely but it needs to work.

Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

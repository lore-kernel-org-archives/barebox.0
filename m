Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejLAm-0005wt-1p
 for barebox@lists.infradead.org; Wed, 07 Feb 2018 08:33:46 +0000
Date: Wed, 7 Feb 2018 09:33:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180207083331.jw3gsenyso37c4gf@pengutronix.de>
References: <20180202111442.12444-1-aleksander@aleksander.es>
 <20180206092439.vt3h5us4z2d3zywq@pengutronix.de>
 <CAAP7ucJpAKqBaDTPTw8OwG38GUred+4KROri3BCxWt8f0HDqTg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAP7ucJpAKqBaDTPTw8OwG38GUred+4KROri3BCxWt8f0HDqTg@mail.gmail.com>
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
Subject: Re: [RFC PATCH 00/10] ratp: new generic RATP command support
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Tue, Feb 06, 2018 at 05:43:40PM +0100, Aleksander Morgado wrote:
> >>
> >> The first patches (1-5) break the current RATP API, by introducing
> >> the concept of requests, responses and indications:
> >>  * Requests sent to one endpoint are expected to be replied with
> >>    a response by the peer endpoint.
> >>  * Indications are messages sent from one endpoint to another which
> >>    are not expected to be replied.
> >
> > I do not see why we have to break the RATP API. I mean currently we
> > have BB_RATP_TYPE_COMMAND and BB_RATP_TYPE_COMMAND_RETURN which you
> > convert to .type = BB_RATP_TYPE_COMMAND, .flags = 0 | RESPONSE.
> >
> > I see that using flags looks somewhat nicer, but besides of that,
> > what is your selling point to break the API?
> >
> 
> Well, it was just easier to say "if I send a request of type X, I
> expect back a response of the same type X". It avoids the need of
> having to define which command id is expected as response for which
> command id request.

Well right now the lowest bit the type field can serve this purpose,
i.e. "if I send a request of type X, I expect back a response type X + 1"

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eizUi-00007b-1A
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 09:24:53 +0000
Date: Tue, 6 Feb 2018 10:24:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180206092439.vt3h5us4z2d3zywq@pengutronix.de>
References: <20180202111442.12444-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180202111442.12444-1-aleksander@aleksander.es>
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

Hi Aleksander,

On Fri, Feb 02, 2018 at 12:14:32PM +0100, Aleksander Morgado wrote:
> Until now, the barebox-specific RATP commands were all defined and
> implemented in common/ratp.c. This series of patches allow ratp
> commands to be defined in a similar way to console commands.

I like the idea.

> 
> The first patches (1-5) break the current RATP API, by introducing
> the concept of requests, responses and indications:
>  * Requests sent to one endpoint are expected to be replied with
>    a response by the peer endpoint.
>  * Indications are messages sent from one endpoint to another which
>    are not expected to be replied.

I do not see why we have to break the RATP API. I mean currently we
have BB_RATP_TYPE_COMMAND and BB_RATP_TYPE_COMMAND_RETURN which you
convert to .type = BB_RATP_TYPE_COMMAND, .flags = 0 | RESPONSE.

I see that using flags looks somewhat nicer, but besides of that,
what is your selling point to break the API?

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

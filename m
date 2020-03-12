Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJAo-0001ne-Ka
 for barebox@lists.infradead.org; Thu, 12 Mar 2020 08:26:36 +0000
Date: Thu, 12 Mar 2020 09:26:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200312082633.GH3335@pengutronix.de>
References: <20200228204823.28415-1-dg@emlix.com>
 <20200309071451.GC3335@pengutronix.de>
 <4b033b70-43b8-0dc4-aee9-77612e3c236b@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4b033b70-43b8-0dc4-aee9-77612e3c236b@emlix.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/3] Support for fastboot over UDP
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 09, 2020 at 04:38:05PM +0100, Daniel Gl=F6ckner wrote:
> Am 03/09/20 um 08:14 schrieb Sascha Hauer:
> > On Fri, Feb 28, 2020 at 09:48:20PM +0100, Daniel Gl=F6ckner wrote:
> >> Contrary to U-Boot it does not send keep alive messages every 30
> >> seconds because everything is executed from a poller.
> > =

> > How does that prevent you from sending keep palive messages? Sending
> > packages from a poller should work.
> =

> When long running functions like cb_erase and cb_flash are executed in a
> poller, we can't currently use another poller to check if it is time to
> send a keep alive message.
> =

> If we add a slice to poller_struct that is checked and then acquired in
> poller_call, it would be possible. But as I wrote, we might then want to
> limit the number of pollers executed "in parallel" because of the
> limited stack space.

That's a good idea. I think the stack space won't be a problem as the
number of pollers running in parallel is limited by the number of
existing pollers.

I have updated the series to do exactly that.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

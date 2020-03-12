Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWR8-0000I8-Nz
 for barebox@lists.infradead.org; Thu, 12 Mar 2020 22:36:20 +0000
Date: Thu, 12 Mar 2020 23:36:15 +0100
From: Daniel =?iso-8859-1?Q?Gl=F6ckner?= <dg@emlix.com>
Message-ID: <20200312223615.GA11963@emlix.com>
References: <20200312083555.10793-1-s.hauer@pengutronix.de>
 <20200312083555.10793-20-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312083555.10793-20-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 19/19] poller: Allow to run pollers inside of pollers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

Hello Sascha,

On Thu, Mar 12, 2020 at 09:35:55AM +0100, Sascha Hauer wrote:
> This adds a slice to each poller which is acquired before the poller is
> executed. This allows us to run pollers inside of other pollers.

ok, so in the UDP fastboot case there is now a poller that receives
packets and a poller that executes commands and needs packets to
be received to send more than one message. How do I make sure that
the fastboot poller will never be called inside the net poller since
that would cause a deadlock?

My initial idea was to keep the poller_active variable and increase
it for each poller execution level. The fastboot poller could then
return immediately when it is called from within any other poller.

Another possible solution could be to add a dependency on the net
poller slice to the fastboot poller slice. Then the net poller
can execute from within the fastboot poller, but not the other way
around. A similar dependency would have to be added for the watchdog
poller_async and the poller that will be introduced for sending
keep-alives.

The first solution should be easier to implement and would have
the benefit that all resources are available when a fastboot command
executes.

Best regards,

  Daniel

-- =

Dipl.-Math. Daniel Gl=F6ckner, emlix GmbH, http://www.emlix.com
Fon +49 551 30664-0, Fax +49 551 30664-11,
Gothaer Platz 3, 37083 G=F6ttingen, Germany
Sitz der Gesellschaft: G=F6ttingen, Amtsgericht G=F6ttingen HR B 3160
Gesch=E4ftsf=FChrung: Heike Jordan, Dr. Uwe Kracke
Ust-IdNr.: DE 205 198 055

emlix - your embedded linux partner

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

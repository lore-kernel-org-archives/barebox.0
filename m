Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slow3-v.mail.gandi.net ([217.70.178.89])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nu6tR-0005aL-5Z
	for barebox@lists.infradead.org; Tue, 23 Mar 2010 16:23:53 +0000
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
	[217.70.183.193])
	by slow3-v.mail.gandi.net (Postfix) with ESMTP id 6F6F439006
	for <barebox@lists.infradead.org>; Tue, 23 Mar 2010 17:23:44 +0100 (CET)
Received: from mfilter3-v.gandi.net (mfilter3-v.gandi.net [217.70.178.37])
	by relay1-d.mail.gandi.net (Postfix) with ESMTP id 491D52552FC
	for <barebox@lists.infradead.org>; Tue, 23 Mar 2010 17:23:32 +0100 (CET)
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by mfilter3-v.gandi.net (mfilter3-v.gandi.net [217.70.178.37])
	(amavisd-new, port 10024)
	with ESMTP id Rl8sFbZcUtsi for <barebox@lists.infradead.org>;
	Tue, 23 Mar 2010 17:23:32 +0100 (CET)
Received: from d4rwin.no-ip.org (219.Red-193-152-182.dynamicIP.rima-tde.net
	[193.152.182.219]) (Authenticated sender: matthias@kaehlcke.net)
	by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 6C7FA2552F5
	for <barebox@lists.infradead.org>; Tue, 23 Mar 2010 17:23:31 +0100 (CET)
Date: Tue, 23 Mar 2010 17:22:01 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100323162201.GE26177@darwin>
References: <20100323133217.GA26177@darwin>
	<20100323142643.GN2241@pengutronix.de>
	<20100323150915.GB26177@darwin> <4BA8DEBF.6060305@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4BA8DEBF.6060305@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox working on freescale-mx25-3-stack?
To: barebox@lists.infradead.org

Hi Eric,

El Tue, Mar 23, 2010 at 04:31:11PM +0100 Eric B=E9nard ha dit:

> Le 23/03/2010 16:09, Matthias Kaehlcke a =E9crit :
> >if you can send me the barebox image that works on your board i'll
> >check if it works on mine, and we'll have some more certainty about
> >whether there is some obscure problem in my build process or my board
> >is somehow different to yours
> >
> one possible diff : do you have DDR2 or Mobile DDR on your board ?

according to the board documentation it's DDR2

is this what barebox expects to find?

-- =

Matthias Kaehlcke
Embedded Linux Developer
Barcelona

      Debugging is like alien abduction. Large blocks of time disappear,
                    for which you have no explanation
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

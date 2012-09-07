Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo5.mail-out.ovh.net ([91.121.55.239]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9t0u-0000s9-PV
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 07:30:05 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 02987FFA6D9
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 09:35:28 +0200 (CEST)
Date: Fri, 7 Sep 2012 09:30:00 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120907093000.35f2227d@eb-e6520>
In-Reply-To: <20120907065703.GM26594@pengutronix.de>
References: <1346960371-4129-1-git-send-email-eric@eukrea.com>
 <20120907065703.GM26594@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/3] fec: restart autoneg at open instead of init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le Fri, 7 Sep 2012 08:57:03 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :

> Hi Eric,
> =

> On Thu, Sep 06, 2012 at 09:39:29PM +0200, Eric B=E9nard wrote:
> > this saves some time during boot when ethernet is not needed in barebox
> =

> Is this really significant on your hardware? I made a measurement here
> and the miidev_restart_aneg() takes 130us on an i.MX27 board.
> =

> The original intention of doing it at init time was that autonegotation
> is already completed when we actually use the network. And this time
> really is significant:
> =

> without the patch:
> =

> barebox@Phytec phyCORE-i.MX27:/ time ping 192.168.23.4
> warning: No MAC address set. Using random address 62:FE:FE:0B:09:A8
> phy0: Link is up - 100/Full
> host 192.168.23.4 is alive
> time: 10ms
> =

> with the patch:
> =

> barebox@Phytec phyCORE-i.MX27:/ time ping 192.168.23.4
> warning: No MAC address set. Using random address A6:1B:AB:80:FA:E7
> phy0: Link is up - 100/Full
> host 192.168.23.4 is alive
> time: 2040ms
> =

that strange. I don't see why miidev_restart_aneg() would take less
time at boot than at open.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

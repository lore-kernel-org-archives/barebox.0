Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SV6Rh-0006LH-3x
 for barebox@lists.infradead.org; Thu, 17 May 2012 19:33:11 +0000
Date: Thu, 17 May 2012 21:32:57 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120517213257.5ab8d9b5@eb-e6520>
In-Reply-To: <20120517173619.GD30400@pengutronix.de>
References: <1337269578-20570-1-git-send-email-eric@eukrea.com>
 <1337269578-20570-12-git-send-email-eric@eukrea.com>
 <20120517173619.GD30400@pengutronix.de>
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
Subject: Re: [PATCH 12/16] fec_imx: restart aneg at open and not at init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le Thu, 17 May 2012 19:36:19 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> On Thu, May 17, 2012 at 05:46:14PM +0200, Eric B=E9nard wrote:
> > else we can get a 1 second timeout at each boot since
> > "6cbecc4 net: miidev: properly check for MII reset"
> =

> I had this issue aswell on the babbage board. It turned out that this
> was really an issue in the initialization order. On the babbage the fec
> was registered before power was applied to the phy. Looking at the
> eukrea mx51 code it seems that you reset the phy after you have
> registered the fec. I suggest that you change the order instead of
> applying this patch.
> =

in fact I met the problem on cpuimx25 & cpuimx35 (because a wrong PHY
address was set in the board configuration) so I don't have the problem
anymore.
But I think launching the autonegotiation during the boot is not
necessary and can be a source of time loss.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

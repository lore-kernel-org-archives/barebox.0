Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVANN-0004Em-C2
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 06:44:39 +0000
Date: Tue, 19 Jun 2018 08:44:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180619064413.uuui7em54giai7zx@pengutronix.de>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
 <20180615092857.yrvh4pgs4ccu2pum@pengutronix.de>
 <CAHQ1cqGXm=cBNq0SnWm33QrXDzeiexUsWm_YG5dp1jT+PXoH-w@mail.gmail.com>
 <20180618204918.ovyvzti5esmfymcq@pengutronix.de>
 <CAHQ1cqEOSmZWEkSZJUMEZPiL+AMUjZHpQgsO=oDDCmK4_Bp_fw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEOSmZWEkSZJUMEZPiL+AMUjZHpQgsO=oDDCmK4_Bp_fw@mail.gmail.com>
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
Subject: Re: [PATCH 00/27] Console code consolidation
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jun 18, 2018 at 04:26:28PM -0700, Andrey Smirnov wrote:
> On Mon, Jun 18, 2018 at 1:49 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Fri, Jun 15, 2018 at 05:11:17AM -0700, Andrey Smirnov wrote:
> > Leave them in for now. So far I haven't seen the major selling point for
> > this series. It makes some things better, but others just look
> > different.
> 
> OK, understood. In that case, IMHO, 27 patches is too much to be
> merged in without any major selling point. Keeping things status quo
> seems like the best approach in terms of risk and saving both time
> you'd have to spend reviewing and I making the v2. Let's drop this
> set.
> 
> Please do consider applying "console: Fix console_get_first_active()"
> since it fixes an actual bug in console_get_first_active().

Ok, did that. I just sent out a series that fixes some actual bugs you
might have stumbled upon when creating your series, you might want to
have a look.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dW29C-0002VH-5o
 for barebox@lists.infradead.org; Fri, 14 Jul 2017 15:04:55 +0000
Received: from weser.hi.pengutronix.de ([2001:67c:670:100:fa0f:41ff:fe58:4010])
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dW28n-00006U-OD
 for barebox@lists.infradead.org; Fri, 14 Jul 2017 17:04:25 +0200
Message-ID: <1500044665.6594.17.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 14 Jul 2017 17:04:25 +0200
Mime-Version: 1.0
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
Subject: stable release v2017.05.4, v2017.06.2, v2017.07.1
To: Barebox List <barebox@lists.infradead.org>

Hi all,

I've just pushed out a new set of Barebox stable releases:

v2017.05.4 and v2017.06.2:
- Fixed a bug in the i.MX6 CAAM random number generator driver, leading
to not really random numbers being returned.
- Fix for a longstanding bug where digesting of memory mappable files
will return wrong hashes.

v2017.07.1
- Same bugfixes as above
- Fixes a crash in the GPIO code when running on a non DT enabled board.
- Fixes wrong PLL setup on i.MX6, rendering USB unusable.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

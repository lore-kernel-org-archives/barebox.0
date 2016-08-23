Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bc7ea-00066B-Vm
 for barebox@lists.infradead.org; Tue, 23 Aug 2016 09:05:53 +0000
Message-ID: <1471943129.32618.2.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Tue, 23 Aug 2016 11:05:29 +0200
In-Reply-To: <CAGm1_kuH3Z=Tev7Ra129C9QFMCM9ryhhTy_KS5Sji2ykabYXiw@mail.gmail.com>
References: <CAGm1_ktWEo6Ow0nre5d0tetTdu3aRLO+mRKboiFtfLi2wjRxDA@mail.gmail.com>
 <CAGm1_kt102hu_ZYJLTYnnW2hUs9WS3T8e_Y8C=D1mKk3cf+M2A@mail.gmail.com>
 <20160822052808.GT20657@pengutronix.de>
 <CAGm1_ks9wTMiP2EBoO9BKGkckuTRqkinaazxWXTkNrJKSc7b=w@mail.gmail.com>
 <CAGm1_kuH3Z=Tev7Ra129C9QFMCM9ryhhTy_KS5Sji2ykabYXiw@mail.gmail.com>
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
Subject: Re: barebox remote control
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

On Mo, 2016-08-22 at 15:10 +0200, Yegor Yefremov wrote:
> What is "bbremote listen" for?

It will setup a RATP connection in the 'listen' state. We used it for
testing during development. Maybe it could be reused for running
loopback tests locally.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

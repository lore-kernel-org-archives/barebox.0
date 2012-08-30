Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T75ZP-0005jP-QH
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 14:18:08 +0000
Received: from mail403.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9A7991054419
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2012 16:23:16 +0200 (CEST)
Date: Thu, 30 Aug 2012 16:18:03 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120830161803.7b1ad1b6@eb-e6520>
In-Reply-To: <20120830141227.GB20930@pengutronix.de>
References: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
 <1346329850-3866-4-git-send-email-s.trumtrar@pengutronix.de>
 <20120830150350.4ba00098@eb-e6520>
 <20120830132631.GA20930@pengutronix.de>
 <20120830155932.7f57c80d@eb-e6520>
 <20120830141227.GB20930@pengutronix.de>
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
Subject: Re: [PATCH 3/3] usb: use ep-specific pwrgood delay
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Le Thu, 30 Aug 2012 16:12:27 +0200,
Steffen Trumtrar <s.trumtrar@pengutronix.de> a =E9crit :
> As both, barebox and linux, reset the hub and wait, it seems like the root
> of the problem, yes.
> =

unfortunatly, after a check with the oscilloscope the mdelay(100) is
really a 100 ms delay in barebox ... so the problem in barebox is
somewhere else.

Eric


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

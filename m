Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T75HU-0004hs-Ql
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 13:59:38 +0000
Received: from mail403.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1AD8D10546DA
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2012 16:04:45 +0200 (CEST)
Date: Thu, 30 Aug 2012 15:59:32 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120830155932.7f57c80d@eb-e6520>
In-Reply-To: <20120830132631.GA20930@pengutronix.de>
References: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
 <1346329850-3866-4-git-send-email-s.trumtrar@pengutronix.de>
 <20120830150350.4ba00098@eb-e6520>
 <20120830132631.GA20930@pengutronix.de>
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

Hi Steffen,

Le Thu, 30 Aug 2012 15:26:31 +0200,
Steffen Trumtrar <s.trumtrar@pengutronix.de> a =E9crit :
> Where does your 50ms come from? From the debug messages of the usb-tool?
from a printf of bPwrOn2PwrGood

> It has the same factor of times 2.
yes, so in the end the hub is supposed to need 100ms to enable power.

> Have you tried hardcoding mdelay(100)?
yes -> doesn't work (see previous patch I sent 2 days ago on the same
subject).

> I first thought about doing it the same way linux does it and use
> max(pwrgood, 100). But 100ms minimum wouldn't help you either.
> I don't really like the idea of just guessing a value. But if necessary,
> I'm surely willing to change this patch.

with Linux's 100ms that works fine on the same board (under Linux). So
I'll check the if the mdelay(100) in barebox is really a 100ms timing
because the problem's root may be here !

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

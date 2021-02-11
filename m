Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lADxT-0001Lt-1u
 for barebox@lists.infradead.org; Thu, 11 Feb 2021 15:32:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.goehrs@pengutronix.de>) id 1lADxQ-0007ND-R4
 for barebox@lists.infradead.org; Thu, 11 Feb 2021 16:32:40 +0100
References: <20210211150348.3670852-1-l.goehrs@pengutronix.de>
From: Leonard Goehrs <l.goehrs@pengutronix.de>
Message-ID: <f8ed5e26-0022-0555-680a-1e70ba9aba81@pengutronix.de>
Date: Thu, 11 Feb 2021 16:32:40 +0100
MIME-Version: 1.0
In-Reply-To: <20210211150348.3670852-1-l.goehrs@pengutronix.de>
Content-Language: en-US-large
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
Subject: Re: [PATCH] watchdog: prevent the STPMIC1 watchdog probe from
 modifying the global turn-OFF behaviour
To: barebox@lists.infradead.org


It turns out that the subject line used in the original commit is
rather long and may be truncated when viewed using git log --oneline.

I would thus propose changing it to something shorter, like:

  stpmic1-wdt: don't modify global turn-off behaviour in probe

before applying it.

Sorry for the inconvenience caused
Leonard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

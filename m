Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f377.i.mail.ru ([185.5.136.48])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYgC1-00014S-Mp
 for barebox@lists.infradead.org; Sat, 04 May 2013 17:24:19 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 04 May 2013 21:23:49 +0400
Message-ID: <1367688229.463901062@f377.i.mail.ru>
In-Reply-To: <20130504171530.GK31290@titan.lakedaemon.net>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504171530.GK31290@titan.lakedaemon.net>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAwLzddIEJhc2ljIHN1cHBvcnQgZm9yIE1hcnZlbGwg?=
 =?UTF-8?B?QXJtYWRhIDM3MC9YUCBTb0M=?=
To: =?UTF-8?B?SmFzb24gQ29vcGVy?= <jason@lakedaemon.net>
Cc: =?UTF-8?B?TGlvciBBbXNhbGVt?= <alior@marvell.com>, =?UTF-8?B?V2lsbHkgVGFycmVhdQ==?= <w@1wt.eu>, =?UTF-8?B?RXplcXVpZWwgR2FyY2lh?= <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org

> Great work!  Very clean series.  I only have one thought.  Prafulla
> (u-boot kirkwood maintainer) is always asking about consolidating the
> kwbimage.cfg files.  The three you've submitted for the first three
> boards are almost (if not entirely) identical.  Before a whole bunch of
> boards get added, should we make a kwbimage-common.cfg or similar?
> 
> I'm not sold on the idea, I'm just mentioning it since it's been an
> issue in the past.  If we want to do that, now would be the time.

I did not look carefully these patches but seems to me that to have
any configuration files outside /env is not good for barebox.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

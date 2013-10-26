Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f414.i.mail.ru ([185.5.136.85])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZuho-0001pP-32
 for barebox@lists.infradead.org; Sat, 26 Oct 2013 03:38:29 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 26 Oct 2013 07:38:01 +0400
Message-ID: <1382758681.49092736@f414.i.mail.ru>
In-Reply-To: <20131025235741.GE30088@pengutronix.de>
References: <1382714628-27038-1-git-send-email-shc_work@mail.ru>
 <20131025235741.GE30088@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gY29uc29sZTogT2JleSAibGludXgsIHN0ZG91dC1wYXRo?=
 =?UTF-8?B?IiBwYXJhbWV0ZXIgcmVnYXJkbGVzcyBvZiBDT05TT0xFX0FDVElWQVRFX1hY?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Fri, Oct 25, 2013 at 07:23:48PM +0400, Alexander Shiyan wrote:
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  common/console.c  |  4 ++--
> >  drivers/of/base.c | 13 ++++---------
> >  include/of.h      |  2 +-
> >  3 files changed, 7 insertions(+), 12 deletions(-)
...
> Can you elaborate why you need this patch? Normally on devicetree based
> boards I set CONSOLE_ACTIVATE_NONE. In this case I think your patch
> changes nothing. If you set CONSOLE_ACTIVATE_ALL or
> CONSOLE_ACTIVATE_FIRST your patch seems to overwrite the Kconfig setting
> with the devicetree setting. Why don't you set CONSOLE_ACTIVATE_NONE in
> the first place?

You are right. Lets forget this patch.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

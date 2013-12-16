Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f309.i.mail.ru ([128.140.169.173])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VsSvU-0002We-ER
 for barebox@lists.infradead.org; Mon, 16 Dec 2013 07:49:17 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 16 Dec 2013 11:48:52 +0400
Message-ID: <1387180132.313029323@f309.i.mail.ru>
In-Reply-To: <20131216074158.GP24559@pengutronix.de>
References: <1387119725-6803-1-git-send-email-antonynpavlov@gmail.com>
 <1387119725-6803-2-git-send-email-antonynpavlov@gmail.com>
 <20131216074158.GP24559@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IFtKVVNUIFJGQ10gQVJNOiBESUdJQzogYWRkIGNzcmMtZHVtbXk=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Sun, Dec 15, 2013 at 07:02:05PM +0400, Antony Pavlov wrote:
> > The clocksource csrc-timer driver that uses DIGIC
> > hardware TIMER2 perfectrly works on Canon A1100,
> > but does not works on Canon EOS 600D.
> > IMHO we need additional timer initialisation.
> > 
> > This patch introduces a quick-and-dirty termporary
> > solution for this situation: a clocksource driver that
> > does not use any hardware at all.
> > 
> > Also this driver is very handy for running barebox
> > on Magic Lantern EOS qemu-based emulator as
> > the emulator does not realize timer counter register at all!
...
> I also played with the same approach. In my case it was more a fallback
> when the initialization order was wrong so that the time functions were
> used before the real clocksource was initialized. Without it time never
> advanced and every udelay() locked up the system (or it crashed because
> we didn't check for the clocksource being NULL, can't remember).
> 
> Maybe it would be possible to add this clocksource unconditionally on
> every build, but let a real clocksource take over.
> 
> To do this and not silently fall back to a dummy console I suggest a:
> 
> static uint64_t dummy_cs_read(void)
> {
> 	static int first;
> 
> 	if (!first) {
> 		pr_warn("Warning: Using dummy clocksource\n");
> 		first = 0;

first =1;

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

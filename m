Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f379.i.mail.ru ([185.5.136.50])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VsG79-0000V7-J1
 for barebox@lists.infradead.org; Sun, 15 Dec 2013 18:08:28 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sun, 15 Dec 2013 22:08:00 +0400
Message-ID: <1387130880.154942460@f379.i.mail.ru>
In-Reply-To: <1387119725-6803-2-git-send-email-antonynpavlov@gmail.com>
References: <1387119725-6803-1-git-send-email-antonynpavlov@gmail.com>
 <1387119725-6803-2-git-send-email-antonynpavlov@gmail.com>
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
To: =?UTF-8?B?QW50b255IFBhdmxvdg==?= <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> The clocksource csrc-timer driver that uses DIGIC
> hardware TIMER2 perfectrly works on Canon A1100,
> but does not works on Canon EOS 600D.
> IMHO we need additional timer initialisation.
> 
> This patch introduces a quick-and-dirty termporary
> solution for this situation: a clocksource driver that
> does not use any hardware at all.
> 
> Also this driver is very handy for running barebox
> on Magic Lantern EOS qemu-based emulator as
> the emulator does not realize timer counter register at all!
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
...
> +	printf("clocksource_init: mult=%08x, shift=%08x\n",
> +			dummy_cs.mult, dummy_cs.shift);

No reason to spam into console. Put this into pr_debug.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f428.i.mail.ru ([185.5.136.99])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Voxc1-0001Ch-5j
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 15:46:42 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 06 Dec 2013 19:46:16 +0400
Message-ID: <1386344776.713139290@f428.i.mail.ru>
In-Reply-To: <002001cef299$a8f06d10$fad14730$@gmail.com>
References: <002001cef299$a8f06d10$fad14730$@gmail.com>
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
Subject: =?UTF-8?B?UmU6IEhvdyBtdWNoIHJhbSBpcyBuZWVkZWQgdG8gcnVuIGJhcmVib3ggYnkg?=
 =?UTF-8?B?ZGVmYXVsdCBjb25maWc/?=
To: =?UTF-8?B?S2V2aW4gRHUgSHVhbnBlbmc=?= <u74147@gmail.com>
Cc: barebox@lists.infradead.org

> Hi, barebox as a bootloader,
> I wanna know how much ram is needed?
> By default configure.
> Stack size, malloc area size, etc.

All of this is configurable. Primary this should be kernel
requirements, not barebox. What a arch you want to boot?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

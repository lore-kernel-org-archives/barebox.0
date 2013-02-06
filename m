Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f43.mail.ru ([217.69.128.200])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U34ox-00018S-HM
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 13:13:52 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 06 Feb 2013 17:13:48 +0400
Message-ID: <1360156428.804491817@f43.mail.ru>
In-Reply-To: <20130206121134.GE1906@pengutronix.de>
References: <1360148498.214727698@f366.mail.ru>
 <20130206121134.GE1906@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmVbMl06IE5PUiBtZW1vcnkgZHJpdmVyIGZhaWwgd2l0aCBNTVUgZW5hYmxl?=
 =?UTF-8?B?ZA==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

...
> > I have a problem with NOR flash when enabling MMU.
> > Probably this happen due NOR start address is 0x0.
> > Should we a remap memory addresses same as we do it for kernel? 
> > Or can someone tell what could be the problem?
> 
> This is because the zero page is set to faulting so that you can
> catch NULL pointer exceptions. You could disable this (see
> vectors_init), but then you can't catch NULL pointer exceptions
> anymore. So the best you can do is use map_io_sections and map
> your flash to some free region, maybe like this:
> 
> map_io_sections(0x0, (void *)SZ_1M, SZ_32M);
> 
> Then register your flash flash with address 1M instead of 0x0.

Thanks Sascha, this has helped me.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

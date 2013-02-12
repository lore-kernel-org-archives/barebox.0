Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f35.mail.ru ([217.69.129.98])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5Anz-0006xg-VY
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 08:01:33 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 12 Feb 2013 12:01:27 +0400
Message-ID: <1360656087.211521505@f35.mail.ru>
In-Reply-To: <20130212074456.GM1906@pengutronix.de>
References: <1360346822-11769-1-git-send-email-shc_work@mail.ru>
 <1360652229.366978788@f195.mail.ru> <20130212074456.GM1906@pengutronix.de>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAxLzJdIEludHJvZHVjZSBkZXZpY2VfcGxhdGZvcm1f?=
 =?UTF-8?B?ZHJpdmVyKCkgbWFjcm8=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

...
> > Besides, as far as I know currently we are not using __init section.
> > Can we define this one in the linker script and release this memory after
> > initialization is complete?
> 
> What would you do then with the memory afterwards? The tlsf allocator
> supports memory pools, so in theory we could use it, but adding support
> for this to barebox would probably eat up more space in the binary than
> you could safe with the few initcalls.

Not just a few initcalls. We can put there boards initialization code,
as is done in the kernel.
Well, drop this question for now.
Thanks!

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

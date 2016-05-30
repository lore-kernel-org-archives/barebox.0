Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f430.i.mail.ru ([185.5.136.101])
 by merlin.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1b7J4u-0005oT-82
 for barebox@lists.infradead.org; Mon, 30 May 2016 09:01:41 +0000
Received: from [217.119.30.118] (ident=mail)
 by f430.i.mail.ru with local (envelope-from <shc_work@mail.ru>)
 id 1b7J4T-0008SR-9R
 for barebox@lists.infradead.org; Mon, 30 May 2016 12:01:13 +0300
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
MIME-Version: 1.0
Date: Mon, 30 May 2016 12:01:12 +0300
Message-ID: <1464598872.269538356@f430.i.mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?TUNJIHByaW50IHJldmlzaW9u?=
To: =?UTF-8?B?YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn?= <barebox@lists.infradead.org>

Hello.

Commit dbd7190295298acfb4996ec1aba5165a7be28fdc (mci: Print versions with micro levels correctly)
seems to be incorrect.

barebox@Informer:/ mmc0.probe=1
mmc0: detected SD card version 1.a
mmc0: registered mmc0

Thanks.
---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

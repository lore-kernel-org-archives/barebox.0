Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f160.mail.ru ([217.69.128.112])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TL9Z7-00056L-N1
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 09:23:58 +0000
Received: from mail by f160.mail.ru with local (envelope-from
 <shc_work@mail.ru>) id 1TL9Z5-0000JV-0E
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 13:23:55 +0400
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 08 Oct 2012 13:23:54 +0400
Message-ID: <1349688234.526637681@f160.mail.ru>
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
Subject: =?UTF-8?B?UmVncmVzc2lvbiBvbiBsYXRlc3QgYmFyZWJveA==?=
To: barebox@lists.infradead.org

Hello.

Latest master sources have a regression due migrate to use platform_device_register functions.
Now I cannot register cfi_flash device which resides at 0x0, because it have conflicts with "mem"
command which have same start address.
Thanks!

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

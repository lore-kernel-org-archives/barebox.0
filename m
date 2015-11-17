Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f390.i.mail.ru ([185.5.136.61])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZydRD-0003ax-88
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 10:24:51 +0000
Received: from [217.119.30.118] (ident=mail)
 by f390.i.mail.ru with local (envelope-from <shc_work@mail.ru>)
 id 1ZydQp-0004c4-Hz
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 13:24:12 +0300
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
MIME-Version: 1.0
Date: Tue, 17 Nov 2015 13:24:11 +0300
Message-ID: <1447755851.430640730@f390.i.mail.ru>
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
Subject: =?UTF-8?B?U2hlbGwgbG9vcCBidWc/?=
To: =?UTF-8?B?YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn?= <barebox@lists.infradead.org>

Hello.

barebox@/ # for i in /dev/* ; do echo $i; done
/dev/flash0
/dev/full
/dev/m25p0
/dev/m25p1
/dev/mem
/dev/null
/dev/ram0
/dev/self0
/dev/serial1
/dev/zero

barebox@/ # for i in /dev/*1 ; do echo $i; done
/dev/m25p1
/dev/serial1

barebox@/ # for i in /dev/*2 ; do echo $i; done
/dev/*2
     ^^^^^^^^ Is this correct?

Thanks.
---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

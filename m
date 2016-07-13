Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f355.i.mail.ru ([217.69.140.251])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNEjg-00078d-Lo
 for barebox@lists.infradead.org; Wed, 13 Jul 2016 07:37:38 +0000
Received: from [217.119.30.118] (ident=mail)
 by f355.i.mail.ru with local (envelope-from <shc_work@mail.ru>)
 id 1bNEjH-0005nA-Q9
 for barebox@lists.infradead.org; Wed, 13 Jul 2016 10:37:12 +0300
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
MIME-Version: 1.0
Date: Wed, 13 Jul 2016 10:37:11 +0300
Message-ID: <1468395431.547554214@f355.i.mail.ru>
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
Subject: =?UTF-8?B?UGF0Y2ggInN5c2NvbjogRGVjcmVhc2UgZHJpdmVyIHJlZ2lzdHJhdGlvbiBw?=
 =?UTF-8?B?cmlvcml0eSIgYnJlYWtzIGNscHM3MTF4IHRhcmdldA==?=
To: =?UTF-8?B?YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn?= <barebox@lists.infradead.org>

Hello All.

Patch "syscon: Decrease driver registration priority" breaks clps711x target.
Previously, the syscon device initialized at "core_initcall", that did not cause problems.
Now the device is initialized at "device_initcall" level, but clps711x uses syscon for
the serial, so serial device initialized at "console_initcall" level.
Any ideas?

Thanks.
---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

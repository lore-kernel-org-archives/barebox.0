Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f361.mail.ru ([217.69.141.3])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6eGF-0000pv-MW
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 10:13:05 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 06 Aug 2013 14:12:35 +0400
Message-ID: <1375783954.988213993@f361.mail.ru>
In-Reply-To: <20130806064229.GY26614@pengutronix.de>
References: <20130806064229.GY26614@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IHYyMDEzLjA4LjA=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> Finally we have an August release!
> 
> Here are the patches that went in between this and the last release:

Here is a first result of compile:

drivers/built-in.o: In function `ubi_volume_notify':
:(.text.ubi_volume_notify+0x14): undefined reference to `ubi_do_get_device_info'
:(.text.ubi_volume_notify+0x24): undefined reference to `ubi_do_get_volume_info'
make: *** [barebox] Error 1

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

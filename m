Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f421.i.mail.ru ([185.5.136.92])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7JdP-0007Wy-HA
 for barebox@lists.infradead.org; Thu, 08 Aug 2013 06:23:44 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Thu, 08 Aug 2013 10:23:19 +0400
Message-ID: <1375942999.492608031@f421.i.mail.ru>
In-Reply-To: <1375786384.974905160@f289.i.mail.ru>
References: <20130806064229.GY26614@pengutronix.de>
 <20130806103133.GB26614@pengutronix.de>
 <1375786384.974905160@f289.i.mail.ru>
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

> > On Tue, Aug 06, 2013 at 02:12:35PM +0400, Alexander Shiyan wrote:
> > > > Finally we have an August release!
> > > > 
> > > > Here are the patches that went in between this and the last release:
> > > 
> > > Here is a first result of compile:
> > > 
> > > drivers/built-in.o: In function `ubi_volume_notify':
> > > :(.text.ubi_volume_notify+0x14): undefined reference to `ubi_do_get_device_info'
> > > :(.text.ubi_volume_notify+0x24): undefined reference to `ubi_do_get_volume_info'
> > > make: *** [barebox] Error 1
> > 
> > Fortunately this is in current master and not the release. The following
> > should fix this. It the patch adding ubi_volume_notify depended on
> > another patch which I have locally and I didn't notice that.
> 
> The patch is works as expected. Thanks.

Additional warning on ubi_volume_notify:

  CC      drivers/mtd/ubi/vmt.o
drivers/mtd/ubi/vmt.c: In function 'ubi_create_volume':
drivers/mtd/ubi/vmt.c:176:2: warning: implicit declaration of function 'ubi_volume_notify' [-Wimplicit-function-declaration]
  CC      drivers/mtd/ubi/upd.o
  CC      drivers/mtd/ubi/build.o
  CC      drivers/mtd/ubi/cdev.o
drivers/mtd/ubi/cdev.c: In function 'ubi_volume_cdev_close':
drivers/mtd/ubi/cdev.c:140:3: warning: implicit declaration of function 'ubi_volume_notify' [-Wimplicit-function-declaration]

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

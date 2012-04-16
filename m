Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f164.mail.ru ([94.100.178.83])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJqog-0005UC-Mq
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 18:38:24 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 16 Apr 2012 22:38:18 +0400
References: <1334261421-4194-1-git-send-email-s.hauer@pengutronix.de>
 <1334261421-4194-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334261421-4194-4-git-send-email-s.hauer@pengutronix.de>
Message-Id: <E1SJqoc-0007XT-MY.shc_work-mail-ru@f164.mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCAzLzRdIEFSTSBpLk1YNTEgaW9tdXg6IHN5bmMgdG8ga2Vy?=
 =?UTF-8?B?bmVs?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello.

...
> +#define MX51_PAD_SD2_DATA1__USBH3_H2_DP		IOMUX_PAD(0x7c8, 0x3c0, 2, __NA_, 0, NO_PAD_CTRL)
...
> +#define MX51_PAD_SD2_DATA2__USBH3_H2_DM		IOMUX_PAD(0x7cc, 0x3c4, 2, __NA_, 0, NO_PAD_CTRL)
We need to add SION-bit on these pins, as says in MX51 reference manual.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

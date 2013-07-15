Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f323.mail.ru ([128.140.169.186] helo=f323.i.mail.ru)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uyrqx-00030v-JF
 for barebox@lists.infradead.org; Mon, 15 Jul 2013 23:06:48 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 16 Jul 2013 03:06:22 +0400
Message-ID: <1373929582.540362958@f323.i.mail.ru>
In-Reply-To: <1373918206-9978-1-git-send-email-s.hauer@pengutronix.de>
References: <1373918206-9978-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gYnVzOiBBZGQgaW14LXdlaW0gc3VwcG9ydA==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> Mostly taken from the kernel with support for other SoCs from
> Alexander Shiyan.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Alexander Shiyan <shc_work@mail.ru>
> ---
...
> +struct imx_weim {
> +	struct device_d *dev;
> +	void __iomem *base;
> +	struct imx_weim_devtype *devtype;
> +};
> +
> +#define CS_TIMING_LEN 6
> +#define CS_REG_RANGE  0x18

???

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f389.i.mail.ru ([185.5.136.60])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2RPo-0008Fe-Sx
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 19:09:17 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 04 Feb 2013 23:08:59 +0400
Message-ID: <1360004939.170907890@f389.i.mail.ru>
In-Reply-To: <004301ce030a$68506aa0$38f13fe0$@com>
References: <004301ce030a$68506aa0$38f13fe0$@com>
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
Subject: =?UTF-8?B?UmU6IGkuTVg1MywgYWRkIGFjY2VzcyB0byB0aGlyZCBJMkMgcGVyaXBoZXJh?=
 =?UTF-8?B?bA==?=
To: =?UTF-8?B?R2VvcmdlIFBvbnRpcw==?= <GPontis@z9.com>
Cc: barebox@lists.infradead.org

> All versions of the i.MX53 have three I2C peripherals. This patch provides
> access to it.
...
> +static inline struct device_d *imx53_add_i2c2(struct i2c_platform_data
> *pdata)
> +{
> +       return imx_add_i2c((void *)MX53_I2C2_BASE_ADDR, 2, pdata);
> +}
> +
MX53_I2C3_BASE_ADDR ?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

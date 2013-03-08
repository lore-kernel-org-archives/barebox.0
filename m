Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f107.mail.ru ([94.100.178.76])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDwEr-00028L-Ca
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 12:17:30 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 08 Mar 2013 16:17:22 +0400
Message-ID: <1362745042.129909210@f107.mail.ru>
In-Reply-To: <1362744484-17844-2-git-send-email-s.hauer@pengutronix.de>
References: <1362744484-17844-1-git-send-email-s.hauer@pengutronix.de>
 <1362744484-17844-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCAxLzNdIEFSTSBpLk1YNjogQWRkIG1tZGMgY2FsaWJyYXRp?=
 =?UTF-8?B?b24gc3VwcG9ydA==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello.

Only few questions inlined.

> This adds support for the various DDR calibration functions in the
> i.MX6 MMDC.
...
> +static inline u32 reg32_read(u32 reg)
> +{
> +	return readl(reg);
> +}
> +
> +static inline void reg32_write(u32 reg, u32 val)
> +{
> +	writel(val, reg);
> +}
> +

What a reason to separate functions instead of readl/writel?

> +static inline void reg32setbit(u32 reg, int bit)
> +{
> +	u32 val;
> +
> +	val = readl(reg);
> +	val |= 1 << bit;
> +	writel(val, reg);
> +}
> +
> +static inline void reg32clrbit(u32 reg, int bit)
> +{
> +	u32 val;
> +
> +	val = readl(reg);
> +	val &= ~(1 << bit);
> +	writel(val, reg);
> +}

Maybe move this into asm-generic/io.h? Seems it can be reused by other
users.

Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

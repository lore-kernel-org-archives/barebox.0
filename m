Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f180.mail.ru ([217.69.128.221])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrtyF-00037M-Fr
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 17:57:33 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 26 Jun 2013 21:57:06 +0400
Message-ID: <1372269426.799780740@f180.mail.ru>
In-Reply-To: <1372235714-5568-1-git-send-email-s.hauer@pengutronix.de>
References: <1372235714-5568-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gbWZkOiBtYzM0NzA4OiBwcm92aWRlIHN0YXRpYyBpbmxp?=
 =?UTF-8?B?bmUgd3JhcHBlcg==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> If the driver is disabled provide a static inline wrapper for
> mc34708_get() to prevent linker errors.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/mfd/mc34708.h | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/include/mfd/mc34708.h b/include/mfd/mc34708.h
> index f384c62..541c47f 100644
> --- a/include/mfd/mc34708.h
> +++ b/include/mfd/mc34708.h
> @@ -93,7 +93,14 @@ struct mc34708 {
>  	unsigned int		revision;
>  };
>  
> -extern struct mc34708 *mc34708_get(void);
> +#ifdef CONFIG_MFD_MC34708
> +struct mc34708 *mc34708_get(void);
> +#else
> +static inline struct mc34708 *mc34708_get(void)
> +{
> +	return NULL;
> +}
> +#endif
>  
>  extern int mc34708_reg_read(struct mc34708 *mc34708, enum mc34708_reg reg, u32 *val);
>  extern int mc34708_reg_write(struct mc34708 *mc34708, enum mc34708_reg reg, u32 val);
> -- 

Please apply this to master.
I want to merge all m13xxx same as in kernel.
If I get time, of course. :)

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

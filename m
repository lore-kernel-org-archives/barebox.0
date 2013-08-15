Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f384.i.mail.ru ([185.5.136.55])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9s9o-0000Rg-74
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 07:39:45 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Thu, 15 Aug 2013 11:39:20 +0400
Message-ID: <1376552360.905287029@f384.i.mail.ru>
In-Reply-To: <1376551741-16438-8-git-send-email-s.hauer@pengutronix.de>
References: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
 <1376551741-16438-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCA3LzhdIFNldCBtb2RlbCBhbmQgaG9zdG5hbWUgYXQgYm9h?=
 =?UTF-8?B?cmRsZXZlbA==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> With multiboard support the compiletime generated BOARDINFO string
> gets more and more meaningless. This removes it from Kconfig and
> replaces it with a variable that can be set at boardlevel.
> 
> Also many boards have a standard setting for the hostname in the
> environment. This patch also moves the standard to C code by calling
> barebox_set_hostname().
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
[...]
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
> index 2485e12..57280d5 100644
> --- a/arch/arm/boards/ccxmx51/ccxmx51.c
> +++ b/arch/arm/boards/ccxmx51/ccxmx51.c
> @@ -475,6 +475,9 @@ static int ccxmx51_console_init(void)
>  {
>  	mxc_iomux_v3_setup_multiple_pads(ccxmx51_pads, ARRAY_SIZE(ccxmx51_pads));
>  
> +	barebox_set_model("Digi ConnectCore i.MX51");
> +	barebox_set_hostname("cccmx51");

Not a fatal, but please remove one "c" during commit ;)
Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

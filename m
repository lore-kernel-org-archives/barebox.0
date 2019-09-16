Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9w2o-0000Uf-SZ
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 18:48:20 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1i9w2n-0001KB-Gx
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 20:48:13 +0200
References: <20190916183816.20300-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f8e5f85c-2973-0c8a-080e-33a5254183b4@pengutronix.de>
Date: Mon, 16 Sep 2019 20:48:13 +0200
MIME-Version: 1.0
In-Reply-To: <20190916183816.20300-1-a.fatoum@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] libfile: null-terminate buffer as expected
To: barebox@lists.infradead.org

On 9/16/19 8:38 PM, Ahmad Fatoum wrote:
> strim calls strlen on buf internally which is undefined because buf
> is not null-terminated. Fix this.

Please dismiss... read_file_2 has its buffer allocated with calloc,
thus nothing to see here...

> 
> Accessing buf+size is safe, because read_file_2 always allocates a
> 1 byte bigger buffer than the required (non-null-terminated) size.
> 
> This leading to errors can be observed by increasing the alignment of
> the buffer allocated in read_file_2. This would lead to
> 
> 	ERROR: Cannot init param from global: ... : Invalid argument
> 
> messages whenever nvvar_load is executed.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/libfile.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/lib/libfile.c b/lib/libfile.c
> index 172602377fc0..92f8fc2608e5 100644
> --- a/lib/libfile.c
> +++ b/lib/libfile.c
> @@ -136,6 +136,8 @@ char *read_file_line(const char *fmt, ...)
>  	if (!buf)
>  		goto out;
>  
> +	buf[size] = '\0';
> +
>  	line = strim(buf);
>  
>  	line = xstrdup(line);
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

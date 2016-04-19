Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asPtD-0007Xb-VW
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:16:04 +0000
Date: Tue, 19 Apr 2016 09:15:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160419071539.GP9102@pengutronix.de>
References: <1460641614-4660-1-git-send-email-d-hp@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1460641614-4660-1-git-send-email-d-hp@163.com>
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
Subject: Re: [PATCH] readline: use a simple function to replace printf
To: Du Huanpeng <d-hp@163.com>
Cc: barebox@lists.infradead.org, Du Huanpeng <u74147@gmail.com>

On Thu, Apr 14, 2016 at 09:46:54PM +0800, Du Huanpeng wrote:
> From: Du Huanpeng <u74147@gmail.com>
> 
> maybe this patch is not very necessary, but this make we have
> opportunity to use simplified version of printf.
>   printf ("%.*s", n, str);

I see no real value in this patch since we do have a full printf.
Without full printf we likely also do not need readline.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

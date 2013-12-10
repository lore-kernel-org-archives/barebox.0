Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqHwK-0005UD-Cq
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 07:41:09 +0000
Date: Tue, 10 Dec 2013 08:40:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131210074046.GS24559@pengutronix.de>
References: <1386581938-9663-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386581938-9663-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] scripts: add arch/x86/lib/barebox.lds to gitignore
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 09, 2013 at 01:38:58AM -0800, Du Huanpeng wrote:
> Signed-off-by: Du Huanpeng <u74147@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/x86/lib/.gitignore |    2 ++
>  1 file changed, 2 insertions(+)
>  create mode 100644 arch/x86/lib/.gitignore
> 
> diff --git a/arch/x86/lib/.gitignore b/arch/x86/lib/.gitignore
> new file mode 100644
> index 0000000..542522e
> --- /dev/null
> +++ b/arch/x86/lib/.gitignore
> @@ -0,0 +1,2 @@
> +barebox.lds
> +
> -- 
> 1.7.9.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

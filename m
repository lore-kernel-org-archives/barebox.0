Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek4Bb-0000ya-PI
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 08:37:37 +0000
Date: Fri, 9 Feb 2018 09:37:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180209083719.4pf646aqpdllaqun@pengutronix.de>
References: <20180206104324.21698-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180206104324.21698-1-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] scripts/compiler.h: inline functions in headers must be
 static
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 06, 2018 at 11:43:24AM +0100, Michael Olbrich wrote:
> Without this building bareboxenv-target with gcc 7.3 fails with:
> 
>   CC      scripts/bareboxenv-target
> /tmp/cc9G2oOY.o: In function `file_action':
> bareboxenv.c:(.text+0x14): undefined reference to `xzalloc'
> /tmp/cc9G2oOY.o: In function `concat_path_file':
> bareboxenv.c:(.text+0xf4): undefined reference to `xmalloc'
> /tmp/cc9G2oOY.o: In function `envfs_save':
> bareboxenv.c:(.text+0x5b4): undefined reference to `xzalloc'
> /tmp/cc9G2oOY.o: In function `envfs_load':
> bareboxenv.c:(.text+0x7d8): undefined reference to `xmalloc'
> collect2: error: ld returned 1 exit status
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
>  scripts/compiler.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/compiler.h b/scripts/compiler.h
> index 0891c3bfa6fa..4cf179bb9b13 100644
> --- a/scripts/compiler.h
> +++ b/scripts/compiler.h
> @@ -113,7 +113,7 @@ typedef uint32_t __u32;
>  	(void) (&_min1 == &_min2);              \
>  	_min1 < _min2 ? _min1 : _min2; })
>  
> -inline void *xmalloc(size_t size)
> +static inline void *xmalloc(size_t size)
>  {
>  	void *p = NULL;
>  
> @@ -125,7 +125,7 @@ inline void *xmalloc(size_t size)
>  	return p;
>  }
>  
> -inline void *xzalloc(size_t size)
> +static inline void *xzalloc(size_t size)
>  {
>  	void *p = xmalloc(size);
>  	memset(p, 0, size);
> -- 
> 2.16.1
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e40jv-0007pc-JE
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 08:27:13 +0000
Date: Mon, 16 Oct 2017 10:26:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016082649.g5fjmdqrxypxkxa6@pengutronix.de>
References: <20171009134053.28215-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171009134053.28215-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] elf.h: Use EI_NIDENT instead of numeric value
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 09, 2017 at 04:40:53PM +0300, Antony Pavlov wrote:
> This is an adoption of the linux kernel commit
> 
> | commit eb6900fbfa43cb50391b80b38608e25280705693
> | Author: Cyrill Gorcunov <gorcunov@gmail.com>
> | Date:   Tue Apr 29 01:01:17 2008 -0700
> |
> |     ELF: Use EI_NIDENT instead of numeric value
> |
> |     Signed-off-by: Cyrill Gorcunov <gorcunov@gmail.com>
> |     Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
> |     Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/elf.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/elf.h b/include/elf.h
> index a749bec34e..ebcec7db0d 100644
> --- a/include/elf.h
> +++ b/include/elf.h
> @@ -207,7 +207,7 @@ typedef struct elf32_hdr{
>  } Elf32_Ehdr;
>  
>  typedef struct elf64_hdr {
> -  unsigned char	e_ident[16];		/* ELF "magic number" */
> +  unsigned char	e_ident[EI_NIDENT];	/* ELF "magic number" */
>    Elf64_Half e_type;
>    Elf64_Half e_machine;
>    Elf64_Word e_version;
> -- 
> 2.14.1
> 
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

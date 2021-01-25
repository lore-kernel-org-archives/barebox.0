Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3ybP-0004SQ-So
 for barebox@lists.infradead.org; Mon, 25 Jan 2021 09:56:08 +0000
Date: Mon, 25 Jan 2021 10:56:06 +0100
Message-ID: <20210125095606.GF31738@pengutronix.de>
References: <20210121112958.25937-1-str@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210121112958.25937-1-str@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 01/13] ARM: add fncpy.h from linux v4.6
To: Steffen Trumtrar <str@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Thu, Jan 21, 2021 at 12:29:46PM +0100, Steffen Trumtrar wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Description from the linux commit 5756e9dd0de6d5c307773f8f734c0684b3098fdd:
> 
>     ARM: 6640/1: Thumb-2: Symbol manipulation macros for function body copying
> 
>     In low-level board support code, there is sometimes a need to
>     copy a function body to another location at run-time.
> 
>     A straightforward call to memcpy doesn't work in Thumb-2,
>     because bit 0 of external Thumb function symbols is set to 1,
>     indicating that the function is Thumb.  Without corrective
>     measures, this will cause an off-by-one copy, and the copy
>     may be called using the wrong instruction set.
> 
>     This patch adds an fncpy() macro to help with such copies.
> 
>     Particular care is needed, because C doesn't guarantee any
>     defined behaviour when casting a function pointer to any other
>     type.  This has been observed to lead to strange optimisation
>     side-effects when doing the arithmetic which is required in
>     order to copy/move function bodies correctly in Thumb-2.
> 
>     Thanks to Russell King and Nicolas Pitre for their input
>     on this patch.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/include/asm/fncpy.h | 82 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 arch/arm/include/asm/fncpy.h

Applied this patch for now, but with an update to v5.10 with the only
change that the licence header is changed to SPDX now.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

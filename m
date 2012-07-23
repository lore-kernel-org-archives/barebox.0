Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StOmu-0008Re-C5
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 19:59:29 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1StOmo-0007ga-UU
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 21:59:22 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1StOmn-0003yW-Ux
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 21:59:21 +0200
Date: Mon, 23 Jul 2012 21:59:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723195921.GP24458@pengutronix.de>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
 <1342685582-13244-9-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342685582-13244-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 8/9] ARM: Separate assembler functions into their own
 section
To: barebox@lists.infradead.org

On Thu, Jul 19, 2012 at 10:13:01AM +0200, Sascha Hauer wrote:
 diff --git a/arch/arm/lib/findbit.S b/arch/arm/lib/findbit.S
> index ef4caff..422455d 100644
> --- a/arch/arm/lib/findbit.S
> +++ b/arch/arm/lib/findbit.S
> @@ -22,6 +22,7 @@
>   * Purpose  : Find a 'zero' bit
>   * Prototype: int find_first_zero_bit(void *addr, unsigned int maxbit);
>   */
> +.section .text._find_first_zero_bit_le
>  ENTRY(_find_first_zero_bit_le)
>  		teq	r1, #0
>  		beq	3f
> @@ -43,6 +44,7 @@ ENDPROC(_find_first_zero_bit_le)
>   * Purpose  : Find next 'zero' bit
>   * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
>   */
> +.section .text._find_next_zero_bit_le
>  ENTRY(_find_next_zero_bit_le)
>  		teq	r1, #0
>  		beq	3b
> @@ -63,6 +65,7 @@ ENDPROC(_find_next_zero_bit_le)
>   * Purpose  : Find a 'one' bit
>   * Prototype: int find_first_bit(const unsigned long *addr, unsigned int maxbit);
>   */
> +.section .text._find_first_bit_le
>  ENTRY(_find_first_bit_le)
>  		teq	r1, #0
>  		beq	3f

The changes in this file are completely wrong. These functions use
different jump labels (1b, 1f,...) to jump over function borders.
The bad thing is that the compiler does not issue any warning, it only
generates broken code.
Will fix.

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

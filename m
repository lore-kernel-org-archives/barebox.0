Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TkBZ0-0005b2-4Z
 for barebox@lists.infradead.org; Sun, 16 Dec 2012 10:35:19 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1355643775-4981-1-git-send-email-shc_work@mail.ru>
 <1355643775-4981-2-git-send-email-shc_work@mail.ru>
Date: Sun, 16 Dec 2012 11:35:07 +0100
In-Reply-To: <1355643775-4981-2-git-send-email-shc_work@mail.ru> (Alexander
 Shiyan's message of "Sun, 16 Dec 2012 11:42:54 +0400")
Message-ID: <87bodunv38.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/3] lib: Add formal Kconfig parameter "BCH_CONST_PARAMS"
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Alexander Shiyan <shc_work@mail.ru> writes:

> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  lib/Kconfig |    3 +++
>  1 files changed, 3 insertions(+), 0 deletions(-)
>
> diff --git a/lib/Kconfig b/lib/Kconfig
> index 5966386..febb434 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -20,6 +20,9 @@ config GENERIC_FIND_NEXT_BIT
>  config PROCESS_ESCAPE_SEQUENCE
>  	def_bool n
>  
> +config BCH_CONST_PARAMS
> +	bool
> +
>  source lib/lzo/Kconfig

No, this is incomplete.
If you want to enable compiler optimization of BCH algorithm, you should define
also :
config BCH_CONST_M
	int
	range 5 15
	help
	  Constant value for Galois field order 'm'. If 'k' is the
	  number of data bits to protect, 'm' should be chosen such
	  that (k + m*t) <= 2**m - 1.
	  Drivers should declare a default value for this symbol if
	  they select option BCH_CONST_PARAMS.

config BCH_CONST_T
	int
	help
	  Constant value for error correction capability in bits 't'.
	  Drivers should declare a default value for this symbol if
	  they select option BCH_CONST_PARAMS.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

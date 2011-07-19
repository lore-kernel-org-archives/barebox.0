Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjCld-0003lZ-Lz
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:03:30 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 8F986FFAD63
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:03:57 +0200 (CEST)
Date: Tue, 19 Jul 2011 17:46:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110719154639.GJ5727@game.jcrosoft.org>
References: <1311089118-30780-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311089118-30780-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] Add option DEBUG_LL to common/Kconfig
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 19:25 Tue 19 Jul     , Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/Kconfig |   11 +++++++++++
>  1 files changed, 11 insertions(+), 0 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 7d2367b..61e13cb 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -482,4 +482,15 @@ config ENABLE_DEVICE_NOISE
>  	help
>  	  Enable this to get noisy device handling routines
>  
> +config DEBUG_LL
> +	bool
> +	depends on HAS_DEBUG_LL
> +	prompt "low level debug messages"
> +	help
> +	  Enable this to get low level debug messages during barebox initialization.
> +
>  endmenu
> +
> +config HAS_DEBUG_LL
> +	bool
> +	default n
n by default

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

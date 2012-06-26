Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjb2P-0005AK-DH
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:02:58 +0000
Date: Tue, 26 Jun 2012 21:02:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120626190250.GP14321@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
 <1340704314-12593-6-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340704314-12593-6-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 05/12] mach-davinci: add support for the PSC (Power and
 Sleep Controller)
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 26, 2012 at 11:51:47AM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-davinci/Makefile |    1 +
>  arch/arm/mach-davinci/psc.c    |   85 ++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 86 insertions(+)
>  create mode 100644 arch/arm/mach-davinci/psc.c
> 
> +
> +/* Works on Always On power domain only (no PD argument) */
> +void lpsc_on(unsigned int id)

better give global functions a clear prefix like davinci_*

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

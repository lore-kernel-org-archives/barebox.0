Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1479-00075I-8s
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 08:08:20 +0000
Date: Mon, 10 Feb 2020 09:08:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200210080817.a7kxcl4ua6y2rd7m@pengutronix.de>
References: <20200203082159.4455-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203082159.4455-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] acpi: include missing header in <acpi.h>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, Feb 03, 2020 at 09:21:59AM +0100, Ahmad Fatoum wrote:
> acpi_sigcmp defined in the header uses memcmp, but no included headers
> pull in memcmp, which can lead to compile errors in new code, depending
> on include order. Fix this.
> 
> Reported-by: @healytpk, https://github.com/saschahauer/barebox/issues/7
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  include/acpi.h | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

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

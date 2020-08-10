Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k51Pg-0005nh-Rw
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 06:36:05 +0000
Date: Mon, 10 Aug 2020 08:36:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200810063602.GU31536@pengutronix.de>
References: <20200805073258.10973-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200805073258.10973-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] image: Convert the IH_... values to enums
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 05, 2020 at 10:32:57AM +0300, Antony Pavlov wrote:
> Adoption of U-Boot commit:
> 
>   | commit 555f45d8f9168b09b406a241e7cee7980104d902
>   | Author: Simon Glass <sjg@chromium.org>
>   | Date:   Thu Jun 30 10:52:13 2016 -0600
>   |
>   |     image: Convert the IH_... values to enums
> 
> As a side effect, several new architecture macros
> are introduced, especially IH_ARCH_RISCV.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/image.h | 188 +++++++++++++++++++++++++++++++++---------------
>  1 file changed, 132 insertions(+), 56 deletions(-)

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

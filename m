Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHoNw-0006lR-Mt
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:19:09 +0000
Date: Mon, 14 Sep 2020 15:19:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200914131907.GU4498@pengutronix.de>
References: <20200902131307.17613-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200902131307.17613-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH master 1/3] clk: at91: sama5d2: fix buffer overflow of
 clk parent_names
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 02, 2020 at 03:13:05PM +0200, Ahmad Fatoum wrote:
> The upstream implementation passes the clock's parent_names as an
> address of a local array to the core. That's ok because data contained
> in struct clk_init_data is duplicated and stored with a proper lifetime.
> 
> We don't have that in barebox, so the clock providers themselves are
> responsible for allocating an array with suitable lifetime. Most at91
> clk drivers did this by having a fixed size array in the clock's private
> data struct.
> 
> Since 47475fa5e0e1 ("clk: at91: add sama5d2 audio PLL support"), we are
> overflowing struct clk_programmable::parent_names on the sama5d2,
> because there it has 6 parents, while only space for 5 were allocated.
> 
> Make the parent_names member of variable size to fix this and to avoid
> such errors in future.
> 
> Fixes: 47475fa5e0e1 ("clk: at91: add sama5d2 audio PLL support")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/at91/clk-i2s-mux.c      | 7 +++----
>  drivers/clk/at91/clk-master.c       | 7 +++----
>  drivers/clk/at91/clk-programmable.c | 6 +++---
>  drivers/clk/at91/clk-slow.c         | 5 +++--
>  drivers/clk/at91/clk-smd.c          | 5 +++--
>  drivers/clk/at91/clk-usb.c          | 5 +++--
>  drivers/clk/at91/sckc.c             | 5 +++--
>  7 files changed, 21 insertions(+), 19 deletions(-)

Applied to master, thanks

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gJX-0000S3-Eq
 for barebox@lists.infradead.org; Mon, 02 Mar 2020 08:20:36 +0000
Date: Mon, 2 Mar 2020 09:20:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200302082033.GG3335@pengutronix.de>
References: <20200220093327.905391-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220093327.905391-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] reset: add stub for device_reset when
 CONFIG_RESET_CONTROLLER=n
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Thu, Feb 20, 2020 at 10:33:27AM +0100, Ahmad Fatoum wrote:
> Users of an optional device_reset that have CONFIG_RESET_CONTROLLER=n
> will trigger compilation errors. Add a static inline stub to fix it.
> 
> [ Note: device_reset is unused and unusable because we have no reset
>   controller implementing .reset. It's available in Linux though and
>   apparently useful for shared resets, so it's left in ]
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  include/linux/reset.h | 6 ++++++
>  1 file changed, 6 insertions(+)

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

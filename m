Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT6gH-00043X-Sn
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 10:37:34 +0000
Date: Wed, 4 Mar 2015 11:37:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150304103710.GZ11010@pengutronix.de>
References: <20150217075906.GP12209@pengutronix.de>
 <1425462724-10581-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425462724-10581-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH v2] led: gpio: add support for default-state dt-property
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 04, 2015 at 10:52:04AM +0100, Hubert Feurstein wrote:
> This patch adds support for the default-state device tree property.
> 
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  drivers/led/led-gpio.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

Nice, as it happens I can just make use of this patch to turn off an
annoying LED on my beaglebone board.

Applied, thanks.

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

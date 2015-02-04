Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YIyYe-0003ec-Ev
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 11:55:48 +0000
Date: Wed, 4 Feb 2015 12:55:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150204115530.GY12209@pengutronix.de>
References: <1423045144-25714-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1423045144-25714-1-git-send-email-voice.shen@atmel.com>
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
Subject: Re: [PATCH] usb: at91_udc: pass the vbus initial value
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 04, 2015 at 06:19:04PM +0800, Bo Shen wrote:
> If without pass the vbus initial value, the vbus status alway
> present as 0 even if the vbus is connected to 5v.
> 
> Signed-off-by: Bo Shen <voice.shen@atmel.com>
> ---
> 
>  drivers/usb/gadget/at91_udc.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

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

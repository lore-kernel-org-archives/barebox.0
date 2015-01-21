Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YDrn7-00043V-8R
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 09:41:38 +0000
Date: Wed, 21 Jan 2015 10:41:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150121094113.GF12209@pengutronix.de>
References: <1421739085-21150-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421739085-21150-1-git-send-email-voice.shen@atmel.com>
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
Subject: Re: [PATCH] ARM: atmel: sama5d3xek: fix conflict between w1 and led
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 20, 2015 at 03:31:25PM +0800, Bo Shen wrote:
> As the 1-wire and LED d2 use the same pin (PE25) on the EK board.
> So, make LED enable only when the 1-wire is disabled.
> 
> Signed-off-by: Bo Shen <voice.shen@atmel.com>
> ---
> 
>  arch/arm/boards/sama5d3xek/init.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

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

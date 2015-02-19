Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YOX7p-0001qH-30
 for barebox@lists.infradead.org; Thu, 19 Feb 2015 19:51:05 +0000
Date: Thu, 19 Feb 2015 20:50:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150219195042.GY12209@pengutronix.de>
References: <1424235280-3776-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424235280-3776-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [RESEND][PATCH] firmware: altera: Make nSTAT GPIO optional
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, kernel@pengutronix.de

On Tue, Feb 17, 2015 at 08:54:40PM -0800, Andrey Smirnov wrote:
> By taking parts of the programming handshaking protocol on faith it is
> possible to make due with only two GPIO for programming Altera
> FPGAs. This is not a very advisable practice, but sometime unavoidable
> in GPIO constrained designs.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/firmware/altera_serial.c | 59 ++++++++++++++++++++++++++++++----------
>  1 file changed, 44 insertions(+), 15 deletions(-)

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

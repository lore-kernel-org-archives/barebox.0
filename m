Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSuMw-0001Sb-5E
 for barebox@lists.infradead.org; Fri, 11 May 2012 18:15:10 +0000
Date: Fri, 11 May 2012 20:15:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511181508.GK27341@pengutronix.de>
References: <1336750939-18572-1-git-send-email-shc_work@mail.ru>
 <1336750939-18572-2-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336750939-18572-2-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 2/2] i2c: Added switch for allowing usage 16bit register
 addresses
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, May 11, 2012 at 07:42:19PM +0400, Alexander Shiyan wrote:
> ---
>  			printf("0x%02x ", *(buf + i));
> @@ -135,7 +138,8 @@ static const __maybe_unused char cmd_i2c_write_help[] =
>  "write to i2c device.\n"
>  "  -a 0x<addr>   i2c device address\n"
>  "  -b <bus_num>  i2c bus number (default = 0)\n"
> -"  -r 0x<reg>    start register\n";
> +"  -r 0x<reg>    start register\n"
> +"  -w            use the word as an address\n";

Can we have 'do word (16bit) accesses' here to make this a bit more
explicit?

> @@ -205,6 +212,7 @@ static const __maybe_unused char cmd_i2c_read_help[] =
>  "  -a 0x<addr>   i2c device address\n"
>  "  -b <bus_num>  i2c bus number (default = 0)\n"
>  "  -r 0x<reg>    start register\n"
> +"  -w            use the word as an address\n"
>  "  -c <count>    byte count\n";

ditto

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

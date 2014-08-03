Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XDyU4-0003zJ-7M
 for barebox@lists.infradead.org; Sun, 03 Aug 2014 16:18:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1XDyTi-0000iB-4T
 for barebox@lists.infradead.org; Sun, 03 Aug 2014 18:17:46 +0200
Message-ID: <1407082665.7251.1.camel@polaris.local>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Sun, 03 Aug 2014 18:17:45 +0200
In-Reply-To: <1406958354-12051-1-git-send-email-antonynpavlov@gmail.com>
References: <1406958354-12051-1-git-send-email-antonynpavlov@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: jlu@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] gen-dtb-s: make metadata binary fields always little-endian
To: barebox@lists.infradead.org

Hi,

On Sat, 2014-08-02 at 09:45 +0400, Antony Pavlov wrote:
>  
>                 compatlen=$($FDTGET -t s "$dtb" / compatible | wc -c)
> -               echo ".int 0x640c8005"
> -               echo ".int " $compatlen
> +               echo ".byte 0x05, 0x80, 0x0c, 0x64"
> +               python -c "print(\".byte 0x%02x, 0x%02x, 0x%02x, 0x%02x\\n\" % ($compatlen & 0xff, ($compatlen >> 8) & 0xff, ($compatlen >> 16) & 0xff, ($compatlen >> 24) & 0xff))"

Rather than adding a build-time dependency on python, maybe we should
just handle this in C?

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

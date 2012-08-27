Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T63eR-0006FP-NY
 for barebox@lists.infradead.org; Mon, 27 Aug 2012 18:03:05 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 27 Aug 2012 20:01:50 +0200
References: <CACO6GO7pfavefJa_wTcR7ifHwWVS8up7-TRW8ArQzXoeL1JHCA@mail.gmail.com>
In-Reply-To: <CACO6GO7pfavefJa_wTcR7ifHwWVS8up7-TRW8ArQzXoeL1JHCA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201208272001.50503.jbe@pengutronix.de>
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
Subject: Re: barebox on imx23-olinuxino
To: barebox@lists.infradead.org, f.koliqi@gmail.com

Hi Fadil,

Fadil Berisha wrote:
> Based on falconfing and mx23-evk, I did barebox port on
> imx23-olinuxino board.  Here is barebox boot:
>
> Board: Olimex.ltd imx23-olinuxino
> registered netconsole as cs1
> Min. frequency is 1476 Hz
> Max. frequency is 48000000 Hz
> mxs_mci@mci0: registered as mci0
> ehci@ehci0: USB EHCI 1.00
> No MCI card preset

In the mci-core.c source file you can enable the DEBUG macro to include more 
debug output. This will print more information about the MCI card detection. 
Maybe it helps.

Check also:
 - pin multiplexing
 - power supply to the SD card
 - GPIOs for detecting the SD card (some kind of inserting signal)
 - increase the min frequency to about 400 kHz. Maybe 1476 Hz are too slow and
   conflict with some timeout values

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

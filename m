Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SX75A-0007gq-PW
 for barebox@lists.infradead.org; Wed, 23 May 2012 08:38:13 +0000
Date: Wed, 23 May 2012 10:38:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120523083809.GU30400@pengutronix.de>
References: <CAONxwYMN4tDV-0vcophuLRA0rJC_T6OaLNyZM22yoso09cJFRg@mail.gmail.com>
 <20120522184838.GN30400@pengutronix.de>
 <CAONxwYOMMoeRwyUoLwQkLO6eN3M-X0Wq6nS=LNZk_+oX7U97Bw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYOMMoeRwyUoLwQkLO6eN3M-X0Wq6nS=LNZk_+oX7U97Bw@mail.gmail.com>
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
Subject: Re: SD card probe failure
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, May 23, 2012 at 10:30:52AM +0200, Roberto Nibali wrote:
> Hi Sascha
> 
> 
>  Card:
>   Attached is an SD Card (Version: 2.0)
>   Capacity: 1910 MiB
>    CID: 1B534D30-30303030-101ABB6A-9500AB00
>    CSD: 007FFF32-5B5A83BA-F6DBDFFF-0E800000
>   Max. transfer speed: 25000000 Hz
>   Manufacturer ID: 1B
>   OEM/Application ID: 534D
>   Product name: '00000'
>   Product revision: 1.0
>   Serial no: 448490133
>   Manufacturing date: 11.2010
> no parameters available
> 
> What's going on here? I'll investigate this further, because in real life I
> have massive SD card write speed issues on my mx25 device on any kernel
> tested from 2.6.37 to 3.3.4 so far.

I try to keep the iomux descriptions in sync with the kernel. So when
there is a bug in the kernel it's likely present in barebox aswell.
Another thing which you might want to investigate is the clock
frequency. Please check with an oscilloscope if we really have 25MHz as
suggested above.

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

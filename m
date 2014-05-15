Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WktII-0007UP-Bu
 for barebox@lists.infradead.org; Thu, 15 May 2014 10:53:47 +0000
Date: Thu, 15 May 2014 12:53:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140515105324.GD5858@pengutronix.de>
References: <1400135990-5391-1-git-send-email-s.hauer@pengutronix.de>
 <1400135990-5391-2-git-send-email-s.hauer@pengutronix.de>
 <CAOpc7mH1pNu6YOoYQZRSGNVa=0utOedBAaUT+zqBO7dq=Nevng@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mH1pNu6YOoYQZRSGNVa=0utOedBAaUT+zqBO7dq=Nevng@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] mtd: m25p80: update Micron IDs
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, May 15, 2014 at 10:19:27AM +0200, Holger Schurig wrote:
> > +       { "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K) },
> 
> Are you sure that this one works?  In u-boot's
> drivers/mtd/spi/sf_params.c this one is marked with  WR_QPP | E_FSR |
> SECT_4K, and barebox doesn't support E_FSR right now. I have a WIP
> patch for it, but haven't published that patch because even with it my
> JEDEC 20ba20 N25Q512 doesn't get erased.

No, I'm not sure. I only need (and tested) the n25q128a13. I thought
I just update all, but maybe it's better to only add the one I tested.

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

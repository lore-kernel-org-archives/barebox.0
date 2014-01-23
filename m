Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6Gd5-0001tk-II
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 09:31:20 +0000
Date: Thu, 23 Jan 2014 10:30:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140123093055.GH16215@pengutronix.de>
References: <1390431049-4236-1-git-send-email-philipp.zabel@gmail.com>
 <201401230214.35328.marek.vasut@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201401230214.35328.marek.vasut@gmail.com>
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
Subject: Re: [PATCH 0/4] Asix AX88772B support
To: Marek Vasut <marek.vasut@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 23, 2014 at 02:14:35AM +0100, Marek Vasut wrote:
> On Wednesday, January 22, 2014 at 11:50:45 PM, Philipp Zabel wrote:
> > This patch series picks up some changes from the linux kernel
> > to make Asix AX88772B based USB Ethernet dongles work.
> > 
> > Marek Vasut (2):
> >   net usb asix: Simplify condition in rx_fixup()
> >   net usb asix: Use only 11 bits of header for data size
> > 
> > Philipp Zabel (2):
> >   net usb asix: read MAC from EEPROM on AX88772B
> >   net usb asix: add AX88772B USB ID
> > 
> >  drivers/net/usb/asix.c | 36 +++++++++++++++++++++++++++++++-----
> >  1 file changed, 31 insertions(+), 5 deletions(-)
> 
> Oh wow, am I now an official barebox contributor ? :-D

gotcha! ;)

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

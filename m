Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W7heL-0005oI-92
 for barebox@lists.infradead.org; Mon, 27 Jan 2014 08:34:33 +0000
Date: Mon, 27 Jan 2014 09:34:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140127083411.GT16215@pengutronix.de>
References: <1390431049-4236-1-git-send-email-philipp.zabel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390431049-4236-1-git-send-email-philipp.zabel@gmail.com>
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
To: Philipp Zabel <philipp.zabel@gmail.com>
Cc: barebox@lists.infradead.org, Marek Vasut <marek.vasut@gmail.com>

On Wed, Jan 22, 2014 at 11:50:45PM +0100, Philipp Zabel wrote:
> This patch series picks up some changes from the linux kernel
> to make Asix AX88772B based USB Ethernet dongles work.
> 
> Marek Vasut (2):
>   net usb asix: Simplify condition in rx_fixup()
>   net usb asix: Use only 11 bits of header for data size
> 
> Philipp Zabel (2):
>   net usb asix: read MAC from EEPROM on AX88772B

Applied three patches. Could you resend this one? It didn't make it to
the list.

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

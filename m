Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfVKf-0004R2-7U
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:13:25 +0000
Date: Thu, 23 May 2013 15:13:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130523131303.GM32299@pengutronix.de>
References: <1369209220-14529-1-git-send-email-linux@rempel-privat.de>
 <1369209220-14529-2-git-send-email-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369209220-14529-2-git-send-email-linux@rempel-privat.de>
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
Subject: Re: [PATCH 1/2 v2] cfi_flash: add shift option for some cfi memory
 chips
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <bug-track@fisher-privat.net>

On Wed, May 22, 2013 at 09:53:39AM +0200, Oleksij Rempel wrote:
> From: Oleksij Rempel <bug-track@fisher-privat.net>
> 
> Many cfi chips support 16 and 8 bit modes. Most important
> difference is use of so called "Q15/A-1" pin. In 16bit mode this
> pin is used for data IO. In 8bit mode, it is an address input
> which add one more least significant bit (LSB). In this case
> we should shift all adresses by one:
> For example 0xaa << 1 = 0x154
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>

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

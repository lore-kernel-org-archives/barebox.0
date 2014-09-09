Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XRGnZ-0001Q8-88
 for barebox@lists.infradead.org; Tue, 09 Sep 2014 08:29:13 +0000
Date: Tue, 9 Sep 2014 10:28:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140909082851.GR5352@pengutronix.de>
References: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 0/7] openrisc: add device tree support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 08, 2014 at 10:53:02AM +0400, Antony Pavlov wrote:
> This patch series adds device tree support for openrisc generic board.
> The barebox mips device tree support is used as a sample.
> 
> Changes since v1:
> 
>   * rebase over latest next;
>   * add 'Documentation: add OpenRISC or1ksim emulator section'.
> 
> Antony Pavlov (7):
>   openrisc: generic board: reserve 512K for barebox
>   net: ethoc: add device tree support
>   openrisc: add initial device tree support
>   openrisc: dts: import or1ksim.dts from linux-3.16
>   openrisc: generic board: reduce platform code
>   openrisc: generic_defconfig: enable device tree stuff
>   Documentation: add OpenRISC or1ksim emulator section

Applied, thanks.

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

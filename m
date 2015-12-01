Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3gI5-0003ln-II
 for barebox@lists.infradead.org; Tue, 01 Dec 2015 08:28:02 +0000
Date: Tue, 1 Dec 2015 09:27:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151201082739.GE11966@pengutronix.de>
References: <1447236822-13102-1-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447236822-13102-1-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH v2] defaultenv: boot/net: Boot initramfs from tftp if
 present
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 11, 2015 at 11:13:42AM +0100, Markus Pargmann wrote:
> Use an 'initramfs' file if it exists instead of nfsroot. This offers the
> possibility to quickly boot complete filesystems as initramfs without
> the need to flash an SD-card or similar. If the initramfs does not
> exist, it uses the default nfsroot mechanism.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
> 
> Changes in v2:
> - Changed variable name to 'initramfs' to make clear that this is intended to
>   be used for initramfs. initrd is possible but requires additional linux
>   bootargs
> - Removed the hardcoded 'rdinit' bootarg
> 
>  defaultenv/defaultenv-2-base/boot/net | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)

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

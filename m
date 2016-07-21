Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQ7Vm-0004Re-EN
 for barebox@lists.infradead.org; Thu, 21 Jul 2016 06:31:11 +0000
Date: Thu, 21 Jul 2016 08:30:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160721063047.GS20657@pengutronix.de>
References: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
 <1458208829-25570-14-git-send-email-alexander.stein@systec-electronic.com>
 <578E11FD.6050408@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <578E11FD.6050408@ge.com>
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
Subject: Re: [PATCH 13/13] ubifs: update implementation from u-boot v2016.03
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Tue, Jul 19, 2016 at 12:41:49PM +0100, Renaud Barbier wrote:
> I just tested the v2016.07 version.
> 
> I noticed that the readlink function returns an empty variable and found
> that symlink that used to appear as:
> OWBOOT> / ls -l /mnt/
> lrwxrwxrwx              7 active -> primary
> drwxr-xr-x            472 primary
> 
> now appears as:
> 
> OWBOOT> / ls -l /mnt/
> drwxr-xr-x            472 active
> drwxr-xr-x            472 primary
> 
> It is due the ubifs_findfile function resolving the symlink as when the
> code under "if ((inode->i_mode & S_IFMT) == S_IFLNK) {" is commented
> out, the link is resolved by the ubifs_readlink entry point.

U-Boot does not have link support, so the UBIFS code from U-Boot
resolves the links itself. It seems we should just remove the symlink
handling code leaked in from U-Boot.

> 
> In another hand, it looks like ubifs_readlink does not deal with symlink
> recursion.

Hm not sure. Where should symlink recursion be handled? Shouldn't this
be done in the barebox file layer rather than in each filesystem? Not
that barebox has sylink recursion implemented, but if we do we should
fo it in the right place.

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

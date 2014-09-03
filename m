Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPB1K-0000OQ-BK
 for barebox@lists.infradead.org; Wed, 03 Sep 2014 13:54:46 +0000
Date: Wed, 3 Sep 2014 15:54:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140903135423.GL5352@pengutronix.de>
References: <1409750295-14760-1-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409750295-14760-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] EFI: add missing include
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 03, 2014 at 03:18:15PM +0200, Michael Olbrich wrote:
> Otherwise building produces these warnings:
> [...]
> arch/efi/efi/efi-image.c:48:2: warning: implicit declaration of function 'read_file' [-Wimplicit-function-declaration]
> arch/efi/efi/efi-image.c:48:6: warning: assignment makes pointer from integer without a cast [enabled by default]
> [...]
> 
> And bootm fails for x86_64. The implicit declaration has an int as return
> value, so half of the returned address is lost.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>

Applied, thanks

This is probably the last patch before the September Release.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YaiWY-0000kM-79
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 10:26:58 +0000
Date: Wed, 25 Mar 2015 11:26:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150325102635.GD9742@pengutronix.de>
References: <20150324130035.GB8125@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150324130035.GB8125@ns203013.ovh.net>
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
Subject: Re: [PATCH 0/7 v2] digest: allow multiple implementation of digest
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 24, 2015 at 02:00:35PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	The following serie allow you to have multiple driver for
> 	the digest.
> 
> 	This also switch the sha1 implementation to the kernel one and
> 	add the armv4 asm implementtion that save nearly 6KiB in a zbarebox
> 	lzo.
> 
> 
> v2:
> 	switch sha256 and sha512 to linux implementation
> 	add arm sha256 asm implementation
> 
> The following changes since commit 52d4a0321405b7525422f04fffbe7f318c9c5a88:
> 
>   Merge branch 'for-next/state' into next (2015-03-19 07:55:59 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/sha1
> 
> for you to fetch changes up to 6bebe62f4b828f0b85334b8a8a189e8a84864935:
> 
>   arm: crypto: add sha256 assembly support (2015-03-24 17:18:55 +0800)

Except for the one comment I made the series looks fine.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5UOS-0004qs-Mv
 for barebox@lists.infradead.org; Wed, 25 May 2016 08:42:21 +0000
Date: Wed, 25 May 2016 10:41:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160525084158.GE23750@pengutronix.de>
References: <1464162673-23037-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464162673-23037-1-git-send-email-yegorslists@googlemail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] crypto: add CRC32 digest
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Wed, May 25, 2016 at 09:51:13AM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> CRC32 digest can be used to check CRC32 hashes in FIT images etc.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  crypto/Kconfig        |  4 +++
>  crypto/Makefile       |  1 +
>  crypto/crc32_digest.c | 90 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/crypto/crc.h  | 16 +++++++++
>  include/digest.h      |  1 +
>  5 files changed, 112 insertions(+)
>  create mode 100644 crypto/crc32_digest.c
>  create mode 100644 include/crypto/crc.h

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

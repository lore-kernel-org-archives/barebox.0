Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XENM6-0007cc-HL
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 18:51:35 +0000
Date: Mon, 4 Aug 2014 20:51:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140804185112.GK23235@pengutronix.de>
References: <1406958203-11984-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406958203-11984-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/3] MIPS: add support for metadata in pbl-enabled
 barebox images
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Aug 02, 2014 at 09:43:20AM +0400, Antony Pavlov wrote:
> This patch series make it possible to use metadata
> in big-endian qemu-malta barebox images.
> 
> The first patch fixes up metadata for big-endian targets.
> 
> Antony Pavlov (3):
>   fixup! Add support for metadata in barebox images
>   MIPS: add support for metadata in barebox images
>   MIPS: qemu-malta_defconfig: enable metadata in barebox image (IMD)

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

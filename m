Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xm13I-0002Ym-HD
 for barebox@lists.infradead.org; Wed, 05 Nov 2014 13:55:13 +0000
Date: Wed, 5 Nov 2014 14:54:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141105135448.GL30369@pengutronix.de>
References: <cover.1415087152.git.zahari.doychev@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1415087152.git.zahari.doychev@linux.com>
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
Subject: Re: [PATCH] fix mbr detection
To: Zahari Doychev <zahari.doychev@linux.com>
Cc: barebox@lists.infradead.org

Hi,

On Tue, Nov 04, 2014 at 08:54:00AM +0100, Zahari Doychev wrote:
> I have a strange problem using usb sticks in barebox. After formatting some
> previously FAT sticks they still have file system type set to FAT32 in the mbr.
> In this way there are detected as FAT fs partitions instead of MBRs and the usb
> media partitons can not be parsed.
> 
> This patch should resolve this problem. Please review it and check if it is
> fine and not causing any side effects.

Well, I don't see any side effects, but that does not mean much...

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

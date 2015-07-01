Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAAKN-0002wG-8H
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 05:12:55 +0000
Date: Wed, 1 Jul 2015 07:12:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150701051233.GX18611@pengutronix.de>
References: <1435580230-22785-1-git-send-email-alllecs@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1435580230-22785-1-git-send-email-alllecs@yandex.ru>
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
Subject: Re: [PATCH] read_file_2(): drop unnecessary 'else'
To: Alexander Smirnov <alllecs@yandex.ru>
Cc: barebox@lists.infradead.org

On Mon, Jun 29, 2015 at 03:17:10PM +0300, Alexander Smirnov wrote:
> Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
> ---
>  lib/libfile.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

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

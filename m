Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zw3YC-0004AL-KP
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 07:41:09 +0000
Date: Tue, 10 Nov 2015 08:40:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151110074043.GC8526@pengutronix.de>
References: <1447063593-23825-1-git-send-email-serge.koshechkin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447063593-23825-1-git-send-email-serge.koshechkin@gmail.com>
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
Subject: Re: [PATCH] docproc: sync with linux-4.3 kernel
To: Sergey Koshechkin <serge.koshechkin@gmail.com>
Cc: barebox@lists.infradead.org, antony@niisi.msk.ru

Hi Sergey,

On Mon, Nov 09, 2015 at 01:06:33PM +0300, Sergey Koshechkin wrote:
> Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
> ---
>  scripts/basic/docproc.c | 334 +++++++++++++++++++++++++++++++++++++-----------
>  1 file changed, 256 insertions(+), 78 deletions(-)

What's the motivation for updating this file? Is it even used in
barebox?

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

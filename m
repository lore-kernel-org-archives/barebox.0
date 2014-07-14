Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X6ZOw-0007tx-Jc
 for barebox@lists.infradead.org; Mon, 14 Jul 2014 06:06:15 +0000
Date: Mon, 14 Jul 2014 08:05:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140714060552.GS23235@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
 <1404809417-21477-10-git-send-email-s.hauer@pengutronix.de>
 <20140711163532.e156a8ec996a318d0b65c49d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140711163532.e156a8ec996a318d0b65c49d@gmail.com>
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
Subject: Re: [PATCH 09/21] Add beginning wchar support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 11, 2014 at 04:35:32PM +0400, Antony Pavlov wrote:
> On Tue,  8 Jul 2014 10:50:05 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
>   CC      lib/wchar.o
> lib/wchar.c:24:8: warning: no previous prototype for 'wcslen' [-Wmissing-prototypes]
>  size_t wcslen(const wchar_t *s)

Should be fixed now. Thanks for noting

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

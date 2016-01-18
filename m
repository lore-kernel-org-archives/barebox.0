Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL64d-0000wX-Ei
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 09:26:07 +0000
Date: Mon, 18 Jan 2016 10:25:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160118092543.GH13058@pengutronix.de>
References: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
 <1452251635-14689-9-git-send-email-s.hauer@pengutronix.de>
 <CAHQ1cqEO6ET=VdZsmVjrMa+V=w=rSfn9_H8sH-_j+tnay628Ww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEO6ET=VdZsmVjrMa+V=w=rSfn9_H8sH-_j+tnay628Ww@mail.gmail.com>
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
Subject: Re: [PATCH 8/8] barebox remote control: Documentation
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey,

On Sun, Jan 17, 2016 at 05:16:02PM -0800, Andrey Smirnov wrote:
> I'd like to suggest following additions to this patch

Thanks for the fixups. I integrated your additions/suggestions into the
RATP branch. See -next for the result. I also fixed the compile breakage
with CONFIG_RATP disabled.

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

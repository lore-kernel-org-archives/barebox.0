Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gt9Q6-0004NF-9d
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 11:06:51 +0000
Date: Mon, 11 Feb 2019 12:06:36 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190211110636.strxlrorw5h5poxw@pengutronix.de>
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <068ce15e-1a72-9b02-2b1f-40a5d32523a0@rempel-privat.de>
 <20190208085902.4strzly224joqupn@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190208085902.4strzly224joqupn@pengutronix.de>
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
Subject: Re: [PATCH 1/6] include: add SPDX GPL-2.0-only license tags where
 applicable
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

On Fri, Feb 08, 2019 at 09:59:02AM +0100, Roland Hieber wrote:
> I noticed that Linux usually removes the license headers and only keeps
> the copyright lines, but I wasn't able to find any reason for that. Do
> you have more insight here?

I tried to google around a bit, and found several discussions, which all
end in "SPDX is an industry-wide accepted standard" [1] and
"SPDX-License-Identifiers are a legally binding shorthand" [2], but
without further elaboration :-/

[1]: https://patchwork.kernel.org/patch/10045625/#21135079
[2]: e.g. here https://lore.kernel.org/patchwork/patch/854656/ or
     in the commit message of [1] too

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

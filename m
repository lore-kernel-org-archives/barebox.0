Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0n06-0005fl-9d
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 13:19:39 +0000
Message-ID: <c4616415272d97fc3669326999a9764aff81376d.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 22 Aug 2019 15:19:36 +0200
In-Reply-To: <20190822125158.10296-1-s.hauer@pengutronix.de>
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 0/8] i.MX8 EVK patches
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On Thu, 2019-08-22 at 14:51 +0200, Sascha Hauer wrote:
> Here are several patches for ARM aarch64 in general and more
> specifically for the i.MX8 EVK which currently is not bootable.
> Currently relocation on ARM aarch64 doesn't work correctly and
> the i.MX8 EVK code exploits some of the oddities for its boot
> process. This series aims to fix that up.

Tested with enabled HAB and the development keys fused to my board,
you can add a:

Tested-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

for the whole series

- rcz


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

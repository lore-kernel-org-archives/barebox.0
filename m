Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bzfAi-0004JJ-L4
 for barebox@lists.infradead.org; Thu, 27 Oct 2016 07:32:22 +0000
Date: Thu, 27 Oct 2016 09:31:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161027073157.u6jmv6ux3xs4x46i@pengutronix.de>
References: <CABDcavZ08eW8scP2zi_5hUp7J8ex-xj17-n7SRx_5YNC3q-8eQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABDcavZ08eW8scP2zi_5hUp7J8ex-xj17-n7SRx_5YNC3q-8eQ@mail.gmail.com>
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
Subject: Re: Read kernel from static UBI volume
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 27, 2016 at 09:10:02AM +0200, Guillermo Rodriguez Garcia wrote:
> Hello all,
> 
> I know Barebox can load files from UBIFS. However, is there support
> from booting a kernel directly from a static UBI volume?.

bootm /dev/nand0.ubi.whatever should do.

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

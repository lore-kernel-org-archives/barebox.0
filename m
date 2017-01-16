Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT2jz-0006Sy-P5
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 08:34:15 +0000
Date: Mon, 16 Jan 2017 09:33:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170116083349.hvw6iapklok73ll7@pengutronix.de>
References: <9bb241fd-643b-f0fc-e377-a86c79c552e1@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9bb241fd-643b-f0fc-e377-a86c79c552e1@allegion.com>
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
Subject: Re: Secure trusted boot mechanism
To: "Dold, Wolfram" <Wolfram.Dold@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Wolfram,

On Mon, Jan 16, 2017 at 08:26:44AM +0000, Dold, Wolfram wrote:
> Hi all,
> I wanted to ask if barebox supports any kind of secure boot mechanism like FIT-Image or
> any other type of verified secure trusted boot?

Yes, barebox does support FIT images.
It also supports HAB on i.MX machines, although this is only for
starting trusted bootloaders from the ROM, not for starting trusted
kernels.

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

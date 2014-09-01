Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XONZX-0005yx-Sj
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 09:06:48 +0000
Date: Mon, 1 Sep 2014 11:06:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901090619.GJ5352@pengutronix.de>
References: <1407836241-17620-1-git-send-email-m.olbrich@pengutronix.de>
 <1407836241-17620-2-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1407836241-17620-2-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH 2/2] EFI: handle more boot devices
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 12, 2014 at 11:37:21AM +0200, Michael Olbrich wrote:
> efi_get_boot() fails for partitions that are not supported, so errors must
> be ignored to find all supported devices.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
> 
> I'm not sure about this one. We're not doing anythings with the return
> value of efi_get_boot(), so this is just some debug output + memory leak.

So maybe we should rather comment out the code until we do something
meaningful with it?

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

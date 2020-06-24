Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnzaF-0007rW-Qu
 for barebox@lists.infradead.org; Wed, 24 Jun 2020 07:12:36 +0000
Date: Wed, 24 Jun 2020 09:12:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200624071234.GG11869@pengutronix.de>
References: <20200623134533.27030-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623134533.27030-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: dts: vexpress-v2p-ca15: adapt fixed NOR flash
 partition setup
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Roland Hieber <r.hieber@pengutronix.de>

On Tue, Jun 23, 2020 at 03:45:34PM +0200, Ahmad Fatoum wrote:
> Roland already fixed the vexpress-v2p-ca9:
>  > Upstream DTS commit 62a5017bf825c9e4d317 ("ARM: dts: vexpress: specify
>  > AFS partition") [1] introduced an empty node at /smb@4000000
>  > /motherboard/flash@0,00000000/partitions, which is preferred by the OF
>  > partitions parser over the single partition nodes. In the same commit,
>  > upstream set the compatible to "arm,arm-firmware-suite", which barebox
>  > does not know about. Adapt our fixed partition setup accordingly by
>  > wrapping all partitions in an extra "partitions" node with the correct
>  > compatible.
>  > [1]: https://git.kernel.org/linus/62a5017bf825c9e4d3176eb975a01c329a9f36
> 
> Do the same for the vexpress-v2p-ca15. While at it use the new label:
> added along with 6940ba22c66a ("dts: update to v5.3-rc1"). This way we
> aren't (build-)broken, when the upstream path changes in v5.8-rc1.
> 
> Fixes: 6940ba22c66ac1c71350 ("dts: update to v5.3-rc1")
> Cc: Roland Hieber <r.hieber@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>  - Fixed other board name (ca9) in commit message
> 
> Hello Sascha,
> 
> please order this before the v5.8-rc1 dts/ update as otherwise, the
> vexpress
> configs get build-broken.

I have put it right before the dts update.

Thanks,
 Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

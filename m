Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYdKG-0005Ls-3I
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 14:52:53 +0000
Date: Tue, 22 Oct 2013 16:52:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131022145228.GN30088@pengutronix.de>
References: <20131022143339.GC26639@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131022143339.GC26639@ns203013.ovh.net>
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
Subject: Re: [PATCH 0/3 V2] add ARM MMCI support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 22, 2013 at 04:33:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	v2: use max_req_size only if set
> 
> 	to support the ARM AMBA MMCI support we need update the mci support
> 	to only request data length that the controler can handle
> 
> 
> The following changes since commit 8f23a17f9bac836e4a2f4883ca8f886f535449a8:
> 
>   Merge branch 'pu/bootloader-spec' (2013-10-14 15:46:10 +0200)
> 
> are available in the git repository at:
> 
> 
>   git://git.jcrosoft.org/barebox.git delivery/vexpress_mmci

Switched to this series.

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

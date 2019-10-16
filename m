Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKf7u-0007Od-AZ
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 08:57:51 +0000
Date: Wed, 16 Oct 2019 10:57:47 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20191016085747.dhb6z3s2ckw5tpnq@pengutronix.de>
References: <20191015205744.GA30054@router.tkernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015205744.GA30054@router.tkernel.org>
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
Subject: Re: readling, ctrl-u is not working like linux console
To: barebox@lists.infradead.org, r.karszniewicz@phytec.de

On Wed, Oct 16, 2019 at 04:57:45AM +0800, duhuanpeng wrote:
> Hi,
> 
> I find it the barebox console's ctrl-u is not working like my
> linux host.
> for now, the barebox's ctrl-u discard the whole line. but the
> linux consle just remove characters before cursor.
> is the barebox ctrl-u follows any standard, if not, how about
> make it just works like linux(ah, it is gnu readline) does.

FWIW, in bash on both my tty2 and urxvt, Ctrl-U clears the whole line.
But I don't know if there is a standard for this shortkey.

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

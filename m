Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSz3s-00020z-PW
 for barebox@lists.infradead.org; Tue, 21 May 2019 07:19:51 +0000
Date: Tue, 21 May 2019 09:19:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190521071946.eqart5p7qszbowx5@pengutronix.de>
References: <20190515093644.9691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515093644.9691-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 0/4] scripts/checkpatch.pl: rebase on top of upstream
 v5.1
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 15, 2019 at 11:36:40AM +0200, Ahmad Fatoum wrote:
> "v1" is at <20190219141647.2537-3-a.fatoum@pengutronix.de>
> 
> Changes since v1:
>   - added dts/Bindings to compatible search patch (by Antony)
>   - split barebox-specific changes into a separate commit (by Sascha)
>   - split checkpatch.pl dependencies into a separate commit
>   - changed spdxcheck.py to not require LICENSES/{exceptions, other}
>   - removed exceptions/, other/ directories
> 
> Ahmad Fatoum (4):
>   LICENSES: remove empty other, exceptions directories
>   checkpatch: add upstream checkpatch v5.1 dependencies
>   checkpatch: import as-is from Linux v5.1
>   checkpatch: apply barebox-specific modifications

Applied, thanks

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

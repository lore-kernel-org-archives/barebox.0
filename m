Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3xJ-0007qu-NS
 for barebox@lists.infradead.org; Wed, 25 Sep 2019 09:51:31 +0000
Date: Wed, 25 Sep 2019 11:51:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190925095127.tekk37oaqmvdfyxj@pengutronix.de>
References: <20190923121018.31574-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923121018.31574-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 0/6] scripts/dtc: rework dtc import handling
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 23, 2019 at 02:10:12PM +0200, Ahmad Fatoum wrote:
> Linux upstream doesn't use fdtget. barebox does however for IMD.
> Commits 46bdae84e8 ("dtc: Update update-dtc-source.sh from Linux") and
> 4e731e48d4 ("scripts/dtc: Update to upstream version v1.5.0") broke
> this, which the first two patches in this series fix. They should be
> applied to upstream/master.
> 
> This probably went undtected because an old ftdget would survive a
> mrproper, so this issue only happens on fresh check-outs.
> 
> The other 4 patches address the fact that the process by which we update
> dtc is error-prone. This is evident by this patch and 1df07fbcdf
> ("scripts/dtc: Reenable fdtget"), which fixed the same issue a year
> prior.
> 
> To address this add documentation on how to update dtc and make the
> script easier to use. The update to v1.5.1 is included as well to test
> this out, but can be dropped.
> 
> Ahmad Fatoum (6):
>   scripts/dtc: Reinstate barebox-specifics in update-dtc-source.sh
>   scripts/dtc: reinstate building of fdtget along with dtc
>   scripts/dtc: git rm old files as part of update process
>   scripts/dtc: mention dtc project in update-dtc-source.sh commit
>     message
>   scripts/dtc: Update to upstream version v1.5.1
>   Documentation: document barebox device tree handling

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

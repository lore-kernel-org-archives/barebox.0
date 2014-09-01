Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XONoh-0004oZ-Q7
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 09:22:28 +0000
Date: Mon, 1 Sep 2014 11:21:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901092159.GL5352@pengutronix.de>
References: <1407303846-15550-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1407303846-15550-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/3] misc .gitignore-related fixes
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 06, 2014 at 09:44:03AM +0400, Antony Pavlov wrote:
> Antony Pavlov (3):
>   openrisc: add barebox.lds to .gitignore
>   scripts: add bareboximd{,-target} to .gitignore
>   fixup! dtc: compile fdtget

Applied, thanks

Sascha

> 
>  arch/openrisc/cpu/.gitignore | 1 +
>  scripts/.gitignore           | 2 ++
>  scripts/dtc/.gitignore       | 1 +
>  3 files changed, 4 insertions(+)
>  create mode 100644 arch/openrisc/cpu/.gitignore
> 
> -- 
> 2.0.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMlg-0002sQ-AQ
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:58:13 +0000
Date: Wed, 20 Feb 2019 08:58:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190220075810.mctu3pn27j3xit3i@pengutronix.de>
References: <20190219113700.10172-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219113700.10172-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 0/2] scripts/dtc: Update to upstream version v1.4.7
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 19, 2019 at 12:36:58PM +0100, Ahmad Fatoum wrote:
> To play around with the new /omit-if-no-ref/ feature, I've enabled
> update-dtc-source.sh for barebox and used it to update dtc to v1.4.7.
> 
> The second patch also reinstates the dtc-lexer.l and dtc-parser.y
> files which were erroneously deleted in 
> 273dbe5f87 ("kbuild: generate lexer and parser during build instead of shipping").
> 
> Ahmad Fatoum (2):
>   scripts/dtc: fix update-dtc-source.sh for barebox use
>   scripts/dtc: Update to upstream version v1.4.7

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

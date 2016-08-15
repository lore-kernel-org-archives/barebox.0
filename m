Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bZE1u-0004hs-JE
 for barebox@lists.infradead.org; Mon, 15 Aug 2016 09:17:59 +0000
Date: Mon, 15 Aug 2016 11:17:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160815091734.GX20657@pengutronix.de>
References: <1471012324-3881-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471012324-3881-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/3] Documentation: fix sphinx warnings
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 12, 2016 at 05:32:01PM +0300, Antony Pavlov wrote:
> Antony Pavlov (3):
>   Documentation: tplink-mr3020: fix 'Could not lex literal_block as "c"' warning
>   Documentation: barebox: fix 'Could not lex literal_block as "c"' warning
>   Documentation: variables: fix error in "code-block" directive
> 
>  Documentation/boards/mips/tplink-mr3020.rst | 12 ++++--
>  Documentation/user/barebox.rst              | 60 +++++++++++++++++++++--------
>  Documentation/user/variables.rst            |  1 +
>  3 files changed, 55 insertions(+), 18 deletions(-)

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

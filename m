Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asOui-0004yr-Co
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 06:13:37 +0000
Date: Tue, 19 Apr 2016 08:13:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160419061306.GL9102@pengutronix.de>
References: <1461038573-30052-1-git-send-email-do_not_rep1y@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461038573-30052-1-git-send-email-do_not_rep1y@163.com>
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
Subject: Re: [PATCH] menu: add vi like key support
To: DU HUANPENG <do_not_rep1y@163.com>
Cc: barebox@lists.infradead.org, Du Huanpeng <u74147@gmail.com>

On Tue, Apr 19, 2016 at 12:02:53PM +0800, DU HUANPENG wrote:
> From: Du Huanpeng <u74147@gmail.com>
> 
> add vi like key support:
>         j: down
>         k: up
>   <Space>: select
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  common/menu.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)

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

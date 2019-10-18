Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQvT-0000Fa-TM
 for barebox@lists.infradead.org; Fri, 18 Oct 2019 12:00:13 +0000
Date: Fri, 18 Oct 2019 14:00:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191018120008.5qt2b6ox5omk7sdq@pengutronix.de>
References: <1571241404-25229-1-git-send-email-sendpatch@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571241404-25229-1-git-send-email-sendpatch@qq.com>
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
Subject: Re: [PATCH v4] readline: make ctrl-u to work like linux console
To: sendpatch@qq.com
Cc: barebox@lists.infradead.org, DU HUANPENG <u74147@gmail.com>

On Wed, Oct 16, 2019 at 11:56:44PM +0800, sendpatch@qq.com wrote:
> From: DU HUANPENG <u74147@gmail.com>
> 
> currtly, the ctrl-u discards the whole line, in most linux
> boxes, ctrl-u just erase characters before cursor to the
> begginning of the line. this patch make ctrl-u to do this.
> 
> Signed-off-by: DU HUANPENG <u74147@gmail.com>
> ---
>  lib/readline.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

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

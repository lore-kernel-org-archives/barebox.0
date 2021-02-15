Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBd2W-0002JD-CG
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 12:31:45 +0000
Date: Mon, 15 Feb 2021 13:31:41 +0100
Message-ID: <20210215123141.GS19583@pengutronix.de>
References: <20210215103704.32537-1-a.fatoum@pengutronix.de>
 <20210215103704.32537-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210215103704.32537-10-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 09/12] include: add kthread wrappers for pollers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 15, 2021 at 11:37:02AM +0100, Ahmad Fatoum wrote:
> With the new fancy yielding poller support, we can properly represent
> kernel threads in barebox. Do so.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/kthread.h | 72 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 include/linux/kthread.h
> 
> diff --git a/include/linux/kthread.h b/include/linux/kthread.h
> new file mode 100644
> index 000000000000..17b6de9cf168
> --- /dev/null
> +++ b/include/linux/kthread.h
> @@ -0,0 +1,72 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _LINUX_KTHREAD_H
> +#define _LINUX_KTHREAD_H
> +/* Wrapper around pollers to ease porting from Linux */
> +
> +#include <linux/kernel.h>
> +#include <linux/err.h>
> +#include <linux/string.h>
> +#include <poller.h>
> +
> +struct task_struct {
> +	struct poller_struct poller;
> +	int (*threadfn)(void *data);
> +	void *data;
> +};
> +
> +static inline void kthread_poller(struct poller_struct *poller)
> +{
> +	struct task_struct *task = container_of(poller, struct task_struct, poller);
> +	task->threadfn(task->data);
> +}

kthreads behave differently. When you return from a kthread then the
thread is stopped. We should either behave the same way or use a
different name.

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

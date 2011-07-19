Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj7a9-0008BM-9x
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 10:31:21 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id B7AD7FFA72B
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 12:31:45 +0200 (CEST)
Date: Tue, 19 Jul 2011 12:14:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110719101429.GF5727@game.jcrosoft.org>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
	<1311064803-6305-6-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311064803-6305-6-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 05/19] mem_read/write: use resources
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:39 Tue 19 Jul     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/fs.c |    5 ++---
>  1 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index e71d5a2..bcc6ff4 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1048,8 +1048,7 @@ ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong
>  	dev = cdev->dev;
>  
>  	size = min((ulong)count, dev->size - offset);
> -	debug("mem_read: dev->map_base: %p size: %d offset: %d\n",dev->map_base, size, offset);
in two patch?
> -	memcpy_sz(buf, (void *)(dev->map_base + offset), size, flags & O_RWSIZE_MASK);
> +	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
>  	return size;
>  }
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

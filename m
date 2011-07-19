Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj7ZS-0008Am-5W
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 10:30:38 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 878BBFFA788
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 12:31:03 +0200 (CEST)
Date: Tue, 19 Jul 2011 12:13:47 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110719101347.GE5727@game.jcrosoft.org>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
	<1311064803-6305-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311064803-6305-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 03/19] add a add_mem_device function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:39 Tue 19 Jul     , Sascha Hauer wrote:
> Add a helper function for boards to register their memory
> devices. This makes the board code smaller and also helps
> getting rid of map_base.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/mem.c   |   25 +++++++++++++++++++++++++
>  include/driver.h |    6 ++++++
>  2 files changed, 31 insertions(+), 0 deletions(-)
> 
> diff --git a/commands/mem.c b/commands/mem.c
> index 8df5f0a..745eec4 100644
> --- a/commands/mem.c
> +++ b/commands/mem.c
> @@ -587,6 +587,31 @@ static struct file_operations memops = {
>  	.lseek = dev_lseek_default,
>  };
>  
> +struct device_d *add_mem_device(const char *name, unsigned long start, size_t size,
> +		unsigned int flags)
> +{
> +	struct device_d *dev;
> +	struct memory_platform_data *pdata;
> +
> +	dev = xzalloc(sizeof(*dev));
> +	strcpy(dev->name, "mem");
> +	dev->id = -1;
> +	dev->resource = xzalloc(sizeof(struct resource));
> +	dev->num_resources = 1;
> +	dev->resource[0].start = start;
> +	dev->resource[0].size = size;
> +	dev->resource[0].flags = IORESOURCE_MEM;
> +	pdata = xzalloc(sizeof(*pdata));
> +	dev->platform_data = pdata;
> +
> +	pdata->flags = flags;
> +	pdata->name = xstrdup(name);
can we drop the name here and use the resource name instead

I think we can drop the platfrom_data too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

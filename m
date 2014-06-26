Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X069o-0001IU-3f
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 09:39:52 +0000
Received: by mail-wi0-f180.google.com with SMTP id hi2so670305wib.7
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 02:39:29 -0700 (PDT)
Date: Thu, 26 Jun 2014 11:39:22 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140626093922.GA10325@omega>
References: <1403772557-28482-3-git-send-email-holgerschurig@gmail.com>
 <20140626093701.GA9619@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140626093701.GA9619@omega>
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
Subject: Re: [PATCH 2/4] sandbox: only access of_add_memory_bank if it's
 defined
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 26, 2014 at 11:37:01AM +0200, Alexander Aring wrote:
> Hi Holger,
> 
> can you please check if this is also a solution for this?
> 
> diff --git a/include/of.h b/include/of.h
> index e6993fd..76845e7 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -227,7 +227,14 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node);
>  int of_device_is_stdout_path(struct device_d *dev);
>  const char *of_get_model(void);
>  void *of_flatten_dtb(struct device_node *node);
> +#ifdef CONFIG_OFTREE_MEM_GENERIC
>  int of_add_memory(struct device_node *node, bool dump);
> +#else
> +static inline int of_add_memory(struct device_node *node, bool dump)
> +{
> +       return -EINVAL;

mhh, the errno of these function if it's not defined should be changed
to -EOPNOTSUPP.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QhdMX-0002TF-Uz
	for barebox@lists.infradead.org; Fri, 15 Jul 2011 08:03:10 +0000
Date: Fri, 15 Jul 2011 10:03:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110715080304.GJ6069@pengutronix.de>
References: <D08CBAE0A98EB548B293DA79621E27110425C059@zcom02.mut-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D08CBAE0A98EB548B293DA79621E27110425C059@zcom02.mut-group.com>
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
Subject: Re: Sandbox Segfault
To: Matthias Suthe <msuthe@mut-group.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 15, 2011 at 09:13:41AM +0200, Matthias Suthe wrote:
> Hi,
> 
>  
> 
> I'm trying to start barebox is described in the First Steps chapter of
> the barebox documentation, but I get a segfault.
> 
>  
> 
> I followed the User's Manual step by step and now I try to run 
> ./barebox -e env.bin -i cramfs.bin
>  
> Did I maybe miss something when creating the cramfs.bin? Do I need to
> put files into somedir?
> I'm using barebox-2011.05.0
> OS: Debian 6.0.1 (squeeze) 
> Kernel: Linux 2.6.32-5-686-bigmem
>  
> 
> Neither this patch:
> 
> --- a/arch/sandbox/board/hostfile.c
> +++ b/arch/sandbox/board/hostfile.c
> @@ -107,7 +107,8 @@ int barebox_register_filedev(struct hf_platform_data
> *hf)
>  
>         dev->platform_data = hf;
>  
> -       strcpy(dev->name, "hostfile");
> +       /* Registering 2 devices with same name creates problem? */
> +       strcpy(dev->name, hf->filename);

Do you need this hunk or is the change below enough?


>         dev->size = hf->size;
>         dev->map_base = hf->map_base;
> 
> Nor this patch:
> 
> --- a/arch/sandbox/board/hostfile.c
> +++ b/arch/sandbox/board/hostfile.c
> @@ -109,6 +109,7 @@ int barebox_register_filedev(struct hf_platform_data
> *hf)
>  
>         strcpy(dev->name, "hostfile");
>         dev->size = hf->size;
> +       dev->id = -1;
>         dev->map_base = hf->map_base;
>  
>         return register_device(dev);
> 
> help.
> 
>  
> 
> I would be grateful for any help.
> 
>  
> 
>  
> 
> With kind regards
> 
>  
> 
> Matthias Suthe
> 
>  
> 

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

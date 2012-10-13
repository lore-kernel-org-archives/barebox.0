Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN6RA-0001VW-Gl
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 18:27:48 +0000
Date: Sat, 13 Oct 2012 20:27:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121013182746.GC27665@pengutronix.de>
References: <1350137007-10135-1-git-send-email-vicencb@gmail.com>
 <1350137007-10135-6-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350137007-10135-6-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 5/5] omap4_usbboot_fs: add benchmarking capabilities
To: Vicente <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 13, 2012 at 04:03:27PM +0200, Vicente wrote:
> @@ -166,6 +168,10 @@ int read_asic_id(struct usb_handle *usb)
>  struct file_data {
>  	size_t size;
>  	void *data;
> +#ifdef BENCHMARK
> +	size_t readden;
> +	struct timespec opened;
> +#endif

I don't think it's a good idea to add such debug stuff to the
repository. In the end the code gets harder to maintain with
such ifdeffery and there's not much gain in it.

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

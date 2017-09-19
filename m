Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1duCHS-0001IG-RD
 for barebox@lists.infradead.org; Tue, 19 Sep 2017 06:45:17 +0000
Date: Tue, 19 Sep 2017 08:44:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170919064448.n2gjiy5lyqqvclfq@pengutronix.de>
References: <7ca89d8a-f413-3728-1990-40802e5cb2b6@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7ca89d8a-f413-3728-1990-40802e5cb2b6@pengutronix.de>
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
Subject: Re: bootm_open_initrd_uimage: result of uimage_verify() is ignored
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 18, 2017 at 09:33:01PM +0200, Marc Kleine-Budde wrote:
> Hello,
> 
> the bootm_open_initrd_uimage() function will check the CRC of the inird,
> if bootm_get_verify_mode is set appropriately, but the error value is
> not propagated.
> 
> > static int bootm_open_initrd_uimage(struct image_data *data)
> > {
> > 	int ret;
> > 
> > 	if (strcmp(data->os_file, data->initrd_file)) {
> > 		data->initrd = uimage_open(data->initrd_file);
> > 		if (!data->initrd)
> > 			return -EINVAL;
> > 
> > 		if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
> > 			ret = uimage_verify(data->initrd);
> > 			if (ret) {
> > 				printf("Checking data crc failed with %s\n",
> > 					strerror(-ret));
> > 			}
> > 		}
> > 		uimage_print_contents(data->initrd);
> > 	} else {
> > 		data->initrd = data->os;
> > 	}
> > 
> > 	return 0;
> > }
> 
> Is this intentional?

I suppose not :(

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
